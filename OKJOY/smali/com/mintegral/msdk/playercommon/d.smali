.class public final Lcom/mintegral/msdk/playercommon/d;
.super Ljava/lang/Object;
.source "VideoNativePlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/playercommon/d$a;,
        Lcom/mintegral/msdk/playercommon/d$b;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Landroid/view/Surface;

.field private j:I

.field private k:I

.field private l:Ljava/util/Timer;

.field private m:Ljava/util/Timer;

.field private n:Lcom/mintegral/msdk/playercommon/c;

.field private o:Lcom/mintegral/msdk/playercommon/c;

.field private p:Ljava/lang/Object;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Landroid/media/MediaPlayer;

.field private t:Landroid/view/View;

.field private u:Landroid/view/Surface;

.field private v:Z

.field private final w:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean v0, p0, Lcom/mintegral/msdk/playercommon/d;->a:Z

    .line 40
    iput-boolean v0, p0, Lcom/mintegral/msdk/playercommon/d;->b:Z

    .line 41
    iput-boolean v0, p0, Lcom/mintegral/msdk/playercommon/d;->c:Z

    .line 42
    iput-boolean v1, p0, Lcom/mintegral/msdk/playercommon/d;->d:Z

    .line 45
    iput-boolean v0, p0, Lcom/mintegral/msdk/playercommon/d;->e:Z

    .line 48
    iput-boolean v0, p0, Lcom/mintegral/msdk/playercommon/d;->f:Z

    .line 51
    iput-boolean v0, p0, Lcom/mintegral/msdk/playercommon/d;->g:Z

    .line 54
    iput-boolean v1, p0, Lcom/mintegral/msdk/playercommon/d;->h:Z

    .line 59
    const/4 v0, 0x5

    iput v0, p0, Lcom/mintegral/msdk/playercommon/d;->j:I

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->p:Ljava/lang/Object;

    .line 82
    iput-boolean v1, p0, Lcom/mintegral/msdk/playercommon/d;->v:Z

    .line 84
    new-instance v0, Lcom/mintegral/msdk/playercommon/d$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mintegral/msdk/playercommon/d$1;-><init>(Lcom/mintegral/msdk/playercommon/d;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->w:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/mintegral/msdk/playercommon/d;I)I
    .registers 2

    .prologue
    .line 34
    iput p1, p0, Lcom/mintegral/msdk/playercommon/d;->k:I

    return p1
.end method

.method static synthetic a(Lcom/mintegral/msdk/playercommon/d;)Landroid/media/MediaPlayer;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->s:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic a(Lcom/mintegral/msdk/playercommon/d;II)V
    .registers 5

    .prologue
    .line 3465
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->w:Landroid/os/Handler;

    if-eqz v0, :cond_e

    .line 3466
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->w:Landroid/os/Handler;

    new-instance v1, Lcom/mintegral/msdk/playercommon/d$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/mintegral/msdk/playercommon/d$11;-><init>(Lcom/mintegral/msdk/playercommon/d;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 3482
    :cond_e
    :goto_e
    return-void

    .line 3481
    :catch_f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e
.end method

.method static synthetic a(Lcom/mintegral/msdk/playercommon/d;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 3512
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->w:Landroid/os/Handler;

    if-eqz v0, :cond_e

    .line 3513
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->w:Landroid/os/Handler;

    new-instance v1, Lcom/mintegral/msdk/playercommon/d$13;

    invoke-direct {v1, p0, p1}, Lcom/mintegral/msdk/playercommon/d$13;-><init>(Lcom/mintegral/msdk/playercommon/d;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 3529
    :cond_e
    :goto_e
    return-void

    .line 3528
    :catch_f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e
.end method

.method private a(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 321
    iget-boolean v0, p0, Lcom/mintegral/msdk/playercommon/d;->g:Z

    if-nez v0, :cond_c

    .line 322
    const-string v0, "VideoFeedsPlayer"

    const-string v1, "\u4e0d\u9700\u8981\u7f13\u51b2\u8d85\u65f6\u529f\u80fd"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :goto_b
    return-void

    .line 326
    :cond_c
    invoke-direct {p0}, Lcom/mintegral/msdk/playercommon/d;->l()V

    .line 328
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->m:Ljava/util/Timer;

    .line 329
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->m:Ljava/util/Timer;

    new-instance v1, Lcom/mintegral/msdk/playercommon/d$7;

    invoke-direct {v1, p0, p1}, Lcom/mintegral/msdk/playercommon/d$7;-><init>(Lcom/mintegral/msdk/playercommon/d;Ljava/lang/String;)V

    iget v2, p0, Lcom/mintegral/msdk/playercommon/d;->j:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_b
.end method

.method static synthetic a(Lcom/mintegral/msdk/playercommon/d;Z)Z
    .registers 2

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/mintegral/msdk/playercommon/d;->b:Z

    return p1
.end method

.method static synthetic b(Lcom/mintegral/msdk/playercommon/d;)I
    .registers 2

    .prologue
    .line 34
    iget v0, p0, Lcom/mintegral/msdk/playercommon/d;->k:I

    return v0
.end method

.method static synthetic b(Lcom/mintegral/msdk/playercommon/d;I)V
    .registers 4

    .prologue
    .line 2564
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->w:Landroid/os/Handler;

    if-eqz v0, :cond_e

    .line 2565
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->w:Landroid/os/Handler;

    new-instance v1, Lcom/mintegral/msdk/playercommon/d$2;

    invoke-direct {v1, p0, p1}, Lcom/mintegral/msdk/playercommon/d$2;-><init>(Lcom/mintegral/msdk/playercommon/d;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 2581
    :cond_e
    :goto_e
    return-void

    .line 2580
    :catch_f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e
.end method

.method static synthetic b(Lcom/mintegral/msdk/playercommon/d;II)V
    .registers 5

    .prologue
    .line 3486
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->w:Landroid/os/Handler;

    if-eqz v0, :cond_e

    .line 3487
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->w:Landroid/os/Handler;

    new-instance v1, Lcom/mintegral/msdk/playercommon/d$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/mintegral/msdk/playercommon/d$12;-><init>(Lcom/mintegral/msdk/playercommon/d;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 3503
    :cond_e
    :goto_e
    return-void

    .line 3502
    :catch_f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e
.end method

.method private b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 591
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->w:Landroid/os/Handler;

    if-eqz v0, :cond_e

    .line 592
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->w:Landroid/os/Handler;

    new-instance v1, Lcom/mintegral/msdk/playercommon/d$3;

    invoke-direct {v1, p0, p1}, Lcom/mintegral/msdk/playercommon/d$3;-><init>(Lcom/mintegral/msdk/playercommon/d;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 609
    :cond_e
    :goto_e
    return-void

    .line 607
    :catch_f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e
.end method

.method private b(Ljava/lang/String;Landroid/view/View;Lcom/mintegral/msdk/playercommon/c;)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 775
    :try_start_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 776
    const-string v0, "VideoFeedsPlayer"

    const-string v2, "netUrl\u4e3a\u7a7a return"

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    const-string v0, "MediaPlayer init error"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/playercommon/d;->b(Ljava/lang/String;)V

    .line 799
    :goto_14
    return v1

    .line 780
    :cond_15
    if-nez p2, :cond_32

    .line 781
    const-string v0, "VideoFeedsPlayer"

    const-string v2, "loadingView\u4e3a\u7a7a return"

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    const-string v0, "MediaPlayer init error"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/playercommon/d;->b(Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_23} :catch_24

    goto :goto_14

    .line 790
    :catch_24
    move-exception v0

    .line 791
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 794
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 797
    invoke-direct {p0, v0}, Lcom/mintegral/msdk/playercommon/d;->b(Ljava/lang/String;)V

    move v0, v1

    :goto_30
    move v1, v0

    .line 799
    goto :goto_14

    .line 785
    :cond_32
    const/4 v2, 0x1

    :try_start_33
    iput-boolean v2, p0, Lcom/mintegral/msdk/playercommon/d;->v:Z

    .line 786
    iput-object p2, p0, Lcom/mintegral/msdk/playercommon/d;->t:Landroid/view/View;

    .line 787
    iput-object p1, p0, Lcom/mintegral/msdk/playercommon/d;->r:Ljava/lang/String;

    .line 788
    iput-object p3, p0, Lcom/mintegral/msdk/playercommon/d;->n:Lcom/mintegral/msdk/playercommon/c;
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_3b} :catch_24

    goto :goto_30
.end method

.method private c(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 618
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->w:Landroid/os/Handler;

    if-eqz v0, :cond_e

    .line 619
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->w:Landroid/os/Handler;

    new-instance v1, Lcom/mintegral/msdk/playercommon/d$4;

    invoke-direct {v1, p0, p1}, Lcom/mintegral/msdk/playercommon/d$4;-><init>(Lcom/mintegral/msdk/playercommon/d;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 635
    :cond_e
    :goto_e
    return-void

    .line 633
    :catch_f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e
.end method

.method static synthetic c(Lcom/mintegral/msdk/playercommon/d;)Z
    .registers 2

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/mintegral/msdk/playercommon/d;->d:Z

    return v0
.end method

.method static synthetic d(Lcom/mintegral/msdk/playercommon/d;)Z
    .registers 2

    .prologue
    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/playercommon/d;->d:Z

    return v0
.end method

.method static synthetic e(Lcom/mintegral/msdk/playercommon/d;)Z
    .registers 2

    .prologue
    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/playercommon/d;->a:Z

    return v0
.end method

.method static synthetic f(Lcom/mintegral/msdk/playercommon/d;)Z
    .registers 2

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/mintegral/msdk/playercommon/d;->f:Z

    return v0
.end method

.method static synthetic g(Lcom/mintegral/msdk/playercommon/d;)V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/mintegral/msdk/playercommon/d;->n()V

    return-void
.end method

.method static synthetic h(Lcom/mintegral/msdk/playercommon/d;)Z
    .registers 2

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/mintegral/msdk/playercommon/d;->c:Z

    return v0
.end method

.method static synthetic i(Lcom/mintegral/msdk/playercommon/d;)Z
    .registers 2

    .prologue
    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/playercommon/d;->c:Z

    return v0
.end method

.method static synthetic j(Lcom/mintegral/msdk/playercommon/d;)V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/mintegral/msdk/playercommon/d;->o()V

    return-void
.end method

.method private k()V
    .registers 2

    .prologue
    .line 295
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->l:Ljava/util/Timer;

    if-eqz v0, :cond_9

    .line 296
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->l:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 302
    :cond_9
    :goto_9
    return-void

    .line 299
    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method static synthetic k(Lcom/mintegral/msdk/playercommon/d;)V
    .registers 7

    .prologue
    .line 4281
    :try_start_0
    invoke-direct {p0}, Lcom/mintegral/msdk/playercommon/d;->k()V

    .line 4282
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->l:Ljava/util/Timer;

    .line 4283
    new-instance v1, Lcom/mintegral/msdk/playercommon/d$b;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/mintegral/msdk/playercommon/d$b;-><init>(Lcom/mintegral/msdk/playercommon/d;B)V

    .line 4284
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->l:Ljava/util/Timer;

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 4285
    new-instance v1, Lcom/mintegral/msdk/playercommon/d$a;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/mintegral/msdk/playercommon/d$a;-><init>(Lcom/mintegral/msdk/playercommon/d;B)V

    .line 4286
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->l:Ljava/util/Timer;

    const-wide/16 v2, 0x64

    const-wide/16 v4, 0x64

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_29

    .line 4289
    :goto_28
    return-void

    .line 4288
    :catch_29
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_28
.end method

.method static synthetic l(Lcom/mintegral/msdk/playercommon/d;)Landroid/view/View;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->t:Landroid/view/View;

    return-object v0
.end method

.method private l()V
    .registers 2

    .prologue
    .line 306
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->m:Ljava/util/Timer;

    if-eqz v0, :cond_9

    .line 307
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->m:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 313
    :cond_9
    :goto_9
    return-void

    .line 310
    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method static synthetic m(Lcom/mintegral/msdk/playercommon/d;)Lcom/mintegral/msdk/playercommon/c;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->n:Lcom/mintegral/msdk/playercommon/c;

    return-object v0
.end method

.method private m()V
    .registers 3

    .prologue
    .line 417
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->w:Landroid/os/Handler;

    if-nez v0, :cond_5

    .line 434
    :goto_4
    return-void

    .line 420
    :cond_5
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->w:Landroid/os/Handler;

    new-instance v1, Lcom/mintegral/msdk/playercommon/d$9;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/playercommon/d$9;-><init>(Lcom/mintegral/msdk/playercommon/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_4

    .line 432
    :catch_10
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method static synthetic n(Lcom/mintegral/msdk/playercommon/d;)Lcom/mintegral/msdk/playercommon/c;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->o:Lcom/mintegral/msdk/playercommon/c;

    return-object v0
.end method

.method private n()V
    .registers 3

    .prologue
    .line 441
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->w:Landroid/os/Handler;

    if-nez v0, :cond_5

    .line 457
    :goto_4
    return-void

    .line 444
    :cond_5
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->w:Landroid/os/Handler;

    new-instance v1, Lcom/mintegral/msdk/playercommon/d$10;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/playercommon/d$10;-><init>(Lcom/mintegral/msdk/playercommon/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_4

    .line 454
    :catch_10
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method private o()V
    .registers 3

    .prologue
    .line 538
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->w:Landroid/os/Handler;

    if-eqz v0, :cond_e

    .line 539
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->w:Landroid/os/Handler;

    new-instance v1, Lcom/mintegral/msdk/playercommon/d$14;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/playercommon/d$14;-><init>(Lcom/mintegral/msdk/playercommon/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 556
    :cond_e
    :goto_e
    return-void

    .line 554
    :catch_f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e
.end method

.method static synthetic o(Lcom/mintegral/msdk/playercommon/d;)V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/mintegral/msdk/playercommon/d;->k()V

    return-void
.end method

.method private p()V
    .registers 4

    .prologue
    .line 807
    :try_start_0
    const-string v0, "VideoFeedsPlayer"

    const-string v1, "setDataSource begin"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->s:Landroid/media/MediaPlayer;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_93

    if-eqz v0, :cond_1d

    .line 810
    :try_start_b
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->s:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 811
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->s:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 813
    :cond_18
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->s:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_1d} :catch_8e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1d} :catch_93

    .line 818
    :cond_1d
    :goto_1d
    :try_start_1d
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->s:Landroid/media/MediaPlayer;

    .line 819
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->s:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 820
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->s:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 821
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->s:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 822
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->s:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 823
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->s:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 824
    iget-boolean v0, p0, Lcom/mintegral/msdk/playercommon/d;->v:Z

    if-nez v0, :cond_44

    .line 825
    invoke-virtual {p0}, Lcom/mintegral/msdk/playercommon/d;->d()V

    .line 827
    :cond_44
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_56

    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->q:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_60

    :cond_56
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->q:Ljava/lang/String;

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c8

    .line 828
    :cond_60
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->s:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/mintegral/msdk/playercommon/d;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 838
    :goto_67
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->i:Landroid/view/Surface;

    if-eqz v0, :cond_72

    .line 839
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->s:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/mintegral/msdk/playercommon/d;->i:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 841
    :cond_72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/playercommon/d;->c:Z

    .line 842
    const-string v0, "VideoFeedsPlayer"

    const-string v1, "setDataSource prepareAsync"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->s:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 844
    const-string v0, "mediaplayer prepare timeout"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/playercommon/d;->a(Ljava/lang/String;)V

    .line 845
    const-string v0, "VideoFeedsPlayer"

    const-string v1, "setDataSource done"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    :goto_8d
    return-void

    .line 815
    :catch_8e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_92} :catch_93

    goto :goto_1d

    .line 847
    :catch_93
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 849
    invoke-direct {p0}, Lcom/mintegral/msdk/playercommon/d;->n()V

    .line 851
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ed

    .line 852
    const-string v0, "VideoFeedsPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setDataSource error \u5f53\u524d\u5df2\u7ecf\u662f\u7f51\u7edcurl \u4e0d\u80fd\u6284\u5e95\u64ad\u653e\u4e86 :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mintegral/msdk/playercommon/d;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    const-string v0, "mediaplayer cannot play"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/playercommon/d;->b(Ljava/lang/String;)V

    .line 855
    const-string v0, "set data source error"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/playercommon/d;->c(Ljava/lang/String;)V

    .line 868
    :goto_c2
    const-string v0, "set data source error"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/playercommon/d;->c(Ljava/lang/String;)V

    goto :goto_8d

    .line 830
    :cond_c8
    :try_start_c8
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mintegral/msdk/playercommon/d;->q:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 831
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_e4

    .line 832
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 833
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->s:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    goto :goto_67

    .line 835
    :cond_e4
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->s:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/mintegral/msdk/playercommon/d;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_eb} :catch_93

    goto/16 :goto_67

    .line 858
    :cond_ed
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11d

    iget-boolean v0, p0, Lcom/mintegral/msdk/playercommon/d;->e:Z

    if-nez v0, :cond_11d

    .line 859
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/playercommon/d;->e:Z

    .line 860
    const-string v0, "VideoFeedsPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setDataSource error \u6284\u5e95\u64ad\u653e  mNetUrl:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mintegral/msdk/playercommon/d;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->r:Ljava/lang/String;

    iput-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->q:Ljava/lang/String;

    .line 862
    invoke-direct {p0}, Lcom/mintegral/msdk/playercommon/d;->m()V

    .line 863
    invoke-direct {p0}, Lcom/mintegral/msdk/playercommon/d;->p()V

    goto :goto_c2

    .line 865
    :cond_11d
    const-string v0, "mediaplayer cannot play"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/playercommon/d;->b(Ljava/lang/String;)V

    goto :goto_c2
.end method

.method static synthetic p(Lcom/mintegral/msdk/playercommon/d;)V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/mintegral/msdk/playercommon/d;->l()V

    return-void
.end method

.method static synthetic q(Lcom/mintegral/msdk/playercommon/d;)Landroid/media/MediaPlayer;
    .registers 2

    .prologue
    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->s:Landroid/media/MediaPlayer;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 666
    :try_start_1
    const-string v1, "VideoFeedsPlayer"

    const-string v2, "player pause"

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    iget-boolean v1, p0, Lcom/mintegral/msdk/playercommon/d;->c:Z

    if-nez v1, :cond_14

    .line 668
    const-string v0, "VideoFeedsPlayer"

    const-string v1, "pause !mHasPrepare retrun"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    :goto_13
    return-void

    .line 671
    :cond_14
    iget-object v1, p0, Lcom/mintegral/msdk/playercommon/d;->s:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_47

    iget-object v1, p0, Lcom/mintegral/msdk/playercommon/d;->s:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 672
    const-string v0, "VideoFeedsPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pause "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/mintegral/msdk/playercommon/d;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    invoke-direct {p0}, Lcom/mintegral/msdk/playercommon/d;->n()V

    .line 674
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->s:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 675
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/playercommon/d;->b:Z
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_41} :catch_42

    goto :goto_13

    .line 680
    :catch_42
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13

    .line 677
    :cond_47
    :try_start_47
    const-string v1, "VideoFeedsPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pause mMediaPlayer==null?"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mintegral/msdk/playercommon/d;->s:Landroid/media/MediaPlayer;

    if-nez v3, :cond_55

    const/4 v0, 0x1

    :cond_55
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mediaplayer is null or haspause return"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_66} :catch_42

    goto :goto_13
.end method

.method public final a(Landroid/view/Surface;)V
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 712
    :try_start_1
    iget-boolean v1, p0, Lcom/mintegral/msdk/playercommon/d;->c:Z

    if-nez v1, :cond_d

    .line 713
    const-string v0, "VideoFeedsPlayer"

    const-string v1, "start !mHasPrepare retrun"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    :goto_c
    return-void

    .line 716
    :cond_d
    iget-object v1, p0, Lcom/mintegral/msdk/playercommon/d;->s:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_43

    iget-object v1, p0, Lcom/mintegral/msdk/playercommon/d;->s:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_43

    .line 717
    invoke-direct {p0}, Lcom/mintegral/msdk/playercommon/d;->m()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_39

    .line 718
    if-eqz p1, :cond_29

    .line 2142
    :try_start_1e
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->s:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_29

    .line 2143
    iput-object p1, p0, Lcom/mintegral/msdk/playercommon/d;->u:Landroid/view/Surface;

    .line 2144
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->s:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_29} :catch_3e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_29} :catch_39

    .line 721
    :cond_29
    :goto_29
    :try_start_29
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->s:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 722
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/playercommon/d;->b:Z

    .line 723
    const-string v0, "VideoFeedsPlayer"

    const-string v1, "\u8c03\u7528 start"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_38} :catch_39

    goto :goto_c

    .line 728
    :catch_39
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c

    .line 2147
    :catch_3e
    move-exception v0

    :try_start_3f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_29

    .line 725
    :cond_43
    const-string v1, "VideoFeedsPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "start mMediaPlayer==null?"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mintegral/msdk/playercommon/d;->s:Landroid/media/MediaPlayer;

    if-nez v3, :cond_62

    :goto_50
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mediaplayer is null or isplaying return"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_61} :catch_39

    goto :goto_c

    :cond_62
    const/4 v0, 0x0

    goto :goto_50
.end method

.method public final a(Lcom/mintegral/msdk/playercommon/c;)V
    .registers 2

    .prologue
    .line 877
    iput-object p1, p0, Lcom/mintegral/msdk/playercommon/d;->o:Lcom/mintegral/msdk/playercommon/c;

    .line 878
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/view/Surface;)V
    .registers 6

    .prologue
    .line 181
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 182
    const-string v0, "play url is null"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/playercommon/d;->b(Ljava/lang/String;)V

    .line 198
    :goto_b
    return-void

    .line 185
    :cond_c
    invoke-direct {p0}, Lcom/mintegral/msdk/playercommon/d;->m()V

    .line 186
    iput-object p1, p0, Lcom/mintegral/msdk/playercommon/d;->q:Ljava/lang/String;

    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/playercommon/d;->c:Z

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/playercommon/d;->h:Z

    .line 189
    iput-object p2, p0, Lcom/mintegral/msdk/playercommon/d;->i:Landroid/view/Surface;

    .line 190
    invoke-direct {p0}, Lcom/mintegral/msdk/playercommon/d;->p()V

    .line 191
    const-string v0, "VideoFeedsPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mPlayUrl:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mintegral/msdk/playercommon/d;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_33

    goto :goto_b

    .line 193
    :catch_33
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 194
    invoke-virtual {p0}, Lcom/mintegral/msdk/playercommon/d;->c()V

    .line 195
    invoke-direct {p0}, Lcom/mintegral/msdk/playercommon/d;->n()V

    .line 196
    const-string v0, "mediaplayer cannot play"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/playercommon/d;->b(Ljava/lang/String;)V

    goto :goto_b
.end method

.method public final a(Z)V
    .registers 5

    .prologue
    .line 1024
    :try_start_0
    iput-boolean p1, p0, Lcom/mintegral/msdk/playercommon/d;->h:Z

    .line 1025
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

    .line 1029
    :goto_1a
    return-void

    .line 1025
    :cond_1b
    const-string v0, "\u8bbe\u7f6e\u5728\u540e\u53f0"
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_f

    .line 1027
    :catch_1e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a
.end method

.method public final a(Ljava/lang/String;Landroid/view/View;Lcom/mintegral/msdk/playercommon/c;)Z
    .registers 5

    .prologue
    .line 765
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/mintegral/msdk/playercommon/d;->b(Ljava/lang/String;Landroid/view/View;Lcom/mintegral/msdk/playercommon/c;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    .line 769
    :goto_4
    return v0

    .line 767
    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 769
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 689
    :try_start_0
    iget-boolean v0, p0, Lcom/mintegral/msdk/playercommon/d;->c:Z

    if-nez v0, :cond_c

    .line 690
    const-string v0, "VideoFeedsPlayer"

    const-string v1, "stop !mHasPrepare retrun"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    :cond_b
    :goto_b
    return-void

    .line 693
    :cond_c
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->s:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->s:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 694
    invoke-direct {p0}, Lcom/mintegral/msdk/playercommon/d;->n()V

    .line 695
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->s:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 696
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/playercommon/d;->b:Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24

    goto :goto_b

    .line 699
    :catch_24
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public final b(Z)V
    .registers 2

    .prologue
    .line 1036
    iput-boolean p1, p0, Lcom/mintegral/msdk/playercommon/d;->a:Z

    .line 1037
    return-void
.end method

.method public final c()V
    .registers 3

    .prologue
    .line 884
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mintegral/msdk/playercommon/d$6;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/playercommon/d$6;-><init>(Lcom/mintegral/msdk/playercommon/d;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 901
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 902
    invoke-direct {p0}, Lcom/mintegral/msdk/playercommon/d;->n()V

    .line 903
    return-void
.end method

.method public final d()V
    .registers 4

    .prologue
    .line 911
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->s:Landroid/media/MediaPlayer;

    if-nez v0, :cond_5

    .line 919
    :goto_4
    return-void

    .line 914
    :cond_5
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->s:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_4

    .line 916
    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method public final e()V
    .registers 4

    .prologue
    .line 927
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->s:Landroid/media/MediaPlayer;

    if-nez v0, :cond_5

    .line 936
    :goto_4
    return-void

    .line 932
    :cond_5
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->s:Landroid/media/MediaPlayer;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_4

    .line 934
    :catch_f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method public final f()Z
    .registers 2

    .prologue
    .line 955
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->s:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->s:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_e

    move-result v0

    if-eqz v0, :cond_12

    .line 956
    const/4 v0, 0x1

    .line 961
    :goto_d
    return v0

    .line 959
    :catch_e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 961
    :cond_12
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final g()Z
    .registers 2

    .prologue
    .line 1019
    iget-boolean v0, p0, Lcom/mintegral/msdk/playercommon/d;->c:Z

    return v0
.end method

.method public final h()Z
    .registers 2

    .prologue
    .line 1032
    iget-boolean v0, p0, Lcom/mintegral/msdk/playercommon/d;->a:Z

    return v0
.end method

.method public final i()Z
    .registers 2

    .prologue
    .line 1040
    iget-boolean v0, p0, Lcom/mintegral/msdk/playercommon/d;->b:Z

    return v0
.end method

.method public final j()Z
    .registers 2

    .prologue
    .line 1045
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->t:Landroid/view/View;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->t:Landroid/view/View;

    .line 1046
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_e

    move-result v0

    if-nez v0, :cond_12

    .line 1047
    const/4 v0, 0x1

    .line 1052
    :goto_d
    return v0

    .line 1050
    :catch_e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1052
    :cond_12
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .registers 3

    .prologue
    .line 1008
    return-void
.end method

.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4

    .prologue
    .line 362
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/mintegral/msdk/playercommon/d;->a:Z

    .line 363
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/playercommon/d;->b:Z

    .line 364
    const/4 v0, 0x0

    iput v0, p0, Lcom/mintegral/msdk/playercommon/d;->k:I

    .line 365
    invoke-direct {p0}, Lcom/mintegral/msdk/playercommon/d;->n()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_27

    .line 1643
    :try_start_c
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->w:Landroid/os/Handler;

    if-eqz v0, :cond_1a

    .line 1644
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->w:Landroid/os/Handler;

    new-instance v1, Lcom/mintegral/msdk/playercommon/d$5;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/playercommon/d$5;-><init>(Lcom/mintegral/msdk/playercommon/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1a} :catch_22

    .line 367
    :cond_1a
    :goto_1a
    :try_start_1a
    const-string v0, "VideoFeedsPlayer"

    const-string v1, "======onCompletion"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    :goto_21
    return-void

    .line 1657
    :catch_22
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_26} :catch_27

    goto :goto_1a

    .line 369
    :catch_27
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_21
.end method

.method public final onError(Landroid/media/MediaPlayer;II)Z
    .registers 7

    .prologue
    .line 967
    :try_start_0
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

    .line 968
    invoke-direct {p0}, Lcom/mintegral/msdk/playercommon/d;->n()V

    .line 969
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/playercommon/d;->c:Z

    .line 970
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/playercommon/d;->b:Z

    .line 971
    const-string v0, "unknow error"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/playercommon/d;->b(Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_2e

    .line 975
    :goto_2c
    const/4 v0, 0x1

    return v0

    .line 973
    :catch_2e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2c
.end method

.method public final onInfo(Landroid/media/MediaPlayer;II)Z
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 982
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

    .line 983
    packed-switch p2, :pswitch_data_5c

    .line 1002
    :goto_18
    return v3

    .line 986
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

    .line 987
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/playercommon/d;->f:Z

    .line 988
    invoke-direct {p0}, Lcom/mintegral/msdk/playercommon/d;->m()V

    .line 989
    const-string v0, "play buffering tiemout"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/playercommon/d;->a(Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_38} :catch_39

    goto :goto_18

    .line 1000
    :catch_39
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18

    .line 993
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

    .line 994
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/playercommon/d;->f:Z

    .line 995
    invoke-direct {p0}, Lcom/mintegral/msdk/playercommon/d;->n()V

    .line 996
    invoke-direct {p0}, Lcom/mintegral/msdk/playercommon/d;->o()V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_5b} :catch_39

    goto :goto_18

    .line 983
    :pswitch_data_5c
    .packed-switch 0x2bd
        :pswitch_19
        :pswitch_3e
    .end packed-switch
.end method

.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .registers 5

    .prologue
    .line 376
    :try_start_0
    const-string v0, "VideoFeedsPlayer"

    const-string v1, "\u8fdb\u6765\u4e86 onprepar listener"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    if-eqz p1, :cond_17

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 378
    const-string v0, "VideoFeedsPlayer"

    const-string v1, "onprepare \u6b63\u5728\u64ad\u653e"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    :goto_16
    return-void

    .line 381
    :cond_17
    const-string v0, "VideoFeedsPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPrepared:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/mintegral/msdk/playercommon/d;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsFrontDesk:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mintegral/msdk/playercommon/d;->h:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget-boolean v0, p0, Lcom/mintegral/msdk/playercommon/d;->h:Z

    if-eqz v0, :cond_6a

    .line 383
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->s:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/mintegral/msdk/playercommon/d;->k:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 384
    const-string v0, "VideoFeedsPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPrepared:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mintegral/msdk/playercommon/d;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d;->s:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/mintegral/msdk/playercommon/d$8;

    invoke-direct {v1, p0, p1}, Lcom/mintegral/msdk/playercommon/d$8;-><init>(Lcom/mintegral/msdk/playercommon/d;Landroid/media/MediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_64} :catch_65

    goto :goto_16

    .line 407
    :catch_65
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_16

    .line 404
    :cond_6a
    :try_start_6a
    const-string v0, "VideoFeedsPlayer"

    const-string v1, "\u6b64\u65f6\u5728\u540e\u53f0 \u4e0d\u505a\u5904\u7406"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_6a .. :try_end_71} :catch_65

    goto :goto_16
.end method
