.class Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$4;
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
    .registers 3

    .line 280
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$4;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 281
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$4;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private a()V
    .registers 3

    .line 315
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$4;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 316
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$4;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->D:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz v0, :cond_16

    .line 317
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$4;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->D:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a()V

    .line 320
    :cond_16
    return-void
.end method

.method private b()V
    .registers 3

    .line 323
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$4;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_16

    .line 324
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$4;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->D:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz v0, :cond_16

    .line 325
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$4;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->D:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->d()V

    .line 328
    :cond_16
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 1

    .line 302
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 303
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$4;->a()V

    .line 305
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .line 333
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 334
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$4;->b()V

    .line 335
    return-void
.end method

.method public onFinishTemporaryDetach()V
    .registers 1

    .line 309
    invoke-super {p0}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 310
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$4;->a()V

    .line 311
    return-void
.end method

.method protected onMeasure(II)V
    .registers 3

    .line 285
    const/4 p1, 0x0

    invoke-super {p0, p1, p1}, Landroid/view/View;->onMeasure(II)V

    .line 286
    return-void
.end method

.method public onStartTemporaryDetach()V
    .registers 1

    .line 339
    invoke-super {p0}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 341
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$4;->b()V

    .line 342
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3

    .line 290
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 291
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$4;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->D:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz v0, :cond_1a

    .line 292
    if-eqz p1, :cond_13

    .line 293
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$4;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->D:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->b()V

    goto :goto_1a

    .line 295
    :cond_13
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$4;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->D:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->c()V

    .line 298
    :cond_1a
    :goto_1a
    return-void
.end method
