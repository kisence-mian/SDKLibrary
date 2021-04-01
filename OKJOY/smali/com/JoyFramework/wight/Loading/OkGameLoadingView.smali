.class public Lcom/JoyFramework/wight/Loading/OkGameLoadingView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/JoyFramework/wight/Loading/OkGameLoadingView$c;,
        Lcom/JoyFramework/wight/Loading/OkGameLoadingView$b;,
        Lcom/JoyFramework/wight/Loading/OkGameLoadingView$a;
    }
.end annotation


# instance fields
.field private A:I

.field private B:I

.field private C:J

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private a:Landroid/graphics/Paint;

.field private b:Landroid/view/animation/Interpolator;

.field private c:Landroid/graphics/Path;

.field private d:Lcom/JoyFramework/wight/Loading/OkGameLoadingView$c;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Z

.field private j:F

.field private k:F

.field private l:Z

.field private m:I

.field private n:I

.field private o:I

.field private p:Z

.field private q:F

.field private r:I

.field private s:I

.field private t:F

.field private u:F

.field private v:Z

.field private w:Z

.field private x:F

.field private y:F

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 116
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/16 v3, 0xc8

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 120
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    .line 33
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->b:Landroid/view/animation/Interpolator;

    .line 39
    sget-object v0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView$c;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView$c;

    iput-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->d:Lcom/JoyFramework/wight/Loading/OkGameLoadingView$c;

    .line 49
    iput-boolean v1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->i:Z

    .line 52
    iput v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->j:F

    .line 53
    const/high16 v0, 0x43b40000    # 360.0f

    iput v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->k:F

    .line 56
    iput-boolean v1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->l:Z

    .line 66
    iput-boolean v1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->p:Z

    .line 69
    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->q:F

    .line 72
    const/16 v0, 0x19

    iput v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->r:I

    .line 74
    const/16 v0, 0x3c

    iput v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->s:I

    .line 77
    iput v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->t:F

    .line 79
    iput v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->u:F

    .line 82
    iput-boolean v1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->v:Z

    .line 85
    iput-boolean v1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->w:Z

    .line 93
    iput v3, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->A:I

    .line 96
    const/16 v0, 0x118

    iput v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->B:I

    .line 99
    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->C:J

    .line 102
    iput v3, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->D:I

    .line 104
    const/16 v0, 0x64

    iput v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->E:I

    .line 121
    invoke-direct {p0, p1}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a(Landroid/content/Context;)V

    .line 123
    return-void
.end method

.method static synthetic a(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;F)F
    .registers 2

    .prologue
    .line 28
    iput p1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->k:F

    return p1
.end method

.method static synthetic a(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)I
    .registers 2

    .prologue
    .line 28
    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->G:I

    return v0
.end method

.method static synthetic a(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;I)I
    .registers 2

    .prologue
    .line 28
    iput p1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->G:I

    return p1
.end method

.method private a(IIILcom/JoyFramework/wight/Loading/OkGameLoadingView$b;Lcom/JoyFramework/wight/Loading/OkGameLoadingView$a;)V
    .registers 12

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 643
    if-ltz p1, :cond_c

    if-lez p2, :cond_c

    if-lez p3, :cond_c

    if-eqz p4, :cond_c

    if-nez p5, :cond_d

    .line 669
    :cond_c
    :goto_c
    return-void

    .line 645
    :cond_d
    new-array v0, v5, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    aput p2, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 646
    iget-object v1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 647
    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 648
    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 649
    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 650
    new-instance v1, Lcom/JoyFramework/wight/Loading/i;

    invoke-direct {v1, p0, p4}, Lcom/JoyFramework/wight/Loading/i;-><init>(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;Lcom/JoyFramework/wight/Loading/OkGameLoadingView$b;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 659
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 660
    new-instance v1, Lcom/JoyFramework/wight/Loading/j;

    invoke-direct {v1, p0, p5}, Lcom/JoyFramework/wight/Loading/j;-><init>(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;Lcom/JoyFramework/wight/Loading/OkGameLoadingView$a;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_c
.end method

.method private a(ILcom/JoyFramework/wight/Loading/OkGameLoadingView$a;)V
    .registers 9

    .prologue
    .line 581
    const/4 v1, 0x0

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->E:I

    iget v3, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->A:I

    new-instance v4, Lcom/JoyFramework/wight/Loading/g;

    invoke-direct {v4, p0, p1}, Lcom/JoyFramework/wight/Loading/g;-><init>(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;I)V

    new-instance v5, Lcom/JoyFramework/wight/Loading/h;

    invoke-direct {v5, p0, p1, p2}, Lcom/JoyFramework/wight/Loading/h;-><init>(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;ILcom/JoyFramework/wight/Loading/OkGameLoadingView$a;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a(IIILcom/JoyFramework/wight/Loading/OkGameLoadingView$b;Lcom/JoyFramework/wight/Loading/OkGameLoadingView$a;)V

    .line 630
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 126
    if-nez p1, :cond_3

    .line 149
    :goto_2
    return-void

    .line 130
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->e:I

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->f:I

    .line 133
    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->e:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->g:I

    .line 134
    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->f:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->h:I

    .line 135
    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->h:I

    iput v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->m:I

    .line 138
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    .line 140
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 142
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 144
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 146
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 148
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->c:Landroid/graphics/Path;

    goto :goto_2
.end method

.method static synthetic a(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;IIILcom/JoyFramework/wight/Loading/OkGameLoadingView$b;Lcom/JoyFramework/wight/Loading/OkGameLoadingView$a;)V
    .registers 6

    .prologue
    .line 28
    invoke-direct/range {p0 .. p5}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a(IIILcom/JoyFramework/wight/Loading/OkGameLoadingView$b;Lcom/JoyFramework/wight/Loading/OkGameLoadingView$a;)V

    return-void
.end method

.method static synthetic a(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;ILcom/JoyFramework/wight/Loading/OkGameLoadingView$a;)V
    .registers 3

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a(ILcom/JoyFramework/wight/Loading/OkGameLoadingView$a;)V

    return-void
.end method

.method static synthetic a(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;Lcom/JoyFramework/wight/Loading/OkGameLoadingView$c;)V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->setCurrentShape(Lcom/JoyFramework/wight/Loading/OkGameLoadingView$c;)V

    return-void
.end method

.method static synthetic a(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;Lrx/Subscriber;)V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a(Lrx/Subscriber;)V

    return-void
.end method

.method private a(Lrx/Subscriber;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 436
    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->t:F

    .line 437
    :goto_5
    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->t:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_29

    .line 438
    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->t:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->t:F

    .line 439
    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->t:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1a

    .line 440
    iput v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->t:F

    .line 443
    :cond_1a
    :try_start_1a
    iget-wide v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->C:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1f} :catch_2d

    .line 446
    :goto_1f
    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->t:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_5

    .line 448
    :cond_29
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    .line 449
    return-void

    .line 444
    :catch_2d
    move-exception v0

    goto :goto_1f
.end method

.method static synthetic a(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;Z)Z
    .registers 2

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;F)F
    .registers 2

    .prologue
    .line 28
    iput p1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->y:F

    return p1
.end method

.method static synthetic b(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)I
    .registers 2

    .prologue
    .line 28
    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->B:I

    return v0
.end method

.method static synthetic b(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;I)I
    .registers 2

    .prologue
    .line 28
    iput p1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->H:I

    return p1
.end method

.method static synthetic b(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;Lcom/JoyFramework/wight/Loading/OkGameLoadingView$c;)Lcom/JoyFramework/wight/Loading/OkGameLoadingView$c;
    .registers 2

    .prologue
    .line 28
    iput-object p1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->d:Lcom/JoyFramework/wight/Loading/OkGameLoadingView$c;

    return-object p1
.end method

.method private b()V
    .registers 7

    .prologue
    .line 372
    const/4 v1, 0x0

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->D:I

    iget v3, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->A:I

    new-instance v4, Lcom/JoyFramework/wight/Loading/a;

    invoke-direct {v4, p0}, Lcom/JoyFramework/wight/Loading/a;-><init>(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)V

    new-instance v5, Lcom/JoyFramework/wight/Loading/p;

    invoke-direct {v5, p0}, Lcom/JoyFramework/wight/Loading/p;-><init>(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a(IIILcom/JoyFramework/wight/Loading/OkGameLoadingView$b;Lcom/JoyFramework/wight/Loading/OkGameLoadingView$a;)V

    .line 396
    return-void
.end method

.method static synthetic b(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;Z)Z
    .registers 2

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->w:Z

    return p1
.end method

.method static synthetic c(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;F)F
    .registers 2

    .prologue
    .line 28
    iput p1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->x:F

    return p1
.end method

.method static synthetic c(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;I)I
    .registers 2

    .prologue
    .line 28
    iput p1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->F:I

    return p1
.end method

.method private c()V
    .registers 3

    .prologue
    .line 400
    new-instance v0, Lcom/JoyFramework/wight/Loading/z;

    invoke-direct {v0, p0}, Lcom/JoyFramework/wight/Loading/z;-><init>(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    .line 406
    invoke-static {}, Lrx/schedulers/Schedulers;->newThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 407
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/JoyFramework/wight/Loading/y;

    invoke-direct {v1, p0}, Lcom/JoyFramework/wight/Loading/y;-><init>(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)V

    .line 408
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 432
    return-void
.end method

.method static synthetic c(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)Z
    .registers 2

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->w:Z

    return v0
.end method

.method static synthetic c(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;Z)Z
    .registers 2

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->v:Z

    return p1
.end method

.method static synthetic d(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)F
    .registers 2

    .prologue
    .line 28
    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->k:F

    return v0
.end method

.method static synthetic d(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;F)F
    .registers 2

    .prologue
    .line 28
    iput p1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->t:F

    return p1
.end method

.method static synthetic d(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;I)I
    .registers 2

    .prologue
    .line 28
    iput p1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->n:I

    return p1
.end method

.method private d()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    .line 453
    new-array v0, v4, [F

    fill-array-data v0, :array_30

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 454
    iget-object v1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 455
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 456
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 457
    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 458
    new-instance v1, Lcom/JoyFramework/wight/Loading/aa;

    invoke-direct {v1, p0}, Lcom/JoyFramework/wight/Loading/aa;-><init>(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 477
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 478
    new-instance v1, Lcom/JoyFramework/wight/Loading/ab;

    invoke-direct {v1, p0}, Lcom/JoyFramework/wight/Loading/ab;-><init>(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 486
    return-void

    .line 453
    nop

    :array_30
    .array-data 4
        0x3f800000    # 1.0f
        0x43b40000    # 360.0f
    .end array-data
.end method

.method static synthetic d(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;Z)Z
    .registers 2

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->p:Z

    return p1
.end method

.method static synthetic e(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;F)F
    .registers 2

    .prologue
    .line 28
    iput p1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->u:F

    return p1
.end method

.method static synthetic e(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;I)I
    .registers 2

    .prologue
    .line 28
    iput p1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->o:I

    return p1
.end method

.method private e()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    .line 490
    new-array v0, v4, [I

    fill-array-data v0, :array_30

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 491
    iget-object v1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 492
    iget v1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->A:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 493
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 494
    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 495
    new-instance v1, Lcom/JoyFramework/wight/Loading/ac;

    invoke-direct {v1, p0}, Lcom/JoyFramework/wight/Loading/ac;-><init>(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 510
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 511
    new-instance v1, Lcom/JoyFramework/wight/Loading/ad;

    invoke-direct {v1, p0}, Lcom/JoyFramework/wight/Loading/ad;-><init>(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 523
    return-void

    .line 490
    :array_30
    .array-data 4
        0x0
        0x25
    .end array-data
.end method

.method static synthetic e(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)Z
    .registers 2

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->v:Z

    return v0
.end method

.method static synthetic e(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;Z)Z
    .registers 2

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->l:Z

    return p1
.end method

.method static synthetic f(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)F
    .registers 2

    .prologue
    .line 28
    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->t:F

    return v0
.end method

.method static synthetic f(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;I)I
    .registers 2

    .prologue
    .line 28
    iput p1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->z:I

    return p1
.end method

.method private f()V
    .registers 7

    .prologue
    .line 527
    const/4 v1, 0x0

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->D:I

    iget v3, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->A:I

    new-instance v4, Lcom/JoyFramework/wight/Loading/ae;

    invoke-direct {v4, p0}, Lcom/JoyFramework/wight/Loading/ae;-><init>(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)V

    new-instance v5, Lcom/JoyFramework/wight/Loading/b;

    invoke-direct {v5, p0}, Lcom/JoyFramework/wight/Loading/b;-><init>(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a(IIILcom/JoyFramework/wight/Loading/OkGameLoadingView$b;Lcom/JoyFramework/wight/Loading/OkGameLoadingView$a;)V

    .line 572
    return-void
.end method

.method static synthetic g(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)I
    .registers 2

    .prologue
    .line 28
    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->F:I

    return v0
.end method

.method private g()V
    .registers 5

    .prologue
    .line 683
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_2a

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 684
    iget-object v1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 685
    iget v1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->A:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 686
    new-instance v1, Lcom/JoyFramework/wight/Loading/k;

    invoke-direct {v1, p0}, Lcom/JoyFramework/wight/Loading/k;-><init>(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 702
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 703
    new-instance v1, Lcom/JoyFramework/wight/Loading/l;

    invoke-direct {v1, p0}, Lcom/JoyFramework/wight/Loading/l;-><init>(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 716
    return-void

    .line 683
    nop

    :array_2a
    .array-data 4
        0x0
        0x1e
    .end array-data
.end method

.method static synthetic h(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)I
    .registers 2

    .prologue
    .line 28
    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->D:I

    return v0
.end method

.method private h()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    .line 720
    new-array v0, v4, [F

    fill-array-data v0, :array_30

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 721
    iget-object v1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 722
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 723
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 724
    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 725
    new-instance v1, Lcom/JoyFramework/wight/Loading/m;

    invoke-direct {v1, p0}, Lcom/JoyFramework/wight/Loading/m;-><init>(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 742
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 743
    new-instance v1, Lcom/JoyFramework/wight/Loading/n;

    invoke-direct {v1, p0}, Lcom/JoyFramework/wight/Loading/n;-><init>(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 754
    return-void

    .line 720
    nop

    :array_30
    .array-data 4
        0x43b40000    # 360.0f
        0x0
    .end array-data
.end method

.method static synthetic i(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)I
    .registers 2

    .prologue
    .line 28
    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->A:I

    return v0
.end method

.method private i()V
    .registers 5

    .prologue
    .line 759
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_2a

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 760
    iget-object v1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 761
    iget v1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->A:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 764
    new-instance v1, Lcom/JoyFramework/wight/Loading/o;

    invoke-direct {v1, p0}, Lcom/JoyFramework/wight/Loading/o;-><init>(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 776
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 777
    new-instance v1, Lcom/JoyFramework/wight/Loading/r;

    invoke-direct {v1, p0}, Lcom/JoyFramework/wight/Loading/r;-><init>(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 786
    return-void

    .line 759
    nop

    :array_2a
    .array-data 4
        0x0
        0xa
    .end array-data
.end method

.method static synthetic j(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)I
    .registers 2

    .prologue
    .line 28
    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->H:I

    return v0
.end method

.method private j()V
    .registers 7

    .prologue
    .line 790
    const/4 v1, 0x0

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->D:I

    iget v3, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->A:I

    new-instance v4, Lcom/JoyFramework/wight/Loading/s;

    invoke-direct {v4, p0}, Lcom/JoyFramework/wight/Loading/s;-><init>(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)V

    new-instance v5, Lcom/JoyFramework/wight/Loading/t;

    invoke-direct {v5, p0}, Lcom/JoyFramework/wight/Loading/t;-><init>(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a(IIILcom/JoyFramework/wight/Loading/OkGameLoadingView$b;Lcom/JoyFramework/wight/Loading/OkGameLoadingView$a;)V

    .line 811
    return-void
.end method

.method static synthetic k(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)I
    .registers 2

    .prologue
    .line 28
    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->o:I

    return v0
.end method

.method static synthetic l(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)Z
    .registers 2

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->p:Z

    return v0
.end method

.method static synthetic m(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)I
    .registers 2

    .prologue
    .line 28
    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->n:I

    return v0
.end method

.method static synthetic n(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)Z
    .registers 2

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->l:Z

    return v0
.end method

.method static synthetic o(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)I
    .registers 2

    .prologue
    .line 28
    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->z:I

    return v0
.end method

.method private setCurrentShape(Lcom/JoyFramework/wight/Loading/OkGameLoadingView$c;)V
    .registers 2

    .prologue
    .line 863
    iput-object p1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->d:Lcom/JoyFramework/wight/Loading/OkGameLoadingView$c;

    .line 864
    invoke-virtual {p0}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->invalidate()V

    .line 865
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 871
    new-instance v0, Lcom/JoyFramework/wight/Loading/w;

    invoke-direct {v0, p0}, Lcom/JoyFramework/wight/Loading/w;-><init>(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    .line 883
    invoke-static {}, Lrx/schedulers/Schedulers;->newThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 884
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/JoyFramework/wight/Loading/v;

    invoke-direct {v1, p0}, Lcom/JoyFramework/wight/Loading/v;-><init>(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)V

    .line 885
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 903
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 8

    .prologue
    .line 153
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 155
    :try_start_3
    invoke-virtual {p0}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_16

    .line 156
    sget-object v0, Lcom/JoyFramework/wight/Loading/x;->a:[I

    iget-object v1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->d:Lcom/JoyFramework/wight/Loading/OkGameLoadingView$c;

    invoke-virtual {v1}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView$c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_572

    .line 367
    :cond_16
    :goto_16
    :pswitch_16
    return-void

    .line 161
    :pswitch_17
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 163
    new-instance v1, Landroid/graphics/RectF;

    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->g:I

    add-int/lit8 v0, v0, -0x5a

    int-to-float v0, v0

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->h:I

    add-int/lit8 v2, v2, -0x1e

    int-to-float v2, v2

    iget v3, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->g:I

    add-int/lit8 v3, v3, -0x1e

    int-to-float v3, v3

    iget v4, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->h:I

    add-int/lit8 v4, v4, 0x1e

    int-to-float v4, v4

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 164
    const/4 v2, 0x0

    iget v3, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->k:F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 167
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 168
    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->g:I

    int-to-float v1, v0

    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->h:I

    int-to-float v0, v0

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->q:F

    sub-float v2, v0, v2

    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->g:I

    int-to-float v3, v0

    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->h:I

    int-to-float v0, v0

    iget v4, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->q:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 170
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 171
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->c:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 172
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->c:Landroid/graphics/Path;

    iget v1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->g:I

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->s:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->h:I

    int-to-float v2, v2

    iget v3, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->q:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 173
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->c:Landroid/graphics/Path;

    iget v1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->g:I

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->r:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->h:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 174
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->c:Landroid/graphics/Path;

    iget v1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->g:I

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->s:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->h:I

    int-to-float v2, v2

    iget v3, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->q:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 175
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->c:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_aa} :catch_ac

    goto/16 :goto_16

    .line 363
    :catch_ac
    move-exception v0

    .line 364
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 365
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->setVisibility(I)V

    goto/16 :goto_16

    .line 179
    :pswitch_b7
    :try_start_b7
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 180
    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->g:I

    int-to-float v1, v0

    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->h:I

    int-to-float v0, v0

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->q:F

    sub-float v2, v0, v2

    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->g:I

    int-to-float v3, v0

    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->h:I

    int-to-float v0, v0

    iget v4, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->q:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 183
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->c:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 184
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->c:Landroid/graphics/Path;

    iget v1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->g:I

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->s:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->h:I

    int-to-float v2, v2

    iget v3, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->q:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 185
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->c:Landroid/graphics/Path;

    iget v1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->g:I

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->r:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->h:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 186
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->c:Landroid/graphics/Path;

    iget v1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->g:I

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->s:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->h:I

    int-to-float v2, v2

    iget v3, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->q:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 187
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 188
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->c:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 190
    iget-boolean v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->i:Z

    if-nez v0, :cond_126

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->i:Z

    .line 193
    invoke-direct {p0}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->h()V

    goto/16 :goto_16

    .line 196
    :cond_126
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 197
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 198
    new-instance v1, Landroid/graphics/RectF;

    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->g:I

    add-int/lit8 v0, v0, -0x5a

    int-to-float v0, v0

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->h:I

    add-int/lit8 v2, v2, -0x1e

    int-to-float v2, v2

    iget v3, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->g:I

    add-int/lit8 v3, v3, -0x1e

    int-to-float v3, v3

    iget v4, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->h:I

    add-int/lit8 v4, v4, 0x1e

    int-to-float v4, v4

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 199
    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->j:F

    iget v3, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->k:F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_16

    .line 205
    :pswitch_159
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 206
    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->g:I

    int-to-float v1, v0

    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->h:I

    int-to-float v0, v0

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->q:F

    sub-float v2, v0, v2

    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->g:I

    int-to-float v3, v0

    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->h:I

    int-to-float v0, v0

    iget v4, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->q:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 209
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->c:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 210
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->c:Landroid/graphics/Path;

    iget v1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->g:I

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->s:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->h:I

    int-to-float v2, v2

    iget v3, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->q:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 211
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->c:Landroid/graphics/Path;

    iget v1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->g:I

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->r:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->h:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 212
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->c:Landroid/graphics/Path;

    iget v1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->g:I

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->s:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->h:I

    int-to-float v2, v2

    iget v3, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->q:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 213
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 214
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->c:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 216
    iget-boolean v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->i:Z

    if-nez v0, :cond_1c8

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->i:Z

    .line 218
    invoke-direct {p0}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->i()V

    goto/16 :goto_16

    .line 220
    :cond_1c8
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 221
    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->g:I

    add-int/lit8 v0, v0, -0x3c

    iget v1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->z:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->m:I

    int-to-float v1, v1

    const/high16 v2, 0x41200000    # 10.0f

    iget-object v3, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_16

    .line 227
    :pswitch_1e3
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 228
    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->g:I

    int-to-float v1, v0

    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->h:I

    int-to-float v0, v0

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->q:F

    sub-float v2, v0, v2

    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->g:I

    int-to-float v3, v0

    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->h:I

    int-to-float v0, v0

    iget v4, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->q:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 231
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->c:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 232
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->c:Landroid/graphics/Path;

    iget v1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->g:I

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->s:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->h:I

    int-to-float v2, v2

    iget v3, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->q:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 233
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->c:Landroid/graphics/Path;

    iget v1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->g:I

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->r:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->h:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 234
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->c:Landroid/graphics/Path;

    iget v1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->g:I

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->s:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->h:I

    int-to-float v2, v2

    iget v3, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->q:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 235
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 236
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->c:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 239
    iget-boolean v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->i:Z

    if-nez v0, :cond_252

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->i:Z

    .line 241
    invoke-direct {p0}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->j()V

    goto/16 :goto_16

    .line 243
    :cond_252
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 244
    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->g:I

    add-int/lit8 v0, v0, -0x3c

    int-to-float v0, v0

    iget v1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->m:I

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->F:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x41200000    # 10.0f

    iget-object v3, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_16

    .line 249
    :pswitch_26d
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 250
    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->g:I

    add-int/lit8 v0, v0, -0x3c

    int-to-float v0, v0

    iget v1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->m:I

    int-to-float v1, v1

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->u:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x41200000    # 10.0f

    iget-object v3, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 252
    iget-boolean v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->i:Z

    if-nez v0, :cond_292

    .line 253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->i:Z

    .line 255
    invoke-direct {p0}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->e()V

    goto/16 :goto_16

    .line 257
    :cond_292
    iget-boolean v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->v:Z

    if-eqz v0, :cond_2c1

    .line 258
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 259
    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->g:I

    int-to-float v0, v0

    iget v1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->h:I

    int-to-float v1, v1

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->u:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x41200000    # 10.0f

    iget-object v3, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 260
    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->g:I

    add-int/lit8 v0, v0, 0x3c

    int-to-float v0, v0

    iget v1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->h:I

    int-to-float v1, v1

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->u:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x41200000    # 10.0f

    iget-object v3, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_16

    .line 263
    :cond_2c1
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 264
    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->g:I

    int-to-float v1, v0

    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->h:I

    int-to-float v0, v0

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->q:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->t:F

    add-float/2addr v2, v0

    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->g:I

    int-to-float v3, v0

    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->h:I

    int-to-float v0, v0

    iget v4, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->q:F

    add-float/2addr v0, v4

    iget v4, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->t:F

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 266
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->c:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 267
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->c:Landroid/graphics/Path;

    iget v1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->g:I

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->s:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->h:I

    add-int/lit8 v2, v2, -0x1e

    int-to-float v2, v2

    iget v3, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->t:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 268
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->c:Landroid/graphics/Path;

    iget v1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->g:I

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->r:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->t:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->h:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 269
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->c:Landroid/graphics/Path;

    iget v1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->g:I

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->s:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->h:I

    add-int/lit8 v2, v2, 0x1e

    int-to-float v2, v2

    iget v3, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->t:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 270
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 271
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->c:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_16

    .line 276
    :pswitch_333
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 277
    iget-boolean v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->i:Z

    if-nez v0, :cond_371

    .line 279
    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->g:I

    add-int/lit8 v0, v0, -0x3c

    int-to-float v0, v0

    iget v1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->m:I

    int-to-float v1, v1

    const/high16 v2, 0x41200000    # 10.0f

    iget-object v3, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 280
    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->g:I

    int-to-float v0, v0

    iget v1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->m:I

    int-to-float v1, v1

    const/high16 v2, 0x41200000    # 10.0f

    iget-object v3, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 281
    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->g:I

    add-int/lit8 v0, v0, 0x3c

    int-to-float v0, v0

    iget v1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->m:I

    int-to-float v1, v1

    const/high16 v2, 0x41200000    # 10.0f

    iget-object v3, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->i:Z

    .line 284
    invoke-direct {p0}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->b()V

    goto/16 :goto_16

    .line 288
    :cond_371
    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->g:I

    add-int/lit8 v0, v0, -0x3c

    int-to-float v0, v0

    iget v1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->m:I

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->F:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x41200000    # 10.0f

    iget-object v3, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 289
    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->g:I

    int-to-float v0, v0

    iget v1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->m:I

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->G:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x41200000    # 10.0f

    iget-object v3, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 290
    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->g:I

    add-int/lit8 v0, v0, 0x3c

    int-to-float v0, v0

    iget v1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->m:I

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->H:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x41200000    # 10.0f

    iget-object v3, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_16

    .line 294
    :pswitch_3a7
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 295
    iget-boolean v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->i:Z

    if-nez v0, :cond_3e5

    .line 297
    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->g:I

    add-int/lit8 v0, v0, -0x3c

    int-to-float v0, v0

    iget v1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->m:I

    int-to-float v1, v1

    const/high16 v2, 0x41200000    # 10.0f

    iget-object v3, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 298
    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->g:I

    int-to-float v0, v0

    iget v1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->m:I

    int-to-float v1, v1

    const/high16 v2, 0x41200000    # 10.0f

    iget-object v3, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 299
    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->g:I

    add-int/lit8 v0, v0, 0x3c

    int-to-float v0, v0

    iget v1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->m:I

    int-to-float v1, v1

    const/high16 v2, 0x41200000    # 10.0f

    iget-object v3, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 301
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->i:Z

    .line 302
    invoke-direct {p0}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->f()V

    goto/16 :goto_16

    .line 305
    :cond_3e5
    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->g:I

    add-int/lit8 v0, v0, -0x3c

    int-to-float v0, v0

    iget v1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->m:I

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->F:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x41200000    # 10.0f

    iget-object v3, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 306
    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->g:I

    int-to-float v0, v0

    iget v1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->m:I

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->G:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x41200000    # 10.0f

    iget-object v3, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 307
    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->g:I

    add-int/lit8 v0, v0, 0x3c

    int-to-float v0, v0

    iget v1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->m:I

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->H:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x41200000    # 10.0f

    iget-object v3, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_16

    .line 311
    :pswitch_41b
    iget-boolean v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->i:Z

    if-nez v0, :cond_427

    .line 312
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->i:Z

    .line 313
    invoke-direct {p0}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->g()V

    goto/16 :goto_16

    .line 315
    :cond_427
    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->g:I

    add-int/lit8 v0, v0, -0x3c

    iget v1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->n:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->m:I

    int-to-float v1, v1

    const/high16 v2, 0x41200000    # 10.0f

    iget-object v3, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 316
    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->g:I

    int-to-float v0, v0

    iget v1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->m:I

    int-to-float v1, v1

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->o:I

    int-to-float v2, v2

    const v3, 0x3f99999a    # 1.2f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    const/high16 v2, 0x41200000    # 10.0f

    iget-object v3, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 317
    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->g:I

    add-int/lit8 v0, v0, 0x3c

    int-to-float v0, v0

    iget v1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->m:I

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->o:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x41200000    # 10.0f

    iget-object v3, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_16

    .line 322
    :pswitch_462
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 323
    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->g:I

    int-to-float v0, v0

    iget v1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->m:I

    int-to-float v1, v1

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->x:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x41200000    # 10.0f

    iget-object v3, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 324
    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->g:I

    add-int/lit8 v0, v0, 0x3c

    int-to-float v0, v0

    iget v1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->m:I

    int-to-float v1, v1

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->y:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x41200000    # 10.0f

    iget-object v3, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 326
    iget-boolean v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->i:Z

    if-eqz v0, :cond_4c2

    .line 329
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 330
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 331
    new-instance v1, Landroid/graphics/RectF;

    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->g:I

    add-int/lit8 v0, v0, -0x5a

    int-to-float v0, v0

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->h:I

    add-int/lit8 v2, v2, -0x1e

    int-to-float v2, v2

    iget v3, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->g:I

    add-int/lit8 v3, v3, -0x1e

    int-to-float v3, v3

    iget v4, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->h:I

    add-int/lit8 v4, v4, 0x1e

    int-to-float v4, v4

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 332
    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->j:F

    iget v3, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->k:F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_16

    .line 334
    :cond_4c2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->i:Z

    .line 335
    invoke-direct {p0}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->d()V

    goto/16 :goto_16

    .line 340
    :pswitch_4ca
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 341
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 342
    new-instance v1, Landroid/graphics/RectF;

    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->g:I

    add-int/lit8 v0, v0, -0x5a

    int-to-float v0, v0

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->h:I

    add-int/lit8 v2, v2, -0x1e

    int-to-float v2, v2

    iget v3, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->g:I

    add-int/lit8 v3, v3, -0x1e

    int-to-float v3, v3

    iget v4, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->h:I

    add-int/lit8 v4, v4, 0x1e

    int-to-float v4, v4

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 343
    const/4 v2, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 345
    iget-boolean v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->i:Z

    if-nez v0, :cond_506

    .line 346
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->i:Z

    .line 347
    invoke-direct {p0}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->c()V

    goto/16 :goto_16

    .line 350
    :cond_506
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 351
    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->g:I

    int-to-float v1, v0

    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->h:I

    int-to-float v0, v0

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->t:F

    add-float/2addr v0, v2

    const/high16 v2, 0x41f00000    # 30.0f

    sub-float v2, v0, v2

    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->g:I

    int-to-float v3, v0

    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->h:I

    int-to-float v0, v0

    iget v4, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->t:F

    sub-float/2addr v0, v4

    const/high16 v4, 0x41f00000    # 30.0f

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 353
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->c:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 354
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->c:Landroid/graphics/Path;

    iget v1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->g:I

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->s:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->h:I

    add-int/lit8 v2, v2, -0x1e

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 355
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->c:Landroid/graphics/Path;

    iget v1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->g:I

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->r:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->t:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->h:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 356
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->c:Landroid/graphics/Path;

    iget v1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->g:I

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->s:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->h:I

    add-int/lit8 v2, v2, 0x1e

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 357
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 358
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->c:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    :try_end_570
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_570} :catch_ac

    goto/16 :goto_16

    .line 156
    :pswitch_data_572
    .packed-switch 0x1
        :pswitch_16
        :pswitch_17
        :pswitch_b7
        :pswitch_159
        :pswitch_1e3
        :pswitch_26d
        :pswitch_333
        :pswitch_3a7
        :pswitch_41b
        :pswitch_462
        :pswitch_4ca
    .end packed-switch
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 907
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 908
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->d:Lcom/JoyFramework/wight/Loading/OkGameLoadingView$c;

    if-eqz v0, :cond_b

    .line 909
    sget-object v0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView$c;->k:Lcom/JoyFramework/wight/Loading/OkGameLoadingView$c;

    iput-object v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->d:Lcom/JoyFramework/wight/Loading/OkGameLoadingView$c;

    .line 911
    :cond_b
    return-void
.end method

.method protected onMeasure(II)V
    .registers 9

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x1

    const/high16 v3, -0x80000000

    .line 815
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 816
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 823
    if-eq v0, v3, :cond_11

    if-nez v0, :cond_41

    .line 824
    :cond_11
    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->e:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v4, v0, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 825
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 832
    :goto_25
    if-eq v1, v3, :cond_29

    if-nez v1, :cond_4e

    .line 833
    :cond_29
    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->f:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v4, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 834
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 842
    :goto_3d
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 844
    return-void

    .line 827
    :cond_41
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 828
    iput v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->e:I

    .line 829
    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->e:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->g:I

    goto :goto_25

    .line 836
    :cond_4e
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 837
    iput v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->f:I

    .line 838
    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->f:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->h:I

    .line 839
    iget v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->h:I

    iput v0, p0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->m:I

    goto :goto_3d
.end method
