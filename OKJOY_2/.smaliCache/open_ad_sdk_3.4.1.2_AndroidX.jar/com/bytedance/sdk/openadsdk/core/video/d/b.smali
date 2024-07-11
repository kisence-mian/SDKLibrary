.class public Lcom/bytedance/sdk/openadsdk/core/video/d/b;
.super Lcom/bytedance/sdk/openadsdk/core/video/d/a;
.source "AndroidMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/media/MediaPlayer;

.field private final b:Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;

.field private c:Lcom/bytedance/sdk/openadsdk/core/video/a/b;

.field private d:Landroid/view/Surface;

.field private final e:Ljava/lang/Object;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 56
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/a;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->e:Ljava/lang/Object;

    .line 57
    monitor-enter v0

    .line 58
    :try_start_b
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a:Landroid/media/MediaPlayer;

    .line 59
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_2e

    .line 60
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a(Landroid/media/MediaPlayer;)V

    .line 62
    const/4 v0, 0x3

    :try_start_17
    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1b

    .line 65
    goto :goto_23

    .line 63
    :catchall_1b
    move-exception v0

    .line 64
    const-string v1, "AndroidMediaPlayer"

    const-string v2, "setAudioStreamType error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    :goto_23
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;

    invoke-direct {v0, p0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/d/b;Lcom/bytedance/sdk/openadsdk/core/video/d/b;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->b:Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;

    .line 67
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->n()V

    .line 68
    return-void

    .line 59
    :catchall_2e
    move-exception v1

    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v1
.end method

.method private a(Landroid/media/MediaPlayer;)V
    .registers 13

    .line 73
    const-string v0, "AndroidMediaPlayer"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_90

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_10

    goto/16 :goto_90

    .line 77
    :cond_10
    :try_start_10
    const-string v1, "android.media.MediaTimeProvider"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 78
    const-string v2, "android.media.SubtitleController"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 79
    const-string v3, "android.media.SubtitleController$Anchor"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 80
    const-string v4, "android.media.SubtitleController$Listener"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 82
    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/4 v7, 0x1

    aput-object v1, v6, v7

    const/4 v1, 0x2

    aput-object v4, v6, v1

    invoke-virtual {v2, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 83
    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x0

    aput-object v6, v5, v7

    aput-object v6, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 84
    const-string v5, "mHandler"

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 85
    invoke-virtual {v5, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_54
    .catchall {:try_start_10 .. :try_end_54} :catchall_89

    .line 87
    :try_start_54
    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v5, v4, v9}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5c
    .catchall {:try_start_54 .. :try_end_5c} :catchall_7a

    .line 92
    :try_start_5c
    invoke-virtual {v5, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 93
    nop

    .line 94
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v9, "setSubtitleAnchor"

    new-array v10, v1, [Ljava/lang/Class;

    aput-object v2, v10, v8

    aput-object v3, v10, v7

    invoke-virtual {v5, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 95
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v8

    aput-object v6, v1, v7

    invoke-virtual {v2, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_79
    .catchall {:try_start_5c .. :try_end_79} :catchall_89

    .line 98
    goto :goto_8f

    .line 88
    :catchall_7a
    move-exception p1

    .line 89
    :try_start_7b
    const-string v1, "subtitleInstance error: "

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_80
    .catchall {:try_start_7b .. :try_end_80} :catchall_84

    .line 92
    :try_start_80
    invoke-virtual {v5, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 90
    return-void

    .line 92
    :catchall_84
    move-exception p1

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 93
    throw p1
    :try_end_89
    .catchall {:try_start_80 .. :try_end_89} :catchall_89

    .line 96
    :catchall_89
    move-exception p1

    .line 97
    const-string v1, "setSubtitleController error: "

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    :goto_8f
    return-void

    .line 74
    :cond_90
    :goto_90
    return-void
.end method

.method private m()V
    .registers 4

    .line 161
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_19

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->c:Lcom/bytedance/sdk/openadsdk/core/video/a/b;

    if-eqz v0, :cond_19

    .line 163
    :try_start_a
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/b;->close()V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_e

    .line 166
    goto :goto_16

    .line 164
    :catchall_e
    move-exception v0

    .line 165
    const-string v1, "AndroidMediaPlayer"

    const-string v2, "releaseMediaDataSource error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    :goto_16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->c:Lcom/bytedance/sdk/openadsdk/core/video/a/b;

    .line 169
    :cond_19
    return-void
.end method

.method private n()V
    .registers 3

    .line 271
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->b:Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 272
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->b:Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;

    .line 273
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 274
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->b:Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 275
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->b:Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;

    .line 276
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 277
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->b:Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;

    .line 278
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 279
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->b:Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 280
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->b:Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 281
    return-void
.end method

.method private o()V
    .registers 2

    .line 388
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->d:Landroid/view/Surface;

    if-eqz v0, :cond_a

    .line 389
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 390
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->d:Landroid/view/Surface;
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    .line 393
    :cond_a
    goto :goto_c

    .line 392
    :catchall_b
    move-exception v0

    .line 394
    :goto_c
    return-void
.end method


# virtual methods
.method public a(FF)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 246
    return-void
.end method

.method public a(J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a:Landroid/media/MediaPlayer;

    long-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 194
    return-void
.end method

.method public a(Landroid/content/Context;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 261
    return-void
.end method

.method public a(Landroid/view/Surface;)V
    .registers 3

    .line 117
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->o()V

    .line 118
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->d:Landroid/view/Surface;

    .line 119
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 120
    return-void
.end method

.method public a(Landroid/view/SurfaceHolder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_3
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->f:Z

    if-nez v1, :cond_c

    .line 109
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 111
    :cond_c
    monitor-exit v0

    .line 112
    return-void

    .line 111
    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public a(Ljava/io/FileDescriptor;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 136
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 124
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 127
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_25

    .line 129
    :cond_20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 131
    :goto_25
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 146
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 147
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/i/g/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 149
    :cond_a
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/video/a/a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/video/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->c:Lcom/bytedance/sdk/openadsdk/core/video/a/b;

    .line 150
    if-nez v0, :cond_28

    .line 151
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/a/b;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->c:Lcom/bytedance/sdk/openadsdk/core/video/a/b;

    .line 152
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/b;->a()Z

    move-result p1

    if-eqz p1, :cond_28

    .line 153
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->c:Lcom/bytedance/sdk/openadsdk/core/video/a/b;

    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/video/a/a;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/video/a/b;)V

    .line 156
    :cond_28
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a:Landroid/media/MediaPlayer;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->c:Lcom/bytedance/sdk/openadsdk/core/video/a/b;

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/media/MediaDataSource;)V

    .line 158
    return-void
.end method

.method public a(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 189
    return-void
.end method

.method public b(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 241
    return-void
.end method

.method public e()Landroid/media/MediaPlayer;
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public f()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 174
    return-void
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 382
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 383
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->o()V

    .line 384
    return-void
.end method

.method public g()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 179
    return-void
.end method

.method public h()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 184
    return-void
.end method

.method public i()J
    .registers 4

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_8

    int-to-long v0, v0

    return-wide v0

    .line 200
    :catchall_8
    move-exception v0

    .line 201
    const-string v1, "AndroidMediaPlayer"

    const-string v2, "getCurrentPosition error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 202
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public j()J
    .registers 4

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_8

    int-to-long v0, v0

    return-wide v0

    .line 210
    :catchall_8
    move-exception v0

    .line 211
    const-string v1, "AndroidMediaPlayer"

    const-string v2, "getDuration error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 212
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public k()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 218
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->f:Z

    .line 219
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 220
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->o()V

    .line 221
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->m()V

    .line 222
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a()V

    .line 223
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->n()V

    .line 224
    return-void
.end method

.method public l()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    .line 232
    goto :goto_e

    .line 230
    :catchall_6
    move-exception v0

    .line 231
    const-string v1, "AndroidMediaPlayer"

    const-string v2, "reset error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 233
    :goto_e
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->m()V

    .line 234
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a()V

    .line 235
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->n()V

    .line 236
    return-void
.end method
