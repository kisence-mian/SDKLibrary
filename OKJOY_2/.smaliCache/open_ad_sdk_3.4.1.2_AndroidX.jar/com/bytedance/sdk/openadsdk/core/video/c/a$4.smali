.class Lcom/bytedance/sdk/openadsdk/core/video/c/a$4;
.super Ljava/lang/Object;
.source "BaseVideoController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/video/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/video/c/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)V
    .registers 2

    .line 379
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a$4;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 382
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a$4;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 383
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a$4;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/a;

    iget-wide v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1b

    .line 384
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a$4;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->e()V

    .line 386
    :cond_1b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a$4;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->f()V

    .line 388
    :cond_24
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a$4;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->e(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bytedance/sdk/openadsdk/utils/al;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/al;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 389
    return-void
.end method
