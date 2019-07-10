---
title: "FOR 508: Active Defence"
date: 2019-07-03T19:58:51+07:00
Categories: ["SANS FOR508"]
Description: ""
Tags: ["Incident Response", "SANS FOR508"]
menu: "posts"
draft: true
---


# Containment/Intelligence Development: Active Defense

Một cách thông thường, bạn có thể xác định được một sự cố đã/đang/sẽ xảy ra thông qua việc hunting và các alert từ các hệ thống ANBM. Để xác định đúng phạm vi của sự cố và duy trì được độ tin cậy của hệ thống, chúng ta cần thực hiện containment sự cố ngay khi xác định được các dấu hiệu đầu tiên.

Containment về cơ bản là làm mất khả năng của kẻ tấn công hoặc ngăn chặn kẻ tấn công đạt được mục tiêu của mình. Trong một cuộc tấn công, bạn càng đoán được ý định của kẻ tấn công, bạn sẽ càng dễ dang để thực hiện việc ngăn chặn. Ví dụ, Nếu kẻ tấn công đơn giản chi muốn đánh cắp bằng sáng chế và do thám tổ chức của bạn, việc thực hiện các hành dộng để giứi hạn kẻ tấn công sao chép dữ liệu ra bên ngoài (Data Exfiltration) là một bước để ngăn chặn kẻ tấn công thực hiện được mục đích. Tất cả các kỹ thuật bạn có thể sử dụng để hạn chế, giới hạn kẻ tấn công **di chuyển** bên trong hệ thống, thu thập thông tin, leak dữ liệu ra ngoài đều cần được triển khai. Điều này được gọi là phản ứng sự cố dựa trên Cyber Kill Chain.

Bài học từ cuộc tấn công APT đầu tiên "Moonlight Maze" - 2998, bất kỳ lúc nào người xử lý sự cố áp dụng các biện pháp ngăn chặn, kẻ tấn công cũng có hành động tương ứng và cuộc tấn công vẫn được duy trì. Đôi khi, kẻ tấn công có thể  ngừng hoặt động hàng tháng trước khi thực hiện xâm nhập lại vào hệ thống khi kẻ tấn công cảm thấy họ không bị được tìm kiếm bởi Team Incident Response nữa. Về cơ bản, chúng ta sử dụng firewall để tách vùng mạng của các hệ thống đang được target bởi APT Attack. Nếu kẻ tấn công đang chuẩn bị cho việc leak dữ liệu ra ngoài thì chúng ta block kết nối đó hoặc tạm thời ngắt hệ thông khỏi mạng internet.

Sau khi hoàn thành việc giới hạn kẻ tấn công, chúng ta nên tổng hợp, phân tích các kỹ thuật, hành vi của kẻ tấn công. Mục tiêu của việc này là để xác định tất cả các hệ thống đã bị tấn công, truy cập trái phép bên trong tổ chức của bạn. Ví dụ, nếu bạn tìm thấy tệp tin mã độc là **evil.exe** trên một hệ thống được xác định bị tấn công, việc của bạn là cố găng tìm kiếm tệp tin này trên tất cả các hệ thống còn lại. thông tin về tệp tin evil.exe (filename, hash, file size...) được gọi là IOC (Indicator of Compromise).

Việc xây dựng IOC là việc rất quan trọng trong bước Containment bởi vì nó sẽ cho phép Incident Response Team có được bằng chứng cụ thể để chứng minh được một hệ thống đã bị tấn công, bị chiếm quyền điều khiển. IOC không bắt buộc phải là mã độc, nó có thể là bất kỳ dấu hiệu gì có thể chứng minh được kẻ tấn công đã ở đó (trong hệ thông của bạn):

- Hash of Malware File
- Địa chỉ IP kẻ tấn công sử dụng để điều khiển
- Domain kẻ tấn công sử dụng để Exfiltration Data
- Địa chỉ Email
- Registry
- ....

Bất kỳ hệ thống nào đều có thể đã bị tấn công bởi, việc xác định một hệ thống bị nhiễm mã độc đơn giản hơn rất nhiều so với việc xác định một hệ thống đã bị kẻ tấn công truy cập, kiểm tra, sử dụng. Cũng cần nhớ rằng, kẻ tấn công chỉ cài đặt mã độc lên 54% các hệ thống mà họ xâm nhập.

# ./.
### Dịch hơi hơi lược   :wink::

> SANS FOR 508.1
