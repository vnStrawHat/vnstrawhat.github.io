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

Sáu bước trong quy trình xử lý sự cố bao gồm: **Preparation** (Chuẩn bị), **Identification** (nhận biết sự cố), **Containment** (Ngăn chặn), **Eradication/Remediation** (Loại bỏ), **Recovery** (Khôi phục), **Lessons Learned** (Bài học kinh nghiệm). Mỗi bước trong quy trình sẽ giúp chỉ ra cho người thực hiện lộ trình để xử lý sự cố, một cách để chỉ ra những việc người xử lý sự cố cần phải thực hiện và những việc tiếp theo họ sẽ phải làm.
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
Hành động khôi phục nhằm mục đích đưa tổ chức quay lại với hoạt động kinh doanh hằng ngày. Tuy nhiên những hành động dài hạn cũng cần phải được bắt đầu thực hiện. Thông thường, các hành động khôi phục được sử dụng để nâng cao tính bảo mật của hệ thống nhằm chống lại và phát hiện được các sự cố khác tương tự có thể xảy ra.
Một số hành động cho việc khôi phục bao gồm:
 - Improve enterprise authentication model
 - Enhanced network visibility
 - Establish comprehensive patch management program
 - Enforce change management program
 - Centralized Logging
 - Enhance password portal
 - Establish security awareness training program
 - Network re-design

### Follow Up
Thông thường, việc follow up là cần thiết để đảm bảo sự cố đã được ngăn chặn hoàn toàn, kẻ tấn công đã được loại bỏ ra khỏi hệ thống, các hành đông ngăn ngừa đã được thực hiện, các hệ thống hoạt động trở lại như bình thường

### Lesson Learn 
:confused: Mặc dù quy trình có 6 bước nhưng đây là mục thứ 7 từ trên xuống  :smile:

Lesson Learn là bước cuối dùng trong quy trình xử lý sự cố. Bước này cần cố gắng để trả lời các câu hỏi sau:

 - Which key elements should be covered ?
 - When they should take place ?
 - Who should participate ?
 - What actions should be taken to move your organization forward after suffering from a security incident ?

Các bài học rút ra từ quá trình xử lý sự cố cung cấp rất nhiều lợi tích cho Team Incident Response, tổ chức về việc ứng phó các sự cố sẽ xảy ra trong tương lai. Các bài học kinh nghiệm  có thể giúp tổ chức:

-   **Learn from mistakes.** Especially during a security incident, organizations tend to operate in crisis mode and are too overwhelmed to execute all steps flawlessly. Identifying where mistakes have been made will help self-evaluate performance and set the tone for continuous improvement.
-   **Understand where problems occurred.**  Despite its negative impact, a security incident can represent a valuable opportunity to dig deeper into where exactly errors were made, which vulnerabilities led to the incident, whether  [security controls](https://www.hitachi-systems-security.com/blog/information-security-controls-faq/)  were effective and whether there are any security gaps in the organization that could be fixed. Getting all relevant parties together during this exercise will help understand the problems from a 360-degree view.
-   **Recognize success.** Too often, organizations tend to forget about what actually went well during a security incident. In addition to analyzing what didn’t go well, it is equally important to recognize what went well – whether it relates to employee performance, effective processes in place, crisis communications etc. Identifying success stories will encourage positive performance and leverage exemplary behavior for future incidents.
-   **Retain organizational knowledge.** During a crisis, documentation is often the last thing on the mind of those who are dealing with the crisis. Keep in mind that it is crucial to document the good, the bad and the ugly to retain this knowledge and make it available for future use.
-   **Reduce future risk.** If similar security incidents occur in the future, a lessons learned session can help prevent similar mistakes and thereby reduce the risk to the organization as a whole.
-   **Improve future performance.** By analyzing how an organization dealt with a security incident, it can optimize its incident response performance for future similar scenarios. In addition to having an Incident Response Plan in place, lessons learned sessions contribute to adapting and improving this plan so that the organization can be better prepared.


[https://www.hitachi-systems-security.com/blog/lessons-learned-incident-response-planning/](https://www.hitachi-systems-security.com/blog/lessons-learned-incident-response-planning/)
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTIxMDg0NjM1ODMsLTEzMDE2OTAzNzIsMj
A0MjA1MTA3OF19
-->