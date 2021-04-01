.class public Lcom/kwad/sdk/c/h/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/c/h/b;


# instance fields
.field private a:Landroid/media/MediaPlayer;

.field private b:Landroid/view/TextureView;

.field private c:Landroid/graphics/SurfaceTexture;

.field private d:Landroid/view/Surface;

.field private e:Ljava/lang/String;

.field private f:Lcom/kwad/sdk/c/h/b$a;


# direct methods
.method public constructor <init>(Landroid/view/TextureView;)V
    .registers 2
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0xe
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/c/h/a;->b:Landroid/view/TextureView;

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/c/h/a;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/c/h/a;->c:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic a(Lcom/kwad/sdk/c/h/a;)Lcom/kwad/sdk/c/h/b$a;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/c/h/a;->f:Lcom/kwad/sdk/c/h/b$a;

    return-object v0
.end method

.method static synthetic b(Lcom/kwad/sdk/c/h/a;)Landroid/graphics/SurfaceTexture;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/c/h/a;->c:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method private b()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/kwad/sdk/c/h/a;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    return-void
.end method

.method static synthetic c(Lcom/kwad/sdk/c/h/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/c/h/a;->j()V

    return-void
.end method

.method static synthetic d(Lcom/kwad/sdk/c/h/a;)Landroid/view/TextureView;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/c/h/a;->b:Landroid/view/TextureView;

    return-object v0
.end method

.method private h()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/c/h/a;->a:Landroid/media/MediaPlayer;

    if-nez v0, :cond_43

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/c/h/a;->a:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/kwad/sdk/c/h/a;->a:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v0, p0, Lcom/kwad/sdk/c/h/a;->a:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/kwad/sdk/c/h/a$a;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/c/h/a$a;-><init>(Lcom/kwad/sdk/c/h/a;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/kwad/sdk/c/h/a;->a:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/kwad/sdk/c/h/a$b;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/c/h/a$b;-><init>(Lcom/kwad/sdk/c/h/a;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    iget-object v0, p0, Lcom/kwad/sdk/c/h/a;->a:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/kwad/sdk/c/h/a$c;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/c/h/a$c;-><init>(Lcom/kwad/sdk/c/h/a;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    iget-object v0, p0, Lcom/kwad/sdk/c/h/a;->a:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/kwad/sdk/c/h/a$d;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/c/h/a$d;-><init>(Lcom/kwad/sdk/c/h/a;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/kwad/sdk/c/h/a;->a:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/kwad/sdk/c/h/a$e;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/c/h/a$e;-><init>(Lcom/kwad/sdk/c/h/a;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    :cond_43
    return-void
.end method

.method private i()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/c/h/a;->b:Landroid/view/TextureView;

    new-instance v1, Lcom/kwad/sdk/c/h/a$f;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/c/h/a$f;-><init>(Lcom/kwad/sdk/c/h/a;)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method private j()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/c/h/a;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/kwad/sdk/c/h/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/c/h/a;->d:Landroid/view/Surface;

    if-nez v0, :cond_14

    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/kwad/sdk/c/h/a;->c:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/kwad/sdk/c/h/a;->d:Landroid/view/Surface;

    :cond_14
    iget-object v0, p0, Lcom/kwad/sdk/c/h/a;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/kwad/sdk/c/h/a;->d:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    iget-object v0, p0, Lcom/kwad/sdk/c/h/a;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_20} :catch_21

    :goto_20
    return-void

    :catch_21
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v1, "DefaultAdVideoPlayer"

    const-string v2, "\u6253\u5f00\u64ad\u653e\u5668\u53d1\u751f\u9519\u8bef"

    invoke-static {v1, v2, v0}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_20
.end method

.method private k()V
    .registers 3

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/kwad/sdk/c/h/a;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    return-void
.end method

.method private l()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/kwad/sdk/c/h/a;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v1, p0, Lcom/kwad/sdk/c/h/a;->a:Landroid/media/MediaPlayer;

    :cond_a
    iget-object v0, p0, Lcom/kwad/sdk/c/h/a;->d:Landroid/view/Surface;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v1, p0, Lcom/kwad/sdk/c/h/a;->d:Landroid/view/Surface;

    :cond_13
    iget-object v0, p0, Lcom/kwad/sdk/c/h/a;->c:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    iput-object v1, p0, Lcom/kwad/sdk/c/h/a;->c:Landroid/graphics/SurfaceTexture;

    :cond_1c
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/c/h/a;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    return-void
.end method

.method public a(Lcom/kwad/sdk/c/h/b$a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/c/h/a;->f:Lcom/kwad/sdk/c/h/b$a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    :try_start_0
    iput-object p1, p0, Lcom/kwad/sdk/c/h/a;->e:Ljava/lang/String;

    invoke-direct {p0}, Lcom/kwad/sdk/c/h/a;->h()V

    invoke-direct {p0}, Lcom/kwad/sdk/c/h/a;->i()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    :goto_8
    return-void

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8
.end method

.method public a(Z)V
    .registers 2

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/kwad/sdk/c/h/a;->k()V

    :goto_5
    return-void

    :cond_6
    invoke-direct {p0}, Lcom/kwad/sdk/c/h/a;->b()V

    goto :goto_5
.end method

.method public c()V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/c/h/a;->l()V

    return-void
.end method

.method public d()Z
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/c/h/a;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public e()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/c/h/a;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method public f()I
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/c/h/a;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    return v0
.end method

.method public g()I
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/c/h/a;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/c/h/a;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getDuration()J
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/c/h/a;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public stop()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/c/h/a;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/kwad/sdk/c/h/a;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/kwad/sdk/c/h/a;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcom/kwad/sdk/c/h/a;->f:Lcom/kwad/sdk/c/h/b$a;

    if-eqz v0, :cond_8

    invoke-interface {v0, p0}, Lcom/kwad/sdk/c/h/b$a;->b(Lcom/kwad/sdk/c/h/b;)V

    goto :goto_8
.end method
