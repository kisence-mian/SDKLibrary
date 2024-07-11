.class Lcom/bytedance/sdk/openadsdk/core/video/d/d$7;
.super Ljava/lang/Object;
.source "SSMediaPlayerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(Lcom/bytedance/sdk/openadsdk/core/video/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/video/b/a;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/video/d/d;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/d/d;Lcom/bytedance/sdk/openadsdk/core/video/b/a;)V
    .registers 3

    .line 366
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d$7;->b:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d$7;->a:Lcom/bytedance/sdk/openadsdk/core/video/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 369
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d$7;->b:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->b(Lcom/bytedance/sdk/openadsdk/core/video/d/d;)V

    .line 370
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d$7;->b:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(Lcom/bytedance/sdk/openadsdk/core/video/d/d;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 371
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d$7;->b:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(Lcom/bytedance/sdk/openadsdk/core/video/d/d;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6b

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d$7;->a:Lcom/bytedance/sdk/openadsdk/core/video/b/a;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 373
    :cond_1e
    return-void
.end method
