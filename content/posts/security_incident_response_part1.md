+++
Categories = []
Description = ""
Tags = ["Incident Response"]
date = "2015-12-21T14:39:53+07:00"
menu = "posts"
title = "IR part 1 - Tổng quan"

+++

# Sự cố an ninh là gì ?

Một sự có về an ninh hay nói cách khác là sự cố về an toàn thông tin được hiểu là những vi phạm một cách rõ ràng về các chính sách an toàn thông tin, là những hành vi nhằm cố gắng đạt được những quyền truy cập trái phép, là những hành vi làm ảnh hưởng đến tính sẵn sang của hệ thống và những hành vi sửa đổi tài nguyên mà không được sự đồng ý của chủ sở hữu
Sự cố về an ninh, an toàn thông tin có thể xảy ra theo nhiều cách khác nhau. Các sự cố về an ninh, an toàn thông tin được phân loại dựa trên vector tấn công. Các vector tấn công thông thường:

- **External/Removable Media**: Là một cuộc tấn công được thực hiện từ các thiết bị lưu trữ di động và các thiết bị ngoại vi.
- **Attrition**: Một cuộc tấn công sử dụng phương pháp vét cạn (Brute force) để thỏa hiệp, làm suy giảm hay phá hủy các hệ thống, mạng lưới hay dịch vụ 
- **Web**: Một cuộc tấn công được thực hiện từ một trang web hoặc các ứng dụng trên nền web
- **Email**: Một cuộc tấn công được thực hiện thông qua một email hoặc các tệp tin đích kèm email
Sử dụng không đúng cách: Các sự cố xảy ra do vi phạm các chính sách của một sổ chức (trừ các loại trên)
- **Mất thiết bị**: Sự cố xảy ra cho mất trộm mất cắp thiết bị chẳng hạn như USB, điện thoại thông minh, máy tính xách tay…
-  **Khác**: Các cuộc tấn công không thuộc các loại trên

# Ứng phó sự số là gì ?

Ứng phó sự cố là các hành động được thực hiện nhằm giám sát, phát hiện và thực hiện đối phó với các sự cố an ninh, an toàn thông tin gây ảnh hưởng đến tính toàn vẹn, tính bí mật và tính sẵn sang của thông tin và hệ thống thông tin. Việc ứng phó sự cố đòi hỏi một quy trình cụ thể cùng với một nhóm chuyên gia có đầy đủ kinh nghiệm và năng lực thực hiện quy trình đó.
Quy trình ứng phó sự cố bao gồm 7 bước::

- Chuẩn bị
- Phát hiện
- Phân tích
- Ngăn chặn
- Loại  bỏ
- Phục hồi
- Hoạt động sau sự cố

# Phân loại sự cố

Các sự cố về bảo mật có thể được phân loại như sau:

<center>![Security incident](/images/security_incident.png)</center>

- **Tấn công bằng mã độc hại**: Mã độc hại có thể là các chương trình như virus, worm, trojan…Các kẻ tấn công thường sử dụng các mã độc hại để đạt được quyền truy cập, chiếm mật khẩu, chụp hoặc ghi lại các thông tin nhạy cảm khác. Các cuộc tấn công bằng mã độc thường khó phát hiện. Một số ví dụ về tấn công mã độc hại được biết đến như:

	* Worm hay virus lây lan nhanh chóng qua email (I Love You, Melissa)
	* Spy (Virus Caligula, Marker Virus, Groov Virus)
	* Các mã khai thác nhằm chiếm quyền điều khiển từ xa (Back Office, NetBus..)

- **Tấn công từ chối dịch vụ**: Các cuộc tấn công từ chối dịch vụ được các kẻ tấn công thực hiện nhằm mục đích làm ngưng trệ hoạt động của hệ thống. Một số ví dụ về tấn công DoS:
	* DoS liên quan đến Email: ví dụ như Spam, Bom mail…
	* DoS các dịch vụ mạng: ví dụ như Slammer Worm, Chargen ĐoS
	* DoS hệ thống mạng: Ví dụ như SYN Flood, Ping of Death, Smurf …

- **Truy cập trái phép**: Là những hành động cố gắng truy cập vào những tài nguyên hệ thống một cách trái phép. Nó có thể được thực hiện bằng cách cài thêm một chường trình lên hệ thống máy tính, chặn bắt các thông tin đăng nhập vào hệ thống hay leo thang đặc quyền… Một số ví dụ về truy cập trái phép:

	* Nhân viên ăn cắp các thông tin bí mật
	* Truy cập vào hệ thống bằng tài khoản của cựu nhân viên
	* Truy cập trái phép vào tài khoản của người quản trị hệ thống
	* Truy cập vào hệ thống trái phép bằng cách khai thác các lỗ hổng trong hệ thống

- **Dò quét mạng**: Mục tiêu của hoạt động này là thu thập các thông tin về cơ sở hạ tầng, mạng lưới của một công ty hay tổ chức nào đó. Các cuộc dò quét mạng cho phép phát hiện các thông tin về hệ thống như địa chỉ IP, các cổng đang mở trên máy chủ, các dịch vụ đang hoạt động trên máy chủ, phiên bản hệ điều hành đang dùng…. Một cuộc tấn công dò quét mạng có thể không dẫn đến một sự thỏa hiệp đối với hệ thống nhưng nó báo hiệu rằng sẽ có một cuộc tấn công trong tương lai. Các hình thức dò quét mạng phổ biến:

	* Host discovery (ping sweep, SYN-FIN scan…)
	* Service discovery (TCP Scan, UDP scan…)

# Phân loại mức nghiêm trọng của sự cố

Sau khi phân loại các sự cố, mức độ nghiêm trọng của sự cố có thể được xác định. Mức độ nghiêm trọng của sự cố sẽ ảnh hưởng đến quá trình và các hành động cần thực hiện để ứng phó với sự cố đó. Có 5 mức độ nghiêm trọng có thể được gán cho các sự cố về bảo mật:

- **Nghiêm trọng**: Những sự cố có thể ảnh hưởng đến cuộc sống con người, gây ra mất mát về tài nguyên mà không thể khôi phục
- **Cao**: Những sự cố này có thể ảnh hưởng đến tính toàn vẹn hoặc bảo mật của dữ liệu, nó có thể gây thiệt hại về kinh doanh, danh tiếng cho một công ty hay tổ chức
- **Trung bình**: Những sự cố này ảnh hưởng đến sự sắn sang của thông tin, ảnh hưởng đến sự sẵn sẵng sàng của hệ thống mà không ảnh hưởng đến tính toàn vẹn hay bảo mật dữ liệu
- **Thấp**: Những sự cố này có thể ảnh hưởng đến tính bảo mật, toàn vẹn hoặc sẵn sàng của dữ liệu tuy nhiên không có thiệt hại gì xảy ra.
- **Không quan trọng**: Những sự cố này gây ra những nguy cơ hoặc thiệt hại không đáng kể cho công ty hay tổ chức

# ./.
### Dịch hơi hơi lược   :wink::

> NIST.SP.800-61 Rev. 2
