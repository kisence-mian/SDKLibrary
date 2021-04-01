.class Lcom/bytedance/sdk/openadsdk/core/video/c/d$4;
.super Ljava/lang/Object;
.source "SSMediaPlayerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/video/c/d;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/c/d;J)V
    .registers 4

    .prologue
    .line 286
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d$4;->b:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    iput-wide p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d$4;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 289
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d$4;->b:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(Lcom/bytedance/sdk/openadsdk/core/video/c/d;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 290
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d$4;->b:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(Lcom/bytedance/sdk/openadsdk/core/video/c/d;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6a

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d$4;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 292
    :cond_1d
    return-void
.end method
