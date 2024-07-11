.class public Lcom/loongcheer/admobsdk/adpter/SampleAdNetworkCustomEvent;
.super Lcom/google/android/gms/ads/mediation/Adapter;
.source "SampleAdNetworkCustomEvent.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/ads/mediation/Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getSDKVersionInfo()Lcom/google/android/gms/ads/mediation/VersionInfo;
    .registers 2

    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVersionInfo()Lcom/google/android/gms/ads/mediation/VersionInfo;
    .registers 2

    .line 22
    const/4 v0, 0x0

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

    .line 18
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/ads/mediation/MediationConfiguration;>;"
    return-void
.end method
