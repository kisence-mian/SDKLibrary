.class public final Lcom/mintegral/msdk/videofeeds/b/a$b;
.super Ljava/lang/Object;
.source "VideoFeedsController.java"

# interfaces
.implements Lcom/mintegral/msdk/videofeeds/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/videofeeds/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/videofeeds/b/a;

.field private b:Lcom/mintegral/msdk/videofeeds/a/a;

.field private c:Lcom/mintegral/msdk/videofeeds/b/a$a;


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/videofeeds/b/a;Lcom/mintegral/msdk/videofeeds/a/a;Lcom/mintegral/msdk/videofeeds/b/a$a;)V
    .registers 4

    .prologue
    .line 390
    iput-object p1, p0, Lcom/mintegral/msdk/videofeeds/b/a$b;->a:Lcom/mintegral/msdk/videofeeds/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    iput-object p2, p0, Lcom/mintegral/msdk/videofeeds/b/a$b;->b:Lcom/mintegral/msdk/videofeeds/a/a;

    .line 392
    iput-object p3, p0, Lcom/mintegral/msdk/videofeeds/b/a$b;->c:Lcom/mintegral/msdk/videofeeds/b/a$a;

    .line 393
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 399
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/b/a$b;->c:Lcom/mintegral/msdk/videofeeds/b/a$a;

    if-eqz v0, :cond_3b

    .line 400
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/b/a$b;->a:Lcom/mintegral/msdk/videofeeds/b/a;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/b/a;->d(Lcom/mintegral/msdk/videofeeds/b/a;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 401
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/b/a$b;->a:Lcom/mintegral/msdk/videofeeds/b/a;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/b/a;->d(Lcom/mintegral/msdk/videofeeds/b/a;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/b/a$b;->c:Lcom/mintegral/msdk/videofeeds/b/a$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 403
    :cond_17
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/b/a$b;->a:Lcom/mintegral/msdk/videofeeds/b/a;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/b/a;->b(Lcom/mintegral/msdk/videofeeds/b/a;)Lcom/mintegral/msdk/out/VideoFeedsListener;

    move-result-object v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/b/a$b;->a:Lcom/mintegral/msdk/videofeeds/b/a;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/b/a;->c(Lcom/mintegral/msdk/videofeeds/b/a;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 404
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/b/a$b;->a:Lcom/mintegral/msdk/videofeeds/b/a;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/b/a;->b(Lcom/mintegral/msdk/videofeeds/b/a;)Lcom/mintegral/msdk/out/VideoFeedsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mintegral/msdk/out/VideoFeedsListener;->onVideoLoadSuccess()V

    .line 406
    :cond_30
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/b/a$b;->a:Lcom/mintegral/msdk/videofeeds/b/a;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/b/a;->a(Lcom/mintegral/msdk/videofeeds/b/a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonLoadListener onVideoLoadSuccess remove task "

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3b} :catch_3c

    .line 412
    :cond_3b
    :goto_3b
    return-void

    .line 409
    :catch_3c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3b
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 418
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/b/a$b;->c:Lcom/mintegral/msdk/videofeeds/b/a$a;

    if-eqz v0, :cond_3b

    .line 419
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/b/a$b;->a:Lcom/mintegral/msdk/videofeeds/b/a;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/b/a;->a(Lcom/mintegral/msdk/videofeeds/b/a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonLoadListener onVideoLoadFail remove task"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/b/a$b;->a:Lcom/mintegral/msdk/videofeeds/b/a;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/b/a;->d(Lcom/mintegral/msdk/videofeeds/b/a;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 421
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/b/a$b;->a:Lcom/mintegral/msdk/videofeeds/b/a;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/b/a;->d(Lcom/mintegral/msdk/videofeeds/b/a;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/b/a$b;->c:Lcom/mintegral/msdk/videofeeds/b/a$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 424
    :cond_22
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/b/a$b;->a:Lcom/mintegral/msdk/videofeeds/b/a;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/b/a;->b(Lcom/mintegral/msdk/videofeeds/b/a;)Lcom/mintegral/msdk/out/VideoFeedsListener;

    move-result-object v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/b/a$b;->a:Lcom/mintegral/msdk/videofeeds/b/a;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/b/a;->c(Lcom/mintegral/msdk/videofeeds/b/a;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 425
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/b/a$b;->a:Lcom/mintegral/msdk/videofeeds/b/a;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/b/a;->b(Lcom/mintegral/msdk/videofeeds/b/a;)Lcom/mintegral/msdk/out/VideoFeedsListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mintegral/msdk/out/VideoFeedsListener;->onVideoLoadFail(Ljava/lang/String;)V

    .line 428
    :cond_3b
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/b/a$b;->b:Lcom/mintegral/msdk/videofeeds/a/a;

    if-eqz v0, :cond_48

    .line 429
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/b/a$b;->b:Lcom/mintegral/msdk/videofeeds/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/videofeeds/a/a;->a(Lcom/mintegral/msdk/videofeeds/c/b;)V

    .line 430
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/b/a$b;->b:Lcom/mintegral/msdk/videofeeds/a/a;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_48} :catch_49

    .line 435
    :cond_48
    :goto_48
    return-void

    .line 433
    :catch_49
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_48
.end method
