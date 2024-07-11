.class public Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;
.super Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;


# static fields
.field private static c:Landroid/content/IntentFilter;


# instance fields
.field public a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field private final b:Lcom/sigmob/sdk/base/common/k$a;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/k$a;J)V
    .registers 5

    invoke-direct {p0, p3, p4}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;-><init>(J)V

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iput-object p2, p0, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->b:Lcom/sigmob/sdk/base/common/k$a;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->a()Landroid/content/IntentFilter;

    return-void
.end method


# virtual methods
.method public a()Landroid/content/IntentFilter;
    .registers 3

    sget-object v0, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->c:Landroid/content/IntentFilter;

    if-nez v0, :cond_25

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->c:Landroid/content/IntentFilter;

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

    :cond_25
    sget-object v0, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->c:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->b:Lcom/sigmob/sdk/base/common/k$a;

    if-eqz p1, :cond_74

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-nez p1, :cond_a

    goto/16 :goto_74

    :cond_a
    invoke-virtual {p0, p2}, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->a(Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_11

    return-void

    :cond_11
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_76

    goto :goto_45

    :sswitch_1e
    const-string v1, "com.sigmob.action.interstitial.dismiss"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_45

    const/4 v0, 0x2

    goto :goto_45

    :sswitch_28
    const-string v1, "com.sigmob.action.interstitial.show"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_45

    const/4 v0, 0x1

    goto :goto_45

    :sswitch_32
    const-string v1, "com.sigmob.action.interstitial.fail"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_45

    const/4 v0, 0x0

    goto :goto_45

    :sswitch_3c
    const-string v1, "com.sigmob.action.interstitial.click"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_45

    const/4 v0, 0x3

    :cond_45
    :goto_45
    packed-switch v0, :pswitch_data_88

    goto :goto_74

    :pswitch_49
    iget-object p1, p0, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->b:Lcom/sigmob/sdk/base/common/k$a;

    iget-object p2, p0, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-interface {p1, p2}, Lcom/sigmob/sdk/base/common/k$a;->d(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    goto :goto_74

    :pswitch_51
    iget-object p1, p0, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->b:Lcom/sigmob/sdk/base/common/k$a;

    iget-object p2, p0, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-interface {p1, p2}, Lcom/sigmob/sdk/base/common/k$a;->e(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-virtual {p0, p0}, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->a(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    goto :goto_74

    :pswitch_5f
    iget-object p1, p0, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->b:Lcom/sigmob/sdk/base/common/k$a;

    iget-object p2, p0, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-interface {p1, p2}, Lcom/sigmob/sdk/base/common/k$a;->c(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    goto :goto_74

    :pswitch_67
    const-string p1, "error"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->b:Lcom/sigmob/sdk/base/common/k$a;

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-interface {p2, v0, p1}, Lcom/sigmob/sdk/base/common/k$a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    :cond_74
    :goto_74
    return-void

    nop

    :sswitch_data_76
    .sparse-switch
        -0x7bde7ad4 -> :sswitch_3c
        -0x5ed46d06 -> :sswitch_32
        -0x5ece6927 -> :sswitch_28
        0x322e192e -> :sswitch_1e
    .end sparse-switch

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_67
        :pswitch_5f
        :pswitch_51
        :pswitch_49
    .end packed-switch
.end method
