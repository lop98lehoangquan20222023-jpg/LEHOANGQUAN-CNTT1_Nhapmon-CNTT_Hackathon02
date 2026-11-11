# Script:tong_hop.ps1
# Tac gia:Le Hoang Quan
# Ngay tao:11/11/2026
Write-host "Dang tao bao cao..."
"===BAO CAO SU CO WEBSITE ===" > ./logs/tong_hop.txt
get-content ./logs/booking.log | select-string "status=404">>./logs/tong_hop.txt
get-content ./logs/booking.log | select-string "status=500" | Measure-object >> ./logs/tong_hop.txt
Write-host "Hoan Thanh!"
