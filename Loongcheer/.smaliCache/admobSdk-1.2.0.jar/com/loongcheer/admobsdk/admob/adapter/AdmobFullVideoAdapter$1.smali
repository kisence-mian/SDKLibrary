.class Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "AdmobFullVideoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;


# direct methods
.method constructor <init>(Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;)V
    .registers 2
    .param p1, "this$0"    # Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;

    .line 71
    iput-object p1, p0, Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter$1;->this$0:Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter$1;->this$0:Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;

    # getter for: Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;->mAdmobAdListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;->access$100(Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 104
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter$1;->this$0:Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;

    # getter for: Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;->mAdmobAdListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;->access$100(Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;->onAdClicked()V

    .line 106
    :cond_11
    return-void
.end method

.method public onAdClosed()V
    .registers 2

    .line 116
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter$1;->this$0:Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;

    # getter for: Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;->mAdmobAdListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;->access$100(Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 117
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter$1;->this$0:Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;

    # getter for: Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;->mAdmobAdListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;->access$100(Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;->onAdClosed()V

    .line 119
    :cond_11
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .registers 4
    .param p1, "errorCode"    # I

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u63d2\u9875\uff1a\uff1aonAdFailedToLoad"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter$1;->this$0:Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;

    # getter for: Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;->mIsLoadSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;->access$000(Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 87
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter$1;->this$0:Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;

    # getter for: Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;->mAdmobAdListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;->access$100(Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 88
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter$1;->this$0:Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;

    # getter for: Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;->mAdmobAdListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;->access$100(Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;->onAdFailedToLoad(I)V

    .line 90
    :cond_31
    return-void
.end method

.method public onAdLeftApplication()V
    .registers 1

    .line 111
    return-void
.end method

.method public onAdLoaded()V
    .registers 3

    .line 75
    const-string v0, "\u63d2\u9875\uff1a\uff1aonAdLoaded"

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter$1;->this$0:Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;

    # getter for: Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;->mIsLoadSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;->access$000(Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 77
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter$1;->this$0:Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;

    # getter for: Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;->mAdmobAdListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;->access$100(Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 78
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter$1;->this$0:Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;

    # getter for: Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;->mAdmobAdListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;->access$100(Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;->onAdLoaded()V

    .line 80
    :cond_20
    return-void
.end method

.method public onAdOpened()V
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter$1;->this$0:Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;

    # getter for: Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;->mAdmobAdListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;->access$100(Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 96
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter$1;->this$0:Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;

    # getter for: Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;->mAdmobAdListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;->access$100(Lcom/loongcheer/admobsdk/admob/adapter/AdmobFullVideoAdapter;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;->onAdOpened()V

    .line 98
    :cond_11
    return-void
.end method
