.class Lcom/bytedance/sdk/openadsdk/component/splash/e$5;
.super Ljava/lang/Object;
.source "TTSplashAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/splash/e;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/component/splash/e;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/splash/e;ZLjava/lang/String;)V
    .registers 4

    .line 373
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->c:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->a:Z

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadActive(JJLjava/lang/String;Ljava/lang/String;)V
    .registers 15

    .line 386
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->c:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->k(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 387
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->c:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->k(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    move-result-object v1

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;->onDownloadActive(JJLjava/lang/String;Ljava/lang/String;)V

    .line 389
    :cond_15
    iget-boolean p5, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->a:Z

    if-eqz p5, :cond_2a

    const-wide/16 p5, 0x0

    cmp-long p5, p1, p5

    if-lez p5, :cond_2a

    .line 390
    const-wide/16 p5, 0x64

    mul-long/2addr p3, p5

    div-long/2addr p3, p1

    long-to-int p1, p3

    .line 391
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->b:Ljava/lang/String;

    const/4 p3, 0x3

    invoke-static {p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/d/a$a;->a(Ljava/lang/String;II)V

    .line 393
    :cond_2a
    return-void
.end method

.method public onDownloadFailed(JJLjava/lang/String;Ljava/lang/String;)V
    .registers 15

    .line 408
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->c:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->k(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 409
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->c:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->k(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    move-result-object v1

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;->onDownloadFailed(JJLjava/lang/String;Ljava/lang/String;)V

    .line 411
    :cond_15
    iget-boolean p5, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->a:Z

    if-eqz p5, :cond_2a

    const-wide/16 p5, 0x0

    cmp-long p5, p1, p5

    if-lez p5, :cond_2a

    .line 412
    const-wide/16 p5, 0x64

    mul-long/2addr p3, p5

    div-long/2addr p3, p1

    long-to-int p1, p3

    .line 413
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->b:Ljava/lang/String;

    const/4 p3, 0x4

    invoke-static {p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/d/a$a;->a(Ljava/lang/String;II)V

    .line 415
    :cond_2a
    return-void
.end method

.method public onDownloadFinished(JLjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 419
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->c:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->k(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 420
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->c:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->k(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;->onDownloadFinished(JLjava/lang/String;Ljava/lang/String;)V

    .line 422
    :cond_11
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->a:Z

    if-eqz p1, :cond_1d

    .line 423
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->b:Ljava/lang/String;

    const/4 p2, 0x5

    const/16 p3, 0x64

    invoke-static {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/d/a$a;->a(Ljava/lang/String;II)V

    .line 425
    :cond_1d
    return-void
.end method

.method public onDownloadPaused(JJLjava/lang/String;Ljava/lang/String;)V
    .registers 15

    .line 397
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->c:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->k(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 398
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->c:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->k(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    move-result-object v1

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;->onDownloadPaused(JJLjava/lang/String;Ljava/lang/String;)V

    .line 400
    :cond_15
    iget-boolean p5, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->a:Z

    if-eqz p5, :cond_2a

    const-wide/16 p5, 0x0

    cmp-long p5, p1, p5

    if-lez p5, :cond_2a

    .line 401
    const-wide/16 p5, 0x64

    mul-long/2addr p3, p5

    div-long/2addr p3, p1

    long-to-int p1, p3

    .line 402
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->b:Ljava/lang/String;

    const/4 p3, 0x2

    invoke-static {p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/d/a$a;->a(Ljava/lang/String;II)V

    .line 404
    :cond_2a
    return-void
.end method

.method public onIdle()V
    .registers 4

    .line 376
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->c:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->k(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 377
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->c:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->k(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;->onIdle()V

    .line 379
    :cond_11
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->a:Z

    if-eqz v0, :cond_1c

    .line 380
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->b:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/d/a$a;->a(Ljava/lang/String;II)V

    .line 382
    :cond_1c
    return-void
.end method

.method public onInstalled(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 429
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->c:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->k(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 430
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->c:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->k(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;->onInstalled(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    :cond_11
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->a:Z

    if-eqz p1, :cond_1d

    .line 433
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->b:Ljava/lang/String;

    const/4 p2, 0x6

    const/16 v0, 0x64

    invoke-static {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/d/a$a;->a(Ljava/lang/String;II)V

    .line 435
    :cond_1d
    return-void
.end method
