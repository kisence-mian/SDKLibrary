.class Lcom/bytedance/sdk/openadsdk/component/splash/e$4;
.super Ljava/lang/Object;
.source "TTSplashAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/EmptyView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/splash/e;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/d/k;)V
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

    .prologue
    .line 279
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$4;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$4;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->j(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 298
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$4;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->j(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a()V

    .line 300
    :cond_11
    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 311
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$4;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->h(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 312
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$4;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->h(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->g()V

    .line 314
    :cond_11
    return-void
.end method

.method public a(Z)V
    .registers 3

    .prologue
    .line 282
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$4;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->j(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 283
    if-eqz p1, :cond_1c

    .line 284
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$4;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->j(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 285
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$4;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->j(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->b()V

    .line 293
    :cond_1b
    :goto_1b
    return-void

    .line 288
    :cond_1c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$4;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->j(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 289
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$4;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->j(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->c()V

    goto :goto_1b
.end method

.method public b()V
    .registers 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$4;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->j(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 305
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$4;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->j(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->d()V

    .line 307
    :cond_11
    return-void
.end method
