.class public Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;
.super Lcom/google/android/gms/ads/mediation/Adapter;
.source "AdmobRewardVideoAdapter.java"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationRewardedAd;


# static fields
.field private static final ADAPTER_NAME:Ljava/lang/String; = "AdmobRewardVideoAdapter"

.field private static final PLACEMENT_ID:Ljava/lang/String; = "placementID"


# instance fields
.field private PangleRewardedInteractiveListener:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

.field private isLoadSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mAdmobAdLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback<",
            "Lcom/google/android/gms/ads/mediation/MediationRewardedAd;",
            "Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mAdmobRewardedAdCallback:Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

.field private mRewardedAdListener:Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;

.field private mttRewardVideoAd:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 32
    invoke-direct {p0}, Lcom/google/android/gms/ads/mediation/Adapter;-><init>()V

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;->isLoadSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    new-instance v0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter$1;

    invoke-direct {v0, p0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter$1;-><init>(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;)V

    iput-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;->PangleRewardedInteractiveListener:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    .line 109
    new-instance v0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter$2;

    invoke-direct {v0, p0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter$2;-><init>(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;)V

    iput-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;->mRewardedAdListener:Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;

    return-void
.end method

.method static synthetic access$000(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;
    .registers 2
    .param p0, "x0"    # Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;

    .line 32
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;->mAdmobRewardedAdCallback:Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    return-object v0
.end method

.method static synthetic access$002(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;
    .registers 2
    .param p0, "x0"    # Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;
    .param p1, "x1"    # Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    .line 32
    iput-object p1, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;->mAdmobRewardedAdCallback:Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    return-object p1
.end method

.method static synthetic access$100(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2
    .param p0, "x0"    # Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;

    .line 32
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;->isLoadSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;
    .registers 2
    .param p0, "x0"    # Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;

    .line 32
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;->mAdmobAdLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;
    .registers 2
    .param p0, "x0"    # Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;

    .line 32
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;->mttRewardVideoAd:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    return-object v0
.end method

.method static synthetic access$302(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;
    .registers 2
    .param p0, "x0"    # Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;
    .param p1, "x1"    # Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    .line 32
    iput-object p1, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;->mttRewardVideoAd:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    return-object p1
.end method

.method static synthetic access$400(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;
    .registers 2
    .param p0, "x0"    # Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;

    .line 32
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;->PangleRewardedInteractiveListener:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    return-object v0
.end method

.method private getPlacementId(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 7
    .param p1, "serverParameters"    # Landroid/os/Bundle;

    .line 227
    const-string v0, "placementID"

    const-string v1, "loadRewardedAd() exception: "

    if-eqz p1, :cond_60

    .line 229
    :try_start_6
    const-string v2, "parameter"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, "jsonParams":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_20} :catch_4b

    .line 231
    if-eqz v2, :cond_4a

    .line 233
    :try_start_22
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 234
    .local v3, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 235
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_31
    .catchall {:try_start_22 .. :try_end_31} :catchall_33

    return-object v0

    .line 239
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :cond_32
    goto :goto_4a

    .line 237
    :catchall_33
    move-exception v0

    .line 238
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_34
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not parse malformed JSON: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_4a} :catch_4b

    .line 244
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v2    # "jsonParams":Ljava/lang/String;
    :cond_4a
    :goto_4a
    goto :goto_60

    .line 242
    :catch_4b
    move-exception v0

    .line 243
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 247
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_60
    :goto_60
    const-string v0, ""

    return-object v0
.end method


# virtual methods
.method public getSDKVersionInfo()Lcom/google/android/gms/ads/mediation/VersionInfo;
    .registers 7

    .line 202
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "versionString":Ljava/lang/String;
    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "splits":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 205
    .local v2, "major":I
    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 206
    .local v3, "minor":I
    const/4 v4, 0x2

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x64

    const/4 v5, 0x3

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 207
    .local v4, "micro":I
    new-instance v5, Lcom/google/android/gms/ads/mediation/VersionInfo;

    invoke-direct {v5, v2, v3, v4}, Lcom/google/android/gms/ads/mediation/VersionInfo;-><init>(III)V

    return-object v5
.end method

.method public getVersionInfo()Lcom/google/android/gms/ads/mediation/VersionInfo;
    .registers 2

    .line 197
    invoke-virtual {p0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;->getSDKVersionInfo()Lcom/google/android/gms/ads/mediation/VersionInfo;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;Ljava/util/List;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "initializationCompleteCallback"    # Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/mediation/MediationConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 141
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/ads/mediation/MediationConfiguration;>;"
    const-string v0, "custom event  AdmobRewardVideoAdapter  initialize"

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 142
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_f

    .line 144
    const-string v0, "Pangle SDK requires an Activity context to initialize"

    invoke-interface {p2, v0}, Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;->onInitializationFailed(Ljava/lang/String;)V

    .line 145
    return-void

    .line 148
    :cond_f
    invoke-interface {p2}, Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;->onInitializationSucceeded()V

    .line 149
    return-void
.end method

.method public loadRewardedAd(Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    .registers 12
    .param p1, "mediationRewardedAdConfiguration"    # Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;",
            "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback<",
            "Lcom/google/android/gms/ads/mediation/MediationRewardedAd;",
            "Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;",
            ">;)V"
        }
    .end annotation

    .line 155
    .local p2, "mediationAdLoadCallback":Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;, "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback<Lcom/google/android/gms/ads/mediation/MediationRewardedAd;Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;>;"
    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 156
    .local v0, "context":Landroid/content/Context;
    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_11

    .line 157
    const-string v1, "Pangle SDK requires an Activity context to load ads."

    .line 158
    .local v1, "logMessage":Ljava/lang/String;
    invoke-static {v1}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 159
    invoke-interface {p2, v1}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Ljava/lang/String;)V

    .line 160
    return-void

    .line 163
    .end local v1    # "logMessage":Ljava/lang/String;
    :cond_11
    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;->getServerParameters()Landroid/os/Bundle;

    move-result-object v1

    .line 164
    .local v1, "serverParameters":Landroid/os/Bundle;
    const-string v2, "parameter"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, "placementID":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "placementID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 168
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 169
    const-string v3, "mediation placementID is null"

    invoke-static {v3}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 170
    return-void

    .line 173
    :cond_3d
    iput-object p2, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;->mAdmobAdLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 176
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v3

    .line 177
    .local v3, "mTTAdManager":Lcom/bytedance/sdk/openadsdk/TTAdManager;
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    move-result-object v4

    .line 179
    .local v4, "mTTAdNative":Lcom/bytedance/sdk/openadsdk/TTAdNative;
    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;->getMediationExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 180
    .local v5, "extras":Landroid/os/Bundle;
    if-eqz v5, :cond_77

    const-string v6, "gdpr"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_77

    .line 181
    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 182
    .local v6, "gdpr":I
    invoke-interface {v3, v6}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->setGdpr(I)Lcom/bytedance/sdk/openadsdk/TTAdManager;

    .line 183
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AdmobFeedAdAdapter->feed native ad receive gdpr="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 186
    .end local v6    # "gdpr":I
    :cond_77
    new-instance v6, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v6}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    .line 187
    invoke-virtual {v6, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v6

    const/16 v7, 0x438

    const/16 v8, 0x780

    .line 188
    invoke-virtual {v6, v7, v8}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v6

    .line 189
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v6

    .line 192
    .local v6, "adSlot":Lcom/bytedance/sdk/openadsdk/AdSlot;
    iget-object v7, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;->mRewardedAdListener:Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;

    invoke-interface {v4, v6, v7}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadRewardVideoAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;)V

    .line 193
    return-void
.end method

.method public showAd(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 212
    const-string v0, "\u8fdb\u5165\u64ad\u653e\u5e7f\u544a"

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 213
    instance-of v1, p1, Landroid/app/Activity;

    if-nez v1, :cond_f

    .line 215
    const-string v0, "Pangle SDK requires an Activity context to initialize"

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 216
    return-void

    .line 218
    :cond_f
    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 219
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;->mttRewardVideoAd:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;->isLoadSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 221
    const-string v0, "\u64ad\u653e\u5e7f\u544a"

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 222
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;->mttRewardVideoAd:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;->showRewardVideoAd(Landroid/app/Activity;)V

    .line 224
    :cond_2b
    return-void
.end method
