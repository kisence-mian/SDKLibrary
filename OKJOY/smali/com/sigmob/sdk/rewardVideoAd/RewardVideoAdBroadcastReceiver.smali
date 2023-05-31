.class public Lcom/sigmob/sdk/rewardVideoAd/RewardVideoAdBroadcastReceiver;
.super Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;


# static fields
.field private static a:Landroid/content/IntentFilter;


# instance fields
.field private b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field private final c:Lcom/sigmob/sdk/rewardVideoAd/g;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/rewardVideoAd/g;J)V
    .registers 6

    invoke-direct {p0, p3, p4}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;-><init>(J)V

    iput-object p1, p0, Lcom/sigmob/sdk/rewardVideoAd/RewardVideoAdBroadcastReceiver;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iput-object p2, p0, Lcom/sigmob/sdk/rewardVideoAd/RewardVideoAdBroadcastReceiver;->c:Lcom/sigmob/sdk/rewardVideoAd/g;

    invoke-virtual {p0}, Lcom/sigmob/sdk/rewardVideoAd/RewardVideoAdBroadcastReceiver;->a()Landroid/content/IntentFilter;

    return-void
.end method


# virtual methods
.method public a()Landroid/content/IntentFilter;
    .registers 3

    sget-object v0, Lcom/sigmob/sdk/rewardVideoAd/RewardVideoAdBroadcastReceiver;->a:Landroid/content/IntentFilter;

    if-nez v0, :cond_2e

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/rewardVideoAd/RewardVideoAdBroadcastReceiver;->a:Landroid/content/IntentFilter;

    sget-object v0, Lcom/sigmob/sdk/rewardVideoAd/RewardVideoAdBroadcastReceiver;->a:Landroid/content/IntentFilter;

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

    :cond_2e
    sget-object v0, Lcom/sigmob/sdk/rewardVideoAd/RewardVideoAdBroadcastReceiver;->a:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;)Z

    invoke-static {p2}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/RewardVideoAdBroadcastReceiver;->c:Lcom/sigmob/sdk/rewardVideoAd/g;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/RewardVideoAdBroadcastReceiver;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-nez v0, :cond_10

    :cond_f
    :goto_f
    return-void

    :cond_10
    invoke-virtual {p0, p2}, Lcom/sigmob/sdk/rewardVideoAd/RewardVideoAdBroadcastReceiver;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_90

    :cond_22
    :goto_22
    packed-switch v0, :pswitch_data_a6

    goto :goto_f

    :pswitch_26
    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/RewardVideoAdBroadcastReceiver;->c:Lcom/sigmob/sdk/rewardVideoAd/g;

    iget-object v1, p0, Lcom/sigmob/sdk/rewardVideoAd/RewardVideoAdBroadcastReceiver;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/rewardVideoAd/g;->g(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    goto :goto_f

    :sswitch_2e
    const-string v2, "com.sigmob.action.rewardedvideo.play"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v0, 0x0

    goto :goto_22

    :sswitch_38
    const-string v2, "com.sigmob.action.rewardedvideo.skip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v0, 0x1

    goto :goto_22

    :sswitch_42
    const-string v2, "com.sigmob.action.rewardedvideo.playFail"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v0, 0x2

    goto :goto_22

    :sswitch_4c
    const-string v2, "com.sigmob.action.rewardedvideo.complete"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v0, 0x3

    goto :goto_22

    :sswitch_56
    const-string v2, "com.sigmob.action.rewardedvideo.Close"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v0, 0x4

    goto :goto_22

    :pswitch_60
    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/RewardVideoAdBroadcastReceiver;->c:Lcom/sigmob/sdk/rewardVideoAd/g;

    iget-object v1, p0, Lcom/sigmob/sdk/rewardVideoAd/RewardVideoAdBroadcastReceiver;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/rewardVideoAd/g;->h(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    goto :goto_f

    :pswitch_68
    const-string v0, "error"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/rewardVideoAd/RewardVideoAdBroadcastReceiver;->c:Lcom/sigmob/sdk/rewardVideoAd/g;

    iget-object v2, p0, Lcom/sigmob/sdk/rewardVideoAd/RewardVideoAdBroadcastReceiver;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-interface {v1, v2, v0}, Lcom/sigmob/sdk/rewardVideoAd/g;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    invoke-virtual {p0, p0}, Lcom/sigmob/sdk/rewardVideoAd/RewardVideoAdBroadcastReceiver;->a(Landroid/content/BroadcastReceiver;)V

    iput-object v3, p0, Lcom/sigmob/sdk/rewardVideoAd/RewardVideoAdBroadcastReceiver;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    goto :goto_f

    :pswitch_7b
    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/RewardVideoAdBroadcastReceiver;->c:Lcom/sigmob/sdk/rewardVideoAd/g;

    iget-object v1, p0, Lcom/sigmob/sdk/rewardVideoAd/RewardVideoAdBroadcastReceiver;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/rewardVideoAd/g;->f(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    goto :goto_f

    :pswitch_83
    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/RewardVideoAdBroadcastReceiver;->c:Lcom/sigmob/sdk/rewardVideoAd/g;

    iget-object v1, p0, Lcom/sigmob/sdk/rewardVideoAd/RewardVideoAdBroadcastReceiver;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/rewardVideoAd/g;->i(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-virtual {p0, p0}, Lcom/sigmob/sdk/rewardVideoAd/RewardVideoAdBroadcastReceiver;->a(Landroid/content/BroadcastReceiver;)V

    iput-object v3, p0, Lcom/sigmob/sdk/rewardVideoAd/RewardVideoAdBroadcastReceiver;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    goto :goto_f

    :sswitch_data_90
    .sparse-switch
        -0x7d503a4f -> :sswitch_56
        -0x670f2bc5 -> :sswitch_2e
        -0x670dd17a -> :sswitch_38
        -0x43e86140 -> :sswitch_4c
        0x4fc789f9 -> :sswitch_42
    .end sparse-switch

    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_26
        :pswitch_60
        :pswitch_68
        :pswitch_7b
        :pswitch_83
    .end packed-switch
.end method
