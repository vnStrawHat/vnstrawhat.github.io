+++
Categories = []
Description = ""
Tags = ["Incident Response"]
date = "2015-12-23T11:43:38+07:00"
menu = "posts"
title = "IR part 3 - Cơ cấu của một đội ứng phó sự cố"

+++

Một đội ứng phó sự cố nên ở trạng thái sẵn sàng trước những phát hiện hoặc nghi ngờ rằng có một sự cố về bảo mật đã xảy ra. Một hoặc nhiều thành viên trong nhóm tùy thuộc vào độ lớn của đội xử lý sự cố sẽ thực hiện xử lý sự cố. Việc xử lý sự cố bao gồm việc phân tích các dữ liệu, xác định tác động của vụ việc, các hành đồng để hạn chế thiệt hại và khôi phục lại sự hoạt động bình thường của dịch vụ.

# Mô hình

Các mô hình chính cho một đội ứng phó sự cố:

- **Đội ứng phó sự cố tâp trung**: Đội ứng phó sự cố này là đội duy nhất xử lý sự cố cho tổ chức của bạn. Đây là mô hình có hiệu quả trong các tổ chức nhỏ và nhỏ.
- **Đội ứng phó sự cố phân tán**: Có nhiều đội ứng phó sự cố cùng xử lý sự cố cho tổ chức. Mỗi đội có thể đảm nhiệm một trong các công đoạn trong quy trình ứng phó sự cố hoặc có thể mỗi đội ở một vị trí địa lý khác nhau của tổ chức. Đây là một mô hình có hiệu quả đối với các tổ chức lớn, có tài nguyên phân bổ ở nhiều vị trí địa lý khác nhau. Tuy nhiên, các đội phải có một thành phần duy nhất quản lý chung để tạo sự nhất quán trong quá trình xử lý cũng như chia sẻ thông tin.
- **Đội điều phối**: là một đội tư vấn cho các đội khác mà không có thẩm quyền với các đội đấy. Ví dụ như một đội nghiên cứu có thể tham gia hỗ trợ các đội ứng phó sự cố riêng biệt.
Nhân sự cho đội ứng phó sự cố có thể áp dụng 3 hình thức sau:
- **Toàn bộ là nhân viên của tổ chức**: Toàn bộ thành viên trong đội ứng phó sự cố đều là nhân viên của tổ chức. Hình thức này sẽ gây hạn chế trong việc yêu cầu sự hỗ trợ từ các nhà thầu hay các nhà cung cấp.
- **Một phần là thuê bên ngoài**: Tổ chức sẽ thuê ngoài một phần trong quy trình ứng phó sự cố. Phổ biến nhất là tổ chức thuê ngoài việc giám sát phát hiện xâm nhập, tưởng lửa và các thiết bị an ninh, phân tích các dấu hiệu đáng ngờ và báo cáo từng sự việc với đội ứng phó sự cố của tổ chức. Một số tổ chức thực hiện các quy trình cơ bản trong ứng phó sự cố và kêu gọi sự giúp đỡ của các nhà thầy hoặc các nhà cung cấp dịch vụ.
- **Thuê toàn bộ bên ngoài**: Hình thức này thường được sử dụng khi đội ứng phó sự cố của tổ chức không sẵn sàng thực hiện hoạt động ứng phó sự cố ( có thể đang xử lý các sự cố khác) hoặc nhân viện trong tổ chức không có đủ trình độ để thực hiện xử lý sự cố. Tổ chức sẽ phải có một nhân viên thực hiện công việc giám sát các công việc của những người được thuê làm công tác ứng phó sự cố.

# Lựa chọn mô hình phù hợp

Khi lựa chọn mô hình là hình thức nhân sự cho một đội ứng phó sự cố, các tổ chức cần xem xét những yếu tố sau:

- **Sự cần thiết của tính sẵn sàng 24/7 của đội ứng phó sự cố**: Hầu hết các tổ chức cần các thành viên đội ứng phó sự cố trực 24/7 nhằm ứng phó với các sự cố một cách nhanh nhất có thể. Việc trực 24/7 là rất cần thiết cho những sự cố tiền năng hay những sự cố kéo dài. Trong một số trường hợp, việc trực 24/7 của đội ứng phố sự cố là không cần thiết ví dụ như mục đích là truy tìm nguồn gốc của một cuộc tấn công đã xảy ra.
- **Kết hợp giữa thành viên full-time và part-time**: Nếu tổ chức có kinh phí và nhân sự hạn hẹp nên tính toán đến vấn đề này. Đội tứng phó sự cố có thể không nhất thiết phải thường trực mà chỉ hoạt động khi có sự cố thật sự xảy ra. Một nhóm các nhân viên hỗ trợ IT có thể thực hiện tiếp nhận và thực hiện các thủ tục đơn giản như tiếp nhận thông bao sự cố, thu thập dữ liệu sau đó thông báo trực tiếp cho đội ứng phó sự cố nếu có vẻ như là một sự cố nghiêm trọng đang xảy ra.
- **Tinh thần của nhân viên**: Việc ứng phó sự cố là rất căng thẳng. Nhiều tổ chức sẵn sàng tìm ra những người giàu kinh nghiệm, có tay nghề, và đặc biệt là có thể hỗ trợ 24/7.
- **Chi phí**: Chi phí là một yếu tố quan trọng, đặc biệt là nếu nhân yêu cầu phải có văn phòng hoạt động 24/7. Các chi phí cho việc ứng phó sự cố thường được bỏ qua và không được nằm trong ngân sách. Tuy nhiên nó rất quan trọng trong hoạt động úng phó sự cố như chi phí cho các công cụ hỗ trự ứng phó sự cố, các công cụ điều tra số, các chi phí bảo vệ cho khu vực làm việc hay các đối tác truyền thông.
- **Nhân viên thẩm định**: Việc xử lý sự cố đòi hỏi những kiến thức chuyên môn và kinh nghiệm cao trong lĩnh vực kỹ thuật và không phải tổ chức nào cũng có những nhân viên đảm bảo được việc đó. Việc thuê các đội ứng phó cự cố bên ngoài thực hiện ứng phó sự cố cho tổ chức là cần thiết. Tuy nhiên, những nhân viên của tổ chức thường có những kiên thức tốt hơn về môi trường của tổ chức. Vì thế, nhân viên thẩm định là rất quan trọng trong việc xác định các báo động sau liên quan đến các hành vi cụ thể trong quá trình ứng phó sự cố.

Khi xem xét sử dụng nhân sự bên ngoài để thực hiện ứng phó sự cố, các tổ chức cần chú ý những điểm sau:

- **Chất lượng hiện tại và trong tương lai**: Các tổ chức nên xem xét không chỉ chất lượng hiện tại của việc ứng phó sự cố mà nên xem xét các hành động đảm bảo chất lượng của việc xử lý sự cố trong tương lai.
- **Phân chia trách nhiệm**: Các tổ chức thường bác bỏ các yêu cầu từ đội ứng phó sự cố bên ngoài liên quan đến môi trường hoạt động của hệ thống bên trong tổ chức ( Ví dụ như ngắt kết nối một máy chủ web). Điều quan trọng là phải xác định được hành động nào là thích hợp tại thời điểm quyết định. Các đội liên quan đến vấn đề sự cố bên trong tổ chức cũng nên hỗ trợ đội ứng phó sự cố bên ngoài khi cần thiết.
- **Tiết lộ những thông tin nhạy cảm**: Xác định các thông tin cần thiết có thể cung cấp cho bên thứ 3 là gì. Các thông tin nhảy cảm nên được giới hạn hết mức có thể. Ví dụ các đội ứng phó sự cố bên ngoài tổ chức có thể biết những hoạt động của người dùng có ID là 1234 những không được phép biết họ là ai hay họ có vai trò gì. Sauk hi tiếp nhận cuộc điều tra về sự cố, hai bên nên có các thỏa thuật không tiết lộ thông tin trong đó có các điều khoản cấm tiết lộ thông tin và các hình thức xử phạt nếu vi phạm.
- **Thiếu sự tương quan**: Sự tương quan giữa nhiều nguồn dữ liệu là rất quan trọng. Trong một ví dụ thực tế, nếu hệ thống phát hiện xâm nhập ghi lại được một cuộc tấn công vào máy chủ web, nhung không có việc truy xuất vào các bản ghi dữ liệu của máy chủ, điều này có thể không xác định là hành động tấn công đó có thành công hay không. Để có hiệu của, đội ứng phó sự cố ngoài sẽ yêu cầu được truy cập vào các hệ thống quan trọng. Điều này làm tăng chi phí quản lý cũng như nguy cơ tiết lộ những thông tin nhạy cảm.
- **Xử lý sự cố  trên nhiều vị trí địa lý khác nhau**: Để việc xử lý sự cố có hiệu quả, các đội ứng phó sự cố thường yêu cầu được đến trực hiện vị trí của hệ thống để thực hiện điều tra. Việc này có thể dẫn đến việc phát sinh các chi phí về cơ sở vật chất cho đội ứng phó sự cố ngoài cũng như các vấn đề liên quan đến an toàn vật lý.
- **Duy trì các kỹ năng ứng phó sự cố tại tổ chức**: các tổ chức thuê ngoài hoàn toàn các đội ứng phó sự cố nên cố gắng duy trì các kỹ năng ứng phó sự cố cơ bản đối với một nhóm nhân viên bên trong tổ chức. Các tình huống có thể phát sinh trong khi các đội ứng phó sự cố ngoài không có mặt ở đó và cần được thực hiện gấp. Những kỹ thuật viên của tổ chức nên học được khẳ năng hiểu dược ý nghĩa, các thuật ngữ và các khuyến nghị của đội ứng phó sự cố.

# Thành viên trong đội ứng phó sự cố

Một nhân viên duy nhất nên được chỉ định để phụ trách việc ứng phó sự cố.

Trong mô hình thuê ngoài hoàn toàn, người này sẽ thực hiện giám sát, đánh giá và thẩm định hoạt động ứng phó sự cố. Người này có nhiệm vụ thực hiện các liên lạc với các bên liên quan (ví dụ như các cấp trên, các phòng ban liên quan, các đội ứng phó khác hay các tổ chức khác trong trường hợp cần thiết, tiếp xúc trực tiếp với các đơn vị truyền thông…) Người quản lý cần phải thành thạo kỹ thuật, có kỹ năng giao tiếp tốt đặc biệt là giao tiếp và nói trước nhiều người. Người quản lý cũng đảm bảo hoạt động ứng phó sự cố được thực hiện đúng cách, đúng quy trình.

Ngoài người quản lý, trong đội cầm có một người quản lý về mặt kỹ thuật. Người này phải có kiến thức về kỹ thuật sâu rộng, rất có kinh nghiệm trong việc xử lý sự cố, giám sát hệ thống và điều tra số. Đây là người chịu trách nhiệm về chất lượng công việc kỹ thuật của đội.
Thành viên của đội xử lý sự cố cần phải có kỹ thuật vững vàng về các mảng như quản trị hệ thống mạng, lập kỹ, phát hiện xâm nhập, điều tra số, phân tích mã động. Mỗi thành viên trong nhóm cần phải có kỹ năng giải quyết vấn đề và tư duy tốt. 

Các gợi ý sau đây sẽ giúp ích cho việc xây dựng và duy trì đội kỹ thuật:

- Đảm bảo đầy đủ ngân sách cho việc tăng cường và mở rộng tầm hiểu biết về các lĩnh vực kỹ thuật cũng như các vấn đề về mặt pháp lý. Điều này bao gồm việc gửi nhân viên đến các hội thảo, hội nghị về kỹ thuật, đầu tư tài liệu, phòng lab cũng như có kế hoạch đào tạo các nhân viên kỹ thuật để nâng cao trình độ.
- Cho các thành viên trong đội được thực hiện các nhiệm vụ khác nhau.
- Tạo một chương trình đào tạo để hỗ trợ các nhân viên mới học hỏi kinh nghiệm trong việc xử lý sự cố.
- Xây dựng các kịch bản về sự cố và cùng nhau thảo luận về cách xử lý chúng ra sao.

Các thành viên trong đội ứng phó sự cố cần phải có những kỹ năng khác ngoài kỹ năng chuyên môn. Kỹ năng làm việc theo nhóm là rất quan trọng vì bản chất của sự ứng phó sự cố là sự hợp tác và phối hợp. Kỹ năng nói cũng là một kỹ năng quan trọng bởi vì các thành viên trong đội phải tương tác với nhau. Bên cạnh đó, kỹ năng viết giúp cho các thành viên có thể chuẩn bị cho mình các thủ tục và báo cáo cần thiết.

# Sự phụ thuộc bên trong tổ chức

Một điều rất quan trọng là xác định các nhóm hay các thành phần khác bên trong tổ chức có cần phải tham gia vào quá trình xử lý sự cố hay không để có được sự hợp tác của họ khi cần thiết.

- **Người quản lý**: Những người quản lý thực hiện xây dựng chính sách ứng phó sự cố, chi ngân sách và vấn đề về nhân sự. Những người quản lý cũng chịu trách nhiệm về việc phối hợp giữa các bên trong vấn đề giải quyết sự cố.
- **Đảm bảo thông tin**: Các nhân viên an ninh có thể cần thiết trong một số giai đoạn của sử lý sự cố (Phòng ngừa, ngăn chặn, xóa, phục hồi). Ví dụ như thay đổi các chính sách kiểm soát an ninh mạng.
- **Nhân viên hỗ trợ IT**: Các kỹ thuật viện công nghệ thông tin không chỉ có các kỹ năng về hỗ trợ người dùng cuối mà họ cũng có những hiểu biết tốt về công nghệ hay cơ sở hạ tầng mà họ quản lý. Sự hiểu biết này có thể đảm bảo các hành động thích hợp được thực hiện trong trường hợp hệ thống bị ảnh hưởng bởi sự cố.
- **Bộ phận pháp lý**:  Các chuyên gia pháp lý nên xem xét các kế hoạch ứng phó sự cố, chính sách và thủ tục để đảm bảo tính phù hợp về mặt pháp luật.
- **Bộ phận truyền thông**: Tùy theo tính chất và tác động của một sự cố mà có thể tồn tại nhu cầu thông báo đến các đơn vị truyền về sự cố và kết quả của việc ứng phó sự cố.
- **Bộ phận nhân sự**: nếu một nhân viên bị nghi ngờ gây ra sự cố, bộ phận nhân sự có thể giam gia ví dụ như trong các trường hợp hỗ trợ hoàn thành thủ tục tố tụng pháp luật
- **Bộ phận kinh doanh**: Tổ chức cần đảm bảo việc các chính sách, thủ tục và các kế hoạch kinh doanh cần phải được đồng bộ. Các sự cố về an ninh máy tính có thể làm suy yếu sự phục hồi kinh doanh của một tổ chức. các chuyên gia về kinh doanh cần được biết về sự cố và mức độ ảnh hưởng để có thể đánh giá tác động đến hoạt động kinh doanh , đánh giá rủi ro nhằm đưa ra những kế hoạch phù hợp.
- **Bộ phân an ninh**: Một số sự cố an ninh máy tính xảy ra thông qua các vi phạm về vấn đề an ninh vật lý. Các đội phải ứng sự cố cần đến trực tiếp các cớ sở để xử lý sự cố.

# Các dịch vụ của đội ứng phó sự cố

Trọng tâm của một đội ứng phó sự cố là xử lý sự cố, nhưng nó khá là hiếm đội ứng phó sự cố nào mà chỉ hoạt động xử lý sự cố đơn thuần. Sau đây là một số dịch vụ ngoài mà đội ứng phó sự cố có thể cung cấp:

- **Phát hiện xâm nhập**: Điều này rất quan trọng đối với một đội ứng phó sự cố. Phát hiện xâm nhập là bước đầu tiên, nó có thể chỉ ra những sự kiện là tiềm năng cho một cuộc tấn công. Việc phát hiện sớm ảnh hưởng trực tiếp đến sự hiệu quả của hoạt động ứng phó sự cố.
- **Tư vấn**: Đội ứng phó sự cố có thể khuyến cáo tổ chức trong các vấn đề liên quan đến các lỗ hổng mới tiềm năng, các lỗ hổng về chính sách có thể dẫn đến tiền năng cho các cuộc tấn công.
- **Đào tạo**: Đội ứng phó sự cố có thể thực hiện đào tạo nâng cao nhận thức về an toàn thông tin cho các nhân viên cũng như đào tạo nâng cao tình độ chuyên môn cho các kỹ thuật viên trong tổ chức
- **Chia sẻ thông tin**: Các đội xử lý sự cố thường xuyên chia sẻ thông tin với nhau nhằn nâng cao khả năng phản ứng và xử lý sự cố.

> zMadMoon

> Dịch lược NIST.SP.800-61 Rev. 2
