+++
Categories = []
Description = ""
Tags = ["Incident Response"]
date = "2015-12-22T11:13:11+07:00"
menu = "posts"
title = "IR part 2 - Chính sách, kế hoạch, thủ tục ứng phó sự cố"

+++

# Chính sách

Chính sách về quản lý và ứng phó sự cố của từng các nhân hay tổ chức là khác nhau. Tuy nhiên, hầy hết các chính sách đều bao gồm các yếu tố sau:

* Cam kết quản lý
* Mục đích và mục tiêu của chính sách
* Phạm vi của chính sách
* Định nghĩa về sự cố bảo mật và các vấn đề liên quan
* Cơ cấu tổ chức, định nghĩa về vai trò, mức độ và quyền hạn
* Xếp hạng mức độ ưu tiên hoặc mức độ nghiêm trọng của sự cố
* Performance Measures
* Báo cáo và mẫu phương thức liên lạc

# Kế Hoạch

Cá nhân hay tổ chúc cần có một kế hoạch chính thức, tập trung và phối hợp các bên liên quan để giải quyết các sự cố về bảo mật. Một kế hoạch ứng phó với sự cố sẽ cung cấp một lộ trình thực hiện các biện pháp nhằm giải quyết sự cố. Kế hoạch về ứng phó sự cố thường bao gồm các yếu tố sau:

- Nhiệm vụ
- Mục tiêu và chiến lược
- Sự phê chuẩn các yêu cầu quản lý cấp cao
- Phương pháp của tổ chức để ứng phó với sự cố
- Cách thức để đội ứng phó sự cố liên lạc với các thành phần khác trong một tổ chức hoặc là liên lạc với một tổ chức khác
- Đánh giá khả năng ứng phó vơi sự cố và tính hiệu quả của nó
- Làm cách nào đẻ kế hoạch có thể được áp dụng một cách tổng thể cho toàn bộ tổ chức

# Thủ tục

Các thử tục về ứng phó cự cố cần phải được xây dựng dựa trên chính sách và kế hoạch ứng phó sự cố. Thủ tục hoạt động tiêu chuẩn (Standard operating procedures - SOPs) là một sự phân chia cụ thể về mặt quy trình kỹ thuật nó bao gồm kỹ thuật, checklist, các biểu mẫu đước sử dụng bởi đội ứng phó sự cố. Việc chuẩn hóa các thủ tục sẽ làm giảm đi đáng kể sự thiếu sót, sai sót trong quá trình xử lý sự cố đặc biệt là đối với những tình huống nhạy cảm, căng thẳng. SOPs phải được kiểm tra để đảm bảo tính chính xác và tính hữu dụng của nó. SOPs nên bao gồm những yếu tố sau:

## Chia sẻ thông tin với bên ngoài:

Trong quá trình ứng phó sự cố, đội ứng phó sự cố cần phải được chia sẻ thông tin ra bên ngoài trong một số trường hợp. Chẳng hạn như để thực thi pháp luật, trả lời các đơn vị truyền thông, hoặc tìm kiếm các chuyên gia bên ngoài giúp đỡ xử lý sự cố.

Các tổ chức cũng có thể chủng động chia sẻ thông tin về sự cố với các đồng nghiệm khác nhằm phát hiện và phân tích các sự cố giúp cho việc giải quyết sự cố nhanh chóng hơn. Các thủ tục về vấn đề chia sẻ thông tin ra bên ngoài cầm phải được thiết lập nhằm đảm bảo các thông tin nhạy cảm không bị lộ ra bên ngoài một cách trái phép có thể dẫn đến những tổn thất về kinh tế cũng như danh tiếng cho tổ chức. Đội ứng phó sự cố phải lưu lại tất cả các thông tin, địa chỉ liên lạc với phía bên ngoài công ty, tổ chức để có thể quản lý về mặt trách nhiệm trong trường hợp thất thoát thông tin xảy ra.

<center>![Các đối tượng chia sẻ thông tin với đội ứng phó sự cố](/images/object_share.png)</center>

## Phương tiện

Đội ứng phó sự cố nên thiết lập các thủ tục cho việc công bố thông tin qua các phương tiện truyền thông tuân theo chính sách của tổ chức. Ví dụ như một người trong đội ứng phó sự cố, sẽ tham gia cùng với các thành viên của phòng quan hệ công chúng trước các phương tiện truyền thông:

- Tổ chức các buổi tập huấn về tương tác với các phương tiện truyền thông liên quan khi có sự cố xảy ra, trong đó phải đảm bao việc không tiết lộ các thông tin nhạy cảm chẳng hạn như các chi tiết kỹ thuật của các biện pháp đối phó.
- Thiết lập một thủ tục ngắn gọn để các phương tiện truyền thông liên lạc liên quan đến các thông tin nhạy cảm của một sự việc cụ thể trước khi thảo luận chính thức với các phương tiện truyền thông.
- Duy trì các thông tin về tình trạng hiện tại của sự cố và liên tục cập nhật thông tin
- Nhắc nhở toàn bộ nhân viên về các thủ tục chung khi xử lý yêu cầu của các phương tiện truyền thông.
- Tập huấn các cuộc phỏng vấn giả và các cuộc họp báo khi có sự cố xảy ra. Một cố câu hỏi thường được các phương tiện truyền thông yêu cầu như:
  * Ai là kẻ tấn công ? Tại sao ?
  * Cuộc tấn công xảy ra khi nào ? Chuyện gì đã xảy ra ? Điều này xảy ra do bảo mật kém hay do nguyên nhân nào khác ?
  * Cách thức là sự cố này có thể lan rộng ra ? Bạn đã xác định sự cố như thế nào và nên làm gì để sự cố này không xảy ra trong tương lai ?
  * Tác động của sự cố này như thế nào ? Mức độ nghiêm trọng như thế nào ? Tác động của sự cố này đến các thông tin cá nhân (PII) ? Thiệt hại ước tính của sự cố này là bao nhiêu ?

## Thi hành luật

Các đội phản ứng sự cố cần được làm quen và thảo luận với các đại diện của cơ quan thực thi pháp luật trước khi sự cố xảy ra về các điều kiện để thực thi pháp luật trong trường hợp cần thiết như báo cáo, cách thức thực hiện báo cáo, những bằng chứng cần thu thập và làm thế nào để thu thập các bằng chứng đó.
Các cơ quan pháp luật ở các nước khác cũng có thể tham gia trong trường hợp kẻ tấn công nằm bên ngoài phạm vi của quốc gia.

Các nhân đại diện thực thi pháp luật phải được chỉ định một cách phù hợp với yêu cầu của pháp luật và thủ tục của tổ chức. Nhiều tổ chức muốn bổ nhiệm một thành viên trong đội ứng phó sự cố làm đại diện trong việc thực thi pháp luật. Người này nên làm quen với các thủ tục, báo cáo của tất cả các cơ quan pháp lý có liên quan. Một lưu ý rằng công ty hay tổ chức thường chỉ nên liên lạc với một cơ quan pháp lý để tránh việc xung đột trong vấn đề phán quyết.

## Một số thành phần bên ngoài

Công ty hay tổ chức trong quán trình ứng phó sự cố có thể muốn thảo luận và trao đổi về sự cố với các nhóm bên ngoài:

- **ISP**: Quá trình ứng phó sự cố có thể cần sự hỗ trợ của các ISP trong việc ngăn chặn một cuộc tấn công mạng lớn hoặc truy tìm nguồn gốc của cuộc tấn công đó.
- **Chủ sở hữu của địa chỉ tấn công**: Nếu một cuộc tấn công có nguồn gốc xuất phát từ một tổ chức bên ngoài, việc xử lý sự cố có thể được thực hiện bằng cách nói chuyện, trao đổi với tổ chức bên ngoài đó nhằm mục đích thu thập chứng cư hay ngăn chặn cuộc tấn công.
- **Các nhà cung cấp phần mềm**: Đội ứng phó sự cố có thể muốn trao đổi với các  nhà cung cấp phần mềm về các hoạt động đáng ngờ của phần mềm. Sự trao đổi này có thể chỉ ra được các cuộc tấn công chiếm quyền điều khiển máy chủ thông qua một phần mền dễ bị tổn thương. Các nhà cung cấp phần mềm cũng có thể cung cấp các thông tin về các mỗi đe dọa, các lỗ hổng chưa được vá ở các phiên bản cũ để giúp đội ứng phó xử lý sự cố.
- **Các đội ứng phó sự cố khác**:
Một số đội ứng phó sự cố khác có thể cũng gặp các sự cố tương tự nên việc chủ động chia sẻ thông tin sẽ tăng hiệu quả trong quá trình xử lý sự cố (ví dụ như cảnh báo sớm, tăng khả năng chuẩn bị ứng phó sự cố)

# ./.
### Dịch hơi hơi lược   :wink::

> NIST.SP.800-61 Rev. 2
