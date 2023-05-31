.class Lcom/bytedance/sdk/openadsdk/core/video/b/a$2;
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
    .line 338
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a$2;->a:Lcom/bytedance/sdk/openadsdk/core/video/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a$2;->a:Lcom/bytedance/sdk/openadsdk/core/video/b/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->b(Lcom/bytedance/sdk/openadsdk/core/video/b/a;)Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 342
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a$2;->a:Lcom/bytedance/sdk/openadsdk/core/video/b/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->b(Lcom/bytedance/sdk/openadsdk/core/video/b/a;)Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->e()V

    .line 344
    :cond_11
    return-void
.end method
