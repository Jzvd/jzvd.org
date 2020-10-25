# 继承用法

通过集成JzvdStd，灵活地实现更多自定义功能和UI，效果见Demo的Tab_2

**任何修改UI和功能的用法都要继承JzvdStd。不要抱有侥幸和省事的想法，继承JzvdStd才是最省事的、思路最清晰的方式。**

__AgVideo 完全自定义UI [进入源码](https://github.com/Jzvd/JZVideo/blob/develop/demo/src/main/java/cn/jzvd/demo/Tab_2_Custom/AGVideo/AGVideo.java)__

1.继承JzvdStd后删除不需要的父类控件 [进入源码](https://github.com/Jzvd/JZVideo/blob/develop/demo/src/main/java/cn/jzvd/demo/CustomJzvd/MyJzvdStdNoTitleNoClarity.java)

2.全屏锁 [进入源码](https://github.com/Jzvd/JZVideo/blob/develop/demo/src/main/java/cn/jzvd/demo/CustomJzvd/JzvdStdLockScreen.java)

3.全屏时显示分享按钮 [进入源码](https://github.com/Jzvd/JZVideo/blob/develop/demo/src/main/java/cn/jzvd/demo/CustomJzvd/JzvdStdShowShareButtonAfterFullscreen.java)

4.全屏时显示title，非全屏隐藏title [进入源码](https://github.com/Jzvd/JZVideo/blob/develop/demo/src/main/java/cn/jzvd/demo/CustomJzvd/JzvdStdShowTitleAfterFullscreen.java)

5.播放完毕后不隐藏TextureView显示视频的最后一帧 [进入源码](https://github.com/Jzvd/JZVideo/blob/develop/demo/src/main/java/cn/jzvd/demo/CustomJzvd/JzvdStdShowTextureViewAfterAutoComplete.java)

6.全屏播放完成不退出全屏 [进入源码](https://github.com/Jzvd/JZVideo/blob/develop/demo/src/main/java/cn/jzvd/demo/CustomJzvd/JzvdStdAutoCompleteAfterFullscreen.java)

7.设置视频高宽比例 [进入源码](https://github.com/Jzvd/JZVideo/blob/develop/demo/src/main/java/cn/jzvd/demo/Fragment_2_Custom.java#L111)

8.非全屏静音，全屏之后有声音 [进入源码](https://github.com/Jzvd/JZVideo/blob/develop/demo/src/main/java/cn/jzvd/demo/CustomJzvd/JzvdStdVolumeAfterFullscreen.java)

9.全屏显示静音按钮 [进入源码](https://github.com/Jzvd/JZVideo/blob/develop/demo/src/main/java/cn/jzvd/demo/CustomJzvd/JzvdStdVolume.java)

10.播放mp3 [进入源码](https://github.com/Jzvd/JZVideo/blob/develop/demo/src/main/java/cn/jzvd/demo/CustomJzvd/JzvdStdMp3.java)

11.倍速播放 [进入源码](https://github.com/Jzvd/JZVideo/blob/develop/demo/src/main/java/cn/jzvd/demo/CustomJzvd/JzvdStdSpeed.java)
