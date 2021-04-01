.class Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$3;
.super Landroid/view/View;
.source "NativeVideoLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 262
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$3;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 263
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$3;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private a()V
    .registers 3

    .prologue
    .line 297
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$3;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 298
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$3;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->D:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz v0, :cond_16

    .line 299
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$3;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->D:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a()V

    .line 302
    :cond_16
    return-void
.end method

.method private b()V
    .registers 3

    .prologue
    .line 305
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$3;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_16

    .line 306
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$3;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->D:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz v0, :cond_16

    .line 307
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$3;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->D:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->d()V

    .line 310
    :cond_16
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 1

    .prologue
    .line 284
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 285
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$3;->a()V

    .line 287
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 315
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 316
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$3;->b()V

    .line 317
    return-void
.end method

.method public onFinishTemporaryDetach()V
    .registers 1

    .prologue
    .line 291
    invoke-super {p0}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 292
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$3;->a()V

    .line 293
    return-void
.end method

.method protected onMeasure(II)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 267
    invoke-super {p0, v0, v0}, Landroid/view/View;->onMeasure(II)V

    .line 268
    return-void
.end method

.method public onStartTemporaryDetach()V
    .registers 1

    .prologue
    .line 321
    invoke-super {p0}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 323
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$3;->b()V

    .line 324
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3

    .prologue
    .line 272
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 273
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$3;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->D:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz v0, :cond_12

    .line 274
    if-eqz p1, :cond_13

    .line 275
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$3;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->D:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->b()V

    .line 280
    :cond_12
    :goto_12
    return-void

    .line 277
    :cond_13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$3;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->D:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->c()V

    goto :goto_12
.end method
