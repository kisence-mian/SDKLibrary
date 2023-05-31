.class Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$6;
.super Landroid/content/BroadcastReceiver;
.source "NativeVideoController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)V
    .registers 2

    .prologue
    .line 1470
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$6;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .prologue
    .line 1473
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1474
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1475
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$6;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->h()V

    .line 1479
    :cond_11
    :goto_11
    return-void

    .line 1476
    :cond_12
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1477
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$6;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;Landroid/content/Context;)V

    goto :goto_11
.end method
