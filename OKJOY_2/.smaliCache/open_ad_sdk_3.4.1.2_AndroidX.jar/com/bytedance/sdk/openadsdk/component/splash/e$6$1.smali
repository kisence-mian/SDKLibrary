.class Lcom/bytedance/sdk/openadsdk/component/splash/e$6$1;
.super Ljava/lang/Object;
.source "TTSplashAdImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/splash/e$6;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/splash/e$6;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/splash/e$6;)V
    .registers 2

    .line 523
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$6$1;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 526
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$6$1;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e$6;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/splash/e$6;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->j(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 527
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$6$1;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e$6;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/splash/e$6;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->j(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->d()V

    .line 529
    :cond_15
    return-void
.end method
