.class Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$1;
.super Ljava/lang/Object;
.source "AdmobFeedAdAdapter.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;


# direct methods
.method constructor <init>(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;)V
    .registers 2
    .param p1, "this$0"    # Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;

    .line 99
    iput-object p1, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$1;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .registers 5
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "feedAdListener loaded fail .code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdmobFeedAdAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$1;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;->mCustomEventNativeListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;->access$000(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 104
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$1;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;->mCustomEventNativeListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;->access$000(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;

    move-result-object v0

    invoke-static {p1}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;->getAdmobError(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;->onAdFailedToLoad(I)V

    .line 106
    :cond_37
    return-void
.end method

.method public onFeedAdLoad(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/TTFeedAd;",
            ">;)V"
        }
    .end annotation

    .line 110
    .local p1, "ads":Ljava/util/List;, "Ljava/util/List<Lcom/bytedance/sdk/openadsdk/TTFeedAd;>;"
    if-eqz p1, :cond_2a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_2a

    .line 118
    :cond_9
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$1;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;->mCustomEventNativeListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;->access$000(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 119
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$1;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;->mCustomEventNativeListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;->access$000(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;

    move-result-object v0

    new-instance v1, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;

    iget-object v2, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$1;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;-><init>(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;Lcom/bytedance/sdk/openadsdk/TTFeedAd;Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$1;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;->onAdLoaded(Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;)V

    .line 121
    :cond_29
    return-void

    .line 111
    :cond_2a
    :goto_2a
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$1;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;->mCustomEventNativeListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;->access$000(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 112
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$1;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;->mCustomEventNativeListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;->access$000(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;->onAdFailedToLoad(I)V

    .line 114
    :cond_3c
    const-string v0, "AdmobFeedAdAdapter"

    const-string v1, "feedAdListener loaded success .but ad no fill "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void
.end method
