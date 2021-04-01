.class Lcom/bytedance/sdk/openadsdk/core/video/c/b$a;
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
    value = Lcom/bytedance/sdk/openadsdk/core/video/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/video/c/b;

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/bytedance/sdk/openadsdk/core/video/c/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/c/b;Lcom/bytedance/sdk/openadsdk/core/video/c/b;)V
    .registers 4

    .prologue
    .line 271
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b$a;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b$a;->b:Ljava/lang/ref/WeakReference;

    .line 273
    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .registers 6

    .prologue
    .line 326
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;

    .line 327
    if-eqz v0, :cond_f

    .line 328
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b$a;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/b;

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->a(I)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_10

    .line 333
    :cond_f
    :goto_f
    return-void

    .line 330
    :catch_10
    move-exception v0

    .line 331
    const-string v1, "AndroidMediaPlayer"

    const-string v2, "AndroidMediaPlayerListenerHolder.onBufferingUpdate error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 5

    .prologue
    .line 338
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;

    .line 339
    if-eqz v0, :cond_f

    .line 340
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b$a;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->c()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_10

    .line 345
    :cond_f
    :goto_f
    return-void

    .line 342
    :catch_10
    move-exception v0

    .line 343
    const-string v1, "AndroidMediaPlayer"

    const-string v2, "AndroidMediaPlayerListenerHolder.onCompletion error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 290
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;

    .line 291
    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b$a;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/b;

    invoke-virtual {v0, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->a(II)Z
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_10} :catch_17

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    .line 295
    :goto_14
    return v0

    :cond_15
    move v0, v1

    .line 291
    goto :goto_14

    .line 292
    :catch_17
    move-exception v0

    .line 293
    const-string v2, "AndroidMediaPlayer"

    const-string v3, "AndroidMediaPlayerListenerHolder.onError error: "

    invoke-static {v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 295
    goto :goto_14
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 278
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;

    .line 279
    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b$a;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/b;

    invoke-virtual {v0, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->b(II)Z
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_10} :catch_17

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    .line 283
    :goto_14
    return v0

    :cond_15
    move v0, v1

    .line 279
    goto :goto_14

    .line 280
    :catch_17
    move-exception v0

    .line 281
    const-string v2, "AndroidMediaPlayer"

    const-string v3, "AndroidMediaPlayerListenerHolder.onInfo error: "

    invoke-static {v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 283
    goto :goto_14
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 5

    .prologue
    .line 350
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;

    .line 351
    if-eqz v0, :cond_f

    .line 352
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b$a;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->b()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_10

    .line 357
    :cond_f
    :goto_f
    return-void

    .line 354
    :catch_10
    move-exception v0

    .line 355
    const-string v1, "AndroidMediaPlayer"

    const-string v2, "AndroidMediaPlayerListenerHolder.onPrepared error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .registers 5

    .prologue
    .line 314
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;

    .line 315
    if-eqz v0, :cond_f

    .line 316
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b$a;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->d()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_10

    .line 321
    :cond_f
    :goto_f
    return-void

    .line 318
    :catch_10
    move-exception v0

    .line 319
    const-string v1, "AndroidMediaPlayer"

    const-string v2, "AndroidMediaPlayerListenerHolder.onSeekComplete error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .registers 7

    .prologue
    .line 302
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;

    .line 303
    if-eqz v0, :cond_11

    .line 304
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b$a;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/b;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, p2, p3, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->a(IIII)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_11} :catch_12

    .line 309
    :cond_11
    :goto_11
    return-void

    .line 306
    :catch_12
    move-exception v0

    .line 307
    const-string v1, "AndroidMediaPlayer"

    const-string v2, "AndroidMediaPlayerListenerHolder.onVideoSizeChanged error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11
.end method
