+++
Categories = []
Description = ""
Tags = []
date = "2015-12-24T11:50:39+07:00"
menu = "main"
title = "Incident Response part 4 - Quy trình ứng phó sự cố"

+++

Quy trình ứng phó sự cố bao gồm nhiều gian đoạn. Giai đoạn đầu tiên là việc thành lập và đào tạo một đội phản ứng sự cố và lựa chọn các công cụ cũng như nguồn lực cần thiết. Trong thời gian chuẩn bị, tổ chức cũng phải hạn chế số lượng các sự cố xảy ra. Việc phát hiện các lỗ hổng bảo mật là cần thiết để cảnh báo cho các tổ chức bất kể khi nào xảy ra sự cố. Sauk hi sự cố được xử lý đầy đủ, tổ chức cần phải phát hành một báo cáo chi tiết về nguyên nhân và chi phí của vụ việc, các bước để tổ chức ngăn chặn trong tương lai. Các quy trình ứng phó sự cố và các mối quan hệ được minh họa bởi hình sau:

![Quy trình ứng phó sự cố](/img/incident_response_process.png)

# Chuẩn bị

Các phương pháp ứng phó sự cố thường nhấn mạng việc chuẩn bị. Nó không chỉ thiết lập khả năng để tổ chức ứng phó với sự cố mà còn ngăn ngừa sự cố bằng cách đảm bảo rằng hệ thống mạng và các ứng dụng đủ an toàn để vận hành. Mặc dù đội ứng phó sự cố thường không chịu trách nhiệm trong việc phòng ngừa sự cố xảy ra tuy nhiên bước này cung cấp các thông tin, lời khuyên cơ bản để chuẩn bị ứng phó và phòng ngừa sự cố xảy ra.

## Chuẩn bị ứng phó sự cố

Danh sách các mục dưới đây cung cấp các ví dụ về các công vụ và nguồn lực trong quá trình xử lý sự cố. Những mục này là những điểm bắt đầu cho việc thảo luận các công cụ sử dụng cũng như nguồn lực xử lý sự cố của một tổ chức.

### Chuẩn bị về liên lạc và truyền thông

- Thông báo cho các thành viên và những người liên quan bên trong và bên ngoài tổ chức ví dụ như các đội phản ứng xử lý sự cố khác hoặc cơ quan thực thi pháp luật. Thông tin có thể bao gồm số điện thoại, địa chỉ email, các khóa công khai và hướng dẫn cho việc xác minh danh tính.
- Lây thông tin ngay lập tức từ các đội khác bên trong tổ chức bao gồm cả vấn đề leo thang thông tin
- Cơ chế cảnh báo sự cố. Ví dụ như số điện thoại, địa chỉ email, hệ thống tin nhắn… Nên có một kênh riêng cho việc báo cáo sự cố nặc danh
- Phát hành hệ thống cho phép theo dõi các thông tin và trạng thái của sự cố.
- Phần mềm mã hóa được sử dụng để liên lạc giữa các thành viên trong nhóm, giữa nhóm với các tổ chức bên ngoài.
- Các cơ chế bảo mật lưu trữ để đảm bảo an toàn cho bằng chứng cũng như các tài liệu nhạy cảm khác.

### Chuẩn bị về phân tích sự cố phần cứng và phần mềm

- Các biện pháp và thiết bị sao lưu để tạo ảnh đĩa, bảo quản file log và lưu trữ các dữ liệu sự cố liên quan.
- Máy tính xách tay phục vụ cho hoạt động phân tích dữ liệu, chặn bắt gói tin, viết báo cáo.
- Máy trạm, máy chủ, thiết bị mạng để phục vụ cho việc mô phỏng sự lây lan của phần mềm độc hại hoặc khôi phục lại các bản sao lưu dữ liệu.
- Máy in di động để tạo các bản sao lưu tệp tin log và các bằng chứng trong trường hợp hệ thống không có kết nối mạng.
- Hệ thống chặn bắt và phân tích lưu lượng mạng.
- Ổ cứng hoặc thiết bị lưu trữ di động chứa các chương trình tin cậy để thu thập thông tin, bằng chứng từ hệ thống.
- Các thiết bị thu thập chứng cứ như máy ảnh kỹ thuật số, máy ghi âm, túi bảo quản bằng chứng…

### Phân tích tài nguyên sự cố

- Danh sách các port thường được sử dụng, các port lạ, các port Trojan sử dụng
- Tài liệu về hệ điều hành, các ứng dụng, các giao thức, các sản phần antivirus và các sản phẩm phát hiện xâm nhập
- Sơ đồ mạng và danh mục các tài nguyên quan trọng.
- Baseline của hệ thống mạng hiện tại và các ứng dụng

## Ngăn ngừa sự cố

Giữ số lượng các sự cố ở mức thấp là rất quan trọng trong việc bảo vệ các quá trình kinh doanh của tổ chức. Nếu các kiểm soát về an ninh là không đủ thì số lượng các sự cố quá lớn có thể dẫn đến việc đội ứng phó sự cố không thể xử lý kịp. Điều này dễ dẫn đến việc sự cố được đáp ứng chậm dẫn đến những thiệt hại không thể lường trước được.

Mặc dù đội ứng phó sự cố nói chung không chịu trách nhiệm bảo vệ tài nguyên nhưng họ có thể xác định và đánh giá những rủi ro không thể nhận thức được. Đội ứng phó sự cố có thể xác định được những khoảng trống của các chính sách tạo điều kiện cho các cuộc tấn công tiền năng. Các kiến nghị sau giúp nâng cao vấn đề bảo mật trong các hệ thống mạng và ứng dụng:

- **Đánh giá rủi ro**: Đánh gia rủi ro định kỳ cho hệ thống và ứng dụng là việc làm nhằm xác định những rủi ro có thể gây ra bởi sự kết hợp giữa các mối đe dọa và lỗ hổng bảo mật. Việc đánh giá rủi ro định kỳ cung cấp cho tổ chức các mỗi rủi ro tiền năng qua đó đưa ra được các biện pháp đối phó phù hợp. Việc đánh giá rủi ro định kỳ cũng cho phép các thành viên nhấn mạnh các hoạt động giám sát và phản ứng đối với tài nguyên hệ thống.
- **Tổ chức an ninh**: Tất cả các tổ chức nên kiểm tra các cấu hình tiêu chuẩn của hệ thống . Ngoài việc liên tục cập nhật các bản vá, việc cấu hình nên được thực hiện theo nguyên tắc đặc quyền tối thiểu. Người sử dụng chỉ được cấp những quyền tối thiểu tương ứng với vai trò của người dùng đó trong hệ thống.
- **An toàn hệ thống mạng**:  Các vành đai mạng nên được cấu hình để từ chối tất cả các hoạt động không cho phép một cách rõ ràng.
- **Phòng chống mã độc hại**: phần mền phát hiện và phòng chống mã độc phải được triển khai trên toàn bộ tổ chức. Các phần mềm phòng chống mã độc nên hoạt động cả các cấp bảo vệ mức hệ điều hành và mức ứng dụng.
- **Nâng cao nhận thức của toàn bộ nhân viên**: Triển khai đào tạo nâng cao nhận thức về an toàn thông tin cho toàn bộ nhân viên trong tổ chức. Bài học kinh nghiệm rút ra được từ các sự cố trước đây cần được chia sẻ cho các nhân viên để giảm tần số xuất hiện của sự cố.

# Phát hiện và phân tích

![Phát hiện và phân tích](/img/detection_analysis.png)

## Dấu hiệu của sự cố

Đối với nhiều tổ chức, công đoạn khó khăn nhất trong quá trình ứng phó sự cố là phát hiện chính xác và đánh giá sự cố xem sự cố đã xảy ra hay chưa, loại hình, mức độ nghiêm trọng của sự cố. Điều này được thực hiện bằng cách kết hợp ba yếu tố sau:

- Sự cố có thể được phát hiện thông qua nhiều phương tiện khác nhau, các mức độ và tính trung thực cũng khác nhau. Khả năng phát hiện tự động bao gồm việc dựa trên các sự kiện của hệ thống phát hiện xâm nhập IDS, phần mềm chống mã độc hại và phân tích quá trình đăng nhập. Sự cố có thể được phát hiện thông qua những báo cáo của người dùng.
- Số lượng các sự cố tiền ẩn thưởng rất cao. Ví dụ như nó không phổ biến cho một tổ chức cụ thể hoặc hệ thống phát hiện thông báo quá nhiều sự kiện trong một khoảng thời gian.
- Việc phát hiện sự cố phụ thuộc vào kiến thức kỹ thuật, kinh nghiệm trong việc phân tích các dữ liệu liên quan đến sự cố của đội ứng phó sự cố 

Dấu hiệu về sự cố có thể rơi vào 2 loại. Một là những <b><span style="color:red;">dấu hiệu tiền thân</span></b>, nó là những dấu hiệu cho thấy sự cố có thể xảy ra trong tương lai. Hai là <b><span style="color:red;">dấu hiệu chỉ thị</span></b>, nó là những dấu hiệu cho thấy sự cố đã xảy ra hoặc có thể xảy ra ngay lập tức. Nếu một <b><span style="color:red;">dấu hiệu tiền thân</span></b> được phát hiện, tổ chức có thể thực hiện ngăn chặn sự cố này trước khi sự cố xảy ra. Một số <b><span style="color:red;">dấu hiệu tiền thân</span></b> như là:

- Log của máy chủ web ghi nhận được các bản ghi của các công cụ dò quét lỗ hổng bảo mật
- Mối đe dọa từ các nhóm hacker sẽ tấn công tổ chức
- Một lời tuyên bố tấn công nhằm vào các máy chủ hay ứng dụng của tổ chức

Trong khi các <b><span style="color:red;">dấu hiệu tiền thân</span></b> là khá ít thì các <b><span style="color:red;">dấu hiệu chỉ thị</span></b> lại rất phổ biến:

- Các thiết bị phát hiện xâm nhập cảnh báo kẻ tấn công đang khai thác lỗi tràn bộ đệm.
- Phần mềm chống mã độc hại cảnh báo một máy chủ bị nhiễm phần mềm độc hại.
- Một quản trị viên nhìn thấy một tệp tin khác thường trên máy chủ.
- Máy chủ ghi lại tự thay đổi cấu hình kiểm toán của mình.
- Tệp tin log ghi lại rất nhiều lần đăng nhập sai đến một hệ thống
- Một quản trị viên thấy lưu lượng bất thường bên trong hệ thống mạng

## Nguồn thông tin

Các dấu hiệu của sự cố được xác định từ nhiều nguồn thông tin khác nhau, phổ biến là từ các phần mềm phòng chống mã độc hại, các bản ghi nhật ký, hệ thống phát hiện xâm nhập, con người…

- IDPS
- SIEMs
- Antivirus
- File integrity checking
- Monitoring services
- System, application, security logs
- Network device logs
- Netflows
- Thông tin về các lỗ hổng bảo mật mới
- Người bên ngoài và bên trong tổ chức

## Phân tích sự cố

Việc phân tích sự cố sẽ dễ dàng hơn nếu các dấu hiệu được đảm bảo là chính xác. Tuy nhiên các dấu hiệu không phải lúc nào cũng đúng. Ví dụ như các hệ thống phát hiện xâm nhập có thể đưa ra những cảnh báo sai. Hoặc tệ hơn, hệ thống phát hiện xâm nhập đưa ra quá nhiều cảnh báo, nó làm cho việc phân tích trở nên vô cùng khó khăn. 
Thậm chí là nếu một số dấu hiệu là chính xác, nó cũng không đảm bảo được là sự cố đã xảy ra. Một số sự cố dễ dàng được phát hiện ví dụ như nội dung của trang web đã bị thay đổi. Tuy nhiên không nhiều những sự cố dễ dàng phát hiện được như vậy. Biện pháp khắc phục tốt nhất là xây dựng một đội ngũ giàu kinh nghiệm và thành thạo có thể phân tích, xác định chính xác các dấu hiệu và đưa ra những hành động thích hợp. Nếu không có một đội ngũ nhân viên có khả năng phát hiện và phân tích sự việc thì việc ứng phó sự cố sẽ không hiệu quả và những sai lầm, tốn kém có thể xảy ra.
Đội phản ứng sự cố nên phân tích một cách nhanh chóng và xác định xem sự cố đã thật sự xảy ra hay chưa. Khi đã xác định một sự cố đã thật sự xảy ra, nhóm nghiên cứu bắt đầu thực hiện các bước phân tích ban đầu đề xác định phạm vi của sự việc ví dụ như mạng, máy chủ, hệ thống bị ảnh hưởng, cái gì có thể là nguồn gốc của vụ việc, làm thế nào để sự việc xảy ra. Những phân tích ban đầu sẽ cung cấp thông tin cho các hoạt động phân tích sâu tiếp theo.
Các khuyến nghị sau đây giúp việc phân tích sự cố dễ dàng và hiệu quả hơn:

- **Hồ sơ về hệ thống mạng**: Lập hồ sơ các vị trí thay đổi để dễ dàng xác định và khoanh vùng sự cố hơn.
- **Hiểu về các hành vi bình thường**: Các thành viên trong đội ứng phó sự cố cần hiểu về các hành vi bình thường để có thể xác định được các hành vi bất bình thường bên trong hệ thống. Cách để có được điều này là rà soát các thông tin trong nhật ký và các cảnh báo bảo mật. Tiến hành đánh gia thường xuyên các bản ghi log sẽ cho chung ta một cái nhìn tổng quan về sự bình thường và bất bình thường của hệ thống.
- **Tạo chính sách về lưu trữ các bản ghi log**: Thông tin liên quan đến sự cố có thể được lưu trữ tại một số nơi trên hệ thống chẳng hạn như tường lửa,  các bản ghi log của ứng dụng… Việc phân tích các bản ghi log cũ có thể cho ra các dấu hiệu của các cuộc tìm kiếm thông tin, dò quét tạo tiền đề cho sự cố xảy ra hoặc có thể xác định được các sự cố đã xảy ra mà chưa được phát hiện.
- **Giữ cho tất cả các thiết bị được đồng bộ về thời gian**: Giao thức NTP có thể giúp cho hệ thống đồng bộ về mặt thời gian. Thời gian chuẩn của hệ thống có thể cung cấp chính xác thời gian sự cố xảy ra, các cuộc tấn công xảy ra chính xác vào thời gian nào…
- **Chạy các công cụ chặn bắt dữ liệu mạng để cho thêm các thông tin bổ sung**. Đôi khi dữ liệu từ các bản ghi là không đủ cho quá trình phân tích. Các dữ liệu về lưu lượng mạng cho phép ta biết chính xác những gì đang xảy ra bên trong hệ thống mạng của tổ chức.

## Đánh giá mức độ ưu tiên cho sự cố

Xác định mức độ ưu tiên cho các sự kiện cũng là một vấn đề quant rọng. Các sự cố không nên được xử lý theo thứ tự thời gian phát hiện. Thay vào đó, việc xử lý các sự cố cần được ưu tiên dựa vào các yếu tố sau:

- Tác động về mặt chức năng của sự cố: Sự cố nhắm đến mục tiêu là các hệ thống công nghệ thông tin thường ảnh hưởng đến hoạt động kinh doanh. Việc xử lý sự cố nên được xem xét đến việc làm ảnh hưởng đến hoạt động của hệ thống.Nên xem xét cả những tác động về mặt chức năng trong tương lai có thể xảy ra.
- Tác động về mặt thông tin của sự cố: Sự cố có thể ảnh hưởng đến tính bảo mật, tính toàn vẹn và tính sẵn sàng của hệ thống.Việc xử lý sự cố cần được xem xét sự ảnh hưởng về mặt thông tin đến hoạt động bình thường của tổ chức. Nó cũng có thể liên quan đến các tỏ chức khác nếu như sự cố ảnh hưởng đến các dữ liệu gắn liền với tổ chức đố.
- Phục hồi sự cố: Mức độ của sự cố ảnh hưởng đến chi phí khôi phục, thời gian và nguồn lực của tổ chức trong đó chưa kể đến một số trường hợp các sự cố xảy ra không thể phục hồi. 

### Phân loại tác động về mặt chức năng như sau:

| Loại   | Định nghĩa                 |
|:------:|:---------------------------|
|Không|Là các sự cố không ảnh hưởng gì tới khả năng cung cấp dịch vụ đến tất cả các người dùng|
|Thấp|Ảnh hưởng tối thiểu, hệ thống của tổ chức có thể cung cấp dịch vụ cho người dùng nhưng tính hiệu quả bị ảnh hưởng|
|Trung Bình|Tổ chức mất khả năng cung cấp một dịch vụ quan trọng với một phần người dùng hệ thống|
|Cao|Tổ chức không còn có thể cung cấp một số dịch vụ quan trọng cho bất kỳ người dùng nào|


### Phân loại mức độ tác động về mặt thông tin

| Loại   | Định nghĩa                 |
|:------:|:---------------------------|
|Không|Thông tin không bị thay đổi, sửa, xóa hay bị tổn hạn gì cả|
|Vi phạm bảo mật|Các thông tin cá nhân (PII) bị truy cập trái phép|
|Vi phạm sở hữu|Các thông tin độc quyền của tổ chức bị truy cập trái phép|
|Mất tính toàn vẹn|Các thông tin nhạy cảm hoặc độc quyền bị thay đổi hoặc xóa|

### Phân loại khẳ năng phục hồi

| Loại   | Định nghĩa                 |
|:------:|:---------------------------|
|Bình thường|Thời gian để phục hồi có thể dự đoán được với nguồn lực hiện tại|
|Bổ sung|Thời gian phục hồi có thể dự đoán được với nguồn lực bổ sung|
|Gia tăng|Thời gian phục hồi không thể dự đoán trước được, cần thêm nguồn lực và sự giúp đỡ từ bên ngoài|
|Không|thể phục hồi	Không thẻ phục hồi|

# Ngăn chặn, Loại bỏ và Phục hồi

![Ngăn chặn, Loại bỏ và Phục hồi](/img/containment_eradication_recovery.png)

## Lựa chọn chiến lực ngăn chặn

Chiến lược ngăn chặn khác nhau dựa trên các loại sự cố khác nhau. Ví dụ chiến lược ngăn chặn đối với sự cố lây nhiễm phần mềm độc hại khác so với chiến lược ngăn chặn sự cố tấn côn dừ chối dịch vụ DDoS. Các tổ chức nên tạo ra các chiến lược ngắn hạn riêng biệt cho từng loại sự cố lớn, có các tài liệu chuẩn nội dung chiến lược rõ ràng để tạo điều kiện thuận lợi chi việc đưa ra quyết định. Các tiêu chí xác định các chiến lược thích hợp bao gồm:

- Các thiệt hại tiền năng
- Mất cắp tài nguyên phần cứng
- Cần bảo vệ bằng chứng
- Tính sẵn sàng của dịch vụ
- Thời gian và nguồn lực cần thiết để thực hiện chiến lược
- Tính hiệu quả của chiến lược
- Thời gian của giải pháp

Trong một số trường hợp, các tổ chức chuyển hướng tấn công sang một sanbox hay sang hệ thống honeynet để theo dõi hoạt động tấn công của hệ thống, thường là để thu thập thêm bằng chứng. Đội ứng phó sự cố nên thảo luận chiến lược này với bộ phẩn quản lý để xác minh tính khả khi. Các chiến lược theo dõi hoạt động của kẻ tấn công ngoài sử dụng sanbox là không nên sử dụng. Nếu một tổ chức quyết định theo dõi kẻ tán công trên hệ thống thật của mình, nó có thể tồn tại những rủi ro lớn. Các chiến lực ngăn chặn chậm chạm là rất nguy hiểm vì kẻ tấn công có thể leo thang và truy cập trái phép vào các hệ thống khác từ hệ thống đã bị thỏa hiệp.

## Thu thập và xử lý bằng chứng

Lý do chính trong việc thu thập bằng chứng là để phục vụ cho các thủ tục tố tụng pháp lý. Bằng chứng cần được thu thập theo thủ tục nhất định, đáp ứng tất cả các luật và quy định. Việc này có thể được tìm hiểu bằng cách trao đổi và thảo luận với luật sư hoặc các nhân viên pháp lý. Bằng chứng cần phải được hạch toàn mọi lúc. Bát cứ một hành động chuyển giao bằng chứng nào đều cần được ghi chép và có chữ ký. Một bản ghi chi tiết đi kèm với các bằng chứng bao gồm những điều sau:

- Xác định thông tin: ví dụ như số serial, tên thiết bị, địa chỉ MAC, địa chỉ IP…
- Tên, chức danh, số điện thoại của cá nhân thu thập hoặc xử lý bằng chứng trong quá trình điều tra.
- Thời gian và ngày tháng
- Địa điểm nơi lưu trữ bằng chứng

## Xác định nguồn gốc tấn công

Trong thời gian xử lý sự cố, đội ứng phó sự cố đôi khi muốn xác định máy chủ hoặc cá nhân đang thực hiện tấn công vào hệ thống. Mặc dù thông tin này khá quan trong nhưng việc xử lý sự cố lại chỉ tập trung vào vấn đề ngăn chặn, xóa và phục hồi. Những điều dưới đây là hoạt động phổ biến nhất để xác định nguồn gốc của cuộc tấn công:

- **Địa chỉ IP tấn công**: Địa chỉ IP có thể cho biết nguồn gốc của một cuộc tấn công. Tuy nhiên nó có thể bị giả mạo. Các nhân viên trong đội ứng phó nên xác định lại tính chính xác của danh sách các địa chỉ IP tấn công bằng các biện pháp kỹ thuật cần thiết.
- **Nghiên cứu kẻ tấn công qua các công cụ tìm kiếm**: thực hiện tìm kiếm thông tin vè kẻ tấn công bằng cách sử dụng các công cụ tìm kiếm. Ví dụ như là tìm hiểu người đăng ký sử dụng địa chỉ IP, thông tin về tên hay nhóm hay nickname…
- **Sử dụng cơ sở dữ liệu về sự cố**
- **Giám sát các kênh truyền thông của hacker**: Một số hacker tấn công các hệ thống với mục đích thể hiện bản thân. Họ thường khoe những cuộc tấn công đã thực hiện được lên mạng xã hội, các kênh IRC, zone-h…

## Xóa và phục hồi

Sau khi sự cố đã được ngăn chặn. việc loại bỏ các thành phần của sự cố ra khỏi hệ thống là cần thiết ví dụ như  sự cố về lây lan mã độc hại. Trong quá trình xóa, điều quan trọng là xác định tất cả các ảnh hưởng đối với tổ chức để có kế hoạch xử lý. Đối với một số sự cố, quá trình xóa là không cần thiết hoặc được thực hiện trong quá trình phục hồi.

Trong quá trình phục hồi, các quản trị viên hệ thống khôi phục lại hoạt động bình thường của hệ thống và xác nhận rằng hệ thống đang hoạt động bình thường. Quá trình phục hồi có liên quan đến các hành động như khôi phục lại từ các bản sao lưu hệ thống sạch, xây dựng lại hệ thống từ đầu, thay thế tệp tin bị thỏa hiệp bằng các bản sạch, cài đặt các bản vá lỗi, thay đổi mật khẩu, thắt chặt các hính sách an ninh mạng.

Xóa và phục hồi nên được thực hiện theo từng giai đoạn để bước khắc phục sự cố được ưu tiên. Đối với các sự cố có quy mô lớn, việc phục hồi có thể mất rất nhiều thời gian, vì vậy việc chia giai đoạn đảm bảo trong giai đoạn đầu tiên, các cơ chế an ninh tổng thể được tăng cường để ngăn chặn các sự cố tương tự trong tương lai. Giai đoạn sau nên tập trung vào những thay đổi dài hạn (ví dụ như những thay đổi về có sở hạ tầng...).

# Hoạt động sau sự cố

![Hoạt động sau sự cố](/img/post_incident.png)

## Bài học kinh nghiệm

Một phần quan trọng trong quá trình xử lý sự cố là việc rút ra các bài học kinh nghiệm về cuộc ứng phó sự cố. Tổ chức nên thực hiện các cuộc họp bữa các bên liên quan và rút ra các bài học kinh nghiệm cần thiết để đảm bảo sự cố tương tự sẽ không xảy ra. Cuộc họp cũng sẽ chỉ ra được cách thức phối hợp giữa các bên liên quan khi có sự cố xảy ra. Một số câu hỏi nên được giải đáp là:

- Chính xác điều gì đã xảy ra ? vào thời gian nào ?
- Nhân viên và các quản lý thực hiện giải quyết vụ việc có tốt không ?
- Những điều gi mà nhân viên và các quản lý nên làm khi có sự cố xảy ra ?
- Làm thế nào để chia sẻ thông tin với các tổ chức khác ?
- Các hành động để ngăn chặn sự cố tương tự trong tương lai là gì ?
- Các dấu hiệu về sự cố tương tự là gì ?
- Những công cụ hay nguồn lực nào cần thiết để giải quyết nhanh sự cố trong tương lai ?

## Lưu trữ bằng chứng

Tổ chức cần thiết lập chính sách cho việc lưu trữ các bằng chứng trong thời gian dài. Hầu hết các tổ chức lưu giữ bằng chứng trong nhiều tháng hoặc nhiều năm sau khi vụ việc kết thúc. Một số yếu tố sau cần được xem xét trong quá trình tạo chính sách:

- **Truy tố**: Nếu những kẻ tấn công bị truy tố, những bằng chứng cần phải được giữa lại khi các hoạt động về mặt pháp lý được hoàn thành. Trong một số trường hợp, điều này có thể mất rất nhiều thời gian, có thể lên đến vài năm.
- **Lưu giữ dữ liệu**: Hầu hết các tổ chức có chính sách về thời gian sống cho các dữ liệu. Ví dụ các thư điện tử sẽ được giữ lại 180 ngày. Sau 180 ngày các thư điện tử sẽ bị xóa hoàn toàn.
- **Chi phí**: Chi phí cho các thiết bị phần chứng thực hiện lưu trữ bằng chứng cần dược xem xét. Chi phí có thể là đáng kể nếu như bằng chứng được lưu giữ trong thời gian dài.

> zMadMoon

> Dịch lược NIST.SP.800-61 Rev. 2