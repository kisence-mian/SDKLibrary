.class public Lcom/kwad/sdk/contentalliance/detail/video/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/contentalliance/detail/video/a$c;,
        Lcom/kwad/sdk/contentalliance/detail/video/a$a;,
        Lcom/kwad/sdk/contentalliance/detail/video/a$b;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Lcom/kwad/sdk/core/video/a/c;

.field private d:Landroid/view/Surface;

.field private e:I

.field private f:J

.field private g:Ljava/util/Timer;

.field private h:Ljava/util/TimerTask;

.field private i:Landroid/os/Handler;

.field private j:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

.field private k:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;",
            ">;"
        }
    .end annotation
.end field

.field private l:I

.field private m:I

.field private n:J

.field private o:Lcom/kwad/sdk/contentalliance/detail/video/c;

.field private p:I

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kwad/sdk/core/video/a/c$d;",
            ">;"
        }
    .end annotation
.end field

.field private volatile r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kwad/sdk/core/video/a/c$e;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/kwad/sdk/core/video/a/c$e;

.field private t:Lcom/kwad/sdk/core/video/a/c$h;

.field private u:Lcom/kwad/sdk/core/video/a/c$b;

.field private v:Lcom/kwad/sdk/core/video/a/c$c;

.field private w:Lcom/kwad/sdk/core/video/a/c$d;

.field private x:Lcom/kwad/sdk/core/video/a/c$a;

.field private volatile y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kwad/sdk/contentalliance/detail/video/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "MediaPlayerImpl"

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:I

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->i:Landroid/os/Handler;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->n:J

    iput v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->p:I

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->q:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->r:Ljava/util/List;

    new-instance v0, Lcom/kwad/sdk/contentalliance/detail/video/a$1;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/contentalliance/detail/video/a$1;-><init>(Lcom/kwad/sdk/contentalliance/detail/video/a;)V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->s:Lcom/kwad/sdk/core/video/a/c$e;

    new-instance v0, Lcom/kwad/sdk/contentalliance/detail/video/a$2;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/contentalliance/detail/video/a$2;-><init>(Lcom/kwad/sdk/contentalliance/detail/video/a;)V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->t:Lcom/kwad/sdk/core/video/a/c$h;

    new-instance v0, Lcom/kwad/sdk/contentalliance/detail/video/a$3;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/contentalliance/detail/video/a$3;-><init>(Lcom/kwad/sdk/contentalliance/detail/video/a;)V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->u:Lcom/kwad/sdk/core/video/a/c$b;

    new-instance v0, Lcom/kwad/sdk/contentalliance/detail/video/a$4;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/contentalliance/detail/video/a$4;-><init>(Lcom/kwad/sdk/contentalliance/detail/video/a;)V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->v:Lcom/kwad/sdk/core/video/a/c$c;

    new-instance v0, Lcom/kwad/sdk/contentalliance/detail/video/a$5;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/contentalliance/detail/video/a$5;-><init>(Lcom/kwad/sdk/contentalliance/detail/video/a;)V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->w:Lcom/kwad/sdk/core/video/a/c$d;

    new-instance v0, Lcom/kwad/sdk/contentalliance/detail/video/a$6;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/contentalliance/detail/video/a$6;-><init>(Lcom/kwad/sdk/contentalliance/detail/video/a;)V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->x:Lcom/kwad/sdk/core/video/a/c$a;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->y:Ljava/util/List;

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->j:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->k:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/contentalliance/detail/video/a;I)I
    .registers 2

    iput p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:I

    return p1
.end method

.method public static a(Landroid/content/Context;Z)Lcom/kwad/sdk/core/video/a/c;
    .registers 4

    const-string v0, "MediaPlayerImpl"

    :try_start_2
    invoke-static {}, Lcom/kwad/sdk/core/video/a/e;->b()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-static {}, Lcom/kwad/sdk/core/config/c;->f()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-static {}, Lcom/kwad/sdk/core/video/a/e;->a()Z

    move-result v1

    if-eqz v1, :cond_25

    const-string v1, "constructPlayer KwaiMediaPlayer"

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/kwad/sdk/core/video/a/d;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/core/video/a/d;-><init>(Landroid/content/Context;)V

    move-object p0, v1

    check-cast p0, Lcom/kwad/sdk/core/video/a/d;

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/video/a/d;->b(Z)V

    goto :goto_3b

    :cond_25
    const-string p0, "constructPlayer AndroidMediaPlayer"

    invoke-static {v0, p0}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/kwad/sdk/core/video/a/b;

    invoke-direct {v1}, Lcom/kwad/sdk/core/video/a/b;-><init>()V
    :try_end_2f
    .catchall {:try_start_2 .. :try_end_2f} :catchall_30

    goto :goto_3b

    :catchall_30
    move-exception p0

    const-string p1, "constructPlayer exception, using AndroidMediaPlayer"

    invoke-static {v0, p1, p0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Lcom/kwad/sdk/core/video/a/b;

    invoke-direct {v1}, Lcom/kwad/sdk/core/video/a/b;-><init>()V

    :goto_3b
    return-object v1
.end method

.method static synthetic a(Lcom/kwad/sdk/contentalliance/detail/video/a;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/kwad/sdk/contentalliance/detail/video/a;)I
    .registers 1

    iget p0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:I

    return p0
.end method

.method static synthetic b(Lcom/kwad/sdk/contentalliance/detail/video/a;I)I
    .registers 2

    iput p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->l:I

    return p1
.end method

.method static synthetic c(Lcom/kwad/sdk/contentalliance/detail/video/a;I)I
    .registers 2

    iput p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->m:I

    return p1
.end method

.method static synthetic c(Lcom/kwad/sdk/contentalliance/detail/video/a;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->r:Ljava/util/List;

    return-object p0
.end method

.method private c(I)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->o:Lcom/kwad/sdk/contentalliance/detail/video/c;

    if-eqz v0, :cond_e

    iget-object v0, v0, Lcom/kwad/sdk/contentalliance/detail/video/c;->b:Lcom/kwad/sdk/core/response/model/VideoPlayerStatus;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->o:Lcom/kwad/sdk/contentalliance/detail/video/c;

    iget-object v0, v0, Lcom/kwad/sdk/contentalliance/detail/video/c;->b:Lcom/kwad/sdk/core/response/model/VideoPlayerStatus;

    iput p1, v0, Lcom/kwad/sdk/core/response/model/VideoPlayerStatus;->mVideoPlayerType:I

    :cond_e
    return-void
.end method

.method static synthetic d(Lcom/kwad/sdk/contentalliance/detail/video/a;I)I
    .registers 2

    iput p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->e:I

    return p1
.end method

.method static synthetic d(Lcom/kwad/sdk/contentalliance/detail/video/a;)Lcom/kwad/sdk/core/video/a/c;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->c:Lcom/kwad/sdk/core/video/a/c;

    return-object p0
.end method

.method static synthetic e(Lcom/kwad/sdk/contentalliance/detail/video/a;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->k:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic f(Lcom/kwad/sdk/contentalliance/detail/video/a;)J
    .registers 3

    iget-wide v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->n:J

    return-wide v0
.end method

.method static synthetic g(Lcom/kwad/sdk/contentalliance/detail/video/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->r()V

    return-void
.end method

.method static synthetic h(Lcom/kwad/sdk/contentalliance/detail/video/a;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->y:Ljava/util/List;

    return-object p0
.end method

.method private n()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->c:Lcom/kwad/sdk/core/video/a/c;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/kwad/sdk/core/video/a/c;->a(Lcom/kwad/sdk/core/video/a/c$c;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->c:Lcom/kwad/sdk/core/video/a/c;

    invoke-interface {v0, v1}, Lcom/kwad/sdk/core/video/a/c;->a(Lcom/kwad/sdk/core/video/a/c$b;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->c:Lcom/kwad/sdk/core/video/a/c;

    invoke-interface {v0, v1}, Lcom/kwad/sdk/core/video/a/c;->a(Lcom/kwad/sdk/core/video/a/c$e;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->c:Lcom/kwad/sdk/core/video/a/c;

    invoke-interface {v0, v1}, Lcom/kwad/sdk/core/video/a/c;->a(Lcom/kwad/sdk/core/video/a/c$d;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->c:Lcom/kwad/sdk/core/video/a/c;

    invoke-interface {v0, v1}, Lcom/kwad/sdk/core/video/a/c;->a(Lcom/kwad/sdk/core/video/a/c$f;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->c:Lcom/kwad/sdk/core/video/a/c;

    invoke-interface {v0, v1}, Lcom/kwad/sdk/core/video/a/c;->a(Lcom/kwad/sdk/core/video/a/c$a;)V

    return-void
.end method

.method private o()V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:I

    invoke-virtual {p0, v2}, Lcom/kwad/sdk/contentalliance/detail/video/a;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->STATE_IDLE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->c:Lcom/kwad/sdk/core/video/a/c;

    invoke-interface {v0}, Lcom/kwad/sdk/core/video/a/c;->m()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:I

    return-void
.end method

.method private p()V
    .registers 8

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->q()V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->g:Ljava/util/Timer;

    if-nez v0, :cond_e

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->g:Ljava/util/Timer;

    :cond_e
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->h:Ljava/util/TimerTask;

    if-nez v0, :cond_22

    new-instance v2, Lcom/kwad/sdk/contentalliance/detail/video/a$a;

    invoke-direct {v2, p0}, Lcom/kwad/sdk/contentalliance/detail/video/a$a;-><init>(Lcom/kwad/sdk/contentalliance/detail/video/a;)V

    iput-object v2, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->h:Ljava/util/TimerTask;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->g:Ljava/util/Timer;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_22
    return-void
.end method

.method private q()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->g:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->g:Ljava/util/Timer;

    :cond_a
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->h:Ljava/util/TimerTask;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    iput-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->h:Ljava/util/TimerTask;

    :cond_13
    return-void
.end method

.method private r()V
    .registers 3

    new-instance v0, Lcom/kwad/sdk/contentalliance/detail/video/a$c;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/contentalliance/detail/video/a$c;-><init>(Lcom/kwad/sdk/contentalliance/detail/video/a;)V

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->i:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public a()Lcom/kwad/sdk/core/video/a/c;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->c:Lcom/kwad/sdk/core/video/a/c;

    return-object v0
.end method

.method public a(FF)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->c:Lcom/kwad/sdk/core/video/a/c;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-interface {v0, p1, p2}, Lcom/kwad/sdk/core/video/a/c;->a(FF)V

    return-void
.end method

.method public a(I)V
    .registers 6

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->y:Ljava/util/List;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kwad/sdk/contentalliance/detail/video/d;

    if-nez v1, :cond_1a

    goto :goto_b

    :cond_1a
    packed-switch p1, :pswitch_data_4e

    :pswitch_1d
    goto :goto_b

    :pswitch_1e
    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->q()V

    invoke-interface {v1}, Lcom/kwad/sdk/contentalliance/detail/video/d;->f()V

    goto :goto_b

    :pswitch_25
    invoke-interface {v1}, Lcom/kwad/sdk/contentalliance/detail/video/d;->h()V

    goto :goto_b

    :pswitch_29
    invoke-interface {v1}, Lcom/kwad/sdk/contentalliance/detail/video/d;->g()V

    goto :goto_b

    :pswitch_2d
    invoke-interface {v1}, Lcom/kwad/sdk/contentalliance/detail/video/d;->e()V

    goto :goto_b

    :pswitch_31
    invoke-interface {v1}, Lcom/kwad/sdk/contentalliance/detail/video/d;->d()V

    goto :goto_b

    :pswitch_35
    invoke-interface {v1}, Lcom/kwad/sdk/contentalliance/detail/video/d;->c()V

    goto :goto_b

    :pswitch_39
    invoke-interface {v1}, Lcom/kwad/sdk/contentalliance/detail/video/d;->b()V

    goto :goto_b

    :pswitch_3d
    invoke-interface {v1}, Lcom/kwad/sdk/contentalliance/detail/video/d;->a()V

    goto :goto_b

    :pswitch_41
    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->q()V

    iget v2, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->l:I

    iget v3, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->m:I

    invoke-interface {v1, v2, v3}, Lcom/kwad/sdk/contentalliance/detail/video/d;->a(II)V

    goto :goto_b

    :cond_4c
    return-void

    nop

    :pswitch_data_4e
    .packed-switch -0x1
        :pswitch_41
        :pswitch_1d
        :pswitch_3d
        :pswitch_39
        :pswitch_35
        :pswitch_31
        :pswitch_2d
        :pswitch_29
        :pswitch_25
        :pswitch_1d
        :pswitch_1e
    .end packed-switch
.end method

.method public a(Landroid/view/Surface;)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->d:Landroid/view/Surface;

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->c:Lcom/kwad/sdk/core/video/a/c;

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Lcom/kwad/sdk/core/video/a/c;->a(Landroid/view/Surface;)V

    :cond_9
    return-void
.end method

.method public a(Lcom/kwad/sdk/contentalliance/detail/video/a$b;)V
    .registers 6

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->c:Lcom/kwad/sdk/core/video/a/c;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->j:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->setKeepScreenOn(Z)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->i:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->q()V

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->n()V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->c:Lcom/kwad/sdk/core/video/a/c;

    if-eqz v0, :cond_25

    new-instance v3, Lcom/kwad/sdk/contentalliance/detail/video/a$7;

    invoke-direct {v3, p0, v0, p1}, Lcom/kwad/sdk/contentalliance/detail/video/a$7;-><init>(Lcom/kwad/sdk/contentalliance/detail/video/a;Lcom/kwad/sdk/core/video/a/c;Lcom/kwad/sdk/contentalliance/detail/video/a$b;)V

    invoke-static {v3}, Lcom/kwad/sdk/utils/f;->a(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->c:Lcom/kwad/sdk/core/video/a/c;

    :cond_25
    iget-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:I

    invoke-virtual {p0, v2}, Lcom/kwad/sdk/contentalliance/detail/video/a;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "->STATE_IDLE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput v1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:I

    iput v1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->p:I

    return-void
.end method

.method public a(Lcom/kwad/sdk/contentalliance/detail/video/b;)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->c:Lcom/kwad/sdk/core/video/a/c;

    instance-of v1, v0, Lcom/kwad/sdk/core/video/a/d;

    if-eqz v1, :cond_b

    check-cast v0, Lcom/kwad/sdk/core/video/a/d;

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/core/video/a/d;->a(Lcom/kwad/sdk/contentalliance/detail/video/b;)V

    :cond_b
    return-void
.end method

.method public a(Lcom/kwad/sdk/contentalliance/detail/video/c;)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->a:Ljava/lang/String;

    const-string v1, "initMediaPlayer"

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->o:Lcom/kwad/sdk/contentalliance/detail/video/c;

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->j:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    iget-object v0, v0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->b:Landroid/view/Surface;

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->d:Landroid/view/Surface;

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->j:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    invoke-virtual {v0, p0}, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->setMediaPlayer(Lcom/kwad/sdk/contentalliance/detail/video/a;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->j:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(Landroid/content/Context;Z)Lcom/kwad/sdk/core/video/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->c:Lcom/kwad/sdk/core/video/a/c;

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/contentalliance/detail/video/a;->b(Lcom/kwad/sdk/contentalliance/detail/video/c;)V

    iget-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->c:Lcom/kwad/sdk/core/video/a/c;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/kwad/sdk/core/video/a/c;->a(Z)V

    iget-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->c:Lcom/kwad/sdk/core/video/a/c;

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->d:Landroid/view/Surface;

    invoke-interface {p1, v0}, Lcom/kwad/sdk/core/video/a/c;->a(Landroid/view/Surface;)V

    iget-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->c:Lcom/kwad/sdk/core/video/a/c;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lcom/kwad/sdk/core/video/a/c;->b(I)V

    iget-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->c:Lcom/kwad/sdk/core/video/a/c;

    instance-of v0, p1, Lcom/kwad/sdk/core/video/a/d;

    if-eqz v0, :cond_44

    check-cast p1, Lcom/kwad/sdk/core/video/a/d;

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->j:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/video/a/d;->a(Landroid/view/ViewGroup;)V

    :cond_44
    invoke-virtual {p0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->c()V

    return-void
.end method

.method public a(Lcom/kwad/sdk/contentalliance/detail/video/d;)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->y:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/kwad/sdk/core/video/a/c$e;)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->r:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/kwad/sdk/core/video/a/c;II)V
    .registers 6

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kwad/sdk/core/video/a/c$d;

    if-nez v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    :cond_18
    invoke-interface {v1, p1, p2, p3}, Lcom/kwad/sdk/core/video/a/c$d;->a(Lcom/kwad/sdk/core/video/a/c;II)Z

    goto :goto_6

    :cond_1c
    return-void
.end method

.method public b()I
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->c:Lcom/kwad/sdk/core/video/a/c;

    invoke-interface {v0}, Lcom/kwad/sdk/core/video/a/c;->n()I

    move-result v0

    return v0
.end method

.method public b(I)Ljava/lang/String;
    .registers 2

    packed-switch p1, :pswitch_data_28

    const-string p1, "STATE_UNKNOWN"

    return-object p1

    :pswitch_6
    const-string p1, "STATE_COMPLETED"

    return-object p1

    :pswitch_9
    const-string p1, "PLAYER_STATE_STOPPED"

    return-object p1

    :pswitch_c
    const-string p1, "STATE_BUFFERING_PAUSED"

    return-object p1

    :pswitch_f
    const-string p1, "STATE_BUFFERING_PLAYING"

    return-object p1

    :pswitch_12
    const-string p1, "STATE_PAUSED"

    return-object p1

    :pswitch_15
    const-string p1, "STATE_PLAYING"

    return-object p1

    :pswitch_18
    const-string p1, "STATE_STARTED"

    return-object p1

    :pswitch_1b
    const-string p1, "STATE_PREPARED"

    return-object p1

    :pswitch_1e
    const-string p1, "STATE_PREPARING"

    return-object p1

    :pswitch_21
    const-string p1, "STATE_IDLE"

    return-object p1

    :pswitch_24
    const-string p1, "STATE_ERROR"

    return-object p1

    nop

    :pswitch_data_28
    .packed-switch -0x1
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public b(Lcom/kwad/sdk/contentalliance/detail/video/c;)V
    .registers 3

    :try_start_0
    iget-object v0, p1, Lcom/kwad/sdk/contentalliance/detail/video/c;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->c:Lcom/kwad/sdk/core/video/a/c;

    invoke-interface {v0, p1}, Lcom/kwad/sdk/core/video/a/c;->a(Lcom/kwad/sdk/contentalliance/detail/video/c;)V

    goto :goto_1a

    :cond_e
    iget-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->a:Ljava/lang/String;

    const-string v0, "videoUrl is null"

    invoke-static {p1, v0}, Lcom/kwad/sdk/core/d/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_1a

    :catch_16
    move-exception p1

    invoke-static {p1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :goto_1a
    return-void
.end method

.method public b(Lcom/kwad/sdk/contentalliance/detail/video/d;)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->y:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected c()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->c:Lcom/kwad/sdk/core/video/a/c;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->s:Lcom/kwad/sdk/core/video/a/c$e;

    invoke-interface {v0, v1}, Lcom/kwad/sdk/core/video/a/c;->a(Lcom/kwad/sdk/core/video/a/c$e;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->c:Lcom/kwad/sdk/core/video/a/c;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->t:Lcom/kwad/sdk/core/video/a/c$h;

    invoke-interface {v0, v1}, Lcom/kwad/sdk/core/video/a/c;->a(Lcom/kwad/sdk/core/video/a/c$h;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->c:Lcom/kwad/sdk/core/video/a/c;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->u:Lcom/kwad/sdk/core/video/a/c$b;

    invoke-interface {v0, v1}, Lcom/kwad/sdk/core/video/a/c;->a(Lcom/kwad/sdk/core/video/a/c$b;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->c:Lcom/kwad/sdk/core/video/a/c;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->v:Lcom/kwad/sdk/core/video/a/c$c;

    invoke-interface {v0, v1}, Lcom/kwad/sdk/core/video/a/c;->a(Lcom/kwad/sdk/core/video/a/c$c;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->c:Lcom/kwad/sdk/core/video/a/c;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->w:Lcom/kwad/sdk/core/video/a/c$d;

    invoke-interface {v0, v1}, Lcom/kwad/sdk/core/video/a/c;->a(Lcom/kwad/sdk/core/video/a/c$d;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->c:Lcom/kwad/sdk/core/video/a/c;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->x:Lcom/kwad/sdk/core/video/a/c$a;

    invoke-interface {v0, v1}, Lcom/kwad/sdk/core/video/a/c;->a(Lcom/kwad/sdk/core/video/a/c$a;)V

    return-void
.end method

.method public c(Lcom/kwad/sdk/contentalliance/detail/video/c;)V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->c:Lcom/kwad/sdk/core/video/a/c;

    const-string v1, "resetAndPlay"

    if-nez v0, :cond_c

    const-string p1, "mMediaPlayer is null"

    invoke-static {v1, p1}, Lcom/kwad/sdk/core/d/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    iget v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2b

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2b

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2b

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1b

    goto :goto_2b

    :cond_1b
    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->o()V

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/contentalliance/detail/video/a;->b(Lcom/kwad/sdk/contentalliance/detail/video/c;)V

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->n()V

    invoke-virtual {p0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->c()V

    invoke-virtual {p0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->d()V

    return-void

    :cond_2b
    :goto_2b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "can not resetAndPlay in sate:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/kwad/sdk/core/d/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->j:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->setKeepScreenOn(Z)V

    :try_start_6
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->c:Lcom/kwad/sdk/core/video/a/c;

    invoke-interface {v0}, Lcom/kwad/sdk/core/video/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareAsync:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:I

    invoke-virtual {p0, v3}, Lcom/kwad/sdk/contentalliance/detail/video/a;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->STATE_PREPARING"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput v1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:I

    invoke-virtual {p0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(I)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_37} :catch_38

    goto :goto_6f

    :catch_38
    move-exception v0

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareAsync Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:I

    invoke-virtual {p0, v3}, Lcom/kwad/sdk/contentalliance/detail/video/a;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->b()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6f

    iget v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->p:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->p:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_6f

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->o:Lcom/kwad/sdk/contentalliance/detail/video/c;

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->c(Lcom/kwad/sdk/contentalliance/detail/video/c;)V

    :cond_6f
    :goto_6f
    return-void
.end method

.method public e()V
    .registers 8

    iget v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:I

    const/4 v1, 0x2

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->a:Ljava/lang/String;

    const-string v2, "start, still not prepared well, prepare again"

    invoke-static {v0, v2}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->d()V

    invoke-virtual {p0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->b()I

    move-result v0

    if-ne v0, v1, :cond_1a

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->c:Lcom/kwad/sdk/core/video/a/c;

    invoke-interface {v0}, Lcom/kwad/sdk/core/video/a/c;->f()V

    :cond_1a
    return-void

    :cond_1b
    const/16 v2, 0x9

    if-eq v0, v1, :cond_21

    if-ne v0, v2, :cond_86

    :cond_21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->n:J

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->c:Lcom/kwad/sdk/core/video/a/c;

    invoke-interface {v0}, Lcom/kwad/sdk/core/video/a/c;->f()V

    iget-wide v3, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->f:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->c:Lcom/kwad/sdk/core/video/a/c;

    long-to-int v3, v3

    int-to-long v3, v3

    invoke-interface {v0, v3, v4}, Lcom/kwad/sdk/core/video/a/c;->a(J)V

    :cond_3b
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:I

    invoke-virtual {p0, v4}, Lcom/kwad/sdk/contentalliance/detail/video/a;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->STATE_STARTED"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->o:Lcom/kwad/sdk/contentalliance/detail/video/c;

    const/4 v3, 0x3

    if-eqz v0, :cond_7e

    iget-object v0, v0, Lcom/kwad/sdk/contentalliance/detail/video/c;->b:Lcom/kwad/sdk/core/response/model/VideoPlayerStatus;

    if-eqz v0, :cond_7e

    iget v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:I

    if-ne v0, v1, :cond_79

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->o:Lcom/kwad/sdk/contentalliance/detail/video/c;

    iget-object v0, v0, Lcom/kwad/sdk/contentalliance/detail/video/c;->b:Lcom/kwad/sdk/core/response/model/VideoPlayerStatus;

    iget v0, v0, Lcom/kwad/sdk/core/response/model/VideoPlayerStatus;->mVideoPlayerType:I

    if-nez v0, :cond_7b

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->c(I)V

    goto :goto_7e

    :cond_79
    if-ne v0, v2, :cond_7e

    :cond_7b
    invoke-direct {p0, v3}, Lcom/kwad/sdk/contentalliance/detail/video/a;->c(I)V

    :cond_7e
    :goto_7e
    iput v3, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:I

    invoke-virtual {p0, v3}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(I)V

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->p()V

    :cond_86
    return-void
.end method

.method public f()V
    .registers 6

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->c:Lcom/kwad/sdk/core/video/a/c;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget v1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:I

    const/4 v2, 0x2

    const-string v3, "resume:"

    if-eq v1, v2, :cond_70

    if-nez v1, :cond_f

    goto :goto_70

    :cond_f
    const/4 v4, 0x5

    if-ne v1, v4, :cond_41

    invoke-interface {v0}, Lcom/kwad/sdk/core/video/a/c;->f()V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:I

    invoke-virtual {p0, v3}, Lcom/kwad/sdk/contentalliance/detail/video/a;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "->STATE_PLAYING"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    iput v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(I)V

    invoke-direct {p0, v2}, Lcom/kwad/sdk/contentalliance/detail/video/a;->c(I)V

    goto :goto_95

    :cond_41
    const/4 v2, 0x7

    if-ne v1, v2, :cond_95

    invoke-interface {v0}, Lcom/kwad/sdk/core/video/a/c;->f()V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:I

    invoke-virtual {p0, v2}, Lcom/kwad/sdk/contentalliance/detail/video/a;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->STATE_BUFFERING_PLAYING"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x6

    iput v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(I)V

    goto :goto_95

    :cond_70
    :goto_70
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:I

    invoke-virtual {p0, v2}, Lcom/kwad/sdk/contentalliance/detail/video/a;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->start()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->e()V

    :cond_95
    :goto_95
    return-void
.end method

.method public g()V
    .registers 4

    iget v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:I

    const/4 v1, 0x5

    const/4 v2, 0x4

    if-ne v0, v2, :cond_17

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->c:Lcom/kwad/sdk/core/video/a/c;

    invoke-interface {v0}, Lcom/kwad/sdk/core/video/a/c;->g()V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->a:Ljava/lang/String;

    const-string v2, "pause STATE_PLAYING->STATE_PAUSED"

    invoke-static {v0, v2}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput v1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:I

    invoke-virtual {p0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(I)V

    :cond_17
    iget v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_2e

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->c:Lcom/kwad/sdk/core/video/a/c;

    invoke-interface {v0}, Lcom/kwad/sdk/core/video/a/c;->g()V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->a:Ljava/lang/String;

    const-string v2, "pause STATE_BUFFERING_PLAYING->STATE_PAUSED"

    invoke-static {v0, v2}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x7

    iput v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(I)V

    :cond_2e
    iget v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_44

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->c:Lcom/kwad/sdk/core/video/a/c;

    invoke-interface {v0}, Lcom/kwad/sdk/core/video/a/c;->g()V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->a:Ljava/lang/String;

    const-string v2, "pause STATE_STARTED->STATE_PAUSED"

    invoke-static {v0, v2}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput v1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:I

    invoke-virtual {p0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(I)V

    :cond_44
    return-void
.end method

.method public h()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(Lcom/kwad/sdk/contentalliance/detail/video/a$b;)V

    return-void
.end method

.method public i()I
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->c:Lcom/kwad/sdk/core/video/a/c;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/kwad/sdk/core/video/a/c;->h()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public j()I
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->c:Lcom/kwad/sdk/core/video/a/c;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/kwad/sdk/core/video/a/c;->i()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public k()J
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->c:Lcom/kwad/sdk/core/video/a/c;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/kwad/sdk/core/video/a/c;->k()J

    move-result-wide v0

    goto :goto_b

    :cond_9
    const-wide/16 v0, 0x0

    :goto_b
    return-wide v0
.end method

.method public l()J
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->c:Lcom/kwad/sdk/core/video/a/c;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/kwad/sdk/core/video/a/c;->j()J

    move-result-wide v0

    goto :goto_b

    :cond_9
    const-wide/16 v0, 0x0

    :goto_b
    return-wide v0
.end method

.method public m()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
