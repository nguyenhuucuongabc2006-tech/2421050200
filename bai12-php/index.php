<?php 
   // đây để viết chú thích
   //echo để in ra màn hình
   echo "Hello world";
   //Biến: $Tên biến = giá trị;  
   $hoTen = "Ngọc Anh";
      <br>
   echo $hoTen;
   //var_dump: in ra kiểu dữ liệu và giá trị của biến
   var_dump($hoTen) . "<br>";
   $tuoi = 29;
   // Để nối chuỗi trong php dùng dấu .
   echo $hoTen." ".$tuoi . "<br>";
   //strlen() Độ dài chuỗi 
   echo strlen($hoTen) . "<br>";
   // Đếm số từ
   echo str_word_count($hoTen) . "<br>";
   //Tìm kiếm ký tự trong chuỗi
   echo strpos($hoTen, "o") . "<br>";
   //Thay thế ký tự trong chuỗi
   echo str_replace("Anh", "Đỗ", $hoTen) . "<br>";

   $soThuNhat = 10;
   $soThuHai = 5;
   echo $soThuNhat + $soThuHai . "<br>";
   echo $soThuNhat - $soThuHai . "<br>";
   echo $soThuNhat * $soThuHai . "<br>";
   echo $soThuNhat / $soThuHai . "<br>";
   echo $soThuNhat % $soThuHai . "<br>";

   //Toán tử gán
   $soThuNhat += $soThuHai . "<br>";
   echo $soThuNhat . "<br>";
   $soThuNhat -= $soThuHai . "<br>";
   echo $soThuNhat . "<br>";
   $soThuNhat *= $soThuHai . "<br>";
   echo $soThuNhat . "<br>";
   $soThuNhat /= $soThuHai . "<br>";
   echo $soThuNhat . "<br>";
   $soThuNhat %= $soThuHai . "<br>";
   echo $soThuNhat . "<br>";

   //Toán tử so sánh
   echo $soThuNhat < $soThuHai . "<br>";
   echo $soThuNhat > $soThuHai . "<br>";
   echo $soThuNhat <= $soThuHai . "<br>";
   echo $soThuNhat >= $soThuHai . "<br>";
   echo $soThuNhat == $soThuHai . "<br>";
   echo $soThuNhat != $soThuHai . "<br>";
   echo $soThuNhat === $soThuHai . "<br>";

   //Câu điều kiện
   if("Điều kiện"){
    echo "Điều kiện đúng";
   }
   elseif("Điều kiện 2"){
    echo "Điều kiện 2 đúng";
   }
   else{
    echo "Điều kiện sai";
   }
   $tong=$soThuNhat + $soThuHai;
   if($tong < 15){
    echo "Tổng bé hơn 15";
   }
   elseif($tong == 15){
    echo "Tổng bằng 15";
   }
   else{
    echo "Tổng lớn hơn 15";
   }
   
   //switch case
   $color = "red";
   switch($color){
    case "red":
        echo "<br>";
        echo "IS RED";
        break;
    case "blue":
        echo "<br>";
        echo "IS BLUE";
        break;
    default:
        echo "<br>";
        echo "no color";
        break;
   }

   //Vòng lặp for
    for($i = 0; $i<100; $i++){
     echo "<br>";
     echo "Vòng lặp thứ: ".$i . "<br>";

    }

    //Mảng
    echo "<br>";
    $mang = array["Anh", "Nhật Anh","Vu Anh"];

    //Đếm phần tử
    echo count($mang) . "<br>";
    echo $mang[1] . "<br>";

    $mang[] = "Quang Anh";
    print_r($mang) . "<br>";

    //Xóa
    echo "<br>";
    unset($mang[3]);
    print_r ($mang);
?>
