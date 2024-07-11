.class Lcom/bytedance/sdk/openadsdk/core/h/f$a;
.super Landroid/content/BroadcastReceiver;
.source "SdkSettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/h/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/h/f;


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/openadsdk/core/h/f;)V
    .registers 2

    .line 115
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/f$a;->a:Lcom/bytedance/sdk/openadsdk/core/h/f;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/core/h/f;Lcom/bytedance/sdk/openadsdk/core/h/f$1;)V
    .registers 3

    .line 115
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/f$a;-><init>(Lcom/bytedance/sdk/openadsdk/core/h/f;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 119
    if-nez p2, :cond_3

    .line 120
    return-void

    .line 123
    :cond_3
    const/4 p1, -0x1

    const-string v0, "b_msg_id"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 124
    const/4 v0, 0x1

    if-ne p1, v0, :cond_23

    .line 125
    const-wide/16 v0, -0x1

    const-string p1, "b_msg_time"

    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    .line 126
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_3a

    .line 127
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/f;->e()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto :goto_3a

    .line 129
    :cond_23
    const/4 p2, 0x2

    if-ne p1, p2, :cond_3a

    .line 132
    :try_start_26
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/f$a;->a:Lcom/bytedance/sdk/openadsdk/core/h/f;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/h/f;->a(Lcom/bytedance/sdk/openadsdk/core/h/f;)Lcom/bytedance/sdk/openadsdk/core/h/c;

    move-result-object p1

    if-eqz p1, :cond_37

    .line 133
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/f$a;->a:Lcom/bytedance/sdk/openadsdk/core/h/f;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/h/f;->a(Lcom/bytedance/sdk/openadsdk/core/h/f;)Lcom/bytedance/sdk/openadsdk/core/h/c;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/h/c;->a()V
    :try_end_37
    .catchall {:try_start_26 .. :try_end_37} :catchall_38

    .line 136
    :cond_37
    goto :goto_3b

    .line 135
    :catchall_38
    move-exception p1

    goto :goto_3b

    .line 129
    :cond_3a
    :goto_3a
    nop

    .line 138
    :goto_3b
    return-void
.end method
