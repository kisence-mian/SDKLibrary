.class Lcom/bytedance/sdk/openadsdk/core/video/c/a$3;
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

    .line 348
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a$3;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 351
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a$3;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->h(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 352
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a$3;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->h(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;->a()V

    .line 354
    :cond_11
    return-void
.end method
