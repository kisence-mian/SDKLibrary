.class public Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;
.super Ljava/lang/Object;
.source "AdmobFeedAdAdapter.java"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/customevent/CustomEventNative;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeMappedImage;,
        Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;
    }
.end annotation


# static fields
.field private static final ADAPTER_NAME:Ljava/lang/String; = "AdmobFeedAdAdapter"

.field public static final KEY_PANGLE_LOGO:Ljava/lang/String; = "pangle_logo"

.field private static final PANGLE_SDK_IMAGE_SCALE:D = 1.0

.field private static final PLACEMENT_ID:Ljava/lang/String; = "placementID"


# instance fields
.field private feedAdListener:Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;

.field private mContext:Landroid/content/Context;

.field private mCustomEventNativeListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;

.field private mNativeAdOptions:Lcom/google/android/gms/ads/formats/NativeAdOptions;

.field private mPlacementID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;->mPlacementID:Ljava/lang/String;

    .line 99
    new-instance v0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$1;

    invoke-direct {v0, p0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$1;-><init>(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;)V

    iput-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;->feedAdListener:Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;

    return-void
.end method

.method static synthetic access$000(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;
    .registers 2
    .param p0, "x0"    # Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;

    .line 45
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;->mCustomEventNativeListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;

    .line 45
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;)Lcom/google/android/gms/ads/formats/NativeAdOptions;
    .registers 2
    .param p0, "x0"    # Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;

    .line 45
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;->mNativeAdOptions:Lcom/google/android/gms/ads/formats/NativeAdOptions;

    return-object v0
.end method

.method public static getAdmobError(I)I
    .registers 2
    .param p0, "errorCode"    # I

    .line 364
    sparse-switch p0, :sswitch_data_c

    .line 380
    return p0

    .line 368
    :sswitch_4
    const/4 v0, 0x1

    return v0

    .line 372
    :sswitch_6
    const/4 v0, 0x3

    return v0

    .line 370
    :sswitch_8
    const/4 v0, 0x2

    return v0

    .line 377
    :sswitch_a
    const/4 v0, 0x0

    return v0

    :sswitch_data_c
    .sparse-switch
        -0x4 -> :sswitch_a
        -0x3 -> :sswitch_a
        -0x2 -> :sswitch_8
        -0x1 -> :sswitch_a
        0x4e21 -> :sswitch_6
        0x9c46 -> :sswitch_4
        0x9c49 -> :sswitch_4
        0x9c50 -> :sswitch_4
    .end sparse-switch
.end method

.method private getPlacementId(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "serverParameters"    # Ljava/lang/String;

    .line 350
    const-string v0, "placementID"

    if-eqz p1, :cond_2e

    .line 352
    :try_start_4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 353
    .local v1, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 354
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_15

    return-object v0

    .line 358
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :cond_14
    goto :goto_2e

    .line 356
    :catchall_15
    move-exception v0

    .line 357
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse malformed JSON: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdmobFeedAdAdapter"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_2e
    :goto_2e
    const-string v0, ""

    return-object v0
.end method


# virtual methods
.method public onDestroy()V
    .registers 1

    .line 337
    return-void
.end method

.method public onPause()V
    .registers 1

    .line 342
    return-void
.end method

.method public onResume()V
    .registers 1

    .line 347
    return-void
.end method

.method public requestNativeAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;Ljava/lang/String;Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;Landroid/os/Bundle;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "customEventNativeListener"    # Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;
    .param p3, "serverParameter"    # Ljava/lang/String;
    .param p4, "nativeMediationAdRequest"    # Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;
    .param p5, "customEventExtras"    # Landroid/os/Bundle;

    .line 57
    iput-object p1, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;->mCustomEventNativeListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;

    .line 61
    invoke-direct {p0, p3}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;->getPlacementId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;->mPlacementID:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlacementID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;->mPlacementID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdmobFeedAdAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;->mPlacementID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 65
    const-string v0, "mediation PlacementID is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void

    .line 69
    :cond_32
    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;->getNativeAdOptions()Lcom/google/android/gms/ads/formats/NativeAdOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;->mNativeAdOptions:Lcom/google/android/gms/ads/formats/NativeAdOptions;

    .line 71
    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;->isUnifiedNativeAdRequested()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_4a

    .line 72
    const-string v0, "Failed to load ad. Request must be for unified native ads."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    if-eqz p2, :cond_49

    .line 74
    invoke-interface {p2, v2}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;->onAdFailedToLoad(I)V

    .line 75
    :cond_49
    return-void

    .line 80
    :cond_4a
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v0

    .line 81
    .local v0, "mTTAdManager":Lcom/bytedance/sdk/openadsdk/TTAdManager;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    move-result-object v3

    .line 83
    .local v3, "mTTAdNative":Lcom/bytedance/sdk/openadsdk/TTAdNative;
    if-eqz p5, :cond_7d

    const-string v4, "gdpr"

    invoke-virtual {p5, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7d

    .line 84
    invoke-virtual {p5, v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 85
    .local v4, "gdpr":I
    invoke-interface {v0, v4}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->setGdpr(I)Lcom/bytedance/sdk/openadsdk/TTAdManager;

    .line 86
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AdmobFeedAdAdapter->feed native ad receive gdpr="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .end local v4    # "gdpr":I
    :cond_7d
    new-instance v1, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    iget-object v4, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;->mPlacementID:Ljava/lang/String;

    .line 90
    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    const/16 v4, 0x280

    const/16 v5, 0x140

    .line 91
    invoke-virtual {v1, v4, v5}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    .line 92
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdCount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    .line 93
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v1

    .line 95
    .local v1, "adSlot":Lcom/bytedance/sdk/openadsdk/AdSlot;
    iget-object v2, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;->feedAdListener:Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;

    invoke-interface {v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadFeedAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;)V

    .line 96
    return-void
.end method
