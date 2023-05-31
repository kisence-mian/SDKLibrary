.class Lcom/bytedance/sdk/openadsdk/component/splash/b$4;
.super Ljava/lang/Object;
.source "SplashAdLoadManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/utils/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/core/d/a;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/f/a/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/d/a;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/d/k;

.field final synthetic c:Z

.field final synthetic d:Lcom/bytedance/sdk/openadsdk/f/a/d;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/bytedance/sdk/openadsdk/component/splash/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/core/d/a;Lcom/bytedance/sdk/openadsdk/core/d/k;ZLcom/bytedance/sdk/openadsdk/f/a/d;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 489
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->f:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->a:Lcom/bytedance/sdk/openadsdk/core/d/a;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iput-boolean p4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->c:Z

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->d:Lcom/bytedance/sdk/openadsdk/f/a/d;

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 15
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 546
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->a:Lcom/bytedance/sdk/openadsdk/core/d/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(Lcom/bytedance/sdk/openadsdk/core/d/a;)V

    .line 549
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->d:Lcom/bytedance/sdk/openadsdk/f/a/d;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(Lcom/bytedance/sdk/openadsdk/f/a/d;Ljava/lang/String;)V

    .line 551
    const/4 v3, -0x7

    .line 552
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->d:Lcom/bytedance/sdk/openadsdk/f/a/d;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/f/a/d;->b(I)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v0

    .line 553
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/a/d;->g(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    .line 554
    const-string v0, "splashLoadAd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "splashLoad----5-LoadImageBytes-onFailed-code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->f:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    const/16 v9, 0x3a98

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->f:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    const/4 v2, 0x2

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->d:Lcom/bytedance/sdk/openadsdk/f/a/d;

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;IILjava/lang/String;Lcom/bytedance/sdk/openadsdk/TTSplashAd;Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    move-object v2, v7

    move v3, v9

    move-object v4, v0

    move-object v6, v5

    move-object v7, v5

    invoke-static/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;ILcom/bytedance/sdk/openadsdk/component/splash/b$a;Lcom/bytedance/sdk/openadsdk/core/d/n;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;)V

    .line 558
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->c:Z

    if-eqz v0, :cond_6f

    .line 559
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->f:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->j(Lcom/bytedance/sdk/openadsdk/component/splash/b;)J

    move-result-wide v6

    iget-object v10, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    const-wide/16 v11, -0x7

    move v9, v8

    move-object v13, v5

    invoke-static/range {v6 .. v13}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(JZZLcom/bytedance/sdk/openadsdk/core/d/k;JLcom/bytedance/sdk/adnet/core/n;)V

    .line 562
    :cond_6f
    const-string v0, "SplashAdLoadManager"

    const-string v1, "\u56fe\u7247\u52a0\u8f7d\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    return-void
.end method

.method public a([B)V
    .registers 12
    .param p1    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 494
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->a:Lcom/bytedance/sdk/openadsdk/core/d/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(Lcom/bytedance/sdk/openadsdk/core/d/a;)V

    .line 496
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    .line 499
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->c:Z

    if-nez v0, :cond_22

    .line 500
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    const-string v1, "splash_ad"

    const-string v2, "download_creative_duration"

    .line 502
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->f:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->i(Lcom/bytedance/sdk/openadsdk/component/splash/b;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 500
    invoke-static {v0, v1, v2, v4, v5}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;J)V

    .line 505
    :cond_22
    if-eqz p1, :cond_8f

    .line 507
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->d(Z)V

    .line 508
    new-instance v5, Lcom/bytedance/sdk/openadsdk/component/splash/e;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->f:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->h(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->f:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->g(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v2

    const-string v3, "splash_ad"

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/component/splash/e;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)V

    .line 509
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->f:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {v0, v5}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/component/splash/e;

    .line 510
    invoke-virtual {v5, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->a([B)V

    .line 513
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->f:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->c(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->x()Lcom/bytedance/sdk/openadsdk/core/d/k$a;

    move-result-object v0

    if-nez v0, :cond_8d

    const/4 v0, 0x1

    :goto_56
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 514
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->f:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->d:Lcom/bytedance/sdk/openadsdk/f/a/d;

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;IILjava/lang/String;Lcom/bytedance/sdk/openadsdk/TTSplashAd;Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    .line 516
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->f:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    const/16 v2, 0x3a98

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;ILcom/bytedance/sdk/openadsdk/component/splash/b$a;Lcom/bytedance/sdk/openadsdk/core/d/n;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;)V

    .line 518
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->f:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->d:Lcom/bytedance/sdk/openadsdk/f/a/d;

    invoke-static {v0, v1, v5, v2, v3}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/core/d/n;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    .line 521
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->c:Z

    if-eqz v0, :cond_8c

    .line 522
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->f:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->j(Lcom/bytedance/sdk/openadsdk/component/splash/b;)J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(JZZLcom/bytedance/sdk/openadsdk/core/d/k;JLcom/bytedance/sdk/adnet/core/n;)V

    .line 540
    :cond_8c
    :goto_8c
    return-void

    .line 513
    :cond_8d
    const/4 v0, 0x0

    goto :goto_56

    .line 527
    :cond_8f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->d:Lcom/bytedance/sdk/openadsdk/f/a/d;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(Lcom/bytedance/sdk/openadsdk/f/a/d;Ljava/lang/String;)V

    .line 528
    const/4 v3, -0x7

    .line 529
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->d:Lcom/bytedance/sdk/openadsdk/f/a/d;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/f/a/d;->b(I)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v0

    .line 530
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/a/d;->g(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    .line 531
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->f:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    const/4 v2, 0x2

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->d:Lcom/bytedance/sdk/openadsdk/f/a/d;

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;IILjava/lang/String;Lcom/bytedance/sdk/openadsdk/TTSplashAd;Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    .line 532
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->f:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    const/16 v5, 0x3a98

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v6, v0

    invoke-static/range {v4 .. v9}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;ILcom/bytedance/sdk/openadsdk/component/splash/b$a;Lcom/bytedance/sdk/openadsdk/core/d/n;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;)V

    .line 534
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->c:Z

    if-eqz v0, :cond_d2

    .line 535
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->f:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->j(Lcom/bytedance/sdk/openadsdk/component/splash/b;)J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    int-to-long v5, v3

    const/4 v7, 0x0

    move v3, v8

    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(JZZLcom/bytedance/sdk/openadsdk/core/d/k;JLcom/bytedance/sdk/adnet/core/n;)V

    .line 538
    :cond_d2
    const-string v0, "SplashAdLoadManager"

    const-string v1, "\u56fe\u7247\u52a0\u8f7d\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8c
.end method
