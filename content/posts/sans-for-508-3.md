---
title: "FOR 508: Hunting versus Reactive Response"
date: 2019-07-10T21:50:51+07:00
Categories: ["SANS FOR508"]
Description: ""
Tags: ["Incident Response", "SANS FOR508"]
menu: "posts"
draft: true
---

# Hunting versus Reactive Response

<center>![Hunting vs Reactive Response](/images/hunting_vs_reactive.PNG)</center>

Hunting mà chúng ta đang nói đến là việc chủ động (Proactive) tìm kiếm những dấu hiệu của sự cố bên trong hệ thống để chủ động đưa ra các hành động ứng phó. Ngược lại với điều này là chỉ thực hiện các hành động ứng phó khi sự cố đã xảy ra (Reactive).

Reactive Response là việc thực hiện ứng phó sự cố khi có alert hoặc notification. Alert có thể đến từ một bên thứ 3 như công an, VNcert... hoặc có thể đến tự nhóm giám sát ANBM của chính tổ chức của bạn. Sự giống nhau của phương pháp tiếp cận Reactive Response phần lớn Team Incident Response ngồi đợi một cuộc gọi tự đội giám sát ANBM, người dùng, IT về môt về một sự cố đã đang xảy ra và yêu cầu xử lý. Đa số các tổ chức bắt đầu xây dựng Team Incident Response theo phương pháp tiếp cận Reactive Response. Đặc biệt là trong các tổ chức lớn hoặc số lượng Incident nhiều, Team Incident Response thường phải thực hiện nhiều công việc khác ngoài các công việc thường xuyên của họ. Điều này làm cho họ chỉ có thể thực hiện Reactive thay vì Proactive.

Một tổ chức thực hiện chuyển từ Reactive sang Proactive Response khi họ thực sự không phát hiện được sự cố đủ sớm. Hunting hay Proactive Response không có nghĩa là chỉ tuân theo Proactive mà bỏ qua Reactive. Đa số các tổ chức thực hiện Proactive Response cùng thực hiện Reactive. Họ thực hiện bằng giao cho Team Incident Response một nhiệm vụ là thực hiện các hành động hunting các dấu hiệu và kẻ tấn công trong môi trường của họ. Để hoàn thành được việc này, Hunting Team cần phải được trang bị các kiến thức về các known malware, activity của mã độc, của kẻ tấn công hoặc thông tin của các nhóm hacker thường xuyên thực hiện các cuộc tấn công hoặc nhờ sự giúp đỡ của các tổ chức chuyên cung cấp các thông tin về Threat.

Một tổ chức quyết định thực hiện việc hungting có thể không xác định được tầm quan trọng của Threat Intelligence để có thể hungting đúng chỗ. Công việc không đơn giản là cố gắng tìm nhưng hành động xấu của kẻ tấn công. Hunting Team cần nắm rõ đâu là hành vi/hoặt đồng bình thường, đâu là hành vi/hoạt động bất thường. Hunting Team cần có hiểu biết về các công cụ kẻ tấn công thường sử dụng, kỹ năng liên quan đến điều tra số (network & host) để tìm kiếm các dấu hình của kẻ tấn công.

Đa số các Hunting Team đơn giảm là tìm kiếm nhưng điều **lạ** bên trong hệ tống mà không biết đó là **bình thường** hay **bất thường**. Tốt nhất là việc sử dụng các dữ liệu từ Threat Intelligence vào công việc hunting. Threat Intelligence sẽ cung cấp cho Hunting Team những thông tin cần thiết như các dấu hiệu của cuộc tấn công, các mã độc được sử dụng, các kỹ thuật đặc biệt đã được dùng, từ đó có thể trả lời được cấc câu hỏi:

- Tìm cái gì ?
- Tìm ở đâu ?

Đó chính là mục tiêu của Hunting Team.

Việc Hunting nên sử dụng kết hợp giữa manual, automation, dữ liệu từ network và Endpoint để tìm kiếm.

# ./.
### Dịch hơi hơi lược   :wink::

>    SANS FOR 508.1
