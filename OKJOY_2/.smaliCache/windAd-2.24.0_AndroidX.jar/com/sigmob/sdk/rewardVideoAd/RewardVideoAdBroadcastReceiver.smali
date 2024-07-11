.class public Lcom/sigmob/sdk/rewardVideoAd/RewardVideoAdBroadcastReceiver;
.super Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;


# static fields
.field private static a:Landroid/content/IntentFilter;


# instance fields
.field private b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field private final c:Lcom/sigmob/sdk/rewardVideoAd/f$a;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/rewardVideoAd/f$a;J)V
    .registers 5

    invoke-direct {p0, p3, p4}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;-><init>(J)V

    iput-object p1, p0, Lcom/sigmob/sdk/rewardVideoAd/RewardVideoAdBroadcastReceiver;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iput-object p2, p0, Lcom/sigmob/sdk/rewardVideoAd/RewardVideoAdBroadcastReceiver;->c:Lcom/sigmob/sdk/rewardVideoAd/f$a;

    invoke-virtual {p0}, Lcom/sigmob/sdk/rewardVideoAd/RewardVideoAdBroadcastReceiver;->a()Landroid/content/IntentFilter;

    return-void
.end method


# virtual methods
.method public a()Landroid/content/IntentFilter;
    .registers 3

    sget-object v0, Lcom/sigmob/sdk/rewardVideoAd/RewardVideoAdBroadcastReceiver;->a:Landroid/content/IntentFilter;

    if-nez v0, :cond_2c

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/rewardVideoAd/RewardVideoAdBroadcastReceiver;->a:Landroid/content/IntentFilter;

    const-string v1, "com.sigmob.action.rewardedvideo.play"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/rewardVideoAd/RewardVideoAdBroadcastReceiver;->a:Landroid/content/IntentFilter;

    const-string v1, "com.sigmob.action.rewardedvideo.skip"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/rewardVideoAd/RewardVideoAdBroadcastReceiver;->a:Landroid/content/IntentFilter;

    const-string v1, "com.sigmob.action.rewardedvideo.playFail"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/rewardVideoAd/RewardVideoAdBroadcastReceiver;->a:Landroid/content/IntentFilter;

    const-string v1, "com.sigmob.action.rewardedvideo.complete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/rewardVideoAd/RewardVideoAdBroadcastReceiver;->a:Landroid/content/IntentFilter;

    const-string v1, "com.sigmob.action.rewardedvideo.Close"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_2c
    sget-object v0, Lcom/sigmob/sdk/rewardVideoAd/RewardVideoAdBroadcastReceiver;->a:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    invoke-static {p1}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;)Z

    invoke-static {p2}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sigmob/sdk/rewardVideoAd/RewardVideoAdBroadcastReceiver;->c:Lcom/sigmob/sdk/rewardVideoAd/f$a;

    if-eqz p1, :cond_8c

    iget-object p1, p0, Lcom/sigmob/sdk/rewardVideoAd/RewardVideoAdBroadcastReceiver;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-nez p1, :cond_10

    goto/16 :goto_8c

    :cond_10
    invoke-virtual {p0, p2}, Lcom/sigmob/sdk/rewardVideoAd/RewardVideoAdBroadcastReceiver;->a(Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_17

    return-void

    :cond_17
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_8e

    goto :goto_55

    :sswitch_24
    const-string v1, "com.sigmob.action.rewardedvideo.playFail"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_55

    const/4 v0, 0x2

    goto :goto_55

    :sswitch_2e
    const-string v1, "com.sigmob.action.rewardedvideo.complete"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_55

    const/4 v0, 0x3

    goto :goto_55

    :sswitch_38
    const-string v1, "com.sigmob.action.rewardedvideo.skip"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_55

    const/4 v0, 0x1

    goto :goto_55

    :sswitch_42
    const-string v1, "com.sigmob.action.rewardedvideo.play"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_55

    const/4 v0, 0x0

    goto :goto_55

    :sswitch_4c
    const-string v1, "com.sigmob.action.rewardedvideo.Close"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_55

    const/4 v0, 0x4

    :cond_55
    :goto_55
    const/4 p1, 0x0

    packed-switch v0, :pswitch_data_a4

    goto :goto_8c

    :pswitch_5a
    iget-object p2, p0, Lcom/sigmob/sdk/rewardVideoAd/RewardVideoAdBroadcastReceiver;->c:Lcom/sigmob/sdk/rewardVideoAd/f$a;

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/RewardVideoAdBroadcastReceiver;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-interface {p2, v0}, Lcom/sigmob/sdk/rewardVideoAd/f$a;->i(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    goto :goto_77

    :pswitch_62
    iget-object p1, p0, Lcom/sigmob/sdk/rewardVideoAd/RewardVideoAdBroadcastReceiver;->c:Lcom/sigmob/sdk/rewardVideoAd/f$a;

    iget-object p2, p0, Lcom/sigmob/sdk/rewardVideoAd/RewardVideoAdBroadcastReceiver;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-interface {p1, p2}, Lcom/sigmob/sdk/rewardVideoAd/f$a;->f(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    goto :goto_8c

    :pswitch_6a
    const-string v0, "error"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/RewardVideoAdBroadcastReceiver;->c:Lcom/sigmob/sdk/rewardVideoAd/f$a;

    iget-object v1, p0, Lcom/sigmob/sdk/rewardVideoAd/RewardVideoAdBroadcastReceiver;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-interface {v0, v1, p2}, Lcom/sigmob/sdk/rewardVideoAd/f$a;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    :goto_77
    invoke-virtual {p0, p0}, Lcom/sigmob/sdk/rewardVideoAd/RewardVideoAdBroadcastReceiver;->a(Landroid/content/BroadcastReceiver;)V

    iput-object p1, p0, Lcom/sigmob/sdk/rewardVideoAd/RewardVideoAdBroadcastReceiver;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    goto :goto_8c

    :pswitch_7d
    iget-object p1, p0, Lcom/sigmob/sdk/rewardVideoAd/RewardVideoAdBroadcastReceiver;->c:Lcom/sigmob/sdk/rewardVideoAd/f$a;

    iget-object p2, p0, Lcom/sigmob/sdk/rewardVideoAd/RewardVideoAdBroadcastReceiver;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-interface {p1, p2}, Lcom/sigmob/sdk/rewardVideoAd/f$a;->h(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    goto :goto_8c

    :pswitch_85
    iget-object p1, p0, Lcom/sigmob/sdk/rewardVideoAd/RewardVideoAdBroadcastReceiver;->c:Lcom/sigmob/sdk/rewardVideoAd/f$a;

    iget-object p2, p0, Lcom/sigmob/sdk/rewardVideoAd/RewardVideoAdBroadcastReceiver;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-interface {p1, p2}, Lcom/sigmob/sdk/rewardVideoAd/f$a;->g(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_8c
    :goto_8c
    return-void

    nop

    :sswitch_data_8e
    .sparse-switch
        -0x7d503a4f -> :sswitch_4c
        -0x670f2bc5 -> :sswitch_42
        -0x670dd17a -> :sswitch_38
        -0x43e86140 -> :sswitch_2e
        0x4fc789f9 -> :sswitch_24
    .end sparse-switch

    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_85
        :pswitch_7d
        :pswitch_6a
        :pswitch_62
        :pswitch_5a
    .end packed-switch
.end method
