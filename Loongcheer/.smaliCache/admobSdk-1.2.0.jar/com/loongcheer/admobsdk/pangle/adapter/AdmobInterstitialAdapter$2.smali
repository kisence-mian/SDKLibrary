.class Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter$2;
.super Ljava/lang/Object;
.source "AdmobInterstitialAdapter.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$AdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;


# direct methods
.method constructor <init>(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;)V
    .registers 2
    .param p1, "this$0"    # Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;

    .line 167
    iput-object p1, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter$2;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Landroid/view/View;I)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "type"    # I

    .line 177
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter$2;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;->mCustomEventInterstitialListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;->access$000(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 178
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter$2;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;->mCustomEventInterstitialListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;->access$000(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;->onAdClicked()V

    .line 180
    :cond_11
    return-void
.end method

.method public onAdDismiss()V
    .registers 2

    .line 170
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter$2;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;->mCustomEventInterstitialListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;->access$000(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 171
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter$2;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;->mCustomEventInterstitialListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;->access$000(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;->onAdClosed()V

    .line 173
    :cond_11
    return-void
.end method

.method public onAdShow(Landroid/view/View;I)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "type"    # I

    .line 184
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter$2;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;->mCustomEventInterstitialListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;->access$000(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 185
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter$2;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;->mCustomEventInterstitialListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;->access$000(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;->onAdOpened()V

    .line 187
    :cond_11
    return-void
.end method

.method public onRenderFail(Landroid/view/View;Ljava/lang/String;I)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "code"    # I

    .line 191
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter$2;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;->mCustomEventInterstitialListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;->access$000(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 192
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter$2;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;->mCustomEventInterstitialListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;->access$000(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;->onAdFailedToLoad(I)V

    .line 194
    :cond_11
    return-void
.end method

.method public onRenderSuccess(Landroid/view/View;FF)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "width"    # F
    .param p3, "height"    # F

    .line 199
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter$2;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;->isRenderLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;->access$300(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 200
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter$2;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;->mCustomEventInterstitialListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;->access$000(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 201
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter$2;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;->mCustomEventInterstitialListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;->access$000(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;->onAdLoaded()V

    .line 203
    :cond_1b
    return-void
.end method
