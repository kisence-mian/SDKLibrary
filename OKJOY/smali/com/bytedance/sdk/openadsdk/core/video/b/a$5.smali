.class Lcom/bytedance/sdk/openadsdk/core/video/b/a$5;
.super Landroid/content/BroadcastReceiver;
.source "BaseVideoController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/video/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/video/b/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/b/a;)V
    .registers 2

    .prologue
    .line 1215
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a$5;->a:Lcom/bytedance/sdk/openadsdk/core/video/b/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .prologue
    .line 1218
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1219
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1220
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a$5;->a:Lcom/bytedance/sdk/openadsdk/core/video/b/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->h()V

    .line 1224
    :cond_11
    :goto_11
    return-void

    .line 1221
    :cond_12
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1222
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a$5;->a:Lcom/bytedance/sdk/openadsdk/core/video/b/a;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a(Lcom/bytedance/sdk/openadsdk/core/video/b/a;Landroid/content/Context;)V

    goto :goto_11
.end method
