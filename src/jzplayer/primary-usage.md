# 初级用法

不需要继承JzvdStd，直接调用JzvdStd暴露的接口和变量。效果见Demo的Tab_1

1.设置视频的填充模式 [进入源码](https://github.com/Jzvd/JZVideo/blob/develop/demo/src/main/java/cn/jzvd/demo/Tab_1_Basic/RotationVideoSizeActivity.java)

```
Jzvd.setVideoImageDisplayType(Jzvd.VIDEO_IMAGE_DISPLAY_TYPE_ADAPTER);
Jzvd.setVideoImageDisplayType(Jzvd.VIDEO_IMAGE_DISPLAY_TYPE_FILL_PARENT);
Jzvd.setVideoImageDisplayType(Jzvd.VIDEO_IMAGE_DISPLAY_TYPE_FILL_SCROP);
Jzvd.setVideoImageDisplayType(Jzvd.VIDEO_IMAGE_DISPLAY_TYPE_ORIGINAL);
```

2.设置视频的方向 [进入源码](https://github.com/Jzvd/JZVideo/blob/develop/demo/src/main/java/cn/jzvd/demo/Tab_1_Basic/RotationVideoSizeActivity.java)

```
Jzvd.setTextureViewRotation(90); //0 - 360 旋转的角度
```

3.切换播放内核 [进入源码](https://github.com/Jzvd/JZVideo/blob/develop/demo/src/main/java/cn/jzvd/demo/Tab_1_Basic/CustomMediaActivity.java)，选择适合项目的播放内核。

```
//Demo提供了四个播放内核。JZMediaAliyun,JZMediaIjk.class,JZMediaSystem.class,JZMediaExo.class，通过如下两种方式使用。
jzvdStd.setUp("http://url.mp4", "title", JzvdStd.SCREEN_NORMAL, **.class);
or
jzvdStd.setMediaInterface(**.class);
```

4.分别设置非全屏和全屏后的屏幕方向 [进入源码](https://github.com/Jzvd/JZVideo/blob/develop/demo/src/main/java/cn/jzvd/demo/Tab_1_Basic/OrientationActivity.java#L41)

```
Jzvd.FULLSCREEN_ORIENTATION = ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE;// 非全屏是横屏
Jzvd.NORMAL_ORIENTATION = ActivityInfo.SCREEN_ORIENTATION_PORTRAIT;// 进入全屏后是竖屏
```

5.根据传感器自动旋转屏幕进入全屏 [进入源码](https://github.com/Jzvd/JZVideo/blob/develop/demo/src/main/java/cn/jzvd/demo/Tab_1_Basic/ScreenRotateActivity.java)

```
@Override
public void orientationChange(int orientation) {
    if (orientation >= 45 && orientation <= 315 && mJzvdStd.screen == Jzvd.SCREEN_NORMAL) {
        changeScreenFullLandscape(ScreenRotateUtils.orientationDirection);
    } else if (((orientation >= 0 && orientation < 45) || orientation > 315) && mJzvdStd.screen == Jzvd.SCREEN_FULLSCREEN) {
        changeScrenNormal();
    }
}
```

6.预加载 [进入源码]()

```
jzvdStd.startPreloading(); //开始预加载，加载完等待播放
jzvdStd.startVideoAfterPreloading(); //如果预加载完会开始播放，如果未加载则开始加载
```
