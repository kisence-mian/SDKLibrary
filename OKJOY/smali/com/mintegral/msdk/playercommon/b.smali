.class public final Lcom/mintegral/msdk/playercommon/b;
.super Ljava/lang/Object;
.source "VideoFeedsPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/playercommon/b$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Landroid/view/SurfaceHolder;

.field private h:I

.field private i:I

.field private j:Ljava/util/Timer;

.field private k:Ljava/util/Timer;

.field private l:Lcom/mintegral/msdk/playercommon/c;

.field private m:Lcom/mintegral/msdk/playercommon/c;

.field private n:Ljava/lang/Object;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Landroid/media/MediaPlayer;

.field private r:Landroid/view/View;

.field private s:Landroid/view/View;

.field private t:Z

.field private u:Z

.field private final v:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean v1, p0, Lcom/mintegral/msdk/playercommon/b;->a:Z

    .line 35
    iput-boolean v1, p0, Lcom/mintegral/msdk/playercommon/b;->b:Z

    .line 36
    iput-boolean v1, p0, Lcom/mintegral/msdk/playercommon/b;->c:Z

    .line 39
    iput-boolean v1, p0, Lcom/mintegral/msdk/playercommon/b;->d:Z

    .line 42
    iput-boolean v1, p0, Lcom/mintegral/msdk/playercommon/b;->e:Z

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/playercommon/b;->f:Z

    .line 50
    const/4 v0, 0x5

    iput v0, p0, Lcom/mintegral/msdk/playercommon/b;->h:I

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->n:Ljava/lang/Object;

    .line 76
    iput-boolean v1, p0, Lcom/mintegral/msdk/playercommon/b;->u:Z

    .line 78
    new-instance v0, Lcom/mintegral/msdk/playercommon/b$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mintegral/msdk/playercommon/b$1;-><init>(Lcom/mintegral/msdk/playercommon/b;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->v:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/mintegral/msdk/playercommon/b;I)I
    .registers 2

    .prologue
    .line 29
    iput p1, p0, Lcom/mintegral/msdk/playercommon/b;->i:I

    return p1
.end method

.method static synthetic a(Lcom/mintegral/msdk/playercommon/b;)Landroid/media/MediaPlayer;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->q:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic a(Lcom/mintegral/msdk/playercommon/b;II)V
    .registers 5

    .prologue
    .line 3453
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->v:Landroid/os/Handler;

    if-eqz v0, :cond_e

    .line 3454
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->v:Landroid/os/Handler;

    new-instance v1, Lcom/mintegral/msdk/playercommon/b$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/mintegral/msdk/playercommon/b$12;-><init>(Lcom/mintegral/msdk/playercommon/b;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 3470
    :cond_e
    :goto_e
    return-void

    .line 3469
    :catch_f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e
.end method

.method static synthetic a(Lcom/mintegral/msdk/playercommon/b;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 3480
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->v:Landroid/os/Handler;

    if-eqz v0, :cond_e

    .line 3481
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->v:Landroid/os/Handler;

    new-instance v1, Lcom/mintegral/msdk/playercommon/b$13;

    invoke-direct {v1, p0, p1}, Lcom/mintegral/msdk/playercommon/b$13;-><init>(Lcom/mintegral/msdk/playercommon/b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 3497
    :cond_e
    :goto_e
    return-void

    .line 3496
    :catch_f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e
.end method

.method private a(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 291
    iget-boolean v0, p0, Lcom/mintegral/msdk/playercommon/b;->e:Z

    if-nez v0, :cond_c

    .line 292
    const-string v0, "VideoFeedsPlayer"

    const-string v1, "\u4e0d\u9700\u8981\u7f13\u51b2\u8d85\u65f6\u529f\u80fd"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    :goto_b
    return-void

    .line 296
    :cond_c
    invoke-direct {p0}, Lcom/mintegral/msdk/playercommon/b;->p()V

    .line 298
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->k:Ljava/util/Timer;

    .line 299
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->k:Ljava/util/Timer;

    new-instance v1, Lcom/mintegral/msdk/playercommon/b$8;

    invoke-direct {v1, p0, p1}, Lcom/mintegral/msdk/playercommon/b$8;-><init>(Lcom/mintegral/msdk/playercommon/b;Ljava/lang/String;)V

    iget v2, p0, Lcom/mintegral/msdk/playercommon/b;->h:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_b
.end method

.method static synthetic b(Lcom/mintegral/msdk/playercommon/b;)I
    .registers 2

    .prologue
    .line 29
    iget v0, p0, Lcom/mintegral/msdk/playercommon/b;->i:I

    return v0
.end method

.method static synthetic b(Lcom/mintegral/msdk/playercommon/b;I)V
    .registers 4

    .prologue
    .line 3532
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->v:Landroid/os/Handler;

    if-eqz v0, :cond_e

    .line 3533
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->v:Landroid/os/Handler;

    new-instance v1, Lcom/mintegral/msdk/playercommon/b$15;

    invoke-direct {v1, p0, p1}, Lcom/mintegral/msdk/playercommon/b$15;-><init>(Lcom/mintegral/msdk/playercommon/b;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 3549
    :cond_e
    :goto_e
    return-void

    .line 3548
    :catch_f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e
.end method

.method private b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 559
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->v:Landroid/os/Handler;

    if-eqz v0, :cond_e

    .line 560
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->v:Landroid/os/Handler;

    new-instance v1, Lcom/mintegral/msdk/playercommon/b$2;

    invoke-direct {v1, p0, p1}, Lcom/mintegral/msdk/playercommon/b$2;-><init>(Lcom/mintegral/msdk/playercommon/b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 577
    :cond_e
    :goto_e
    return-void

    .line 575
    :catch_f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e
.end method

.method static synthetic c(Lcom/mintegral/msdk/playercommon/b;)Z
    .registers 2

    .prologue
    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/playercommon/b;->a:Z

    return v0
.end method

.method static synthetic d(Lcom/mintegral/msdk/playercommon/b;)Z
    .registers 2

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/mintegral/msdk/playercommon/b;->d:Z

    return v0
.end method

.method static synthetic e(Lcom/mintegral/msdk/playercommon/b;)V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/mintegral/msdk/playercommon/b;->q()V

    return-void
.end method

.method static synthetic f(Lcom/mintegral/msdk/playercommon/b;)Z
    .registers 2

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/mintegral/msdk/playercommon/b;->c:Z

    return v0
.end method

.method static synthetic g(Lcom/mintegral/msdk/playercommon/b;)Z
    .registers 2

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/mintegral/msdk/playercommon/b;->f:Z

    return v0
.end method

.method static synthetic h(Lcom/mintegral/msdk/playercommon/b;)Z
    .registers 2

    .prologue
    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/playercommon/b;->c:Z

    return v0
.end method

.method static synthetic i(Lcom/mintegral/msdk/playercommon/b;)Z
    .registers 2

    .prologue
    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/playercommon/b;->b:Z

    return v0
.end method

.method static synthetic j(Lcom/mintegral/msdk/playercommon/b;)Z
    .registers 2

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/mintegral/msdk/playercommon/b;->u:Z

    return v0
.end method

.method static synthetic k(Lcom/mintegral/msdk/playercommon/b;)Z
    .registers 2

    .prologue
    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/playercommon/b;->u:Z

    return v0
.end method

.method static synthetic l(Lcom/mintegral/msdk/playercommon/b;)V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/mintegral/msdk/playercommon/b;->r()V

    return-void
.end method

.method static synthetic m(Lcom/mintegral/msdk/playercommon/b;)V
    .registers 7

    .prologue
    .line 4253
    :try_start_0
    invoke-direct {p0}, Lcom/mintegral/msdk/playercommon/b;->o()V

    .line 4254
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->j:Ljava/util/Timer;

    .line 4255
    new-instance v1, Lcom/mintegral/msdk/playercommon/b$a;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/mintegral/msdk/playercommon/b$a;-><init>(Lcom/mintegral/msdk/playercommon/b;B)V

    .line 4256
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->j:Ljava/util/Timer;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    .line 4259
    :goto_19
    return-void

    .line 4258
    :catch_1a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_19
.end method

.method static synthetic n(Lcom/mintegral/msdk/playercommon/b;)Landroid/view/View;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->s:Landroid/view/View;

    return-object v0
.end method

.method static synthetic o(Lcom/mintegral/msdk/playercommon/b;)Landroid/view/View;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->r:Landroid/view/View;

    return-object v0
.end method

.method private o()V
    .registers 2

    .prologue
    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->j:Ljava/util/Timer;

    if-eqz v0, :cond_9

    .line 266
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->j:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 272
    :cond_9
    :goto_9
    return-void

    .line 269
    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method static synthetic p(Lcom/mintegral/msdk/playercommon/b;)Lcom/mintegral/msdk/playercommon/c;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->l:Lcom/mintegral/msdk/playercommon/c;

    return-object v0
.end method

.method private p()V
    .registers 2

    .prologue
    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->k:Ljava/util/Timer;

    if-eqz v0, :cond_9

    .line 277
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->k:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 283
    :cond_9
    :goto_9
    return-void

    .line 280
    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method static synthetic q(Lcom/mintegral/msdk/playercommon/b;)Lcom/mintegral/msdk/playercommon/c;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->m:Lcom/mintegral/msdk/playercommon/c;

    return-object v0
.end method

.method private q()V
    .registers 3

    .prologue
    .line 425
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->v:Landroid/os/Handler;

    if-nez v0, :cond_5

    .line 445
    :goto_4
    return-void

    .line 428
    :cond_5
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->v:Landroid/os/Handler;

    new-instance v1, Lcom/mintegral/msdk/playercommon/b$11;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/playercommon/b$11;-><init>(Lcom/mintegral/msdk/playercommon/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_4

    .line 442
    :catch_10
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method static synthetic r(Lcom/mintegral/msdk/playercommon/b;)Landroid/media/MediaPlayer;
    .registers 2

    .prologue
    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->q:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method private r()V
    .registers 3

    .prologue
    .line 506
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->v:Landroid/os/Handler;

    if-eqz v0, :cond_e

    .line 507
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->v:Landroid/os/Handler;

    new-instance v1, Lcom/mintegral/msdk/playercommon/b$14;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/playercommon/b$14;-><init>(Lcom/mintegral/msdk/playercommon/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 524
    :cond_e
    :goto_e
    return-void

    .line 522
    :catch_f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 398
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->v:Landroid/os/Handler;

    if-nez v0, :cond_5

    .line 418
    :goto_4
    return-void

    .line 401
    :cond_5
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->v:Landroid/os/Handler;

    new-instance v1, Lcom/mintegral/msdk/playercommon/b$10;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/playercommon/b$10;-><init>(Lcom/mintegral/msdk/playercommon/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_4

    .line 416
    :catch_10
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method public final a(I)V
    .registers 5

    .prologue
    .line 321
    if-lez p1, :cond_4

    .line 322
    iput p1, p0, Lcom/mintegral/msdk/playercommon/b;->h:I

    .line 324
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/playercommon/b;->e:Z

    .line 325
    const-string v0, "VideoFeedsPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mIsNeedBufferingTimeout:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/mintegral/msdk/playercommon/b;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mMaxBufferTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mintegral/msdk/playercommon/b;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    return-void
.end method

.method public final a(Landroid/view/SurfaceHolder;)V
    .registers 3

    .prologue
    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->q:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_9

    .line 141
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->q:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    .line 147
    :cond_9
    :goto_9
    return-void

    .line 144
    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9
.end method

.method public final a(Lcom/mintegral/msdk/playercommon/c;)V
    .registers 2

    .prologue
    .line 780
    iput-object p1, p0, Lcom/mintegral/msdk/playercommon/b;->m:Lcom/mintegral/msdk/playercommon/c;

    .line 781
    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .registers 7

    .prologue
    .line 157
    :try_start_0
    iget-object v1, p0, Lcom/mintegral/msdk/playercommon/b;->n:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_50

    .line 159
    :try_start_3
    const-string v0, "VideoFeedsPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u8fdb\u6765\u64ad\u653e currentionPosition:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/mintegral/msdk/playercommon/b;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    if-lez p2, :cond_1d

    .line 162
    iput p2, p0, Lcom/mintegral/msdk/playercommon/b;->i:I

    .line 164
    :cond_1d
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 165
    const-string v0, "play url is null"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/playercommon/b;->b(Ljava/lang/String;)V

    .line 166
    monitor-exit v1

    .line 183
    :goto_29
    return-void

    .line 168
    :cond_2a
    iput-object p1, p0, Lcom/mintegral/msdk/playercommon/b;->o:Ljava/lang/String;

    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/playercommon/b;->c:Z

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/playercommon/b;->f:Z

    .line 171
    invoke-virtual {p0}, Lcom/mintegral/msdk/playercommon/b;->a()V

    .line 173
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_60

    .line 175
    :try_start_36
    invoke-virtual {p0}, Lcom/mintegral/msdk/playercommon/b;->e()V

    .line 176
    const-string v0, "VideoFeedsPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mPlayUrl:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mintegral/msdk/playercommon/b;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_4f} :catch_50

    goto :goto_29

    .line 178
    :catch_50
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 179
    invoke-virtual {p0}, Lcom/mintegral/msdk/playercommon/b;->f()V

    .line 180
    invoke-direct {p0}, Lcom/mintegral/msdk/playercommon/b;->q()V

    .line 181
    const-string v0, "mediaplayer cannot play"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/playercommon/b;->b(Ljava/lang/String;)V

    goto :goto_29

    .line 173
    :catchall_60
    move-exception v0

    :try_start_61
    monitor-exit v1
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    :try_start_62
    throw v0
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_63} :catch_50
.end method

.method public final a(Z)V
    .registers 5

    .prologue
    .line 939
    :try_start_0
    iput-boolean p1, p0, Lcom/mintegral/msdk/playercommon/b;->f:Z

    .line 940
    const-string v1, "VideoFeedsPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "isFrontDesk:"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1b

    const-string v0, "\u8bbe\u7f6e\u5728\u524d\u53f0"

    :goto_f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    :goto_1a
    return-void

    .line 940
    :cond_1b
    const-string v0, "\u8bbe\u7f6e\u5728\u540e\u53f0"
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_f

    .line 942
    :catch_1e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a
.end method

.method public final a(Ljava/lang/String;Landroid/view/View;Lcom/mintegral/msdk/playercommon/c;)Z
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 95
    :try_start_1
    iget-object v2, p0, Lcom/mintegral/msdk/playercommon/b;->n:Ljava/lang/Object;

    monitor-enter v2
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_39

    .line 96
    :try_start_4
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->q:Landroid/media/MediaPlayer;

    if-nez v0, :cond_24

    .line 97
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->q:Landroid/media/MediaPlayer;

    .line 98
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->q:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 105
    :goto_14
    if-nez p2, :cond_47

    .line 106
    const-string v0, "VideoFeedsPlayer"

    const-string v3, "loadingView\u4e3a\u7a7a"

    invoke-static {v0, v3}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v0, "MediaPlayer init error"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/playercommon/b;->b(Ljava/lang/String;)V

    .line 108
    monitor-exit v2

    .line 134
    :goto_23
    return v1

    .line 101
    :cond_24
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->q:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 102
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->q:Landroid/media/MediaPlayer;

    .line 103
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->q:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    goto :goto_14

    .line 124
    :catchall_36
    move-exception v0

    monitor-exit v2
    :try_end_38
    .catchall {:try_start_4 .. :try_end_38} :catchall_36

    :try_start_38
    throw v0
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_39} :catch_39

    .line 125
    :catch_39
    move-exception v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 129
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-direct {p0, v0}, Lcom/mintegral/msdk/playercommon/b;->b(Ljava/lang/String;)V

    move v0, v1

    :goto_45
    move v1, v0

    .line 134
    goto :goto_23

    .line 111
    :cond_47
    :try_start_47
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 112
    iput-object p1, p0, Lcom/mintegral/msdk/playercommon/b;->p:Ljava/lang/String;

    .line 115
    :cond_4f
    iput-object p3, p0, Lcom/mintegral/msdk/playercommon/b;->l:Lcom/mintegral/msdk/playercommon/c;

    .line 116
    iput-object p2, p0, Lcom/mintegral/msdk/playercommon/b;->r:Landroid/view/View;

    .line 118
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->q:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 119
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->q:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 120
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->q:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 121
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->q:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 122
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->q:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 123
    const/4 v0, 0x1

    .line 124
    monitor-exit v2
    :try_end_6e
    .catchall {:try_start_47 .. :try_end_6e} :catchall_36

    goto :goto_45
.end method

.method public final b()V
    .registers 4

    .prologue
    .line 634
    :try_start_0
    const-string v0, "VideoFeedsPlayer"

    const-string v1, "player pause"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    iget-boolean v0, p0, Lcom/mintegral/msdk/playercommon/b;->c:Z

    if-nez v0, :cond_c

    .line 646
    :cond_b
    :goto_b
    return-void

    .line 638
    :cond_c
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->q:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->q:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 639
    const-string v0, "VideoFeedsPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pause isPalying:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mintegral/msdk/playercommon/b;->q:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsPlaying:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mintegral/msdk/playercommon/b;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    invoke-direct {p0}, Lcom/mintegral/msdk/playercommon/b;->q()V

    .line 641
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->q:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 642
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/playercommon/b;->b:Z
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_49} :catch_4a

    goto :goto_b

    .line 646
    :catch_4a
    move-exception v0

    goto :goto_b
.end method

.method public final b(I)V
    .registers 4

    .prologue
    .line 694
    :try_start_0
    iget-boolean v0, p0, Lcom/mintegral/msdk/playercommon/b;->c:Z

    if-nez v0, :cond_5

    .line 719
    :cond_4
    :goto_4
    return-void

    .line 698
    :cond_5
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->q:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->q:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_4

    .line 700
    if-lez p1, :cond_28

    .line 701
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->q:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 702
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->q:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/mintegral/msdk/playercommon/b$5;

    invoke-direct {v1, p0, p1}, Lcom/mintegral/msdk/playercommon/b$5;-><init>(Lcom/mintegral/msdk/playercommon/b;I)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    goto :goto_4

    .line 717
    :catch_23
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 711
    :cond_28
    :try_start_28
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->q:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 712
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/playercommon/b;->b:Z

    .line 713
    const-string v0, "VideoFeedsPlayer"

    const-string v1, "=========start \u6307\u5b9a\u8fdb\u5ea6"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_37} :catch_23

    goto :goto_4
.end method

.method public final c()V
    .registers 2

    .prologue
    .line 653
    :try_start_0
    iget-boolean v0, p0, Lcom/mintegral/msdk/playercommon/b;->c:Z

    if-nez v0, :cond_5

    .line 666
    :cond_4
    :goto_4
    return-void

    .line 656
    :cond_5
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->q:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->q:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 657
    invoke-direct {p0}, Lcom/mintegral/msdk/playercommon/b;->q()V

    .line 658
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->q:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 659
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/playercommon/b;->c:Z

    .line 660
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/playercommon/b;->b:Z

    .line 661
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/playercommon/b;->a:Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    goto :goto_4

    .line 664
    :catch_23
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method public final c(I)V
    .registers 4

    .prologue
    .line 723
    :try_start_0
    iput p1, p0, Lcom/mintegral/msdk/playercommon/b;->i:I

    .line 724
    iget-boolean v0, p0, Lcom/mintegral/msdk/playercommon/b;->c:Z

    if-nez v0, :cond_e

    .line 725
    const-string v0, "VideoFeedsPlayer"

    const-string v1, "seekTo return mHasPrepare false"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    :cond_d
    :goto_d
    return-void

    .line 728
    :cond_e
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->q:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_d

    .line 729
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->q:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 730
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->q:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/mintegral/msdk/playercommon/b$6;

    invoke-direct {v1, p0, p1}, Lcom/mintegral/msdk/playercommon/b$6;-><init>(Lcom/mintegral/msdk/playercommon/b;I)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    goto :goto_d

    .line 747
    :catch_22
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d
.end method

.method public final d()V
    .registers 3

    .prologue
    .line 673
    :try_start_0
    iget-boolean v0, p0, Lcom/mintegral/msdk/playercommon/b;->c:Z

    if-nez v0, :cond_c

    .line 674
    const-string v0, "VideoFeedsPlayer"

    const-string v1, "!mHasPrepare"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    :cond_b
    :goto_b
    return-void

    .line 677
    :cond_c
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->q:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->q:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_b

    .line 678
    invoke-virtual {p0}, Lcom/mintegral/msdk/playercommon/b;->a()V

    .line 679
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->q:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 680
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/playercommon/b;->b:Z

    .line 681
    const-string v0, "VideoFeedsPlayer"

    const-string v1, "start"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2b

    goto :goto_b

    .line 684
    :catch_2b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public final e()V
    .registers 4

    .prologue
    .line 756
    :try_start_0
    const-string v0, "VideoFeedsPlayer"

    const-string v1, "setDataSource"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->q:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2f

    .line 758
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->q:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 759
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->q:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/mintegral/msdk/playercommon/b;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 760
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->g:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_22

    .line 761
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->q:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/mintegral/msdk/playercommon/b;->g:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 763
    :cond_22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/playercommon/b;->c:Z

    .line 764
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->q:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 765
    const-string v0, "mediaplayer prepare timeout"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/playercommon/b;->a(Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2f} :catch_30

    .line 2602
    :cond_2f
    :goto_2f
    return-void

    .line 768
    :catch_30
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 769
    invoke-direct {p0}, Lcom/mintegral/msdk/playercommon/b;->q()V

    .line 770
    const-string v0, "illegal video address"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/playercommon/b;->b(Ljava/lang/String;)V

    .line 771
    const-string v0, "illegal video address"

    .line 2586
    :try_start_3e
    iget-object v1, p0, Lcom/mintegral/msdk/playercommon/b;->v:Landroid/os/Handler;

    if-eqz v1, :cond_2f

    .line 2587
    iget-object v1, p0, Lcom/mintegral/msdk/playercommon/b;->v:Landroid/os/Handler;

    new-instance v2, Lcom/mintegral/msdk/playercommon/b$3;

    invoke-direct {v2, p0, v0}, Lcom/mintegral/msdk/playercommon/b$3;-><init>(Lcom/mintegral/msdk/playercommon/b;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_4c} :catch_4d

    goto :goto_2f

    .line 2601
    :catch_4d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2f
.end method

.method public final f()V
    .registers 3

    .prologue
    .line 789
    :try_start_0
    const-string v0, "VideoFeedsPlayer"

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    invoke-direct {p0}, Lcom/mintegral/msdk/playercommon/b;->o()V

    .line 791
    invoke-direct {p0}, Lcom/mintegral/msdk/playercommon/b;->p()V

    .line 792
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->q:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_27

    .line 793
    invoke-virtual {p0}, Lcom/mintegral/msdk/playercommon/b;->c()V

    .line 794
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mintegral/msdk/playercommon/b$7;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/playercommon/b$7;-><init>(Lcom/mintegral/msdk/playercommon/b;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 805
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 807
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->m:Lcom/mintegral/msdk/playercommon/c;

    .line 808
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->l:Lcom/mintegral/msdk/playercommon/c;

    .line 810
    :cond_27
    invoke-direct {p0}, Lcom/mintegral/msdk/playercommon/b;->q()V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2a} :catch_2b

    .line 814
    :goto_2a
    return-void

    .line 812
    :catch_2b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2a
.end method

.method public final g()V
    .registers 4

    .prologue
    .line 822
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->q:Landroid/media/MediaPlayer;

    if-nez v0, :cond_5

    .line 831
    :goto_4
    return-void

    .line 825
    :cond_5
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->q:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 826
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/playercommon/b;->t:Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_4

    .line 828
    :catch_10
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method public final h()V
    .registers 4

    .prologue
    .line 839
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->q:Landroid/media/MediaPlayer;

    if-nez v0, :cond_5

    .line 849
    :goto_4
    return-void

    .line 844
    :cond_5
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->q:Landroid/media/MediaPlayer;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 845
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/playercommon/b;->t:Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    goto :goto_4

    .line 847
    :catch_12
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method public final i()I
    .registers 2

    .prologue
    .line 857
    iget v0, p0, Lcom/mintegral/msdk/playercommon/b;->i:I

    return v0
.end method

.method public final j()Z
    .registers 2

    .prologue
    .line 868
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->q:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->q:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_e

    move-result v0

    if-eqz v0, :cond_12

    .line 869
    const/4 v0, 0x1

    .line 874
    :goto_d
    return v0

    .line 872
    :catch_e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 874
    :cond_12
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final k()Z
    .registers 2

    .prologue
    .line 934
    iget-boolean v0, p0, Lcom/mintegral/msdk/playercommon/b;->c:Z

    return v0
.end method

.method public final l()Z
    .registers 2

    .prologue
    .line 947
    iget-boolean v0, p0, Lcom/mintegral/msdk/playercommon/b;->a:Z

    return v0
.end method

.method public final m()Z
    .registers 2

    .prologue
    .line 993
    iget-boolean v0, p0, Lcom/mintegral/msdk/playercommon/b;->t:Z

    return v0
.end method

.method public final n()I
    .registers 2

    .prologue
    .line 997
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->q:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_9

    .line 998
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->q:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    .line 1000
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .registers 3

    .prologue
    .line 923
    return-void
.end method

.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4

    .prologue
    .line 332
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/mintegral/msdk/playercommon/b;->a:Z

    .line 333
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/playercommon/b;->b:Z

    .line 334
    const/4 v0, 0x0

    iput v0, p0, Lcom/mintegral/msdk/playercommon/b;->i:I

    .line 335
    invoke-direct {p0}, Lcom/mintegral/msdk/playercommon/b;->q()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_27

    .line 1611
    :try_start_c
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->v:Landroid/os/Handler;

    if-eqz v0, :cond_1a

    .line 1612
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->v:Landroid/os/Handler;

    new-instance v1, Lcom/mintegral/msdk/playercommon/b$4;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/playercommon/b$4;-><init>(Lcom/mintegral/msdk/playercommon/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1a} :catch_22

    .line 337
    :cond_1a
    :goto_1a
    :try_start_1a
    const-string v0, "VideoFeedsPlayer"

    const-string v1, "======onCompletion"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    :goto_21
    return-void

    .line 1625
    :catch_22
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_26} :catch_27

    goto :goto_1a

    .line 339
    :catch_27
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_21
.end method

.method public final onError(Landroid/media/MediaPlayer;II)Z
    .registers 8

    .prologue
    const/4 v3, 0x1

    .line 880
    :try_start_1
    const-string v0, "VideoFeedsPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onError what:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " extra:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    invoke-direct {p0}, Lcom/mintegral/msdk/playercommon/b;->q()V

    .line 882
    iget-boolean v0, p0, Lcom/mintegral/msdk/playercommon/b;->f:Z

    if-nez v0, :cond_3f

    const-string v0, "MIX 3"

    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Xiaomi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 890
    :goto_3e
    return v3

    .line 885
    :cond_3f
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/playercommon/b;->c:Z

    .line 886
    const-string v0, "unknow error"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/playercommon/b;->b(Ljava/lang/String;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_47} :catch_48

    goto :goto_3e

    .line 888
    :catch_48
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3e
.end method

.method public final onInfo(Landroid/media/MediaPlayer;II)Z
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 897
    :try_start_1
    const-string v0, "VideoFeedsPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onInfo what:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    packed-switch p2, :pswitch_data_5c

    .line 917
    :goto_18
    return v3

    .line 901
    :pswitch_19
    const-string v0, "VideoFeedsPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BUFFERING_START:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/playercommon/b;->d:Z

    .line 903
    invoke-virtual {p0}, Lcom/mintegral/msdk/playercommon/b;->a()V

    .line 904
    const-string v0, "play buffering tiemout"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/playercommon/b;->a(Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_38} :catch_39

    goto :goto_18

    .line 915
    :catch_39
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18

    .line 908
    :pswitch_3e
    :try_start_3e
    const-string v0, "VideoFeedsPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BUFFERING_END:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/playercommon/b;->d:Z

    .line 910
    invoke-direct {p0}, Lcom/mintegral/msdk/playercommon/b;->q()V

    .line 911
    invoke-direct {p0}, Lcom/mintegral/msdk/playercommon/b;->r()V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_5b} :catch_39

    goto :goto_18

    .line 898
    :pswitch_data_5c
    .packed-switch 0x2bd
        :pswitch_19
        :pswitch_3e
    .end packed-switch
.end method

.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .registers 5

    .prologue
    .line 347
    :try_start_0
    const-string v0, "VideoFeedsPlayer"

    const-string v1, "\u8fdb\u6765\u4e86 onprepar listener"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    if-eqz p1, :cond_17

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 350
    const-string v0, "VideoFeedsPlayer"

    const-string v1, "onprepare \u6b63\u5728\u64ad\u653e"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    :goto_16
    return-void

    .line 354
    :cond_17
    const-string v0, "VideoFeedsPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPrepared:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/mintegral/msdk/playercommon/b;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-boolean v0, p0, Lcom/mintegral/msdk/playercommon/b;->f:Z

    if-eqz v0, :cond_48

    .line 357
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->q:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/mintegral/msdk/playercommon/b;->i:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 358
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b;->q:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/mintegral/msdk/playercommon/b$9;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/playercommon/b$9;-><init>(Lcom/mintegral/msdk/playercommon/b;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_42} :catch_43

    goto :goto_16

    .line 388
    :catch_43
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_16

    .line 385
    :cond_48
    :try_start_48
    const-string v0, "VideoFeedsPlayer"

    const-string v1, "\u6b64\u65f6\u5728\u540e\u53f0 \u4e0d\u505a\u5904\u7406"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_4f} :catch_43

    goto :goto_16
.end method
