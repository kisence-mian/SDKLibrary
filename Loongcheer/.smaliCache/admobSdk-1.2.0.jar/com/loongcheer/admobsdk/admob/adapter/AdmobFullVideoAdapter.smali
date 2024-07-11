.class public Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;
.super Ljava/lang/Object;
.source "AdmobFullVideoAdapter.java"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitial;


# static fields
.field private static final ADAPTER_NAME:Ljava/lang/String; = "AdmobFullVideoAdapter"

.field private static final PLACEMENT_ID:Ljava/lang/String; = "placementID"


# instance fields
.field private adListener:Lcom/google/android/gms/ads/AdListener;

.field private mAdmobAdListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

.field private mContext:Landroid/content/Context;

.field private mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

.field private mIsLoadSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mPlacementID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;->mPlacementID:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;->mIsLoadSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 71
    new-instance v0, Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter$1;

    invoke-direct {v0, p0}, Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter$1;-><init>(Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;)V

    iput-object v0, p0, Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;->adListener:Lcom/google/android/gms/ads/AdListener;

    return-void
.end method

.method static synthetic access$000(Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2
    .param p0, "x0"    # Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;

    .line 27
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;->mIsLoadSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$100(Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;
    .registers 2
    .param p0, "x0"    # Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;

    .line 27
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;->mAdmobAdListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    return-object v0
.end method


# virtual methods
.method public onDestroy()V
    .registers 2

    .line 130
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v0, :cond_7

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    .line 133
    :cond_7
    return-void
.end method

.method public onPause()V
    .registers 1

    .line 138
    return-void
.end method

.method public onResume()V
    .registers 1

    .line 143
    return-void
.end method

.method public requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;Ljava/lang/String;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;
    .param p3, "serverParameter"    # Ljava/lang/String;
    .param p4, "mediationAdRequest"    # Lcom/google/android/gms/ads/mediation/MediationAdRequest;
    .param p5, "customEventExtras"    # Landroid/os/Bundle;

    .line 48
    iput-object p1, p0, Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;->mAdmobAdListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    .line 51
    iput-object p3, p0, Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;->mPlacementID:Ljava/lang/String;

    .line 52
    new-instance v0, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    .line 53
    invoke-virtual {v0, p3}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 55
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    iget-object v1, p0, Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;->adListener:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u63d2\u9875\uff1a\uff1a\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 57
    return-void
.end method

.method public showInterstitial()V
    .registers 3

    .line 61
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;->mIsLoadSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 63
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    goto :goto_19

    .line 65
    :cond_12
    const-string v0, "AdmobFullVideoAdapter"

    const-string v1, "Ad not loaded."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :goto_19
    return-void
.end method
