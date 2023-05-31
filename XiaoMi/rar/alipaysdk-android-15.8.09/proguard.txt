# 这个 ProGuard 文件被指定为 consumerProguardFiles。
# 如此一来，AAR 包的使用者在其应用进行 ProGuard 混淆时，将自动附加下列规则，
# 省去了接入 JAR 时手动在 ProGuard 规则文件中加入支付宝 SDK 规则的步骤。

-keep class com.alipay.android.app.IAlixPay{*;}
-keep class com.alipay.android.app.IAlixPay$Stub{*;}
-keep class com.alipay.android.app.IRemoteServiceCallback{*;}
-keep class com.alipay.android.app.IRemoteServiceCallback$Stub{*;}
-keep class com.alipay.sdk.app.PayTask{ public *;}
-keep class com.alipay.sdk.app.AuthTask{ public *;}
-keep class com.alipay.sdk.app.H5PayCallback {
    <fields>;
    <methods>;
}
-keep class com.alipay.android.phone.mrpc.core.** { *; }
-keep class com.alipay.apmobilesecuritysdk.** { *; }
-keep class com.alipay.mobile.framework.service.annotation.** { *; }
-keep class com.alipay.mobilesecuritysdk.face.** { *; }
-keep class com.alipay.tscenter.biz.rpc.** { *; }
-keep class org.json.alipay.** { *; }
-keep class com.alipay.tscenter.** { *; }
-keep class com.ta.utdid2.** { *;}
-keep class com.ut.device.** { *;}

-dontwarn com.ta.utdid2.**
-dontwarn com.ut.device.**

-dontwarn com.alipay.mobilesecuritysdk.**
-dontwarn com.alipay.security.**

-dontwarn android.net.SSLCertificateSocketFactory
