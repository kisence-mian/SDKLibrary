.class public Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;
.super Ljava/lang/Object;
.source "AdmobInterstitialAdapter.java"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitial;


# static fields
.field private static final ADAPTER_NAME:Ljava/lang/String; = "AdapterForGoogle"

.field private static final PLACEMENT_ID:Ljava/lang/String; = "placementID"


# instance fields
.field private isRenderLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mActivity:Landroid/app/Activity;

.field private mCustomEventInterstitialListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

.field private mInterstitialAdExpressAdListener:Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;

.field private mInterstitialExpressAdInteractionListener:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$AdInteractionListener;

.field private mPlacementID:Ljava/lang/String;

.field private mTTInterstitialExpressAd:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;->mPlacementID:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;->isRenderLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 144
    new-instance v0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter$1;

    invoke-direct {v0, p0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter$1;-><init>(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;)V

    iput-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;->mInterstitialAdExpressAdListener:Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;

    .line 167
    new-instance v0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter$2;

    invoke-direct {v0, p0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter$2;-><init>(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;)V

    iput-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;->mInterstitialExpressAdInteractionListener:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$AdInteractionListener;

    return-void
.end method

.method static synthetic access$000(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;
    .registers 2
    .param p0, "x0"    # Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;

    .line 31
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;->mCustomEventInterstitialListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;
    .registers 2
    .param p0, "x0"    # Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;

    .line 31
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;->mTTInterstitialExpressAd:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    return-object v0
.end method

.method static synthetic access$102(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;
    .registers 2
    .param p0, "x0"    # Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;
    .param p1, "x1"    # Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 31
    iput-object p1, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;->mTTInterstitialExpressAd:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    return-object p1
.end method

.method static synthetic access$200(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$AdInteractionListener;
    .registers 2
    .param p0, "x0"    # Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;

    .line 31
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;->mInterstitialExpressAdInteractionListener:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$AdInteractionListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2
    .param p0, "x0"    # Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;

    .line 31
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;->isRenderLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private static getAdPlacementId(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "serverParameter"    # Ljava/lang/String;

    .line 130
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 132
    :try_start_6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 133
    .local v0, "serverParametersJson":Lorg/json/JSONObject;
    const-string v1, "placementID"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_11} :catch_12

    return-object v1

    .line 134
    .end local v0    # "serverParametersJson":Lorg/json/JSONObject;
    :catch_12
    move-exception v0

    .line 135
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 138
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getAdSizeSafely(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)[I
    .registers 10
    .param p0, "params"    # Landroid/os/Bundle;
    .param p1, "widthName"    # Ljava/lang/String;
    .param p2, "heightName"    # Ljava/lang/String;

    .line 207
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_42

    .line 208
    .local v0, "adSize":[I
    if-eqz p0, :cond_40

    if-eqz p1, :cond_40

    if-nez p2, :cond_d

    goto :goto_40

    .line 212
    :cond_d
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 213
    .local v1, "oWidth":Ljava/lang/Object;
    const/4 v2, 0x0

    if-eqz v1, :cond_22

    .line 214
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 215
    .local v3, "w":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v0, v2

    .line 218
    .end local v3    # "w":Ljava/lang/String;
    :cond_22
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 220
    .local v3, "oHeight":Ljava/lang/Object;
    if-eqz v3, :cond_37

    .line 221
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 222
    .local v4, "h":Ljava/lang/String;
    const/4 v5, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v0, v5

    .line 225
    .end local v4    # "h":Ljava/lang/String;
    :cond_37
    aget v4, v0, v2

    if-nez v4, :cond_3f

    .line 226
    const/16 v4, 0x1c2

    aput v4, v0, v2

    .line 229
    :cond_3f
    return-object v0

    .line 209
    .end local v1    # "oWidth":Ljava/lang/Object;
    .end local v3    # "oHeight":Ljava/lang/Object;
    :cond_40
    :goto_40
    return-object v0

    nop

    :array_42
    .array-data 4
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public onDestroy()V
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;->mTTInterstitialExpressAd:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz v0, :cond_7

    .line 116
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->destroy()V

    .line 118
    :cond_7
    return-void
.end method

.method public onPause()V
    .registers 1

    .line 122
    return-void
.end method

.method public onResume()V
    .registers 1

    .line 126
    return-void
.end method

.method public requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;Ljava/lang/String;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;
    .param p3, "serverParameter"    # Ljava/lang/String;
    .param p4, "mediationAdRequest"    # Lcom/google/android/gms/ads/mediation/MediationAdRequest;
    .param p5, "customEventExtras"    # Landroid/os/Bundle;

    .line 47
    instance-of v0, p1, Landroid/app/Activity;

    const/4 v1, 0x1

    if-nez v0, :cond_f

    .line 48
    const-string v0, " AdmobExpressInterstitialAdapter , context must be  Activity !!!!!"

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 49
    if-eqz p2, :cond_f

    .line 50
    invoke-interface {p2, v1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;->onAdFailedToLoad(I)V

    .line 54
    :cond_f
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;->mActivity:Landroid/app/Activity;

    .line 55
    const-string v0, "\u8fdb\u5165\u52a0\u8f7d\u7a7f\u5c71\u7532\u63d2\u9875"

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 56
    iput-object p2, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;->mCustomEventInterstitialListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    .line 59
    const-string v0, "parameter"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;->mPlacementID:Ljava/lang/String;

    .line 61
    if-nez v0, :cond_2b

    if-eqz p2, :cond_2b

    .line 62
    invoke-interface {p2, v1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;->onAdFailedToLoad(I)V

    .line 63
    return-void

    .line 66
    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestBannerAd.-mPlacementID="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;->mPlacementID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 69
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v0

    .line 70
    .local v0, "mTTAdManager":Lcom/bytedance/sdk/openadsdk/TTAdManager;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    move-result-object v2

    .line 72
    .local v2, "mTTAdNative":Lcom/bytedance/sdk/openadsdk/TTAdNative;
    if-eqz p5, :cond_73

    const-string v3, "gdpr"

    invoke-virtual {p5, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_73

    .line 73
    invoke-virtual {p5, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 75
    .local v3, "gdpr":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestInterstitialAd receive gdpr="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 78
    .end local v3    # "gdpr":I
    :cond_73
    const/16 v3, 0x168

    .line 79
    .local v3, "expressViewWidth":I
    const/16 v4, 0x168

    .line 81
    .local v4, "expressViewHeight":I
    if-eqz p5, :cond_b2

    .line 82
    const-string v5, "ad_width"

    const-string v6, "ad_height"

    invoke-static {p5, v5, v6}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;->getAdSizeSafely(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v5

    .line 83
    .local v5, "adSizeSafely":[I
    const/4 v6, 0x0

    aget v3, v5, v6

    .line 84
    aget v4, v5, v1

    .line 85
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " requestInterstitialAd.mPlacementID ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;->mPlacementID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",expressViewWidth="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",expressViewHeight="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 88
    .end local v5    # "adSizeSafely":[I
    :cond_b2
    new-instance v5, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v5}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    iget-object v6, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;->mPlacementID:Ljava/lang/String;

    .line 89
    invoke-virtual {v5, v6}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v5

    .line 90
    invoke-virtual {v5, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdCount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v5

    int-to-float v6, v3

    int-to-float v7, v4

    .line 91
    invoke-virtual {v5, v6, v7}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v5

    .line 92
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v5

    .line 95
    .local v5, "adSlot":Lcom/bytedance/sdk/openadsdk/AdSlot;
    if-eqz v2, :cond_d3

    .line 96
    iget-object v1, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;->mInterstitialAdExpressAdListener:Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;

    invoke-interface {v2, v5, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadInteractionExpressAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V

    goto :goto_dd

    .line 98
    :cond_d3
    if-eqz p2, :cond_d8

    .line 99
    invoke-interface {p2, v1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;->onAdFailedToLoad(I)V

    .line 101
    :cond_d8
    const-string v1, "requestInterstitialAd.-pangle sdk - ttAdLoader can not be null !!!!"

    invoke-static {v1}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 104
    :goto_dd
    return-void
.end method

.method public showInterstitial()V
    .registers 3

    .line 108
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;->mTTInterstitialExpressAd:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;->isRenderLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_15

    .line 109
    iget-object v1, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;->mTTInterstitialExpressAd:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->showInteractionExpressAd(Landroid/app/Activity;)V

    .line 111
    :cond_15
    return-void
.end method
