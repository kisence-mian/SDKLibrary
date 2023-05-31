.class public Lcom/kwad/sdk/contentalliance/detail/video/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/contentalliance/detail/video/a$i;
    }
.end annotation


# static fields
.field private static r:Ljava/lang/String; = "DetailMediaPlayerImpl"


# instance fields
.field private a:I

.field private b:Lcom/kwad/sdk/c/h/d/c;

.field private c:Landroid/view/Surface;

.field private d:I

.field private e:J

.field private f:Ljava/util/Timer;

.field private g:Ljava/util/TimerTask;

.field private h:Landroid/os/Handler;

.field private i:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kwad/sdk/c/h/d/c$e;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/kwad/sdk/c/h/d/c$e;

.field private l:Lcom/kwad/sdk/c/h/d/c$h;

.field private m:Lcom/kwad/sdk/c/h/d/c$b;

.field private n:Lcom/kwad/sdk/c/h/d/c$c;

.field private o:Lcom/kwad/sdk/c/h/d/c$d;

.field private p:Lcom/kwad/sdk/c/h/d/c$a;

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kwad/sdk/contentalliance/detail/video/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->a:I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->h:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->j:Ljava/util/List;

    new-instance v0, Lcom/kwad/sdk/contentalliance/detail/video/a$a;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/contentalliance/detail/video/a$a;-><init>(Lcom/kwad/sdk/contentalliance/detail/video/a;)V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->k:Lcom/kwad/sdk/c/h/d/c$e;

    new-instance v0, Lcom/kwad/sdk/contentalliance/detail/video/a$b;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/contentalliance/detail/video/a$b;-><init>(Lcom/kwad/sdk/contentalliance/detail/video/a;)V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->l:Lcom/kwad/sdk/c/h/d/c$h;

    new-instance v0, Lcom/kwad/sdk/contentalliance/detail/video/a$c;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/contentalliance/detail/video/a$c;-><init>(Lcom/kwad/sdk/contentalliance/detail/video/a;)V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->m:Lcom/kwad/sdk/c/h/d/c$b;

    new-instance v0, Lcom/kwad/sdk/contentalliance/detail/video/a$d;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/contentalliance/detail/video/a$d;-><init>(Lcom/kwad/sdk/contentalliance/detail/video/a;)V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->n:Lcom/kwad/sdk/c/h/d/c$c;

    new-instance v0, Lcom/kwad/sdk/contentalliance/detail/video/a$e;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/contentalliance/detail/video/a$e;-><init>(Lcom/kwad/sdk/contentalliance/detail/video/a;)V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->o:Lcom/kwad/sdk/c/h/d/c$d;

    new-instance v0, Lcom/kwad/sdk/contentalliance/detail/video/a$f;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/contentalliance/detail/video/a$f;-><init>(Lcom/kwad/sdk/contentalliance/detail/video/a;)V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->p:Lcom/kwad/sdk/c/h/d/c$a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->q:Ljava/util/List;

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->i:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/contentalliance/detail/video/a;)I
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->a:I

    return v0
.end method

.method static synthetic a(Lcom/kwad/sdk/contentalliance/detail/video/a;I)I
    .registers 2

    iput p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->a:I

    return p1
.end method

.method static synthetic b(Lcom/kwad/sdk/contentalliance/detail/video/a;I)I
    .registers 2

    iput p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->d:I

    return p1
.end method

.method static synthetic b(Lcom/kwad/sdk/contentalliance/detail/video/a;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->j:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/kwad/sdk/contentalliance/detail/video/a;)Lcom/kwad/sdk/c/h/d/c;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:Lcom/kwad/sdk/c/h/d/c;

    return-object v0
.end method

.method static synthetic d(Lcom/kwad/sdk/contentalliance/detail/video/a;)Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->i:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    return-object v0
.end method

.method static synthetic e(Lcom/kwad/sdk/contentalliance/detail/video/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->u()V

    return-void
.end method

.method static synthetic f(Lcom/kwad/sdk/contentalliance/detail/video/a;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->h:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic p()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/contentalliance/detail/video/a;->r:Ljava/lang/String;

    return-object v0
.end method

.method private q()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->f:Ljava/util/Timer;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->f:Ljava/util/Timer;

    :cond_a
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->g:Ljava/util/TimerTask;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    iput-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->g:Ljava/util/TimerTask;

    :cond_13
    return-void
.end method

.method private r()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:Lcom/kwad/sdk/c/h/d/c;

    if-nez v0, :cond_6

    :goto_5
    return-void

    :cond_6
    invoke-interface {v0, v1, v1}, Lcom/kwad/sdk/c/h/d/c;->a(FF)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:Lcom/kwad/sdk/c/h/d/c;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/kwad/sdk/c/h/d/c;->a(Landroid/view/Surface;)V

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->s()V

    goto :goto_5
.end method

.method private s()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:Lcom/kwad/sdk/c/h/d/c;

    if-nez v0, :cond_6

    :goto_5
    return-void

    :cond_6
    invoke-interface {v0, v1}, Lcom/kwad/sdk/c/h/d/c;->a(Lcom/kwad/sdk/c/h/d/c$c;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:Lcom/kwad/sdk/c/h/d/c;

    invoke-interface {v0, v1}, Lcom/kwad/sdk/c/h/d/c;->a(Lcom/kwad/sdk/c/h/d/c$b;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:Lcom/kwad/sdk/c/h/d/c;

    invoke-interface {v0, v1}, Lcom/kwad/sdk/c/h/d/c;->a(Lcom/kwad/sdk/c/h/d/c$e;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:Lcom/kwad/sdk/c/h/d/c;

    invoke-interface {v0, v1}, Lcom/kwad/sdk/c/h/d/c;->a(Lcom/kwad/sdk/c/h/d/c$d;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:Lcom/kwad/sdk/c/h/d/c;

    invoke-interface {v0, v1}, Lcom/kwad/sdk/c/h/d/c;->a(Lcom/kwad/sdk/c/h/d/c$f;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:Lcom/kwad/sdk/c/h/d/c;

    invoke-interface {v0, v1}, Lcom/kwad/sdk/c/h/d/c;->a(Lcom/kwad/sdk/c/h/d/c$a;)V

    goto :goto_5
.end method

.method private t()V
    .registers 7

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->q()V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->f:Ljava/util/Timer;

    if-nez v0, :cond_e

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->f:Ljava/util/Timer;

    :cond_e
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->g:Ljava/util/TimerTask;

    if-nez v0, :cond_19

    new-instance v0, Lcom/kwad/sdk/contentalliance/detail/video/a$h;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/contentalliance/detail/video/a$h;-><init>(Lcom/kwad/sdk/contentalliance/detail/video/a;)V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->g:Ljava/util/TimerTask;

    :cond_19
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->f:Ljava/util/Timer;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->g:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private u()V
    .registers 5

    invoke-virtual {p0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a()J

    move-result-wide v2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/contentalliance/detail/video/e;

    invoke-interface {v0, v2, v3}, Lcom/kwad/sdk/contentalliance/detail/video/e;->a(J)V

    goto :goto_a

    :cond_1a
    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:Lcom/kwad/sdk/c/h/d/c;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/kwad/sdk/c/h/d/c;->getCurrentPosition()J

    move-result-wide v0

    :goto_8
    return-wide v0

    :cond_9
    const-wide/16 v0, 0x0

    goto :goto_8
.end method

.method public a(I)V
    .registers 4

    packed-switch p1, :pswitch_data_d0

    :cond_3
    :pswitch_3
    return-void

    :pswitch_4
    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->q()V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/contentalliance/detail/video/e;

    invoke-interface {v0}, Lcom/kwad/sdk/contentalliance/detail/video/e;->d()V

    goto :goto_d

    :pswitch_1d
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/contentalliance/detail/video/e;

    invoke-interface {v0}, Lcom/kwad/sdk/contentalliance/detail/video/e;->g()V

    goto :goto_23

    :pswitch_33
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/contentalliance/detail/video/e;

    invoke-interface {v0}, Lcom/kwad/sdk/contentalliance/detail/video/e;->f()V

    goto :goto_39

    :pswitch_49
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/contentalliance/detail/video/e;

    invoke-interface {v0}, Lcom/kwad/sdk/contentalliance/detail/video/e;->h()V

    goto :goto_4f

    :pswitch_5f
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_65
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/contentalliance/detail/video/e;

    invoke-interface {v0}, Lcom/kwad/sdk/contentalliance/detail/video/e;->e()V

    goto :goto_65

    :pswitch_75
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/contentalliance/detail/video/e;

    invoke-interface {v0}, Lcom/kwad/sdk/contentalliance/detail/video/e;->onVideoPlayStart()V

    goto :goto_7b

    :pswitch_8b
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_91
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/contentalliance/detail/video/e;

    invoke-interface {v0}, Lcom/kwad/sdk/contentalliance/detail/video/e;->b()V

    goto :goto_91

    :pswitch_a1
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/contentalliance/detail/video/e;

    invoke-interface {v0}, Lcom/kwad/sdk/contentalliance/detail/video/e;->c()V

    goto :goto_a7

    :pswitch_b7
    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->q()V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/contentalliance/detail/video/e;

    invoke-interface {v0}, Lcom/kwad/sdk/contentalliance/detail/video/e;->a()V

    goto :goto_c0

    :pswitch_data_d0
    .packed-switch -0x1
        :pswitch_b7
        :pswitch_3
        :pswitch_a1
        :pswitch_8b
        :pswitch_75
        :pswitch_5f
        :pswitch_49
        :pswitch_33
        :pswitch_1d
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public a(Landroid/view/Surface;)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->c:Landroid/view/Surface;

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:Lcom/kwad/sdk/c/h/d/c;

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Lcom/kwad/sdk/c/h/d/c;->a(Landroid/view/Surface;)V

    :cond_9
    return-void
.end method

.method public a(Lcom/kwad/sdk/c/h/d/c$e;)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/kwad/sdk/contentalliance/detail/video/a$i;)V
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:Lcom/kwad/sdk/c/h/d/c;

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->i:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setKeepScreenOn(Z)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->h:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->q()V

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->r()V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:Lcom/kwad/sdk/c/h/d/c;

    if-eqz v0, :cond_25

    new-instance v1, Lcom/kwad/sdk/contentalliance/detail/video/a$g;

    invoke-direct {v1, p0, v0, p1}, Lcom/kwad/sdk/contentalliance/detail/video/a$g;-><init>(Lcom/kwad/sdk/contentalliance/detail/video/a;Lcom/kwad/sdk/c/h/d/c;Lcom/kwad/sdk/contentalliance/detail/video/a$i;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    iput-object v3, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:Lcom/kwad/sdk/c/h/d/c;

    :cond_25
    iput v2, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->a:I

    goto :goto_6
.end method

.method public a(Lcom/kwad/sdk/contentalliance/detail/video/e;)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:Lcom/kwad/sdk/c/h/d/c;

    if-nez v0, :cond_c

    const-string v0, "resetAndPlay"

    const-string v1, "mMediaPlayer is null"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    return-void

    :cond_c
    iget v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1a

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1a

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1a

    const/4 v1, 0x5

    if-ne v0, v1, :cond_35

    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can not resetAndPlay in sate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "resetAndPlay"

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_35
    invoke-virtual {p0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->l()V

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/contentalliance/detail/video/a;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->s()V

    invoke-virtual {p0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->j()V

    invoke-virtual {p0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->i()V

    goto :goto_b
.end method

.method public b()J
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:Lcom/kwad/sdk/c/h/d/c;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/kwad/sdk/c/h/d/c;->getDuration()J

    move-result-wide v0

    :goto_8
    return-wide v0

    :cond_9
    const-wide/16 v0, 0x0

    goto :goto_8
.end method

.method public b(Lcom/kwad/sdk/contentalliance/detail/video/e;)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DetailMediaPlayerImpl("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/kwad/sdk/e/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kwad/sdk/contentalliance/detail/video/a;->r:Ljava/lang/String;

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:Lcom/kwad/sdk/c/h/d/c;

    invoke-interface {v0, p1}, Lcom/kwad/sdk/c/h/d/c;->a(Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_24} :catch_25

    :goto_24
    return-void

    :catch_25
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_24
.end method

.method public c()Lcom/kwad/sdk/c/h/d/c;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:Lcom/kwad/sdk/c/h/d/c;

    return-object v0
.end method

.method public d()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->i:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    iget-object v1, v0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->d:Landroid/view/Surface;

    iput-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->c:Landroid/view/Surface;

    invoke-virtual {v0, p0}, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->setMediaPlayer(Lcom/kwad/sdk/contentalliance/detail/video/a;)V

    new-instance v0, Lcom/kwad/sdk/c/h/d/b;

    invoke-direct {v0}, Lcom/kwad/sdk/c/h/d/b;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:Lcom/kwad/sdk/c/h/d/c;

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:Lcom/kwad/sdk/c/h/d/c;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/kwad/sdk/c/h/d/c;->a(Z)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:Lcom/kwad/sdk/c/h/d/c;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->c:Landroid/view/Surface;

    invoke-interface {v0, v1}, Lcom/kwad/sdk/c/h/d/c;->a(Landroid/view/Surface;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:Lcom/kwad/sdk/c/h/d/c;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/kwad/sdk/c/h/d/c;->a(I)V

    invoke-virtual {p0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->j()V

    return-void
.end method

.method public e()Z
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:Lcom/kwad/sdk/c/h/d/c;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/kwad/sdk/c/h/d/c;->d()Z

    move-result v0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public f()Z
    .registers 3

    iget v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_12

    const/4 v1, 0x3

    if-eq v0, v1, :cond_12

    const/4 v1, 0x5

    if-eq v0, v1, :cond_12

    const/4 v1, 0x7

    if-eq v0, v1, :cond_12

    const/16 v1, 0x9

    if-ne v0, v1, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public g()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->a:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public h()V
    .registers 5

    const/4 v3, 0x5

    sget-object v0, Lcom/kwad/sdk/contentalliance/detail/video/a;->r:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause mCurrentState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->a:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_33

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:Lcom/kwad/sdk/c/h/d/c;

    invoke-interface {v0}, Lcom/kwad/sdk/c/h/d/c;->a()V

    iput v3, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->a:I

    iget v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->a:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(I)V

    sget-object v0, Lcom/kwad/sdk/contentalliance/detail/video/a;->r:Ljava/lang/String;

    const-string v1, "STATE_PAUSED"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_33
    iget v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->a:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4c

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:Lcom/kwad/sdk/c/h/d/c;

    invoke-interface {v0}, Lcom/kwad/sdk/c/h/d/c;->a()V

    const/4 v0, 0x7

    iput v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->a:I

    iget v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->a:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(I)V

    sget-object v0, Lcom/kwad/sdk/contentalliance/detail/video/a;->r:Ljava/lang/String;

    const-string v1, "STATE_BUFFERING_PAUSED"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4c
    iget v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_64

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:Lcom/kwad/sdk/c/h/d/c;

    invoke-interface {v0}, Lcom/kwad/sdk/c/h/d/c;->a()V

    iput v3, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->a:I

    iget v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->a:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(I)V

    sget-object v0, Lcom/kwad/sdk/contentalliance/detail/video/a;->r:Ljava/lang/String;

    const-string v1, "STATE_STARTED -> STATE_PAUSED"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_64
    return-void
.end method

.method public i()V
    .registers 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->i:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setKeepScreenOn(Z)V

    :try_start_6
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:Lcom/kwad/sdk/c/h/d/c;

    invoke-interface {v0}, Lcom/kwad/sdk/c/h/d/c;->e()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->a:I

    iget v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->a:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(I)V

    sget-object v0, Lcom/kwad/sdk/contentalliance/detail/video/a;->r:Ljava/lang/String;

    const-string v1, "STATE_PREPARING"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_1a} :catch_1b

    :goto_1a
    return-void

    :catch_1b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1a
.end method

.method protected j()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:Lcom/kwad/sdk/c/h/d/c;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->k:Lcom/kwad/sdk/c/h/d/c$e;

    invoke-interface {v0, v1}, Lcom/kwad/sdk/c/h/d/c;->a(Lcom/kwad/sdk/c/h/d/c$e;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:Lcom/kwad/sdk/c/h/d/c;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->l:Lcom/kwad/sdk/c/h/d/c$h;

    invoke-interface {v0, v1}, Lcom/kwad/sdk/c/h/d/c;->a(Lcom/kwad/sdk/c/h/d/c$h;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:Lcom/kwad/sdk/c/h/d/c;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->m:Lcom/kwad/sdk/c/h/d/c$b;

    invoke-interface {v0, v1}, Lcom/kwad/sdk/c/h/d/c;->a(Lcom/kwad/sdk/c/h/d/c$b;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:Lcom/kwad/sdk/c/h/d/c;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->n:Lcom/kwad/sdk/c/h/d/c$c;

    invoke-interface {v0, v1}, Lcom/kwad/sdk/c/h/d/c;->a(Lcom/kwad/sdk/c/h/d/c$c;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:Lcom/kwad/sdk/c/h/d/c;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->o:Lcom/kwad/sdk/c/h/d/c$d;

    invoke-interface {v0, v1}, Lcom/kwad/sdk/c/h/d/c;->a(Lcom/kwad/sdk/c/h/d/c$d;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:Lcom/kwad/sdk/c/h/d/c;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->p:Lcom/kwad/sdk/c/h/d/c$a;

    invoke-interface {v0, v1}, Lcom/kwad/sdk/c/h/d/c;->a(Lcom/kwad/sdk/c/h/d/c$a;)V

    return-void
.end method

.method public k()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(Lcom/kwad/sdk/contentalliance/detail/video/a$i;)V

    return-void
.end method

.method public l()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:Lcom/kwad/sdk/c/h/d/c;

    invoke-interface {v0}, Lcom/kwad/sdk/c/h/d/c;->b()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->a:I

    return-void
.end method

.method public m()V
    .registers 3

    iget v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->a:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:Lcom/kwad/sdk/c/h/d/c;

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->o()V

    :cond_d
    return-void
.end method

.method public n()V
    .registers 4

    iget v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    invoke-virtual {p0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->o()V

    :goto_8
    return-void

    :cond_9
    const/4 v1, 0x5

    if-ne v0, v1, :cond_21

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:Lcom/kwad/sdk/c/h/d/c;

    invoke-interface {v0}, Lcom/kwad/sdk/c/h/d/c;->start()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->a:I

    iget v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->a:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(I)V

    sget-object v0, Lcom/kwad/sdk/contentalliance/detail/video/a;->r:Ljava/lang/String;

    const-string v1, "STATE_PAUSED-->STATE_PLAYING"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_21
    const/4 v1, 0x7

    if-ne v0, v1, :cond_39

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:Lcom/kwad/sdk/c/h/d/c;

    invoke-interface {v0}, Lcom/kwad/sdk/c/h/d/c;->start()V

    const/4 v0, 0x6

    iput v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->a:I

    iget v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->a:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(I)V

    sget-object v0, Lcom/kwad/sdk/contentalliance/detail/video/a;->r:Ljava/lang/String;

    const-string v1, "STATE_BUFFERING_PAUSED-->STATE_BUFFERING_PLAYING"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_39
    sget-object v0, Lcom/kwad/sdk/contentalliance/detail/video/a;->r:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KSVideoPlayer\u5728mCurrentState == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u65f6\u4e0d\u80fd\u8c03\u7528restart()\u65b9\u6cd5."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method

.method public o()V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:Lcom/kwad/sdk/c/h/d/c;

    invoke-interface {v0}, Lcom/kwad/sdk/c/h/d/c;->start()V

    iget-wide v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->e:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->b:Lcom/kwad/sdk/c/h/d/c;

    long-to-int v0, v0

    int-to-long v0, v0

    invoke-interface {v2, v0, v1}, Lcom/kwad/sdk/c/h/d/c;->a(J)V

    :cond_14
    const/4 v0, 0x3

    iput v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->a:I

    iget v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a;->a:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(I)V

    sget-object v0, Lcom/kwad/sdk/contentalliance/detail/video/a;->r:Ljava/lang/String;

    const-string v1, "STATE_STARTED"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->t()V

    return-void
.end method
