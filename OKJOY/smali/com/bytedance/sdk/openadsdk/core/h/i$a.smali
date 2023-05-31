.class Lcom/bytedance/sdk/openadsdk/core/h/i$a;
.super Landroid/content/BroadcastReceiver;
.source "SdkSettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/h/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/h/i;


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/openadsdk/core/h/i;)V
    .registers 2

    .prologue
    .line 114
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/i$a;->a:Lcom/bytedance/sdk/openadsdk/core/h/i;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/core/h/i;Lcom/bytedance/sdk/openadsdk/core/h/i$1;)V
    .registers 3

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/i$a;-><init>(Lcom/bytedance/sdk/openadsdk/core/h/i;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .prologue
    .line 118
    if-nez p2, :cond_3

    .line 137
    :cond_2
    :goto_2
    return-void

    .line 122
    :cond_3
    const-string v0, "b_msg_id"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 123
    const/4 v1, 0x1

    if-ne v0, v1, :cond_23

    .line 124
    const-string v0, "b_msg_time"

    const-wide/16 v2, -0x1

    invoke-virtual {p2, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 125
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 126
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/i;->e()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto :goto_2

    .line 128
    :cond_23
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 131
    :try_start_26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/i$a;->a:Lcom/bytedance/sdk/openadsdk/core/h/i;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/h/i;->a(Lcom/bytedance/sdk/openadsdk/core/h/i;)Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 132
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/i$a;->a:Lcom/bytedance/sdk/openadsdk/core/h/i;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/h/i;->a(Lcom/bytedance/sdk/openadsdk/core/h/i;)Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/h/e;->a()V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_37} :catch_38

    goto :goto_2

    .line 134
    :catch_38
    move-exception v0

    goto :goto_2
.end method
