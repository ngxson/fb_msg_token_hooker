
### Ý tưởng

Gần đây trong group j2team có share nhiều bài về token bất tử đc lấy từ Facebook Messenger cho điện thoại. Mình cũng tò mò nên đã thử edit lại app FB msg cho *ANDROID* (bản cũ) để lấy token. Cũng chưa thử đc token này sống bao lâu nhưng chỉ biết là đổi pass thôi nó cũng rip rồi (đành nhờ các anh em test hộ) =))

Với fb msg trên android, sau khi login nó sẽ lưu token vào file com.facebook.orca_preferences trong shared_pref. Như vậy mình chỉ cần inject thêm 1 activity để đọc preference này

Như vậy đầu tiên mình viết code java trên android studio, sau đó chỉ cần decomple code bằng apktool, coopy nó sang app gốc, sửa lại manifest 1 chút là đc.

### Cách dùng

1. Cài file /fb_msg/dist/signed_fb_msg.apk

2. Mở app lên, bấm nút Login

3. Login vào, sau đó thoát app ra vào lại

4. Nếu nó hiện token là đc, bấm Copy để copy token

### Cách build

1. Trong folder *injected_source_code* có chứa code java để build bằng android studio, sau khi build xong sẽ ra file apk

2. Decompile file apk này để lấy code smali của NuiActivity

3. Decompile file apk gốc của Facebook Messenger, mình dùng bản 2.0.2

4. Copy file smali của NuiActivity sang /com/facebook/orca của Facebook Messenger

5. Vào file /com/facebook/orca/OrcaLibPhoneNumberInitializer, thêm *return-void* và dưới *.line 31*. Đây là để sửa 1 lỗi do apktool không thể compile lại chính xác 100% code gốc

6. Compile lại và tận hưởng
