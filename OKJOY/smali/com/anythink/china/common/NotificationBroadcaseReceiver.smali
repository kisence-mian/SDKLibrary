.class public Lcom/anythink/china/common/NotificationBroadcaseReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const-class v0, Lcom/anythink/china/common/NotificationBroadcaseReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/china/common/NotificationBroadcaseReceiver;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .prologue
    .line 16
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 17
    const-string v0, "broadcast_receiver_extra"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 19
    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_48

    :cond_12
    :goto_12
    packed-switch v0, :pswitch_data_52

    .line 30
    :goto_15
    return-void

    .line 19
    :sswitch_16
    const-string v3, "action_notification_click"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v0, 0x0

    goto :goto_12

    :sswitch_20
    const-string v3, "action_notification_cannel"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v0, 0x1

    goto :goto_12

    .line 21
    :pswitch_2a
    sget-object v0, Lcom/anythink/china/common/NotificationBroadcaseReceiver;->a:Ljava/lang/String;

    const-string v1, "onReceive: click..."

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-static {p1}, Lcom/anythink/china/common/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/anythink/china/common/a;->b(Ljava/lang/String;)V

    goto :goto_15

    .line 26
    :pswitch_39
    sget-object v0, Lcom/anythink/china/common/NotificationBroadcaseReceiver;->a:Ljava/lang/String;

    const-string v1, "onReceive: cancel..."

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-static {p1}, Lcom/anythink/china/common/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/anythink/china/common/a;->c(Ljava/lang/String;)V

    goto :goto_15

    .line 19
    :sswitch_data_48
    .sparse-switch
        0x4ce055dd -> :sswitch_16
        0x4e91d210 -> :sswitch_20
    .end sparse-switch

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_39
    .end packed-switch
.end method
