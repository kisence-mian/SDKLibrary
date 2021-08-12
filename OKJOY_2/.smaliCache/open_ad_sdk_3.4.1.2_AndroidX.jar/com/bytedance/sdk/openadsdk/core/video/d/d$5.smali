.class Lcom/bytedance/sdk/openadsdk/core/video/d/d$5;
.super Ljava/lang/Object;
.source "SSMediaPlayerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(Landroid/graphics/SurfaceTexture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/SurfaceTexture;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/video/d/d;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/d/d;Landroid/graphics/SurfaceTexture;)V
    .registers 3

    .line 314
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d$5;->b:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d$5;->a:Landroid/graphics/SurfaceTexture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 317
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d$5;->b:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->b(Lcom/bytedance/sdk/openadsdk/core/video/d/d;)V

    .line 318
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d$5;->b:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(Lcom/bytedance/sdk/openadsdk/core/video/d/d;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 319
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d$5;->b:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(Lcom/bytedance/sdk/openadsdk/core/video/d/d;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6f

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d$5;->a:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 321
    :cond_1e
    return-void
.end method
