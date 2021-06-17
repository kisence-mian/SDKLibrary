.class Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter$1;
.super Ljava/lang/Object;
.source "AdmobInterstitialAdapter.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;


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

    .line 144
    iput-object p1, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter$1;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .registers 4
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 147
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter$1;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;->mCustomEventInterstitialListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;->access$000(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 148
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter$1;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;->mCustomEventInterstitialListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;->access$000(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;->onAdFailedToLoad(I)V

    .line 150
    :cond_11
    return-void
.end method

.method public onNativeExpressAdLoad(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;",
            ">;)V"
        }
    .end annotation

    .line 154
    .local p1, "ads":Ljava/util/List;, "Ljava/util/List<Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;>;"
    if-eqz p1, :cond_39

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_39

    .line 157
    :cond_9
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter$1;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    # setter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;->mTTInterstitialExpressAd:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;
    invoke-static {v0, v1}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;->access$102(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 158
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter$1;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;->mTTInterstitialExpressAd:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;->access$100(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    move-result-object v0

    const/16 v1, 0x7530

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setSlideIntervalTime(I)V

    .line 159
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter$1;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;->mTTInterstitialExpressAd:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;->access$100(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    move-result-object v0

    iget-object v1, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter$1;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;->mInterstitialExpressAdInteractionListener:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$AdInteractionListener;
    invoke-static {v1}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;->access$200(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$AdInteractionListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$AdInteractionListener;)V

    .line 160
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter$1;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;->mTTInterstitialExpressAd:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;->access$100(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobInterstitialAdapter;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->render()V

    .line 161
    return-void

    .line 155
    :cond_39
    :goto_39
    return-void
.end method
