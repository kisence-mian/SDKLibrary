.class Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;
.super Ljava/lang/Object;
.source "AndroidMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/video/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/video/d/b;

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/openadsdk/core/video/d/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/d/b;Lcom/bytedance/sdk/openadsdk/core/video/d/b;)V
    .registers 3

    .line 291
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;->b:Ljava/lang/ref/WeakReference;

    .line 293
    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .registers 4

    .line 346
    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/video/d/b;

    .line 347
    if-eqz p1, :cond_f

    .line 348
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/b;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a(I)V
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_10

    .line 352
    :cond_f
    goto :goto_18

    .line 350
    :catchall_10
    move-exception p1

    .line 351
    const-string p2, "AndroidMediaPlayer"

    const-string v0, "AndroidMediaPlayerListenerHolder.onBufferingUpdate error: "

    invoke-static {p2, v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 353
    :goto_18
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4

    .line 358
    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/video/d/b;

    .line 359
    if-eqz p1, :cond_f

    .line 360
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/b;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->c()V
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_10

    .line 364
    :cond_f
    goto :goto_18

    .line 362
    :catchall_10
    move-exception p1

    .line 363
    const-string v0, "AndroidMediaPlayer"

    const-string v1, "AndroidMediaPlayerListenerHolder.onCompletion error: "

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 365
    :goto_18
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 5

    .line 310
    const/4 p1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;

    .line 311
    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/b;

    invoke-virtual {v0, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a(II)Z

    move-result p2
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_15

    if-eqz p2, :cond_14

    const/4 p1, 0x1

    :cond_14
    return p1

    .line 312
    :catchall_15
    move-exception p2

    .line 313
    const-string p3, "AndroidMediaPlayer"

    const-string v0, "AndroidMediaPlayerListenerHolder.onError error: "

    invoke-static {p3, v0, p2}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 315
    return p1
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .registers 5

    .line 298
    const/4 p1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;

    .line 299
    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/b;

    invoke-virtual {v0, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->b(II)Z

    move-result p2
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_15

    if-eqz p2, :cond_14

    const/4 p1, 0x1

    :cond_14
    return p1

    .line 300
    :catchall_15
    move-exception p2

    .line 301
    const-string p3, "AndroidMediaPlayer"

    const-string v0, "AndroidMediaPlayerListenerHolder.onInfo error: "

    invoke-static {p3, v0, p2}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 303
    return p1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 4

    .line 370
    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/video/d/b;

    .line 371
    if-eqz p1, :cond_f

    .line 372
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/b;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->b()V
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_10

    .line 376
    :cond_f
    goto :goto_18

    .line 374
    :catchall_10
    move-exception p1

    .line 375
    const-string v0, "AndroidMediaPlayer"

    const-string v1, "AndroidMediaPlayerListenerHolder.onPrepared error: "

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 377
    :goto_18
    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .registers 4

    .line 334
    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/video/d/b;

    .line 335
    if-eqz p1, :cond_f

    .line 336
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/b;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->d()V
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_10

    .line 340
    :cond_f
    goto :goto_18

    .line 338
    :catchall_10
    move-exception p1

    .line 339
    const-string v0, "AndroidMediaPlayer"

    const-string v1, "AndroidMediaPlayerListenerHolder.onSeekComplete error: "

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 341
    :goto_18
    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .registers 5

    .line 322
    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/video/d/b;

    .line 323
    if-eqz p1, :cond_10

    .line 324
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/b;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p3, v0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a(IIII)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    .line 328
    :cond_10
    goto :goto_19

    .line 326
    :catchall_11
    move-exception p1

    .line 327
    const-string p2, "AndroidMediaPlayer"

    const-string p3, "AndroidMediaPlayerListenerHolder.onVideoSizeChanged error: "

    invoke-static {p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 329
    :goto_19
    return-void
.end method
