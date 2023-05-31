.class public Lcom/kwad/sdk/c/h/d/b;
.super Lcom/kwad/sdk/c/h/d/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/c/h/d/b$a;
    }
.end annotation


# instance fields
.field private final i:Landroid/media/MediaPlayer;

.field private final j:Lcom/kwad/sdk/c/h/d/b$a;

.field private k:Landroid/media/MediaDataSource;

.field private final l:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/kwad/sdk/c/h/d/a;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/c/h/d/b;->l:Ljava/lang/Object;

    iget-object v1, p0, Lcom/kwad/sdk/c/h/d/b;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_d
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/c/h/d/b;->i:Landroid/media/MediaPlayer;

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_26

    iget-object v0, p0, Lcom/kwad/sdk/c/h/d/b;->i:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    new-instance v0, Lcom/kwad/sdk/c/h/d/b$a;

    invoke-direct {v0, p0, p0}, Lcom/kwad/sdk/c/h/d/b$a;-><init>(Lcom/kwad/sdk/c/h/d/b;Lcom/kwad/sdk/c/h/d/b;)V

    iput-object v0, p0, Lcom/kwad/sdk/c/h/d/b;->j:Lcom/kwad/sdk/c/h/d/b$a;

    invoke-direct {p0}, Lcom/kwad/sdk/c/h/d/b;->j()V

    return-void

    :catchall_26
    move-exception v0

    :try_start_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v0
.end method

.method private j()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/c/h/d/b;->i:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/kwad/sdk/c/h/d/b;->j:Lcom/kwad/sdk/c/h/d/b$a;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/kwad/sdk/c/h/d/b;->i:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/kwad/sdk/c/h/d/b;->j:Lcom/kwad/sdk/c/h/d/b$a;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    iget-object v0, p0, Lcom/kwad/sdk/c/h/d/b;->i:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/kwad/sdk/c/h/d/b;->j:Lcom/kwad/sdk/c/h/d/b$a;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/kwad/sdk/c/h/d/b;->i:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/kwad/sdk/c/h/d/b;->j:Lcom/kwad/sdk/c/h/d/b$a;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    iget-object v0, p0, Lcom/kwad/sdk/c/h/d/b;->i:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/kwad/sdk/c/h/d/b;->j:Lcom/kwad/sdk/c/h/d/b$a;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    iget-object v0, p0, Lcom/kwad/sdk/c/h/d/b;->i:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/kwad/sdk/c/h/d/b;->j:Lcom/kwad/sdk/c/h/d/b$a;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/kwad/sdk/c/h/d/b;->i:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/kwad/sdk/c/h/d/b;->j:Lcom/kwad/sdk/c/h/d/b$a;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    iget-object v0, p0, Lcom/kwad/sdk/c/h/d/b;->i:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/kwad/sdk/c/h/d/b;->j:Lcom/kwad/sdk/c/h/d/b$a;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnTimedTextListener(Landroid/media/MediaPlayer$OnTimedTextListener;)V

    return-void
.end method

.method private k()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/c/h/d/b;->k:Landroid/media/MediaDataSource;

    if-eqz v0, :cond_a

    :try_start_4
    invoke-virtual {v0}, Landroid/media/MediaDataSource;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_b

    :goto_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwad/sdk/c/h/d/b;->k:Landroid/media/MediaDataSource;

    :cond_a
    return-void

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/c/h/d/b;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    return-void
.end method

.method public a(FF)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/c/h/d/b;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    return-void
.end method

.method public a(I)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/c/h/d/b;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    return-void
.end method

.method public a(J)V
    .registers 6

    iget-object v0, p0, Lcom/kwad/sdk/c/h/d/b;->i:Landroid/media/MediaPlayer;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    return-void
.end method

.method public a(Landroid/view/Surface;)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/c/h/d/b;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/kwad/sdk/c/h/d/b;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    :goto_1f
    return-void

    :cond_20
    iget-object v0, p0, Lcom/kwad/sdk/c/h/d/b;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_1f
.end method

.method public a(Z)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/c/h/d/b;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    return-void
.end method

.method public b()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/c/h/d/b;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_5} :catch_f

    :goto_5
    invoke-direct {p0}, Lcom/kwad/sdk/c/h/d/b;->k()V

    invoke-virtual {p0}, Lcom/kwad/sdk/c/h/d/a;->i()V

    invoke-direct {p0}, Lcom/kwad/sdk/c/h/d/b;->j()V

    return-void

    :catch_f
    move-exception v0

    goto :goto_5
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/c/h/d/b;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    invoke-direct {p0}, Lcom/kwad/sdk/c/h/d/b;->k()V

    invoke-virtual {p0}, Lcom/kwad/sdk/c/h/d/a;->i()V

    invoke-direct {p0}, Lcom/kwad/sdk/c/h/d/b;->j()V

    return-void
.end method

.method public d()Z
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/c/h/d/b;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    :goto_6
    return v0

    :catch_7
    move-exception v0

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public e()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/c/h/d/b;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    return-void
.end method

.method public getCurrentPosition()J
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/c/h/d/b;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_5} :catch_8

    move-result v0

    int-to-long v0, v0

    :goto_7
    return-wide v0

    :catch_8
    move-exception v0

    const-wide/16 v0, 0x0

    goto :goto_7
.end method

.method public getDuration()J
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/c/h/d/b;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_5} :catch_8

    move-result v0

    int-to-long v0, v0

    :goto_7
    return-wide v0

    :catch_8
    move-exception v0

    const-wide/16 v0, 0x0

    goto :goto_7
.end method

.method public start()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/c/h/d/b;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method
