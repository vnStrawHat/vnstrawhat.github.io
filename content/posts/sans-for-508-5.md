---
title: "FOR 508: Forensic Analysis VS Threat Hunting"
date: 2019-07-23T21:32:01+07:00
Categories: ["SANS FOR508"]
Description: ""
Tags: ["Incident Response", "SANS FOR508"]
menu: "posts"
draft: true
---

# Forensic Analysis Versus Threat Hunting

|Forensic Analysis|Rapid Analysis & Threat Hunting|
|:------|:---------------------------|
|Don't Know What I'm Looking For|Know What I'm Looking For|
|Not accomplished on every system| Touch and go scan for compromises using threat intel/indicators|
|Helps answer key questions about breach|Identify new systems compromised|
|Key to successful remediation|Meant to be able to scan 1000 of systems quickly|
|- Collects malware - sends to RE team<br>- Collects network signatures - sends to network team| Looks for key signs of attacker activity via security intelligence|
|Deep dive forensics: <ul><li>Memory analysis (all processes)</li><li>Timeline analysis (All activity)</li><li>File system analysis (all file system analysis)|Enterprise scanning: <ul><li>Memory analysis (specific processes)</li><li>Timeline analysis (specific activity</li><li>File system analysis (Specific file system analysis)</li></ul>|

Một trong những mục tiêu chính của khóa học là sử dụng điều tra số để thực hiện đồng thời deep-dive forensics và enterprise forensics cho nhiệm vụ xác định các hệ thống đã bị thỏa hiệp và trả lời các câu hỏi chính liên quan đến các dữ liệu bị truy cập trái phép. Nếu không lựa chọn được phương pháp thích hợp, nhóm của bạn sẽ bị mất phương hướng và không biết cái gì cần được xem xét.

Đối với deep-dive forensics, chúngta không nên sử dụng để thực hiện trên tất cả các hệ thống khi xảy ra sự cố. Ngược lại, deep-dive forensics được sử dụng khi đã xác định được một hệ thống nào đó có xuất hiện các dấu hiệu của cuộc tấn công. Hoặc đôi khi có một phỏng đoán có độ tin cậy cao rằng hệ thống này đã bị chiếm quyền điều khiển.

Deep-dive forensics thường được tập trung để phân tích nhanh một hệ thống trong khoảng thời gian ít hơn 3 ngày để có thể bao quát được toàn bộ các tiến trình đang chạy trên memory, các activity chính, timeline, khôi phục các tệp tin bị xóa. Mục tiêu của deep-dive forensics là thu thập đầy đủ thông tin nhất có thể để chuyển thông tin cho các team khác có liên quan như RE Team, Network Team...

Enterprise scanning có nghĩa là thực hiện phân tích đồng loạt các hệ thống trong một thời gian ngắn nhất. Tuy nhiên chúng ta cần biết điều chúng ta cần tìm kiếm là gì. Việc tìm kiếm tập trung vào một process, file, registry key, hành động cụ thể có thể thể chứng minh được nếu tồn tại các dấu hiệu đó thì đồng nghĩa với việc hệ thống đó đã bị chiếm quyền điều khiển hoặc truy cập trái phép. Nếu việc thực hiện tìm kiếm cho kết quả đủ nhanh, chung ta có thể sử dụng kết quả đó để tìm ra các cuộc xâm nhập mới và tiến đến phát hiện các bước tấn công khác nhanh hơn.
