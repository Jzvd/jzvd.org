# QuickStart

1.添加类库
```gradle
implementation 'cn.jzvd:jiaozivideoplayer:7.5.0'
```

2.添加布局
```xml
<cn.jzvd.JzvdStd
    android:id="@+id/jz_video"
    android:layout_width="match_parent"
    android:layout_height="200dp" />
```

3.设置视频地址、缩略图地址、标题
```java
MyJzvdStd jzvdStd = (MyJzvdStd) findViewById(R.id.jz_video);
jzvdStd.setUp("http://jzvd.nathen.cn/c6e3dc12a1154626b3476d9bf3bd7266/6b56c5f0dc31428083757a45764763b0-5287d2089db37e62345123a1be272f8b.mp4"
                            , "饺子闭眼睛");
jzvdStd.posterImageView.setImage("http://p.qpic.cn/videoyun/0/2449_43b6f696980311e59ed467f22794e792_1/640");
```

4.在`Activity`中
```java
@Override
public void onBackPressed() {
    if (Jzvd.backPress()) {
        return;
    }
    super.onBackPressed();
}
@Override
protected void onPause() {
    super.onPause();
    Jzvd.releaseAllVideos();
}
```

5.在`AndroidManifest.xml`中
```
<activity
    android:name=".MainActivity"
    android:configChanges="orientation|screenSize|keyboardHidden"
    android:screenOrientation="portrait" /> <!-- or android:screenOrientation="landscape"-->
```

6.在`proguard-rules.pro`中按需添加
```
-keep public class cn.jzvd.JZMediaSystem {*; }
-keep public class cn.jzvd.demo.CustomMedia.CustomMedia {*; }
-keep public class cn.jzvd.demo.CustomMedia.JZMediaIjk {*; }
-keep public class cn.jzvd.demo.CustomMedia.JZMediaSystemAssertFolder {*; }

-keep class tv.danmaku.ijk.media.player.** {*; }
-dontwarn tv.danmaku.ijk.media.player.*
-keep interface tv.danmaku.ijk.media.player.** { *; }
```
