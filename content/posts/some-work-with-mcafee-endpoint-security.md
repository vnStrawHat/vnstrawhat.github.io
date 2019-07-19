---
title: "Some work With Mcafee Endpoint Security"
date: 2019-07-15T09:51:20+07:00
Categories: []
Description: ""
Tags: ["Incident Response", "McAfee"]
menu: "posts"
draft: true
---

# Some work with Expert Rules in McAfee Endpoint Security

Bằng việc sử dụng Expert Rules trong policy Threat Prevention - Exploit Prevention, chúng ta có thể tạo ra một số custom rules để phục vụ cho việc giám sát một số hành vi bất thường trên endpoint.

:smirk: Nếu các bạn muốn sử dụng các rules này trên hệ thống Production thì nên lưu ý nên thực hiện các bước sau để nâng cao tính hiệu quả:

- Áp dụng các rules bên dưới chạy ở mode monitor cho một nhóm nhỏ
- Thêm các Exclusion cho các rules bị noise
- Mở rộng việc áp dụng các rules này cho các Endpoint khác
- Thêm các Exclusion cho các rules bị noise
- Apply Block mode   :fire:

Note:

- Các rules bên dưới đa số dựa vào process command line mà process sẽ thực thi để xác định hành vi bât thường
- McAfee sẽ không support bạn trong trường hợp các Custon Rules gây ảnh hưởng đến hệ thống của bạn :disappointed: vậy nên **Take Care of Yourself** :smile:
- Việc thêm các exclusion đồng nghĩa với việc hacker có thể sử dụng điều đó để bypass các rules bạn định nghĩa   :punch:
- Exclusion có thể add thêm bằng cách thêm dòng `Exclude PROCESS_CMD_LINE { -v "nội dung cần exclusion" }` vào section **Process**
- Các DLL trong section **Target** nhằm mục đích giới hạn số lượng event mà McAfee Endpoint Security tạo ra. DLL này sẽ được process trong section **Process** load lên khi chạy
- Ba cái thứ này sao không cài sysmon mà monitor cho đầy đủ :smirk: ? Bởi vì tôi thích làm bằng McAfee :confused:


## regsvr32.exe local/remote COM scriptlet execution

**Mitre Att&ck**: [https://attack.mitre.org/techniques/T1117/](https://attack.mitre.org/techniques/T1117/)

**Rule type**: Processes

**Rule content**:
```puppet
Rule {
    Process {
        Include OBJECT_NAME { -v *regsvr32* }
        Include PROCESS_CMD_LINE { -v "*.sct*" }
        Include PROCESS_CMD_LINE { -v "*.txt*" }
        Include PROCESS_CMD_LINE { -v "*.xml*" }
        Include PROCESS_CMD_LINE { -v "*http:*" }
        Include PROCESS_CMD_LINE { -v "*https:*" }
    }
    Target {
        Match FILE {  
            Include OBJECT_NAME { 
                -v "C:\\WINDOWS\\SYSTEM32\\BCRYPT.DLL" 
            } 
            Include -access "READ"
        }
    }
}
```
## WMIC/wmiprvse create unwanted process

**Rule type**: Processes

**Rule content**:
```puppet
Rule {
    Process {
        Include OBJECT_NAME { -v *wmiprvse* }
        Include OBJECT_NAME { -v *wmic* }
    }
    Target {
        Match FILE {
            Include OBJECT_NAME {
                -v "powershell.exe"
                -v "mshta.exe"
                -v "certutil.exe"
                -v "cmstp.exe" 
            }
            Include -access "EXECUTE"
        }
    }
}
```
## Mshta.exe executes JavaScript from internet

**Mitre Att&ck**: [https://attack.mitre.org/techniques/T1170](https://attack.mitre.org/techniques/T1170)

**Rule type**: Processes

**Rule content**:
```puppet
Rule {
    Process {
        Include OBJECT_NAME { -v mshta.exe }
        Include PROCESS_CMD_LINE { -v "*http*" }
    }
    Target {
        Match FILE {
            Include OBJECT_NAME { 
                -v "C:\\WINDOWS\\SYSTEM32\\DNSAPI.DLL"
            }
            Include -access "READ"
        }
    }
}
```
## InstallUtil.exe uninstall method call

**Mitre Att&ck**: [https://attack.mitre.org/techniques/T1118/](https://attack.mitre.org/techniques/T1118/)

**Rule type**: Processes

**Rule content**:
```puppet
Rule {
    Process {
        Include OBJECT_NAME { -v "C:\\Windows\\Microsoft.NET\\Framework*\\**\\InstallUtil.exe" }
        Include PROCESS_CMD_LINE { -v "*LogToConsole=false*" }
    }
    Target {
        Match FILE {  
            Include OBJECT_NAME { 
                -v "C:\\WINDOWS\\SYSTEM32\\BCRYPT.DLL"
            } 
            Include -access "READ"
        }
    }
}
```
## Execution using csmtp.exe inf file

**Mitre Att&ck**: [https://attack.mitre.org/techniques/T1191/](https://attack.mitre.org/techniques/T1191/)

**Rule type**: Processes

**Rule content**:
```puppet
Rule {
    Process {
        Include OBJECT_NAME { -v cmstp.exe }
        Include PROCESS_CMD_LINE { -v "*.inf*" }
        Include PROCESS_CMD_LINE { -v "*.sct*" }
        Include PROCESS_CMD_LINE { -v "*.txt*" }
    }
    Target {
        Match FILE {  
            Include OBJECT_NAME {
                -v "C:\\WINDOWS\\SYSTEM32\\CMUTIL.DLL"
            } 
            Include -access "READ"
        }
    }
}
```
## Run powershell with Execution Policy Bypass

**Note**: Rule này khá noise nếu không được exclude. Nếu muốn apply thì cần monitor và thêm exclude để giảm noise.

**Mitre Att&ck**: [https://attack.mitre.org/techniques/T1086/](https://attack.mitre.org/techniques/T1086/)

**Rule type**: Processes

**Rule content**:
```puppet
Rule {
    Process {
        Include OBJECT_NAME { -v "*powershell*" }
        Include PROCESS_CMD_LINE { -v "*-executionpolicy bypass*" }
        Include PROCESS_CMD_LINE { -v "*-ep bypass*" }
        Include PROCESS_CMD_LINE { -v "*-exec bypass*" }
        Include PROCESS_CMD_LINE { -v "*-exe bypass*" }
        Exclude PROCESS_CMD_LINE { -v "*DisableSMB1*" }
    }
    Target {
        Match FILE {
            Include OBJECT_NAME {
                -v "C:\\WINDOWS\\SYSTEM32\\BCRYPT.DLL"
            }
            Include -access "READ"
        }
    }
}
```
## Run powershell with ExecutionPolicy Unrestricted

**Note**: Rule này khá noise nếu không được exclude. Nếu muốn apply thì cần monitor và thêm exclude để giảm noise.

**Mitre Att&ck**: [https://attack.mitre.org/techniques/T1086/](https://attack.mitre.org/techniques/T1086/)

**Rule type**: Processes

**Rule content**:
```puppet
Rule {
    Process {
        Include OBJECT_NAME { -v "*powershell*" }
        Include PROCESS_CMD_LINE { -v "*-executionpolicy unrestricted*" }
        Include PROCESS_CMD_LINE { -v "*-ep unrestricted*" }
        Include PROCESS_CMD_LINE { -v "*-exec unrestricted*" }
        Include PROCESS_CMD_LINE { -v "*-exe unrestricted*" }
        Exclude PROCESS_CMD_LINE { -v "*MODULES*SMBSHARE*DISABLEUNUSEDSMB1*PS1*" }
    }
    Target {
        Match FILE {
            Include OBJECT_NAME {
                -v "C:\\WINDOWS\\SYSTEM32\\BCRYPT.DLL"
            } 
            Include -access "READ"
        }
    }
}
```
## Run powershell with File parameter

**Note**: Rule này khá noise nếu không được exclude. Nếu muốn apply thì cần monitor và thêm exclude để giảm noise.

**Mitre Att&ck**: [https://attack.mitre.org/techniques/T1086/](https://attack.mitre.org/techniques/T1086/)

**Rule type**: Processes

**Rule content**:
```puppet
Rule {
    Process {
        Include OBJECT_NAME { -v "*powershell*" }
        Include PROCESS_CMD_LINE { -v "*-f*" }
        Include PROCESS_CMD_LINE { -v "*-file*" }
        Exclude PROCESS_CMD_LINE { -v "*VMNetworkAdapter*" }
    }
    Target {
        Match FILE {
            Include OBJECT_NAME { 
                -v "C:\\WINDOWS\\SYSTEM32\\BCRYPT.DLL"
            }
            Include -access "READ"
        }
    }
}
```
## Run powershell with EncodedCommand parameter

**Note**: Rule này khá noise nếu không được exclude. Nếu muốn apply thì cần monitor và thêm exclude để giảm noise.

**Mitre Att&ck**: [https://attack.mitre.org/techniques/T1086/](https://attack.mitre.org/techniques/T1086/)

**Rule type**: Processes

**Rule content**:
```puppet
Rule {
    Process {
        Include OBJECT_NAME { -v "*powershell*" }
        Include PROCESS_CMD_LINE { -v "*-enc*" }
        Include PROCESS_CMD_LINE { -v "*-ec*" }
        Include PROCESS_CMD_LINE { -v "*-en*" }
        Include PROCESS_CMD_LINE { -v "*-encodedcommand*" }
        Exclude PROCESS_CMD_LINE { -v "*VMNetworkAdapter*" }
    }
    Target {
        Match FILE {
            Include OBJECT_NAME {
                -v "C:\\WINDOWS\\SYSTEM32\\BCRYPT.DLL"
            }
            Include -access "READ"
        }
    }
}
```

## Run powershell with InvokeExpression parameter

**Note**: Rule này khá noise nếu không được exclude. Nếu muốn apply thì cần monitor và thêm exclude để giảm noise.

**Mitre Att&ck**: [https://attack.mitre.org/techniques/T1086/](https://attack.mitre.org/techniques/T1086/)

**Rule type**: Processes

**Rule content**:
```puppet
Rule {
    Process {
        Include OBJECT_NAME { -v "*powershell*" }
        Include PROCESS_CMD_LINE { -v "*IEX*" }
        Include PROCESS_CMD_LINE { -v "*Invoke-Expression*" }
    }
    Target {
        Match FILE {
            Include OBJECT_NAME {
                -v "C:\\WINDOWS\\SYSTEM32\\BCRYPT.DLL"
            }
            Include -access "READ"
        }
    }
}
```
## Run powershell with Command parameter

**Note**: Rule này khá noise nếu không được exclude. Nếu muốn apply thì cần monitor và thêm exclude để giảm noise.

**Mitre Att&ck**: [https://attack.mitre.org/techniques/T1086/](https://attack.mitre.org/techniques/T1086/)

**Rule type**: Processes

**Rule content**:
```puppet
Rule {
    Process {
        Include OBJECT_NAME { -v "*powershell*" }
        Include PROCESS_CMD_LINE { -v "*-c*" }
        Include PROCESS_CMD_LINE { -v "*-command*" }
        Exclude PROCESS_CMD_LINE { -v "*SYSTEM*SECURITY*PRINCIPAL*WINDOWSIDENTITY*" }
    }
    Target {
        Match FILE {
            Include OBJECT_NAME {
                -v "C:\\WINDOWS\\SYSTEM32\\BCRYPT.DLL"
            }
            Include -access "READ"
        }
    }
}
```

## List Domain Admin using net.exe

**Mitre Att&ck**: [https://attack.mitre.org/techniques/T1087/](https://attack.mitre.org/techniques/T1087/)

**Rule type**: Processes

**Rule content**:
```puppet
Rule {
    Process {
        Include OBJECT_NAME { -v net.exe }
        Include PROCESS_CMD_LINE { -v "*group*Domain Admins*" }
        Include PROCESS_CMD_LINE { -v "*localgroup*administrators*" }
    }
    Target {
        Match FILE {
            Include OBJECT_NAME {
                -v "C:\\WINDOWS\\SYSTEM32\\NET1.EXE"
            }
            Include -access "READ"
        }
    }
}
```
## Create Admin Account via net.exe

**Mitre Att&ck**: [https://attack.mitre.org/techniques/T1136/](https://attack.mitre.org/techniques/T1136/)

**Rule type**: Processes

**Rule content**:
```puppet
Rule {
    Process {
        Include OBJECT_NAME { -v net.exe }
        Include PROCESS_CMD_LINE { -v "*localgroup*administrators*add" }
        Include PROCESS_CMD_LINE { -v "*add*localgroup*administrators*" }
        Include PROCESS_CMD_LINE { -v "*localgroup*add*administrators*" }
        Include PROCESS_CMD_LINE { -v "*localgroup*administrators*add*y" }
    }
    Target {
        Match FILE {
            Include OBJECT_NAME {
                -v "C:\\WINDOWS\\SYSTEM32\\NET1.EXE"
            }
            Include -access "READ"
        }
    }
}
```
## Run Psexec.exe

**Rule type**: Processes

**Rule content**:
```puppet
Rule {
    Process {
        Include OBJECT_NAME { -v psexec.exe }
    }
    Target {
        Match FILE {
            Include OBJECT_NAME {
                -v "C:\\WINDOWS\\SYSWOW64\\NETAPI32.DLL"
                -v "C:\\WINDOWS\\SYSTEM32\\NETAPI32.DLL"
            } 
            Include -access "READ"
        }
    }
}
```
## Monitor cscript.exe and wscript.exe

**Mitre Att&ck**: [https://attack.mitre.org/techniques/T1064/](https://attack.mitre.org/techniques/T1064/)

**Rule type**: Processes

**Rule content**:
```puppet
Rule {
    Process {
        Include OBJECT_NAME { -v cscript.exe }
        Include OBJECT_NAME { -v wscript.exe }
    }
    Target {
        Match FILE {
            Include OBJECT_NAME {
                -v "**\\*.vbs"
            }
            Exclude OBJECT_NAME -type PATH {
                -v "C:\\WINDOWS\\SYSTEM32\\SLMGR.VBS"
                -v "**\\MICROSOFT OFFICE\\**\\OSPP.VBS"
                -v "**\\MICROSOFT MONITORING AGENT\\AGENT\\HEALTH SERVICE STATE\\**\\*.VBS
            }
            Include -access "READ EXECUTE"
        }
    }
}
```

## Using wevtutil.exe to clean Event Log

**Rule type**: Processes

**Rule content**:
```puppet
Rule {
    Process {
        Include OBJECT_NAME { -v wevtutil.exe }
        Include PROCESS_CMD_LINE { -v "* cl *" }
    }
    Target {
        Match FILE {
            Include OBJECT_NAME {
                -v "C:\\WINDOWS\\SYSTEM32\\WEVTAPI.DLL"
            }
            Include -access "READ"
        }
    }
}
```

## Schedule a job on remote system using schtasks.exe

**Mitre Att&ck**: [https://attack.mitre.org/techniques/T1053/](https://attack.mitre.org/techniques/T1053/)

**Rule type**: Processes

**Rule content**:
```puppet
Rule {
    Process {
        Include OBJECT_NAME { -v schtasks.exe }
        Include PROCESS_CMD_LINE { -v "* /s *" }
        Include PROCESS_CMD_LINE { -v "* /create *" }
        Include DLL_LOADED -name "BCRYPT" { -v 0x1 }
    }
    Target {
        Match SECTION { Include -access "EXECUTE" }
    }
}
```

## Create process on remote system using wmic

**Mitre Att&ck**: [https://attack.mitre.org/techniques/T1047/](https://attack.mitre.org/techniques/T1047/)

**Rule type**: Processes

**Rule content**:
```puppet
Rule {
    Process {
        Include OBJECT_NAME { -v wmic.exe }
        Include PROCESS_CMD_LINE { -v "* process call create *" }
    }
    Target {
        Match FILE {
            Include OBJECT_NAME {
                -v "C:\\WINDOWS\\SYSTEM32\\WBEM\\WMIUTILS.DLL"
            }
            Include -access "READ"
        }
    }
}
```
## MS Word, Excel, PowerPoint trying to execute unwanted programs

**Rule type**: Processes

**Rule content**:
```puppet
Rule {
    Process {
        Include OBJECT_NAME { -v excel.exe }
        Include OBJECT_NAME { -v winword.exe }
        Include OBJECT_NAME { -v powerpnt.exe }
        Include OBJECT_NAME { -v EQNEDT32.EXE }
    }
    Target {
        Match FILE {
            Include OBJECT_NAME { 
                -v "cmd.exe"
                -v "powershell.exe"
                -v "mshta.exe"
                -v "wmic.exe"
                -v "certutil.exe"
                -v "cmstp.exe" 
            }
            Include -access "EXECUTE"
        }
    }
}
```
## Delete Volumes Shadown Copy - vssadmin

**Rule type**: Processes

**Rule content**:
```puppet
Rule {
    Process {
        Include OBJECT_NAME { -v *vssadmin* }
        Include PROCESS_CMD_LINE { -v "*delete*shadows*" }
     }
    Target {
        Match FILE {
            Include OBJECT_NAME {
                -v "C:\\WINDOWS\\SYSTEM32\\VSSAPI.DLL"
            }
            Include -access "READ"
        }
    }
}
```
## Delete Volumes Shadown Copy - wmic

**Rule type**: Processes

**Rule content**:
```puppet
Rule {
    Process {
        Include OBJECT_NAME { -v *wmic* }
        Include PROCESS_CMD_LINE { -v "*shadowcopy*delete*" }
    }
    Target {
        Match FILE {
            Include OBJECT_NAME {
                -v "C:\\WINDOWS\\SYSTEM32\\IMM32.DLL"
            }
            Include -access "READ"
        }
    }
}
```
## High confidence powershell Attacked

**Rule type**: Processes

**Rule content**:
```puppet
Rule {
    Process {
        Include OBJECT_NAME { -v "*powershell*" }
        Include PROCESS_CMD_LINE { -v "*-window hidden -enc*" }
        Include PROCESS_CMD_LINE { -v "*-nop -noni -enc*" }
        Include PROECSS_CMD_LINE { -v "*-enc*" }
        Include PROECSS_CMD_LINE { -v "*-NoP -sta -NonI -W Hidden -Enc*" }
        Include PROECSS_CMD_LINE { -v "*-EncodedCommand*" }
        Include PROECSS_CMD_LINE { -v "*-ep bypass -noni -w hidden -enc*" }
        Include PROECSS_CMD_LINE { -v "*-NoP -NonI -W Hidden -Enc*" }
        Include PROECSS_CMD_LINE { -v "*-nop -win hidden -noni -enc*" }
        Include PROECSS_CMD_LINE { -v "*-executionpolicy bypass -windowstyle hidden -enc*" }
        Include PROECSS_CMD_LINE { -v "*-nop -exec bypass -win Hidden -noni -enc*" }
    }
    Target {
        Match FILE {  
            Include OBJECT_NAME { 
                -v "C:\\WINDOWS\\SYSTEM32\\BCRYPT.DLL" 
            } 
            Include -access "READ"
        }
    }
}
```

## Running Mimikatz in Memory

**Rule type**: Processes

**Reference**: [https://cyberwardog.blogspot.com/2017/03/chronicles-of-threat-hunter-hunting-for.html](https://cyberwardog.blogspot.com/2017/03/chronicles-of-threat-hunter-hunting-for.html)

**Rule content**:
```puppet
Rule {
    Process {
        Include OBJECT_NAME { -v "*.exe" }
        Include DLL_LOADED -name "WINSCARD" { -v 0x1 }
        Include DLL_LOADED -name "CRYPTDLL" { -v 0x1 }
        Include DLL_LOADED -name "HID" { -v 0x1 }
        Include DLL_LOADED -name "SAMLIB" { -v 0x1 }
        Include DLL_LOADED -name "VAULTCLI" { -v 0x1 }
        Include DLL_LOADED -name "WMINET_UTILS" { -v 0x1 }
        Exclude -vtp_trust true
    }
    Target {
        Match SECTION { Include -access "LOAD_IMAGE" }
    }
}
```
