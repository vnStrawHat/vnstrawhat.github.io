+++
title = "2. SANS FOR 508: The problem ?"
date = 2019-06-26T19:59:27+07:00
Categories = []
Description = ""
Tags = ["Incident Response"]
menu = "posts"
draft: true
+++

# The problem ? Imediate Eradication without proper Incident Scoping/Containment
Một vấn đề thực sự là không nhiều Team Incident Response tuân theo 6 bước trong quy trình ứng phó sự cố. Các Team có xu hướng bỏ qua các bước khác và ngay lập tức đi đến bước Eradication/Remediation. Chúng ta có thể nhanh chóng đi đến bươc thực hiện  remediation nhưng không phải bằng cách bỏ qua các bước quan trọng (key step) trong quy trình cũng như xem nhẹ vai trò của Cyber Threat Intelligence.

Hay thử search trong tài liệu NIST Computer Security Incident Response Handling Guide với các từ "power", "plug", "reinstall", "pulling". Kết quả sẽ là các từ này không tồn tại trong tài liệu này. Rất nhiều tổ chức có xu hướng thực hiện việc "rút nguồn điện", "khởi động lại", "cài đặt lại" như là một phương pháp để loại từ ngay lập tức mối đe dọa hoặc ngăn chặn việc lây lan mã độc trong hệ thống mạng. Học thuyết ứng phó sự cố này tập trung vào việc cách ly từng hệ thống có dấu hiệu bị xâm nhập. Vấn đề nằm ở chỗ đa số các tổ chức không thể phát hiện việc bị xâm nhập để chống laị nó trước khi lây lan sang những hệ thống khác. Thống kê cho thấy các vụ viêc hệ thống bị xâm nhập trái phép được phát hiện sớm thì tính theo tuần hoặc tháng. Thậm chí có những vụ việc chỉ được phát hiện hằng năm sau đó. Phản ứng với các vụ việc hệ thống bị xâm nhập trái phép mà không tuân theo 6 bước của quy trình ứng phó sự cố thì có thể dẫn đến tình huống như trò chơi đập chuột (whack a mole). Bạn sẽ không bao giờ giải quyết được hết tất cả những con chuột.

Có một số các hành động tượng tự như: Block IP Address, rebuild system, reset account bị chiếm quyền điều khiển đa số được thực hiện một cách tự động. Điều này có thể làm cho việc ứng phó sự cố không đạt được hiệu quả tốt do buộc Team Incident Response chời trò Whack a Mole.

Whack a Mole xảy ra khi chuyển quá nhanh đến bước Eradication mà xem nhẹ việc thực hiện Cyber Threat Intelligence, bỏ qua hoặc thực hiện hời hợt bước Contaiment. Nếu bạn không xác định được scope của sự cố, việc thực hiện loại bỏ sẽ không được thực hiện đầy đủ dẫn đén kẻ tấn công vấn chưa được lại bỏ ra khỏi hệ thống mạng. Kẻ tấn công sẽ tìm cách cài đặt mã độc mới trên các hệ thống khác hoặc dừng việc tấn công để nâng cao khả năng sống sót. Qua thời gian, Incident Response Team không nhận ra kẻ tấn không vẫn còn trong hệ thống mạng, Incident được đóng lại. Một thời gian sau kẻ tấn công lại quay lại tấn công tổ chức.

Điều gì thúc đẩy cho việc thực hiện khắc phục sự cố ngay lập tức ? Rất nhiêu tổ chức lo sợ dữ liệu của họ bị mất (phá hoại), bị rò rỉ (data leak). hoặc đơn giản là hành động đấy mang lại giá trị và rủi ro là rất cao. Kết quả là đa số Incident Response Team biết việc rút phích cắn điện là một ý kiến tồi nhưng bắt buộc phải thực hiện do quản lý của họ sợ...
