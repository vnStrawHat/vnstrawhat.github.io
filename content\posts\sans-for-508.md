+++
title = "FOR 508: Six-Step Incident Response Process"
date = 2019-06-17T21:15:32+07:00
Categories = ["SANS FOR508"]
Description = ""
Tags = ["Incident Response", "SANS FOR508"]
menu = "posts"
+++

![enter image description here](https://vnstrawhat.github.io/images/ir-step.png)
# Six-Step Incident Response process

Ứng phó sự cố được coi như có mức độ quan trọng tương đương với việc quản lý sự cố.  Thông thường, quy trình ứng phó sự cố bao gồm 6 bước chính. Tuy nhiên, việc ứng phó sự cố đòi hỏi, yêu cầu nhiều chiến thuật, quy trình linh hoạt để có thể khắc phục, ứng phó thành công đối với sự cố. Cũng nên nhớ rằng, kẻ tấn công có thể đã ở trong hệ thống của bạn hơn 1 năm hoặc lâu hơn trước khi gây ra sự cố. Theo Mandiant, Trung bình cần 101 ngày để phát hiện được hệ thống của bạn đã bị tấn công/thỏa hiệp.

Với khái niệm phòng thủ tích cực (Active Defense), Tổ chức của bạn nên sử dụng toàn bộ kiến trúc bảo mật,  hệ thông bảo mật và nhân sự ANBM để xác định phạm vi của sự cố. Sự trưởng thành về mặt security của một tổ chức thể hiện bởi sử dịch chuyển của việc phát hiện các sự cố được thực hiện bởi nhân sự của tổ chức đó thay vì đối tác bên thứ 3.

Để giúp tiếp cận dễ dàng hơi với 6 bước chính trong quy trình ứng phó sự cố, SANS cung cấp các [form template](https://www.sans.org/score/incident-forms) chứa các thông tin, checklist cần thiết để có thể sử dụng khi có sự cố:

 - Incident Contact List
 - Identification Checklist
 - Survey
 - Containment Checklist
 - Eradication Checklist
 - Communications Log

6 bước trong quy trình xử lý sự cố bao gồm: **Preparation** (Chuẩn bị), **Identification** (nhận biết sự cố), **Containment** (Ngăn chặn), **Eradication/Remediation** (Loại bỏ), **Recovery** (Khôi phục), **Lessons Learned** (Bài học kinh nghiệm). Mỗi bước trong quy trình sẽ giúp chỉ ra cho người thực hiện lộ trình để xử lý sự cố, những việc người xử lý sự cố cần phải thực hiện và những việc tiếp theo họ sẽ phải làm.

## Overview of the Six-Step Incident Response Process

### Preparation

Phương pháp luận của việc ứng phó sự cố thường sẽ nhấn mạnh vào bước chuẩn bị. Preparation không chỉ là chuẩn bị về khả năng ứng phó của tổ chức đối với sự cố mà còn phải đảm bảo hệ thống máy chủ, hệ thống mạng, ứng dụng được cấu hình và vận hành an toàn.

### Identification

Việc phát hiện/nhận biết sự cố đa số và nên bắt nguồn từ Team ANBM hoặc Team vận hành ANBM. Tuy nhiên việc này có thể đến từ một đối tác bên ngoài.

Bước đầu tiên của quy trình ứng phó sự cố là rất quan trọng, nó sẽ giúp cho việc nhân dạng đúng hệ thống nào đang bị tấn công (Tất cả các hệ thống bị tấn công, không phải chỉ 1 hoặc 2 hệ thống). Theo một thống kê, kẻ xâm nhập chỉ cài đặt malware hoặc backdoor lên 54% hệ thống bị chiếm quyền điều khiển. Điều này có nghĩa là những hệ thống khác trong tổ chức của bạn bị chiếm quyền điều khiển nhưng không được cài đặt malware hoặc backdoor. Việc cần làm là xác định tất cả các hệ thống đó.

Thật không may, hầu hết các tổ chức chuyển ngay đến bước Containment và Remediation ngay khi xác được định dấu hiệu đầu tiên mà bỏ qua việc xác định phạm vi của cuộc tấn công. Kẻ tấn công sẽ nhanh chóng đưa ra các biện pháp đối phó để đảm bảo việc có thể tiếp tục truy cập hệ thống, tiếp tục thu thập dữ liệu.

Identification là bước đầu tiên để hướng tới việc khắc phục sự cố (Remediation). Team Incident Response phải tìm cách xác định tất cả các hệ thống đã bị chiếm quyền điều khiển. Tuy nhiên để thực hiện tốt điều đó, Team Incident Response phải thu thập thông tin.

### Containment and Intelligence Development

Trong khi phân tích hành vi của kẻ tấn công, bạn sẽ biết được chính xác làm thế nào kẻ tấn công có thể vượt qua các hệ thống ANBM, làm thế nào để kẻ tấn công có thể di chuyển từ hệ thống này sang hệ thống khác, và mã độc đã được sử dụng như thế nào.

Tất cả các đặc điểm trên đều có thể được sử dụng để xác định các hệ thống khác bị đã bị chiếm quyền điều khiển và giúp cho  Team Incident Response đưa ra được các phương án ngăn chặn để sử dụng cho việc khắc phục sự cố (Remediation).  Threat Intelligence là một điểm quan trọng đối với Team Incident Response trong quá trình xử lý incident.

### Eradication/Remediation

Khắc phục sự cố là các hành động cần thiết có thể hoàn thành trong khoảng thời gian nhanh nhất để giảm thiểu sự cố hiện tại. Đa số các công ty chọn thực hiện các hành động có thời gian thực hiện không quá 1 tuần. Các hành động sau nên được thực thi để đảm bảo sự cố được khắc phục một cách toàn diện:

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

Thông thường, việc follow up là cần thiết để đảm bảo sự cố đã được ngăn chặn hoàn toàn, kẻ tấn công đã được loại bỏ ra khỏi hệ thống, các hành đông ngăn ngừa đã được thực hiện, các hệ thống hoạt động trở lại như bình thường.

### Lesson Learn

:confused: Mặc dù quy trình có 6 bước nhưng đây là mục thứ 7 từ trên xuống  :smile:

Lesson Learn là bước cuối dùng trong quy trình xử lý sự cố. Bước này cần cố gắng để trả lời các câu hỏi sau:

 - Which key elements should be covered ?
 - When they should take place ?
 - Who should participate ?
 - What actions should be taken to move your organization forward after suffering from a security incident ?

Các bài học rút ra từ quá trình xử lý sự cố cung cấp rất nhiều lợi tích cho Team Incident Response, tổ chức về việc ứng phó các sự cố sẽ xảy ra trong tương lai. Các bài học kinh nghiệm  có thể giúp tổ chức:

-   **Learn from mistakes.** Đặc biệt trong các sự cố ANBM, các tổ chức có xu hướng hoạt động trong chế độ khủng hoảng, hoặc làm việc quá sức để  xử lý hoàn hảo tất cả các bước trong quy trình ứng phó sự cố. Việc bình tĩnh ngồi lại xác định, đánh giá các hành động, các vị trí tồn tại lỗ hổng sẽ giúp đánh giá và nâng cao được hiệu suất của hoạt động ứng phó sự cố.
-   **Understand where problems occurred.**  Mặc dù có tác động tiêu cực đến hoạt động của tổ chức nhưng các sự cố ANBM là cơ hội tốt, cơ hội quý giá để tìm hiểu sâu hơn về vị trí xảy ra sự cố ? lỗ hổng dẫn đến sự cố ? các security control đã áp dụng có hiệu quả không ? liệu còn lỗ hổng bảo mật nào trong hệ thống cần và có thể fix hay không ?. Tập hợp tất cả các vấn đề trên sẽ giúp có một có nhìn 360 độ về hiện trạng ANBM của tổ chức.
-   **Recognize success.**  Khi xảy ra sự cố,  các tỏ chức thường xuyên quyên đi những sự việc tốt xảy ra trong quá trình ứng phó sự cố. Ngoài các sự việc không tốt đẹp, điều quan trọng là nhận ra những điều tốt đẹp, những việc mà Team Incident Response đã thực hiện tốt ví dụ: hiệu suất làm việc của các thành viên, quy trình hiệu quả, truyền thông giải quyết khủng hoảng tốt. Các câu chuyện về sự thành công, các việc thực hiện tốt sẽ làm khích lệ tinh thần của các thành viên từ đó khuyên khích sự tích cực, các hành vi mẫu mực, tuân thủ trong tương lai.
-   **Retain organizational knowledge.** Trong một cuộc khủng hoảng, tài liệu hóa thường là điều cuối cùng mà những người xử lý khủng hoảng nghĩ đến. Luôn phải nhớ rằng điều quan trọng nhất là phải ghi lại những điều đã làm được, những điều đã làm được, những điều đã làm tốt, những điều chưa làm tốt để giữ lại các kiến thức này và làm cho nó sẵn sàng để những người mới có thể tiếp cận một cách dễ dàng và dễ hiểu nhất.
-   **Reduce future risk.** Nếu các sự cố ANBM xảy ra trong tương lai, các bài học kinh nghiệm sẽ giúp ngăn ngừa các lỗi  tương tự có thể xảy ra do đó làm giảm rủi ro cho toàn bộ tổ chức.
-   **Improve future performance.** Bằng cách phân tích cách mà tổ chức của bạn ứng phó với với sự cố ANBM, nó có thể giúp tối ưu hóa hiệu suất xử lý các sự cố tương tự. Ngoài việc có kế hoạch cho việc ứng phó sự cố, các bài học kinh nghiệm sẽ góp phần điều chỉnh và cải thiện kế hoạch giúp cho tổ chức chuẩn bị tốt hơn cho các sự cố sắp tới.

Dịch hơi hơi lược   :wink::

- [https://www.hitachi-systems-security.com/blog/lessons-learned-incident-response-planning/](https://www.hitachi-systems-security.com/blog/lessons-learned-incident-response-planning/)
- SANS FOR 508
<!--stackedit_data:
eyJoaXN0b3J5IjpbOTA5MDkyMTg4LDE1NjgzNjk3NTgsNTM1Nj
U4NTk2LDMxMTkzNjQ0MCw2NTkxMTU0MjcsLTIxMDg0NjM1ODMs
LTEzMDE2OTAzNzIsMjA0MjA1MTA3OF19
-->