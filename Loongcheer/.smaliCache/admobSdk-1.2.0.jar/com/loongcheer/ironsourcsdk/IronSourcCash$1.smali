.class final Lcom/loongcheer/ironsourcsdk/IronSourcCash$1;
.super Landroid/os/Handler;
.source "IronSourcCash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loongcheer/ironsourcsdk/IronSourcCash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Looper;

    .line 35
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 40
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 41
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_36

    :pswitch_8
    goto :goto_35

    .line 51
    :pswitch_9
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource;->loadInterstitial()V

    .line 52
    goto :goto_35

    .line 48
    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/IronSource;->showInterstitial(Ljava/lang/String;)V

    .line 49
    goto :goto_35

    .line 45
    :pswitch_15
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/IronSource;->showRewardedVideo(Ljava/lang/String;)V

    .line 46
    goto :goto_35

    .line 55
    :pswitch_1d
    new-instance v0, Lcom/loongcheer/ironsourcsdk/IronSourcCash$1$1;

    invoke-direct {v0, p0}, Lcom/loongcheer/ironsourcsdk/IronSourcCash$1$1;-><init>(Lcom/loongcheer/ironsourcsdk/IronSourcCash$1;)V

    invoke-static {v0}, Lcom/ironsource/mediationsdk/IronSource;->setRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;)V

    .line 136
    new-instance v0, Lcom/loongcheer/ironsourcsdk/IronSourcCash$1$2;

    invoke-direct {v0, p0}, Lcom/loongcheer/ironsourcsdk/IronSourcCash$1$2;-><init>(Lcom/loongcheer/ironsourcsdk/IronSourcCash$1;)V

    invoke-static {v0}, Lcom/ironsource/mediationsdk/IronSource;->setInterstitialListener(Lcom/ironsource/mediationsdk/sdk/InterstitialListener;)V

    .line 210
    new-instance v0, Lcom/loongcheer/ironsourcsdk/IronSourcCash$1$3;

    invoke-direct {v0, p0}, Lcom/loongcheer/ironsourcsdk/IronSourcCash$1$3;-><init>(Lcom/loongcheer/ironsourcsdk/IronSourcCash$1;)V

    invoke-static {v0}, Lcom/ironsource/mediationsdk/IronSource;->addImpressionDataListener(Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;)V

    .line 227
    :goto_35
    return-void

    :pswitch_data_36
    .packed-switch 0x10
        :pswitch_1d
        :pswitch_15
        :pswitch_8
        :pswitch_d
        :pswitch_9
    .end packed-switch
.end method
