.class public final Lcom/mintegral/msdk/interstitial/c/a$a;
.super Ljava/lang/Object;
.source "InterstitialController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/interstitial/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/interstitial/c/a;

.field private b:Lcom/mintegral/msdk/interstitial/a/a;

.field private c:Lcom/mintegral/msdk/interstitial/c/a$b;


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/interstitial/c/a;Lcom/mintegral/msdk/interstitial/a/a;Lcom/mintegral/msdk/interstitial/c/a$b;)V
    .registers 4

    .prologue
    .line 518
    iput-object p1, p0, Lcom/mintegral/msdk/interstitial/c/a$a;->a:Lcom/mintegral/msdk/interstitial/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 519
    iput-object p2, p0, Lcom/mintegral/msdk/interstitial/c/a$a;->b:Lcom/mintegral/msdk/interstitial/a/a;

    .line 520
    iput-object p3, p0, Lcom/mintegral/msdk/interstitial/c/a$a;->c:Lcom/mintegral/msdk/interstitial/c/a$b;

    .line 521
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .registers 4

    .prologue
    .line 526
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a$a;->c:Lcom/mintegral/msdk/interstitial/c/a$b;

    if-eqz v0, :cond_29

    .line 528
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a$a;->a:Lcom/mintegral/msdk/interstitial/c/a;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/c/a;->c(Lcom/mintegral/msdk/interstitial/c/a;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 529
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a$a;->a:Lcom/mintegral/msdk/interstitial/c/a;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/c/a;->c(Lcom/mintegral/msdk/interstitial/c/a;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/interstitial/c/a$a;->c:Lcom/mintegral/msdk/interstitial/c/a$b;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 532
    :cond_17
    if-eqz p1, :cond_2a

    .line 533
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a$a;->a:Lcom/mintegral/msdk/interstitial/c/a;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/c/a;->d(Lcom/mintegral/msdk/interstitial/c/a;)V

    .line 540
    :cond_1e
    :goto_1e
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a$a;->a:Lcom/mintegral/msdk/interstitial/c/a;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/c/a;->b(Lcom/mintegral/msdk/interstitial/c/a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onInterstitialLoadSuccess remove task "

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    :cond_29
    :goto_29
    return-void

    .line 536
    :cond_2a
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a$a;->a:Lcom/mintegral/msdk/interstitial/c/a;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/c/a;->a(Lcom/mintegral/msdk/interstitial/c/a;)Lcom/mintegral/msdk/out/InterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 537
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a$a;->a:Lcom/mintegral/msdk/interstitial/c/a;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/c/a;->e(Lcom/mintegral/msdk/interstitial/c/a;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_37} :catch_38

    goto :goto_1e

    .line 543
    :catch_38
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_29
.end method

.method public final a(ZLjava/lang/String;)V
    .registers 5

    .prologue
    .line 552
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a$a;->b:Lcom/mintegral/msdk/interstitial/a/a;

    if-eqz v0, :cond_d

    .line 553
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a$a;->b:Lcom/mintegral/msdk/interstitial/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/interstitial/a/a;->a(Lcom/mintegral/msdk/interstitial/c/a$a;)V

    .line 554
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a$a;->b:Lcom/mintegral/msdk/interstitial/a/a;

    .line 557
    :cond_d
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a$a;->c:Lcom/mintegral/msdk/interstitial/c/a$b;

    if-eqz v0, :cond_3e

    .line 558
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a$a;->a:Lcom/mintegral/msdk/interstitial/c/a;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/c/a;->b(Lcom/mintegral/msdk/interstitial/c/a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoadIntersInnerListener onIntersLoadFail remove task"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a$a;->a:Lcom/mintegral/msdk/interstitial/c/a;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/c/a;->c(Lcom/mintegral/msdk/interstitial/c/a;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 560
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a$a;->a:Lcom/mintegral/msdk/interstitial/c/a;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/c/a;->c(Lcom/mintegral/msdk/interstitial/c/a;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/interstitial/c/a$a;->c:Lcom/mintegral/msdk/interstitial/c/a$b;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 563
    :cond_2f
    if-eqz p1, :cond_3f

    .line 565
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a$a;->a:Lcom/mintegral/msdk/interstitial/c/a;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/c/a;->a(Lcom/mintegral/msdk/interstitial/c/a;)Lcom/mintegral/msdk/out/InterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 566
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a$a;->a:Lcom/mintegral/msdk/interstitial/c/a;

    invoke-static {v0, p2}, Lcom/mintegral/msdk/interstitial/c/a;->a(Lcom/mintegral/msdk/interstitial/c/a;Ljava/lang/String;)V

    .line 577
    :cond_3e
    :goto_3e
    return-void

    .line 569
    :cond_3f
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a$a;->a:Lcom/mintegral/msdk/interstitial/c/a;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/c/a;->a(Lcom/mintegral/msdk/interstitial/c/a;)Lcom/mintegral/msdk/out/InterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 570
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a$a;->a:Lcom/mintegral/msdk/interstitial/c/a;

    invoke-static {v0, p2}, Lcom/mintegral/msdk/interstitial/c/a;->b(Lcom/mintegral/msdk/interstitial/c/a;Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4c} :catch_4d

    goto :goto_3e

    .line 575
    :catch_4d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3e
.end method
