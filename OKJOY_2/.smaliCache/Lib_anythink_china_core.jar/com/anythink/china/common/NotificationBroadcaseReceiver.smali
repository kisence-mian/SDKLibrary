.class public Lcom/anythink/china/common/NotificationBroadcaseReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    const-class v0, Lcom/anythink/china/common/NotificationBroadcaseReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/china/common/NotificationBroadcaseReceiver;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 23
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 24
    const-string v1, "broadcast_receiver_extra_url"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    const-string v1, "broadcast_receiver_extra_unique_id"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 27
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_50

    :cond_16
    goto :goto_2b

    :sswitch_17
    const-string v1, "action_notification_cannel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_2c

    :sswitch_21
    const-string v1, "action_notification_click"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    goto :goto_2c

    :goto_2b
    const/4 v0, -0x1

    :goto_2c
    packed-switch v0, :pswitch_data_5a

    goto :goto_4e

    .line 34
    :pswitch_30
    sget-object v0, Lcom/anythink/china/common/NotificationBroadcaseReceiver;->a:Ljava/lang/String;

    const-string v1, "onReceive: cancel..."

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-static {p1}, Lcom/anythink/china/common/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/anythink/china/common/a;->c(Ljava/lang/String;)V

    goto :goto_4e

    .line 29
    :pswitch_3f
    sget-object v0, Lcom/anythink/china/common/NotificationBroadcaseReceiver;->a:Ljava/lang/String;

    const-string v1, "onReceive: click..."

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-static {p1}, Lcom/anythink/china/common/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/anythink/china/common/a;->b(Ljava/lang/String;)V

    .line 32
    return-void

    .line 38
    :goto_4e
    return-void

    nop

    :sswitch_data_50
    .sparse-switch
        0x4ce055dd -> :sswitch_21
        0x4e91d210 -> :sswitch_17
    .end sparse-switch

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_30
    .end packed-switch
.end method
