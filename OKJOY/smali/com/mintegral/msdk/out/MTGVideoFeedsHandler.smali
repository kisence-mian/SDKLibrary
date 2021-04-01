.class public Lcom/mintegral/msdk/out/MTGVideoFeedsHandler;
.super Ljava/lang/Object;
.source "MTGVideoFeedsHandler.java"


# instance fields
.field private a:Lcom/mintegral/msdk/videofeeds/b/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGVideoFeedsHandler;->a:Lcom/mintegral/msdk/videofeeds/b/a;

    if-nez v0, :cond_e

    .line 17
    new-instance v0, Lcom/mintegral/msdk/videofeeds/b/a;

    invoke-direct {v0}, Lcom/mintegral/msdk/videofeeds/b/a;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/out/MTGVideoFeedsHandler;->a:Lcom/mintegral/msdk/videofeeds/b/a;

    .line 19
    :cond_e
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGVideoFeedsHandler;->a:Lcom/mintegral/msdk/videofeeds/b/a;

    invoke-virtual {v0, p1, p2}, Lcom/mintegral/msdk/videofeeds/b/a;->a(Landroid/content/Context;Ljava/util/Map;)V

    .line 20
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2a

    if-eqz p1, :cond_2a

    .line 21
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/controller/a;->a(Landroid/content/Context;)V

    .line 23
    :cond_2a
    return-void
.end method


# virtual methods
.method public clearVideoCache()V
    .registers 2

    .prologue
    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGVideoFeedsHandler;->a:Lcom/mintegral/msdk/videofeeds/b/a;

    if-eqz v0, :cond_7

    .line 56
    invoke-static {}, Lcom/mintegral/msdk/videofeeds/b/a;->c()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 61
    :cond_7
    :goto_7
    return-void

    .line 59
    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method

.method public load()V
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGVideoFeedsHandler;->a:Lcom/mintegral/msdk/videofeeds/b/a;

    if-eqz v0, :cond_9

    .line 27
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGVideoFeedsHandler;->a:Lcom/mintegral/msdk/videofeeds/b/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/videofeeds/b/a;->a()V

    .line 29
    :cond_9
    return-void
.end method

.method public setVideoFeedsListener(Lcom/mintegral/msdk/out/VideoFeedsListener;)V
    .registers 3

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGVideoFeedsHandler;->a:Lcom/mintegral/msdk/videofeeds/b/a;

    if-eqz v0, :cond_9

    .line 46
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGVideoFeedsHandler;->a:Lcom/mintegral/msdk/videofeeds/b/a;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/videofeeds/b/a;->a(Lcom/mintegral/msdk/out/VideoFeedsListener;)V

    .line 48
    :cond_9
    return-void
.end method

.method public show()Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;
    .registers 3

    .prologue
    .line 33
    const/4 v0, 0x0

    .line 35
    :try_start_1
    iget-object v1, p0, Lcom/mintegral/msdk/out/MTGVideoFeedsHandler;->a:Lcom/mintegral/msdk/videofeeds/b/a;

    if-eqz v1, :cond_b

    .line 36
    iget-object v1, p0, Lcom/mintegral/msdk/out/MTGVideoFeedsHandler;->a:Lcom/mintegral/msdk/videofeeds/b/a;

    invoke-virtual {v1}, Lcom/mintegral/msdk/videofeeds/b/a;->b()Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_c

    move-result-object v0

    .line 41
    :cond_b
    :goto_b
    return-object v0

    .line 39
    :catch_c
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method
