.class Lcom/bytedance/sdk/openadsdk/component/splash/e$4;
.super Ljava/lang/Object;
.source "TTSplashAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/EmptyView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/splash/e;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/d/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/splash/e;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/splash/e;)V
    .registers 2

    .line 290
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$4;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 308
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$4;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->j(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 309
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$4;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->j(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a()V

    .line 311
    :cond_11
    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 2

    .line 322
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$4;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->h(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 323
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$4;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->h(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->g()V

    .line 325
    :cond_11
    return-void
.end method

.method public a(Z)V
    .registers 3

    .line 293
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$4;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->j(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 294
    if-eqz p1, :cond_1c

    .line 295
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$4;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->j(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object p1

    if-eqz p1, :cond_2d

    .line 296
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$4;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->j(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->b()V

    goto :goto_2d

    .line 299
    :cond_1c
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$4;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->j(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object p1

    if-eqz p1, :cond_2d

    .line 300
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$4;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->j(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->c()V

    .line 304
    :cond_2d
    :goto_2d
    return-void
.end method

.method public b()V
    .registers 2

    .line 315
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$4;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->j(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 316
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$4;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->j(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->d()V

    .line 318
    :cond_11
    return-void
.end method
