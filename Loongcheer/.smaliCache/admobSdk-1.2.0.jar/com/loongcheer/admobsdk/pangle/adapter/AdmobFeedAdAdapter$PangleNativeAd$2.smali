.class Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd$2;
.super Ljava/lang/Object;
.source "AdmobFeedAdAdapter.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;->trackViews(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;


# direct methods
.method constructor <init>(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;)V
    .registers 2
    .param p1, "this$1"    # Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;

    .line 217
    iput-object p1, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd$2;->this$1:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "ad"    # Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    .line 221
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd$2;->this$1:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;

    iget-object v0, v0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;->mCustomEventNativeListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;->access$000(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 222
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd$2;->this$1:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;

    iget-object v0, v0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;->mCustomEventNativeListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;->access$000(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;->onAdClicked()V

    .line 223
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd$2;->this$1:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;

    iget-object v0, v0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;->mCustomEventNativeListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;->access$000(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;->onAdOpened()V

    .line 224
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd$2;->this$1:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;

    iget-object v0, v0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;->mCustomEventNativeListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;->access$000(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;->onAdLeftApplication()V

    .line 227
    :cond_2b
    return-void
.end method

.method public onAdCreativeClick(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "ad"    # Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    .line 231
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd$2;->this$1:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;

    iget-object v0, v0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;->mCustomEventNativeListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;->access$000(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 232
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd$2;->this$1:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;

    iget-object v0, v0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;->mCustomEventNativeListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;->access$000(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;->onAdClicked()V

    .line 233
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd$2;->this$1:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;

    iget-object v0, v0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;->mCustomEventNativeListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;->access$000(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;->onAdOpened()V

    .line 234
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd$2;->this$1:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;

    iget-object v0, v0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;->mCustomEventNativeListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;->access$000(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;->onAdLeftApplication()V

    .line 236
    :cond_2b
    return-void
.end method

.method public onAdShow(Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V
    .registers 3
    .param p1, "ad"    # Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    .line 240
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd$2;->this$1:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;

    iget-object v0, v0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;->mCustomEventNativeListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;->access$000(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 241
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd$2;->this$1:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;

    iget-object v0, v0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;->mCustomEventNativeListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;->access$000(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;->onAdImpression()V

    .line 243
    :cond_15
    return-void
.end method
