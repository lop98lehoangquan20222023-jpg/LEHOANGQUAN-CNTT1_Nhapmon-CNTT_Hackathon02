# BÀI LÀM – HACKATHON 02

- **Mã đề:** 03
- **Họ tên:**Lê Hoàng Quân
- **Lớp:**CNTT1
- **Link repository:**
- **Hệ điều hành (Windows/macOS):**

## 4.2. Thao tác máy tính cơ bản bằng CLI

### Các lệnh đã chạy

```shell
pwd
ls -force
mv .\ghi_chu_ki_thuat.txt docs
mkdir backup
cp .\data\dat_phong_thang_3.xlsx .\backup\
rm *.tmp
cd .\logs\
ls -force
cd .C:\Users\ADMIN\Downloads\starter-kit\karaoke_website
get-childitem -file .\karaoke_website\ -recurse
```

### Kết quả liệt kê toàn bộ dự án (Windows: Get-ChildItem -Recurse -Force; macOS: ls -aR)

```text
 Directory: C:\Users\ADMIN\Downloads\starter-kit\karaoke_website


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/3/2026   7:07 AM             70 .env


    Directory: C:\Users\ADMIN\Downloads\starter-kit\karaoke_website\backup


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/3/2026   7:07 AM           6113 dat_phong_thang_3.xlsx


    Directory: C:\Users\ADMIN\Downloads\starter-kit\karaoke_website\data


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/3/2026   7:07 AM           6113 dat_phong_thang_3.xlsx


    Directory: C:\Users\ADMIN\Downloads\starter-kit\karaoke_website\docs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/3/2026   7:07 AM            163 ghi_chu_ki_thuat.txt


    Directory: C:\Users\ADMIN\Downloads\starter-kit\karaoke_website\logs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/3/2026   7:07 AM            994 booking.log


    Directory: C:\Users\ADMIN\Downloads\starter-kit\karaoke_website\web


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/3/2026   7:07 AM            599 app.js
-a----         11/3/2026   7:07 AM            530 index.html
-a----         11/3/2026   7:07 AM            460 style.css


    Directory:
    C:\Users\ADMIN\Downloads\starter-kit\karaoke_website\web\images


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/3/2026   7:07 AM           3072 logo-melodybox.png

```

## 4.3. Lọc log truy cập website

### a Lệnh lọc các dòng status=500

```shell
gci .\logs\booking.log | select-string "status=500" >> loi_500.txt

```

### 2 dòng đầu tiên trong logs/loi_500.txt

```text
logs\booking.log:5:2026-03-28 08:13:01 POST /api/thanh-toan status=500
logs\booking.log:6:2026-03-28 08:17:12 POST /api/thanh-toan status=500

```

### b) Lệnh đếm số dòng status=404 và kết quả

```shell
 (gci .\logs\booking.log | select-string "status=404").count
```

```text
4

```

## 4.4. Chạy script tong_hop (.ps1 hoặc .sh)

### Lệnh chạy (Windows: nếu dùng Phụ lục 2 thì ghi cả 2 lệnh)

```shell
# Script:tong_hop.ps1
# Tac gia:Le Hoang Quan
# Ngay tao:11/11/2026
Write-host "Dang tao bao cao..."
"===BAO CAO SU CO WEBSITE ===" > ./logs/tong_hop.txt
get-content ./logs/booking.log | select-string "status=404">>./logs/tong_hop.txt
get-content ./logs/booking.log | select-string "status=500" | Measure-object >> ./logs/tong_hop.txt
Write-host "Hoan Thanh!"
```

### Nội dung file logs/tong_hop.txt

```text
===BAO CAO SU CO WEBSITE ===

2026-03-28 08:07:39 GET /tin-tuc status=404
2026-03-28 08:28:45 GET /images/phong-vip-2.jpg status=404
2026-03-28 08:44:51 GET /dat-phong-cu status=404
2026-03-28 08:46:02 GET /images/phong-vip-2.jpg status=404




Count    : 6
Average  : 
Sum      : 
Maximum  : 
Minimum  : 
Property : 

```

## 4.5. README.md và bảo vệ thông tin bí mật

> README.md, .gitignore và .env.example được chấm trực tiếp trên file ở gốc dự án. Đánh dấu `[x]` vào các mục đã làm để tự kiểm tra.

- [x] README.md: Heading 1, mô tả có **in đậm** và *in nghiêng*, bảng, code block, task list, blockquote
- [x] .gitignore có dòng `.env` (tên file đúng, không có đuôi .txt)
- [X] .env.example có đủ tên biến, giá trị để trống (tên file đúng, không có đuôi .txt)

## 4.6. Kiểm tra trang web bằng DevTools (F12) và báo cáo lỗi

### Bảng lỗi

| STT | Tab DevTools phát hiện lỗi | Tên file hoặc thông báo lỗi | Cách khắc phục |
| --- | --- | --- | --- |
| 1 |console  | GET file:///C:/Users/ADMIN/Downloads/starter-kit/karaoke_website/web/images/logo.png net::ERR_FILE_NOT_FOUND | đổi lại tên cho đúng với logo.png |
| 2 | console | app.js:18 Uncaught ReferenceError: hienThiGiaPhong is not defined | đổi lại hienThiGiaPhong |

> Ảnh chụp màn hình lưu trong thư mục `evidence/` (network.png, console.png).

### Báo cáo lỗi gửi trưởng nhóm

- **Context:** 
- **Expected:** 
- **Actual:** 
- **Log:** Uncaught ReferenceError

### Câu tìm kiếm Google

```text
site:stackoverflow.com "Uncaught ReferenceError"

```

## 4.7. Excel

> Phần Excel được chấm trực tiếp trên file `data/dat_phong_thang_3.xlsx`, không cần ghi vào đây.
