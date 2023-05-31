.class Lcom/bytedance/sdk/openadsdk/core/video/b/a$4;
.super Ljava/lang/Object;
.source "BaseVideoController.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 378
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a$4;->a:Lcom/bytedance/sdk/openadsdk/core/video/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 381
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a$4;->a:Lcom/bytedance/sdk/openadsdk/core/video/b/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->b(Lcom/bytedance/sdk/openadsdk/core/video/b/a;)Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 382
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a$4;->a:Lcom/bytedance/sdk/openadsdk/core/video/b/a;

    iget-wide v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1b

    .line 383
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a$4;->a:Lcom/bytedance/sdk/openadsdk/core/video/b/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->b(Lcom/bytedance/sdk/openadsdk/core/video/b/a;)Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->e()V

    .line 385
    :cond_1b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a$4;->a:Lcom/bytedance/sdk/openadsdk/core/video/b/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->b(Lcom/bytedance/sdk/openadsdk/core/video/b/a;)Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f()V

    .line 387
    :cond_24
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a$4;->a:Lcom/bytedance/sdk/openadsdk/core/video/b/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->e(Lcom/bytedance/sdk/openadsdk/core/video/b/a;)Lcom/bytedance/sdk/openadsdk/utils/ak;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, p0, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ak;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 388
    return-void
.end method
