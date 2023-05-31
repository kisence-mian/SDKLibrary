#该代码混淆文件为YSDK对外提供个游戏开发者集成YSDK时使用
-optimizationpasses 5                   # 指定代码的压缩级别
-dontusemixedcaseclassnames             # 指定代码的压缩级别
-dontskipnonpubliclibraryclasses        # 是否混淆第三方jar
-dontpreverify                          # 混淆时是否做预校验
-dontoptimize
-ignorewarning                          # 忽略警告，避免打包时某些警告出现
-verbose                                # 混淆时是否记录日志
-optimizations !code/simplification/arithmetic,!field/*,!class/merging/*    # 混淆时所采用的算法

-keep public class * extends android.app.Activity
-keep public class * extends android.app.Application
-keep public class * extends android.app.Service
-keep public class * extends android.content.BroadcastReceiver
-keep public class * extends android.content.ContentProvider
-keep public class * extends android.app.backup.BackupAgentHelper
-keep public class * extends android.preference.Preference
-keep public class com.android.vending.licensing.ILicensingService

-keepclasseswithmembernames class * {
    native <methods>;
}

-keepclasseswithmembernames class * {
    public <init>(android.content.Context, android.util.AttributeSet);
}

-keepclasseswithmembernames class * {
    public <init>(android.content.Context, android.util.AttributeSet, int);
}


-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}

-keep class * implements android.os.Parcelable {
  public static final android.os.Parcelable$Creator *;
}

-keepattributes InnerClasses
-keep class com.tencent.bugly.**{*;}
-keep class com.tencent.stat.**{*;}
-keep class com.tencent.smtt.**{*;}
-keep class com.tencent.beacon.**{*;}
-keep class com.tencent.mm.**{*;}
-keep class com.tencent.apkupdate.**{*;}
-keep class com.tencent.tmassistantsdk.**{*;}
-keep class org.apache.http.** { * ;}
-keep class com.qq.jce.**{*;}
-keep class com.qq.taf.**{*;}
-keep class com.tencent.connect.**{*;}
-keep class com.tencent.map.**{*;}
-keep class com.tencent.open.**{*;}
-keep class com.tencent.qqconnect.**{*;}
-keep class com.tencent.mobileqq.**{*;}
-keep class com.tencent.tauth.**{*;}
-keep class com.tencent.feedback.**{*;}
-keep class common.**{*;}
-keep class exceptionupload.**{*;}
-keep class mqq.**{*;}
-keep class qimei.**{*;}
-keep class strategy.**{*;}
-keep class userinfo.**{*;}
-keep class com.pay.**{*;}
-keep class com.demon.plugin.**{*;}
-keep class com.tencent.midas.**{*;}
-keep class oicq.wlogin_sdk.**{*;}
-keep class com.tencent.ysdk.**{*;}
-keep public class * extends android.app.Service
-keep public class * extends android.content.BroadcastReceiver
-keep class com.tencent.android.tpush.** {* ;}
-keep class com.tencent.mid.** {* ;}
-keep class com.qq.taf.jce.** {*;}
-keep class com.tencent.a.**{*;}
-keep class com.tencent.wxop.**{*;}
-keep class com.jg.**{*;}
-keep class com.tencent.qqdownloader.pay.**{*;}
-keepclasseswithmembernames class * {
    native <methods>;
}

-dontwarn java.nio.file.Files
-dontwarn java.nio.file.Path
-dontwarn java.nio.file.OpenOption
-dontwarn org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement