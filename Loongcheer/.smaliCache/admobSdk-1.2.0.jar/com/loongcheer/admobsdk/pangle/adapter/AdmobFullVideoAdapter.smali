.class public Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;
.super Ljava/lang/Object;
.source "AdmobFullVideoAdapter.java"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitial;


# static fields
.field private static final ADAPTER_NAME:Ljava/lang/String; = "AdmobFullVideoAdapter"

.field private static final PLACEMENT_ID:Ljava/lang/String; = "placementID"


# instance fields
.field private mAdmobAdListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

.field private mContext:Landroid/content/Context;

.field private mIsLoadSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mPlacementID:Ljava/lang/String;

.field private mTTFullScreenAdListener:Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;

.field private mttFullVideoAd:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;->mPlacementID:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;->mIsLoadSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 77
    new-instance v0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter$1;

    invoke-direct {v0, p0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter$1;-><init>(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;)V

    iput-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;->mTTFullScreenAdListener:Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;

    return-void
.end method

.method static synthetic access$000(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2
    .param p0, "x0"    # Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;

    .line 26
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;->mIsLoadSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$100(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;
    .registers 2
    .param p0, "x0"    # Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;

    .line 26
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;->mAdmobAdListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;)Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;
    .registers 2
    .param p0, "x0"    # Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;

    .line 26
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;->mttFullVideoAd:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    return-object v0
.end method

.method static synthetic access$202(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;)Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;
    .registers 2
    .param p0, "x0"    # Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;
    .param p1, "x1"    # Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    .line 26
    iput-object p1, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;->mttFullVideoAd:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    return-object p1
.end method

.method private getPlacementID(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "serverParameters"    # Ljava/lang/String;

    .line 153
    const-string v0, "placementID"

    if-eqz p1, :cond_2e

    .line 155
    :try_start_4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 156
    .local v1, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 157
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_15

    return-object v0

    .line 161
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :cond_14
    goto :goto_2e

    .line 159
    :catchall_15
    move-exception v0

    .line 160
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

    const-string v2, "AdmobFullVideoAdapter"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_2e
    :goto_2e
    const-string v0, ""

    return-object v0
.end method


# virtual methods
.method public onDestroy()V
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;->mttFullVideoAd:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    if-eqz v0, :cond_7

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;->mttFullVideoAd:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    .line 140
    :cond_7
    return-void
.end method

.method public onPause()V
    .registers 1

    .line 145
    return-void
.end method

.method public onResume()V
    .registers 1

    .line 150
    return-void
.end method

.method public requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;Ljava/lang/String;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;
    .param p3, "serverParameter"    # Ljava/lang/String;
    .param p4, "mediationAdRequest"    # Lcom/google/android/gms/ads/mediation/MediationAdRequest;
    .param p5, "customEventExtras"    # Landroid/os/Bundle;

    .line 46
    iput-object p1, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;->mAdmobAdListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    .line 49
    iput-object p3, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;->mPlacementID:Ljava/lang/String;

    .line 50
    const-string v0, "PlacementId:"

    invoke-static {v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;->mPlacementID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 52
    const-string v0, "AdmobFullVideoAdapter"

    const-string v1, "mediation PlacementID is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void

    .line 57
    :cond_1b
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v0

    .line 58
    .local v0, "mTTAdManager":Lcom/bytedance/sdk/openadsdk/TTAdManager;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    move-result-object v1

    .line 60
    .local v1, "mTTAdNative":Lcom/bytedance/sdk/openadsdk/TTAdNative;
    new-instance v2, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    iget-object v3, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;->mPlacementID:Ljava/lang/String;

    .line 61
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v2

    const/16 v3, 0x438

    const/16 v4, 0x780

    .line 62
    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v2

    .line 63
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v2

    .line 65
    .local v2, "adSlot":Lcom/bytedance/sdk/openadsdk/AdSlot;
    iget-object v3, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;->mTTFullScreenAdListener:Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;

    invoke-interface {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadFullScreenVideoAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;)V

    .line 66
    return-void
.end method

.method public showInterstitial()V
    .registers 3

    .line 70
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;->mttFullVideoAd:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;->mIsLoadSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 71
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;->mttFullVideoAd:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    iget-object v1, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;->showFullScreenVideoAd(Landroid/app/Activity;)V

    goto :goto_1d

    .line 73
    :cond_16
    const-string v0, "AdmobFullVideoAdapter"

    const-string v1, "Ad not loaded."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :goto_1d
    return-void
.end method
