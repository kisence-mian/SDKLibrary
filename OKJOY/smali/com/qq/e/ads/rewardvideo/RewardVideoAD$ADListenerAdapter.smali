.class public Lcom/qq/e/ads/rewardvideo/RewardVideoAD$ADListenerAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/e/comm/adevent/ADListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/e/ads/rewardvideo/RewardVideoAD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ADListenerAdapter"
.end annotation


# static fields
.field public static final EVENT_TYPE_ON_AD_CLICK:I = 0x6

.field public static final EVENT_TYPE_ON_AD_CLOSE:I = 0x8

.field public static final EVENT_TYPE_ON_AD_EXPOSE:I = 0x4

.field public static final EVENT_TYPE_ON_AD_LOADED:I = 0x1

.field public static final EVENT_TYPE_ON_AD_SHOW:I = 0x3

.field public static final EVENT_TYPE_ON_ERROR:I = 0x9

.field public static final EVENT_TYPE_ON_REWARD:I = 0x5

.field public static final EVENT_TYPE_ON_VIDEO_CACHED:I = 0x2

.field public static final EVENT_TYPE_ON_VIDEO_COMPLETE:I = 0x7


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/qq/e/ads/rewardvideo/RewardVideoAD;",
            ">;"
        }
    .end annotation
.end field

.field public adListener:Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;


# direct methods
.method public constructor <init>(Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;)V
    .registers 2
    .param p1, "adListener"    # Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$ADListenerAdapter;->adListener:Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;

    return-void
.end method


# virtual methods
.method public onADEvent(Lcom/qq/e/comm/adevent/ADEvent;)V
    .registers 5
    .param p1, "evt"    # Lcom/qq/e/comm/adevent/ADEvent;

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_8c

    :cond_8
    :goto_8
    return-void

    :pswitch_9
    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$ADListenerAdapter;->adListener:Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;

    invoke-interface {v0}, Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;->onADLoad()V

    goto :goto_8

    :pswitch_f
    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$ADListenerAdapter;->adListener:Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;

    invoke-interface {v0}, Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;->onVideoCached()V

    goto :goto_8

    :pswitch_15
    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$ADListenerAdapter;->adListener:Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;

    invoke-interface {v0}, Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;->onADShow()V

    goto :goto_8

    :pswitch_1b
    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$ADListenerAdapter;->adListener:Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;

    invoke-interface {v0}, Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;->onADExpose()V

    goto :goto_8

    :pswitch_21
    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$ADListenerAdapter;->adListener:Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;

    invoke-interface {v0}, Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;->onReward()V

    goto :goto_8

    :pswitch_27
    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$ADListenerAdapter;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_52

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_52

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v1, v0, v2

    instance-of v0, v1, Ljava/lang/String;

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$ADListenerAdapter;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$ADListenerAdapter;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->setExt(Ljava/lang/String;)V

    :cond_52
    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$ADListenerAdapter;->adListener:Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;

    invoke-interface {v0}, Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;->onADClick()V

    goto :goto_8

    :pswitch_58
    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$ADListenerAdapter;->adListener:Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;

    invoke-interface {v0}, Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;->onVideoComplete()V

    goto :goto_8

    :pswitch_5e
    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$ADListenerAdapter;->adListener:Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;

    invoke-interface {v0}, Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;->onADClose()V

    goto :goto_8

    :pswitch_64
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_8

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$ADListenerAdapter;->adListener:Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/qq/e/comm/a;->a(I)Lcom/qq/e/comm/util/AdError;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;->onError(Lcom/qq/e/comm/util/AdError;)V

    goto/16 :goto_8

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_f
        :pswitch_15
        :pswitch_1b
        :pswitch_21
        :pswitch_27
        :pswitch_58
        :pswitch_5e
        :pswitch_64
    .end packed-switch
.end method

.method public setBase(Lcom/qq/e/ads/rewardvideo/RewardVideoAD;)V
    .registers 3
    .param p1, "rewardVideoAD"    # Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    .prologue
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$ADListenerAdapter;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method
