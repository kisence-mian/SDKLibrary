.class Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD$AdListenerAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/e/comm/adevent/ADListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdListenerAdapter"
.end annotation


# instance fields
.field private a:Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAdListener;


# direct methods
.method constructor <init>(Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAdListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD$AdListenerAdapter;->a:Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAdListener;

    return-void
.end method


# virtual methods
.method public onADEvent(Lcom/qq/e/comm/adevent/ADEvent;)V
    .registers 5

    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD$AdListenerAdapter;->a:Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAdListener;

    if-eqz v0, :cond_87

    if-eqz p1, :cond_87

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getType()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_88

    goto/16 :goto_87

    :pswitch_10
    iget-object p1, p0, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD$AdListenerAdapter;->a:Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAdListener;

    invoke-interface {p1}, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAdListener;->onVideoComplete()V

    goto :goto_87

    :pswitch_16
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_87

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v1

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_87

    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD$AdListenerAdapter;->a:Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAdListener;

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, v1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/qq/e/comm/util/AdErrorConvertor;->formatErrorCode(I)Lcom/qq/e/comm/util/AdError;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAdListener;->onError(Lcom/qq/e/comm/util/AdError;)V

    return-void

    :pswitch_3d
    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD$AdListenerAdapter;->a:Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAdListener;

    invoke-interface {v0}, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAdListener;->onClose()V

    return-void

    :pswitch_43
    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD$AdListenerAdapter;->a:Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAdListener;

    invoke-interface {v0}, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAdListener;->onClick()V

    return-void

    :pswitch_49
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_87

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v1

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_87

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v2

    aget-object v1, v2, v1

    const-string v2, "transId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD$AdListenerAdapter;->a:Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAdListener;

    invoke-interface {v1, v0}, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAdListener;->onReward(Ljava/util/Map;)V

    return-void

    :pswitch_70
    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD$AdListenerAdapter;->a:Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAdListener;

    invoke-interface {v0}, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAdListener;->onExpose()V

    return-void

    :pswitch_76
    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD$AdListenerAdapter;->a:Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAdListener;

    invoke-interface {v0}, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAdListener;->onShow()V

    return-void

    :pswitch_7c
    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD$AdListenerAdapter;->a:Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAdListener;

    invoke-interface {v0}, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAdListener;->onVideoCached()V

    return-void

    :pswitch_82
    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD$AdListenerAdapter;->a:Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAdListener;

    invoke-interface {v0}, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAdListener;->onAdLoaded()V

    :cond_87
    :goto_87
    return-void

    :pswitch_data_88
    .packed-switch 0x64
        :pswitch_82
        :pswitch_7c
        :pswitch_76
        :pswitch_70
        :pswitch_49
        :pswitch_43
        :pswitch_3d
        :pswitch_16
        :pswitch_10
    .end packed-switch
.end method
