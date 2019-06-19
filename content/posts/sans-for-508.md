---
title: "SANS FOR 508: Six-Step Incident Response Process"
date: 2019-06-17T21:15:32+07:00
draft: true
Categories = []
Description = ""
Tags = ["Incident Response"]
menu = "posts"

---

![enter image description here](https://vnstrawhat.github.io/images/ir-step.png)
# Six-Step Incident Response process
Ứng phó sự cố được coi như có mức độ quan trọng tương đương với việc quản lý sự cố.  Thông thường, quy trình ứng phó sự cố bao gồm 6 bước chính. Tuy nhiên, việc ứng phó sự cố đòi hỏi, yêu cầu nhiều chiến thuật, quy trình linh hoạt để có thể khắc phục, ứng phó thành công đối với sự cố. Cũng nên nhớ rằng, kẻ tấn công có thể đã ở trong hệ thống mạng của bạn hơn 1 năm trước khi gây ra sự cố. Theo Mandiant, Trung bình cần 101 ngày để phát hiện được hệ thống của bạn đã bị tấn công/thỏa hiệp.

Việc phát hiện sự cố đa số và nên bắt nguồn từ Team ANBM hoặc Team vận hành ANBM. 
Với khái niệm phòng thủ tích cức (Active Defense), Tổ chức của bạn nên sử dụng toàn bộ kiến trúc bảo mật,  hệ thông bảo mật và nhân sự ANBM để xác định phạm vi của vấn đề. Sử trưởng thành về mặt security của một tổ chức sẽ là sử dịch chuyển của việc phát hiện các sự cố được thực hiện bởi nhân sự của tổ chức thay vì đối tác bên thứ 3.

Để giúp bạn có thể tiếp cận dễ dàng hơi với 6 bước chính trong quy trình ứng phó sự cố, SANS cung cấp các [form template](https://www.sans.org/score/incident-forms) chứa các thông tin cần thiết để có thể sử dụng khi có sự cố:

 - Incident Contact List
 - Identification Checklist
 - Survey
 - Containment Checklist
 - Eradication Checklist
 - Communications Log

Sáu bước trong quy trình xử lý sự cố bao gồm: **Preparation** (Chuẩn bị), Identification (nhận biết sự cố), **Containment** (Ngăn chặn), **Eradication/Remediation** (Loại bỏ), **Recovery** (Khôi phục), **Lessons Learned** (Bài học kinh nghiệm). Mỗi bước trong quy trình sẽ giúp chỉ ra cho người thực hiện lộ trình để xử lý sự cố, một cách để chỉ ra những việc người xử lý sự cố cần phải thực hiện và những việc tiếp theo họ sẽ phải làm.
## Overview of the Six-Step Incident Response Process
### Preparation
Phương pháp luận của việc ứng phó sự cố thường sẽ nhấn mạnh vào bước chuẩn bị. Không chỉ chuẩn bị là khả năng ứng phó của tổ chức đối với sự cố mà còn phải đảm bảo hệ thống máy chủ, hệ thống mạng, ứng dụng đủ an toàn.
### Identification
Việc phát hiện/nhận biết sự cố đa số và nên bắt nguồn từ Team ANBM hoặc Team vận hành ANBM. Tuy nhiên việc này có thể đến từ một đối tác bên ngoài.

Bước đầu tiên của quy trình ứng phó sự cố là rất quan trọng, nó sẽ giúp cho việc nhân dạng đúng hệ thống nào đang bị tấn công (Tất cả các hệ thống bị tấn công, không phải chỉ 1 hoặc 2 hệ thống). Theo một thống kê, kẻ xâm nhập chỉ cài đặt malware hoặc backdoor lên 54% hệ thống bị chiếm quyền điều khiển. Điều này có nghĩa là những hệ thống khác trong tổ chức của bạn bị chiếm quyền điều khiển nhưng không được cài đặt malware hoặc backdoor. Việc cần làm là xác định tất cả các hệ thống đó.

Thật không may, hầu hết các tổ chức chuyển ngay đến bước Containment và Remediation ngay khi xác được định dấu hiệu đầu tiên mà bỏ qua việc xác định phạm vi của cuộc tấn công. Kẻ tấn công sẽ nhanh chóng đưa ra các biện pháp đối phó để đảm bảo việc có thể tiếp tục truy cập hệ thống, tiếp tục thu thập dữ liệu.

Identification là bước đầu tiên để hướng tới việc khắc phục sự cố (Remediation). Team Incident Response phải tìm cách xác định tất cả các hệ thống đã bị chiếm quyền điều khiển. Tuy nhiên để thực hiện tốt điều đó, Team Incident Response phải thu thập thông tin.
### Containment and Intelligence Development
Trong khi phân tích hành vi của kẻ tấn công, bạn sẽ biết được chính xác làm thế nào kẻ tấn công có thể vượt qua các hệ thống ANBM, làm thế nào để kẻ tấn công có thể di chuyển từ hệ thống này sang hệ thống khác, và mã đọc đã được sử dụng như thế nào.

Tất cả các đặc điểm trên đều có thể được sử dụng để xác định các hệ thống khác bị đã bị chiếm quyền điều khiển và giúp cho  Team Incident Response đưa ra được các phương án ngăn chặn để sử dụng cho việc khắc phục sự cố (Remediation).  Threat Intelligence là một điểm quan trọng đối với Team Incident Response trong quá trình xử lý incident.
### Eradication/Remediation
Khắc phục sự cố là các hành động cần thiết có thể hoàn thành trong khoảng thời gian nhanh nhất để giảm thiểu sự cố hiện tại. Đa số các công ty chọn thực hiện các hành động có thời gian thực hiện hơn 1 tuần. Các hành động sau nên được thực thi để đảm bảo sự cố được khắc phục một cách toàn diện:

 - Block malicious IP Address
 - Blackhole malicious domain name
 - Rebuild compromised systems
 - Coordinate with cloud and service providers
 - Enterprise password Change
 - Verify all remediation activities
### Recovery

### Follow Up/Lession Learn
<!--stackedit_data:
eyJoaXN0b3J5IjpbOTA0MTQ2NTMyLDEzMDIxNDI1NjMsMTg4Mz
U2MzczOCwtMTA2NjA4Njg3MSwxMTU3ODcyODAxLDcyOTkzMjM4
MywtNzM1NDQ5NzA3XX0=
-->