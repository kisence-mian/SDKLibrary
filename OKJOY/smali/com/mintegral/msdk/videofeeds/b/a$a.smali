.class public final Lcom/mintegral/msdk/videofeeds/b/a$a;
.super Ljava/lang/Object;
.source "VideoFeedsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/videofeeds/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/videofeeds/b/a;

.field private b:Lcom/mintegral/msdk/videofeeds/a/a;


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/videofeeds/b/a;Lcom/mintegral/msdk/videofeeds/a/a;)V
    .registers 3

    .prologue
    .line 361
    iput-object p1, p0, Lcom/mintegral/msdk/videofeeds/b/a$a;->a:Lcom/mintegral/msdk/videofeeds/b/a;

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    iput-object p2, p0, Lcom/mintegral/msdk/videofeeds/b/a$a;->b:Lcom/mintegral/msdk/videofeeds/a/a;

    .line 364
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 370
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/b/a$a;->a:Lcom/mintegral/msdk/videofeeds/b/a;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/b/a;->a(Lcom/mintegral/msdk/videofeeds/b/a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonCancelTimeTask"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/b/a$a;->b:Lcom/mintegral/msdk/videofeeds/a/a;

    if-eqz v0, :cond_33

    .line 372
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/b/a$a;->b:Lcom/mintegral/msdk/videofeeds/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/videofeeds/a/a;->a(Lcom/mintegral/msdk/videofeeds/c/b;)V

    .line 373
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/b/a$a;->b:Lcom/mintegral/msdk/videofeeds/a/a;

    .line 374
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/b/a$a;->a:Lcom/mintegral/msdk/videofeeds/b/a;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/b/a;->b(Lcom/mintegral/msdk/videofeeds/b/a;)Lcom/mintegral/msdk/out/VideoFeedsListener;

    move-result-object v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/b/a$a;->a:Lcom/mintegral/msdk/videofeeds/b/a;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/b/a;->c(Lcom/mintegral/msdk/videofeeds/b/a;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 375
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/b/a$a;->a:Lcom/mintegral/msdk/videofeeds/b/a;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/b/a;->b(Lcom/mintegral/msdk/videofeeds/b/a;)Lcom/mintegral/msdk/out/VideoFeedsListener;

    move-result-object v0

    const-string v1, "load timeout"

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/out/VideoFeedsListener;->onVideoLoadFail(Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_33} :catch_34

    .line 382
    :cond_33
    :goto_33
    return-void

    .line 379
    :catch_34
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_33
.end method
