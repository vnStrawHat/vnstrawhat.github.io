---
title: "FOR 508: Intelligence-Driven Incident Response"
date: 2019-07-19T21:22:31+07:00
Categories: ["SANS FOR508"]
Description: ""
Tags: ["Incident Response", "SANS FOR508"]
menu: "posts"
draft: true
---

# Intelligence-Driven Incident Response

<center>![Hunting vs Reactive Response](/images/intelligence_driven_ir.PNG)</center>

Hình trên thể hiện bước identification/scoping và ước containment/intelligence development sẽ được lặp đi lặp lại trong quá trình sự cố đang xảy ra hoặc đã xảy ra. Đa số Hunting Team sẽ liên tục sử dụng các feedback từ vòng lặp trên để giúp cho việc xác định các hệ thống bị chiếm quyền điều khiển một cách nhanh nhất. Có khả năng kẻ tấn công sẽ cố gắng xâm nhập lại hệ thống của bạn một lần nữa và Team Incident Response bây giờ đã được trang bị các kiến thức phù hợp sẽ hành động nhanh hơn, chủ động hơn trong việc tìm kiếm, theo dõi các vị trí mà kẻ tấn công có khả năng xuất hiện. Bằng cách sử dụng kết hợp giữa manual và automation, việc của Team Incident Response là tìm kiếm, xác định các TTP (Tactics, Techniques and Procedures) của kẻ tấn công trên các hệ thống.

Các loại TTPs sẽ rất hữu dụng đối với Hunting Team cho việc xác định mục tiêu của kẻ tấn công đang muốn thực hiện. Các loại TTPs có thể xác định bao gồm:

- **Initial compromise:** Cuộc tấn công ban đầu sẽ cho phép kẻ xâm nhập truy cập được vào hệ thống mạng của bạn. Đa số các cuộc tấn công đầu tiên không diễn ra một cách liên tục và mức độ truy cập mà kẻ tấn công có được nói chung là khá mong manh. Nếu như Incident Response Team có thể loại ngăn chặn được kẻ tấn công trước khi thiết lập được một kết nối với hệ thống mạng của tổ chức thì khả năng sống sót của kẻ tấn công dường như bằng Zero. Tuy nhiên điều này rất khó để thực hiện nhất là khi các cuộc tấn công spear phishing rất khó phát hiện, ngăn chặn. ***(Thật ra tôi cũng như bạn, dịch không đọc lại không hiểu đoạn này muốn nói cái gì :confused:)***
- **Establish foothold/maintain presence:** đây là cách mà kẻ tấn công duy trì sự hiện diện của mình trong hệ thống của tổ chức bị tấn công cho dù hệ thống có bị khởi động lại đi chăng nữa. Kẻ tấn công không cần phải tấn công lại hệ thống một lần nữa. Việc loại bỏ cách thức kẻ tấn công duy trình sự hiện diện của họ trong hệ thống mạng sẽ bắt buộc kẻ tấn công phải thực hiện tấn công lại hệ thống để thiết lập một phương pháp duy trì khác. Ví dụ như thực hiện một campaign spear phishing mới, exploit lại hệ thống có lỗ hổng...
- **Lateral movement:** đây là cách mà kẻ tấn công di chuyển giữa các hệ thống. Nó là các kỹ thuật để kẻ tấn công có thể chiếm quyền điều khiển một hệ thống khác khi đã kết nối được vào hệ thống mạng của tổ chức.
- **Data collection:** để thực hiện việc thu thập dữ liệu, kẻ tấn công sẽ phải để làm một lượng lớn dấu vết trong quá trình tìm kiếm và xác định các dữ liệu cần thu thập nằm ở đâu. Việc xác định được các giữ liệu có giá trị là một việc khó đối với kẻ tấn công và đôi khi là với chính Incident Response Team ( :satisfied: almost ).
- **Data exfiltration:** Một khi kẻ tán công đã tìm được các dữ liệu cần thiết, việc tiếp theo họ nghĩ đên là làm cách nào để đưa các dữ liệu đấy ra ngoài. Việc leak dữ liệu ra ngoài thường là dễ nói hơn là làm bởi vì chuyển một lượng lớn dữ liệu ra ngoài rất dễ bị phát hiện bởi SOC Team hoặc các automation trigger trên SIEM phát hiện lưu lượng dữ liệu lớn bất thường. Thật ra đấy là sách nói, còn tôi thấy trong thực tế việc SOC team và SIEM phát hiện được **data exfiltration** là rất khó khi mà môi trường, hạ tầng CNTT không chuẩn hóa. Việc xác định được lưu lượng dữ liệu bất thường cần phải xây dựng baseline. Kể cả việc xác định được lưu lượng giữ liệu bất thường thì cũng mất rất nhiều thời gian để xác định xem lưu lượng đấy bắt nguồn từ đâu :question: nó là bình thường :question: hay bất thường :question: giữ liệu trong luồng giữ liệu bất thường đấy là gì ? Có thể trả lời xong các câu hỏi trên thì data đã được leak xong ra ngoài. Bạn có giám drop connect này khi chưa trả lời được hết các câu hỏi trên không  :question:

Anyway, đây là bước cần phải tìm ra và ngăn chặn bằng mọi cách có thể. Để kẻ tấn công thực hiện **data exfiltration** mà không bị ngăn chặn và phát hiện thì .....  :no_mouth:
