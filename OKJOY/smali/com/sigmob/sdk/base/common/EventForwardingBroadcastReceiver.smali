.class public Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;
.super Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;


# static fields
.field private static c:Landroid/content/IntentFilter;


# instance fields
.field public a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field private final b:Lcom/sigmob/sdk/base/common/s;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/s;J)V
    .registers 6

    invoke-direct {p0, p3, p4}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;-><init>(J)V

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iput-object p2, p0, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->b:Lcom/sigmob/sdk/base/common/s;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->a()Landroid/content/IntentFilter;

    return-void
.end method


# virtual methods
.method public a()Landroid/content/IntentFilter;
    .registers 3

    sget-object v0, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->c:Landroid/content/IntentFilter;

    if-nez v0, :cond_27

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->c:Landroid/content/IntentFilter;

    sget-object v0, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->c:Landroid/content/IntentFilter;

    const-string v1, "com.sigmob.action.interstitial.fail"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->c:Landroid/content/IntentFilter;

    const-string v1, "com.sigmob.action.interstitial.show"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->c:Landroid/content/IntentFilter;

    const-string v1, "com.sigmob.action.interstitial.dismiss"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->c:Landroid/content/IntentFilter;

    const-string v1, "com.sigmob.action.interstitial.click"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_27
    sget-object v0, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->c:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->b:Lcom/sigmob/sdk/base/common/s;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    invoke-virtual {p0, p2}, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_74

    :cond_1b
    :goto_1b
    packed-switch v0, :pswitch_data_86

    goto :goto_8

    :pswitch_1f
    const-string v0, "error"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->b:Lcom/sigmob/sdk/base/common/s;

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-interface {v1, v2, v0}, Lcom/sigmob/sdk/base/common/s;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    goto :goto_8

    :sswitch_2d
    const-string v2, "com.sigmob.action.interstitial.fail"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v0, 0x0

    goto :goto_1b

    :sswitch_37
    const-string v2, "com.sigmob.action.interstitial.show"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v0, 0x1

    goto :goto_1b

    :sswitch_41
    const-string v2, "com.sigmob.action.interstitial.dismiss"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v0, 0x2

    goto :goto_1b

    :sswitch_4b
    const-string v2, "com.sigmob.action.interstitial.click"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v0, 0x3

    goto :goto_1b

    :pswitch_55
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->b:Lcom/sigmob/sdk/base/common/s;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/base/common/s;->c(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    goto :goto_8

    :pswitch_5d
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->b:Lcom/sigmob/sdk/base/common/s;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/base/common/s;->e(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-virtual {p0, p0}, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->a(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    goto :goto_8

    :pswitch_6b
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->b:Lcom/sigmob/sdk/base/common/s;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/base/common/s;->d(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    goto :goto_8

    nop

    :sswitch_data_74
    .sparse-switch
        -0x7bde7ad4 -> :sswitch_4b
        -0x5ed46d06 -> :sswitch_2d
        -0x5ece6927 -> :sswitch_37
        0x322e192e -> :sswitch_41
    .end sparse-switch

    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_55
        :pswitch_5d
        :pswitch_6b
    .end packed-switch
.end method
