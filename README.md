# clothing_store

# Các bước để cài đặt và chạy một project flutter

## Cài đặt flutter SDK
### Bước 1: Tải flutter SDK
- Download flutter theo link: https://storage.googleapis.com/flutter_infra/releases/stable/windows/flutter_windows_v1.9.1+hotfix.4-stable.zip
- Giải nén tệp và đặt folder flutter vào vị trí muốn cài đặt Flutter SDK (lưu ý nên tránh đặt vào các vị trí như C:\Program Files\ vì nó yêu cầu quyền, có thể đặt tại E:\ hoặc D:\ blah blah)
### Bước 2: update path 
- Trên win 10, tại thanh tìm kiếm gõ 'env' và chọn **Edit environment variables for your account
- Dưới phần **User variables** tìm phần **Path**
- Thêm 1 đường dẫn (đầy đủ) tới flutter\bin (của folder flutter vừa giải nén, ví dụ E:\flutter\bin) vào và lưu lại (nếu chưa biết thêm thì: chọn **Path**, chọn Edit, chọn New, thêm đường dẫn và OK)
*Note: thêm cái này để chạy các command của flutter trên console của Window*
### Bước 3: chạy flutter doctor
- Truy cập đến folder flutter 
- Mở một cửa sổ command line (có thể trỏ vào ô đường dẫn hoặc Ctrl + l, gõ 'cmd')
- Gõ flutter doctor và enter
- Kiểm tra ouput xem có dòng nào báo thiếu gì đó không, nếu có thì làm theo hướng dẫn để cài đặt
- Chạy flutter doctor lần nữa để kiểm tra sau khi cài

## Thiết lập android
### Bước 1: Cài android studio và plugin
- Download và cài android studio theo link: https://developer.android.com/studio
- Mở android studio, sau đó chọn **File > Settings > Plugins** 
- Chọn **Browse repositories**, chọn Flutter plugin và click Install
- Click Yes để cài Dart plugin, và click Restart sau khi xong
### Bước 2: Setup thiết bị android
*Phần này có mấy cái có thể đọc trên docs: https://flutter.dev/docs/get-started/install/windows#set-up-your-android-device nhưng t thì chỉ chú ý cái này*
- Setup ANDROID_HOME: tìm và copy đường dẫn tới jdk (Java Deverlopment Kit, ví dụ t là: C:\Program Files\Java\jdk-13)
- Trên win 10, tại thanh tìm kiếm gõ 'env' và chọn **Edit the system environment variables**
- Tại của sổ Advanced, click Enviroment variables...
- Dưới phần System variables, kiểm tra xem có JAVA_HOME chưa. Nếu chưa thì chọn New, sau đó thêm variable name: JAVA_HOME và variable vlue: path jdk, còn nếu có rồi thì chọn JAVA_HOME và edit r thêm, sau đó click OK
### Bước 3: Thiết lập giả lập Android
- Chạy **Android Studio > Tools > Android > AVD Manager và chọn Create Virtual Device** để tạo máy ảo
*Recommend là chọn Pixel3L, và 1 cái gì sau đó nữa là Pie...*
- Sau khi cài xong là đã có thể chạy được rồi 
- Test: clone prj của nhóm về và chạy thử (Mở prj > main.dart và ấn Run) (Đây là nếu các c tự tin là máy đủ mạnh, không thì xem 1 xíu tip nhỏ bên dưới)

## Dành cho mấy bạn máy bình thường như máy mình
*Android Studio ngốn RAM vãi shit, nên hãy cài và sài Visual Studio Code*
- Hướng dẫn thiết lập VSC ở đây, ngắn và rất đơn giản: https://flutter.dev/docs/get-started/editor?tab=vscode. T sẽ hướng dẫn các cậu chạy máy ảo mà k cần mở Android Studio
- Tìm folder sdk ở bất cứ đâu trên máy (như trc là t search 'SDK' trên phần tìm kiếm của this PC, thường nó sẽ nằm trong C:\User:\{Tên user}\AppData\Local\Android\Sdk - thường sẽ k hiện AppData đâu, hãy gõ AppData trên đường dẫn sau Tên user)
- Chọn emulator, sau đó mở 1 command line trong emulator
- Gõ lệnh 'emulator -list-avds' và enter
- Copy hoặc nhớ tên bất kì thiết bị nào hiện ra
- Gõ lệnh 'emulator -avd Tên_thiết_bị' và enter
- Done, chờ 1 lát là máy ảo sẽ được chạy
- Vào VSC code, chọn debug > Start without debugging, chọn máy ảo và chạy
- Xong

### Trên đây là hướng dẫn sơ bộ, có bất kì thắc mắc nào thì up lên nhóm để mng giúp đõ. Peace <3 ###

