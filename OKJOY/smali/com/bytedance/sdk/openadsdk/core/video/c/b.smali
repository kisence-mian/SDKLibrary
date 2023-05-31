.class public Lcom/bytedance/sdk/openadsdk/core/video/c/b;
.super Lcom/bytedance/sdk/openadsdk/core/video/c/a;
.source "AndroidMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/video/c/b$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/media/MediaPlayer;

.field private final b:Lcom/bytedance/sdk/openadsdk/core/video/c/b$a;

.field private c:Landroid/media/MediaDataSource;

.field private d:Landroid/view/Surface;

.field private final e:Ljava/lang/Object;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->e:Ljava/lang/Object;

    .line 54
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 55
    :try_start_d
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->a:Landroid/media/MediaPlayer;

    .line 56
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_2b

    .line 57
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->a:Landroid/media/MediaPlayer;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->a(Landroid/media/MediaPlayer;)V

    .line 59
    :try_start_1a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->a:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_20} :catch_2e

    .line 63
    :goto_20
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/c/b$a;

    invoke-direct {v0, p0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/c/b;Lcom/bytedance/sdk/openadsdk/core/video/c/b;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->b:Lcom/bytedance/sdk/openadsdk/core/video/c/b$a;

    .line 64
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->n()V

    .line 65
    return-void

    .line 56
    :catchall_2b
    move-exception v0

    :try_start_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v0

    .line 60
    :catch_2e
    move-exception v0

    .line 61
    const-string v1, "AndroidMediaPlayer"

    const-string v2, "setAudioStreamType error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_20
.end method

.method private a(Landroid/media/MediaPlayer;)V
    .registers 9

    .prologue
    .line 70
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_c

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_d

    .line 96
    :cond_c
    :goto_c
    return-void

    .line 74
    :cond_d
    :try_start_d
    const-string v0, "android.media.MediaTimeProvider"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 75
    const-string v1, "android.media.SubtitleController"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 76
    const-string v2, "android.media.SubtitleController$Anchor"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 77
    const-string v3, "android.media.SubtitleController$Listener"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 79
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v0, 0x2

    aput-object v3, v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 80
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x0

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 81
    const-string v3, "mHandler"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 82
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_57} :catch_84

    .line 84
    :try_start_57
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_5f} :catch_8d
    .catchall {:try_start_57 .. :try_end_5f} :catchall_9b

    .line 89
    const/4 v4, 0x0

    :try_start_60
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "setSubtitleAnchor"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 92
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    const/4 v3, 0x0

    aput-object v3, v2, v0

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_83} :catch_84

    goto :goto_c

    .line 93
    :catch_84
    move-exception v0

    .line 94
    const-string v1, "AndroidMediaPlayer"

    const-string v2, "setSubtitleController error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    .line 85
    :catch_8d
    move-exception v0

    .line 86
    :try_start_8e
    const-string v1, "AndroidMediaPlayer"

    const-string v2, "subtitleInstance error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_95
    .catchall {:try_start_8e .. :try_end_95} :catchall_9b

    .line 89
    const/4 v0, 0x0

    :try_start_96
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    goto/16 :goto_c

    :catchall_9b
    move-exception v0

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    throw v0
    :try_end_a1
    .catch Ljava/lang/Throwable; {:try_start_96 .. :try_end_a1} :catch_84
.end method

.method private m()V
    .registers 4

    .prologue
    .line 141
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->c:Landroid/media/MediaDataSource;

    if-eqz v0, :cond_c

    .line 143
    :try_start_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->c:Landroid/media/MediaDataSource;

    invoke-virtual {v0}, Landroid/media/MediaDataSource;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_d

    .line 147
    :goto_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->c:Landroid/media/MediaDataSource;

    .line 149
    :cond_c
    return-void

    .line 144
    :catch_d
    move-exception v0

    .line 145
    const-string v1, "AndroidMediaPlayer"

    const-string v2, "releaseMediaDataSource error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9
.end method

.method private n()V
    .registers 3

    .prologue
    .line 251
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->b:Lcom/bytedance/sdk/openadsdk/core/video/c/b$a;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 252
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->b:Lcom/bytedance/sdk/openadsdk/core/video/c/b$a;

    .line 253
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 254
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->b:Lcom/bytedance/sdk/openadsdk/core/video/c/b$a;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 255
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->b:Lcom/bytedance/sdk/openadsdk/core/video/c/b$a;

    .line 256
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 257
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->b:Lcom/bytedance/sdk/openadsdk/core/video/c/b$a;

    .line 258
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 259
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->b:Lcom/bytedance/sdk/openadsdk/core/video/c/b$a;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 260
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->b:Lcom/bytedance/sdk/openadsdk/core/video/c/b$a;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 261
    return-void
.end method

.method private o()V
    .registers 2

    .prologue
    .line 368
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->d:Landroid/view/Surface;

    if-eqz v0, :cond_c

    .line 369
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->d:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 370
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->d:Landroid/view/Surface;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_c} :catch_d

    .line 374
    :cond_c
    :goto_c
    return-void

    .line 372
    :catch_d
    move-exception v0

    goto :goto_c
.end method


# virtual methods
.method public a(FF)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 225
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 226
    return-void
.end method

.method public a(J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->a:Landroid/media/MediaPlayer;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 174
    return-void
.end method

.method public a(Landroid/content/Context;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 241
    return-void
.end method

.method public a(Landroid/view/Surface;)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->o()V

    .line 115
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->d:Landroid/view/Surface;

    .line 116
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 117
    return-void
.end method

.method public a(Landroid/view/SurfaceHolder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 104
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 105
    :try_start_3
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->f:Z

    if-nez v0, :cond_c

    .line 106
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 108
    :cond_c
    monitor-exit v1

    .line 109
    return-void

    .line 108
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public a(Ljava/io/FileDescriptor;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 133
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 121
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 124
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 128
    :goto_1f
    return-void

    .line 126
    :cond_20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_1f
.end method

.method public a(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 169
    return-void
.end method

.method public b(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 220
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 221
    return-void
.end method

.method public e()Landroid/media/MediaPlayer;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->a:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public f()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 154
    return-void
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 362
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 363
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->o()V

    .line 364
    return-void
.end method

.method public g()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 159
    return-void
.end method

.method public h()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 164
    return-void
.end method

.method public i()J
    .registers 4

    .prologue
    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_8

    move-result v0

    int-to-long v0, v0

    .line 182
    :goto_7
    return-wide v0

    .line 180
    :catch_8
    move-exception v0

    .line 181
    const-string v1, "AndroidMediaPlayer"

    const-string v2, "getCurrentPosition error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 182
    const-wide/16 v0, 0x0

    goto :goto_7
.end method

.method public j()J
    .registers 4

    .prologue
    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_8

    move-result v0

    int-to-long v0, v0

    .line 192
    :goto_7
    return-wide v0

    .line 190
    :catch_8
    move-exception v0

    .line 191
    const-string v1, "AndroidMediaPlayer"

    const-string v2, "getDuration error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 192
    const-wide/16 v0, 0x0

    goto :goto_7
.end method

.method public k()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->f:Z

    .line 199
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 200
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->o()V

    .line 201
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->m()V

    .line 202
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->a()V

    .line 203
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->n()V

    .line 204
    return-void
.end method

.method public l()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_f

    .line 213
    :goto_5
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->m()V

    .line 214
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->a()V

    .line 215
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->n()V

    .line 216
    return-void

    .line 210
    :catch_f
    move-exception v0

    .line 211
    const-string v1, "AndroidMediaPlayer"

    const-string v2, "reset error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method
