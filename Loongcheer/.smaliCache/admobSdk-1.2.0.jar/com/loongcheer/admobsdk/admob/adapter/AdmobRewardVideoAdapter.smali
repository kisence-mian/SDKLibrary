.class public Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;
.super Lcom/google/android/gms/ads/mediation/Adapter;
.source "AdmobRewardVideoAdapter.java"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationRewardedAd;


# static fields
.field private static final ADAPTER_NAME:Ljava/lang/String; = "AdmobRewardVideoAdapter"

.field private static final PLACEMENT_ID:Ljava/lang/String; = "placementID"


# instance fields
.field private adCallback:Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;

.field adLoadCallback:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

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

.field private rewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 30
    invoke-direct {p0}, Lcom/google/android/gms/ads/mediation/Adapter;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;->isLoadSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    new-instance v0, Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter$1;

    invoke-direct {v0, p0}, Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter$1;-><init>(Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;)V

    iput-object v0, p0, Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;->adCallback:Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;

    .line 78
    new-instance v0, Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter$2;

    invoke-direct {v0, p0}, Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter$2;-><init>(Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;)V

    iput-object v0, p0, Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;->adLoadCallback:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;
    .registers 2
    .param p0, "x0"    # Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;

    .line 30
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;->mAdmobRewardedAdCallback:Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    return-object v0
.end method

.method static synthetic access$002(Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;
    .registers 2
    .param p0, "x0"    # Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;
    .param p1, "x1"    # Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    .line 30
    iput-object p1, p0, Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;->mAdmobRewardedAdCallback:Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    return-object p1
.end method

.method static synthetic access$100(Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2
    .param p0, "x0"    # Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;

    .line 30
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;->isLoadSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;
    .registers 2
    .param p0, "x0"    # Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;

    .line 30
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;->mAdmobAdLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    return-object v0
.end method


# virtual methods
.method public getSDKVersionInfo()Lcom/google/android/gms/ads/mediation/VersionInfo;
    .registers 7

    .line 144
    invoke-static {}, Lcom/google/android/gms/ads/MobileAds;->getVersionString()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "versionString":Ljava/lang/String;
    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "splits":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 148
    .local v2, "major":I
    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 149
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

    .line 150
    .local v4, "micro":I
    new-instance v5, Lcom/google/android/gms/ads/mediation/VersionInfo;

    invoke-direct {v5, v2, v3, v4}, Lcom/google/android/gms/ads/mediation/VersionInfo;-><init>(III)V

    return-object v5
.end method

.method public getVersionInfo()Lcom/google/android/gms/ads/mediation/VersionInfo;
    .registers 2

    .line 139
    invoke-virtual {p0}, Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;->getSDKVersionInfo()Lcom/google/android/gms/ads/mediation/VersionInfo;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;Ljava/util/List;)V
    .registers 4
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

    .line 107
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/ads/mediation/MediationConfiguration;>;"
    invoke-interface {p2}, Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;->onInitializationSucceeded()V

    .line 108
    return-void
.end method

.method public loadRewardedAd(Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    .registers 9
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

    .line 114
    .local p2, "mediationAdLoadCallback":Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;, "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback<Lcom/google/android/gms/ads/mediation/MediationRewardedAd;Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;>;"
    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 115
    .local v0, "context":Landroid/content/Context;
    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_11

    .line 116
    const-string v1, "Pangle SDK requires an Activity context to load ads."

    .line 117
    .local v1, "logMessage":Ljava/lang/String;
    invoke-static {v1}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 118
    invoke-interface {p2, v1}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Ljava/lang/String;)V

    .line 119
    return-void

    .line 124
    .end local v1    # "logMessage":Ljava/lang/String;
    :cond_11
    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;->getServerParameters()Landroid/os/Bundle;

    move-result-object v1

    .line 125
    .local v1, "serverParameters":Landroid/os/Bundle;
    const-string v2, "parameter"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, "placementID":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "placementID:::=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 127
    iput-object p2, p0, Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;->mAdmobAdLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 128
    new-instance v3, Lcom/google/android/gms/ads/rewarded/RewardedAd;

    invoke-direct {v3, v0, v2}, Lcom/google/android/gms/ads/rewarded/RewardedAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;->rewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    .line 131
    new-instance v4, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v4}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v4}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v4

    iget-object v5, p0, Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;->adLoadCallback:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V

    .line 135
    return-void
.end method

.method public showAd(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 155
    const-string v0, "\u8fdb\u5165\u64ad\u653e\u5e7f\u544a"

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 156
    instance-of v1, p1, Landroid/app/Activity;

    if-nez v1, :cond_f

    .line 158
    const-string v0, "Pangle SDK requires an Activity context to initialize"

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 159
    return-void

    .line 161
    :cond_f
    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 162
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;->rewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;->isLoadSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 164
    const-string v0, "\u64ad\u653e\u5e7f\u544a"

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 166
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;->rewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;->adCallback:Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->show(Landroid/app/Activity;Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;)V

    .line 168
    :cond_2d
    return-void
.end method
