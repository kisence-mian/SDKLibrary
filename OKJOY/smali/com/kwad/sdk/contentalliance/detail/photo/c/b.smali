.class public Lcom/kwad/sdk/contentalliance/detail/photo/c/b;
.super Lcom/kwad/sdk/b/c/b;
.source ""

# interfaces
.implements Lcom/kwad/sdk/b/e/e;
.implements Lcom/kwad/sdk/b/e/f;


# instance fields
.field private final f:Ljava/util/Random;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/widget/RelativeLayout;

.field private i:Lcom/kwad/sdk/contentalliance/widget/KsAdFrameLayout;

.field private j:Lcom/kwad/sdk/contentalliance/widget/a;

.field private k:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private l:J

.field private m:Z

.field private n:I

.field private o:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/ksad/lottie/LottieAnimationView;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/kwad/sdk/contentalliance/detail/photo/d/e;

.field private final q:Ljava/lang/Runnable;

.field private r:Lcom/kwad/sdk/b/e/e;

.field private s:Lcom/kwad/sdk/b/e/a;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/b/c/b;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->f:Ljava/util/Random;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->g:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->o:Ljava/util/LinkedList;

    new-instance v0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b$a;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/b$a;-><init>(Lcom/kwad/sdk/contentalliance/detail/photo/c/b;)V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->q:Ljava/lang/Runnable;

    new-instance v0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b$b;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/b$b;-><init>(Lcom/kwad/sdk/contentalliance/detail/photo/c/b;)V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->r:Lcom/kwad/sdk/b/e/e;

    new-instance v0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b$c;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/b$c;-><init>(Lcom/kwad/sdk/contentalliance/detail/photo/c/b;)V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->s:Lcom/kwad/sdk/b/e/a;

    new-instance v0, Lcom/kwad/sdk/contentalliance/detail/photo/d/e;

    invoke-direct {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/d/e;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->p:Lcom/kwad/sdk/contentalliance/detail/photo/d/e;

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->p:Lcom/kwad/sdk/contentalliance/detail/photo/d/e;

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/contentalliance/detail/photo/c/b;)Lcom/kwad/sdk/contentalliance/widget/a;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->j:Lcom/kwad/sdk/contentalliance/widget/a;

    return-object v0
.end method

.method private a(Lcom/ksad/lottie/LottieAnimationView;Z)V
    .registers 5

    invoke-virtual {p1}, Lcom/ksad/lottie/LottieAnimationView;->a()V

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/AppCompatImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v1

    if-eqz p2, :cond_29

    const-string v0, "ksad_detail_center_like_anim"

    :goto_f
    invoke-static {v1, v0}, Lcom/kwad/sdk/e/l;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ksad/lottie/LottieAnimationView;->setAnimation(I)V

    if-eqz p2, :cond_2c

    const/high16 v0, 0x40000000    # 2.0f

    :goto_1a
    invoke-virtual {p1, v0}, Lcom/ksad/lottie/LottieAnimationView;->setSpeed(F)V

    new-instance v0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b$f;

    invoke-direct {v0, p0, p1}, Lcom/kwad/sdk/contentalliance/detail/photo/c/b$f;-><init>(Lcom/kwad/sdk/contentalliance/detail/photo/c/b;Lcom/ksad/lottie/LottieAnimationView;)V

    invoke-virtual {p1, v0}, Lcom/ksad/lottie/LottieAnimationView;->a(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Lcom/ksad/lottie/LottieAnimationView;->c()V

    return-void

    :cond_29
    const-string v0, "ksad_detail_center_like_anim2"

    goto :goto_f

    :cond_2c
    const/high16 v0, 0x3fc00000    # 1.5f

    goto :goto_1a
.end method

.method static synthetic b(Lcom/kwad/sdk/contentalliance/detail/photo/c/b;)Lcom/kwad/sdk/b/e/e;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->r:Lcom/kwad/sdk/b/e/e;

    return-object v0
.end method

.method static synthetic c(Lcom/kwad/sdk/contentalliance/detail/photo/c/b;)Lcom/kwad/sdk/b/c/c;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/b/c/b;->e:Lcom/kwad/sdk/b/c/c;

    return-object v0
.end method

.method private c(FF)V
    .registers 12

    const/16 v8, 0xd

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_e

    :goto_d
    return-void

    :cond_e
    cmpl-float v0, p1, v1

    if-lez v0, :cond_84

    cmpl-float v0, p2, v1

    if-lez v0, :cond_84

    move v3, v2

    :goto_17
    if-eqz v3, :cond_86

    iget v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->n:I

    move v1, v0

    :goto_1c
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->o:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/LottieAnimationView;

    if-nez v0, :cond_9e

    new-instance v0, Lcom/ksad/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/ksad/lottie/LottieAnimationView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/ksad/lottie/LottieAnimationView;->a(Z)V

    iget-object v2, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->h:Landroid/widget/RelativeLayout;

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    iget v6, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->n:I

    invoke-direct {v5, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v2, v0

    :goto_3f
    invoke-virtual {v2}, Landroid/support/v7/widget/AppCompatImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    if-eqz v3, :cond_90

    int-to-float v1, v1

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v1, v5

    sub-float v5, p1, v1

    invoke-virtual {v2, v5}, Landroid/support/v7/widget/AppCompatImageView;->setTranslationX(F)V

    sub-float v1, p2, v1

    iget v5, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->n:I

    int-to-float v5, v5

    const/high16 v6, 0x40400000    # 3.0f

    div-float/2addr v5, v6

    sub-float/2addr v1, v5

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/AppCompatImageView;->setTranslationY(F)V

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->g:Ljava/util/List;

    iget-object v5, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->f:Ljava/util/Random;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/AppCompatImageView;->setRotation(F)V

    invoke-virtual {v0, v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_7d
    invoke-virtual {v2, v0}, Landroid/support/v7/widget/AppCompatImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, v2, v3}, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->a(Lcom/ksad/lottie/LottieAnimationView;Z)V

    goto :goto_d

    :cond_84
    move v3, v4

    goto :goto_17

    :cond_86
    iget v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->n:I

    int-to-float v0, v0

    const v1, 0x3f99999a    # 1.2f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    move v1, v0

    goto :goto_1c

    :cond_90
    invoke-virtual {v2, v7}, Landroid/support/v7/widget/AppCompatImageView;->setTranslationX(F)V

    invoke-virtual {v2, v7}, Landroid/support/v7/widget/AppCompatImageView;->setTranslationY(F)V

    invoke-virtual {v2, v7}, Landroid/support/v7/widget/AppCompatImageView;->setRotation(F)V

    const/4 v1, -0x1

    invoke-virtual {v0, v8, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_7d

    :cond_9e
    move-object v2, v0

    goto :goto_3f
.end method

.method static synthetic d(Lcom/kwad/sdk/contentalliance/detail/photo/c/b;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->q:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic e(Lcom/kwad/sdk/contentalliance/detail/photo/c/b;)Landroid/widget/RelativeLayout;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->h:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic f(Lcom/kwad/sdk/contentalliance/detail/photo/c/b;)Lcom/kwad/sdk/b/c/c;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/b/c/b;->e:Lcom/kwad/sdk/b/c/c;

    return-object v0
.end method

.method static synthetic g(Lcom/kwad/sdk/contentalliance/detail/photo/c/b;)Ljava/util/LinkedList;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->o:Ljava/util/LinkedList;

    return-object v0
.end method

.method private l()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->k:Landroid/view/GestureDetector$SimpleOnGestureListener;

    if-nez v0, :cond_b

    new-instance v0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b$d;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/b$d;-><init>(Lcom/kwad/sdk/contentalliance/detail/photo/c/b;)V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->k:Landroid/view/GestureDetector$SimpleOnGestureListener;

    :cond_b
    return-void
.end method

.method private m()Z
    .registers 5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->l:J

    sub-long/2addr v0, v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private n()V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->j:Lcom/kwad/sdk/contentalliance/widget/a;

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->k:Landroid/view/GestureDetector$SimpleOnGestureListener;

    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->l()V

    :cond_b
    new-instance v0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b$e;

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->k:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, p0, v1, v2}, Lcom/kwad/sdk/contentalliance/detail/photo/c/b$e;-><init>(Lcom/kwad/sdk/contentalliance/detail/photo/c/b;Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->j:Lcom/kwad/sdk/contentalliance/widget/a;

    :cond_18
    return-void
.end method


# virtual methods
.method public a(FF)Z
    .registers 7

    const-wide/16 v2, 0x1f4

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->j:Lcom/kwad/sdk/contentalliance/widget/a;

    invoke-virtual {v0, v2, v3}, Lcom/kwad/sdk/contentalliance/widget/a;->a(J)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->h:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->h:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->p:Lcom/kwad/sdk/contentalliance/detail/photo/d/e;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/d/e;->l()V

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->c(FF)V

    const/4 v0, 0x1

    return v0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->l:J

    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->m:Z

    if-nez v0, :cond_18

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public b(FF)Z
    .registers 5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->l:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->m:Z

    invoke-virtual {p0, p1, p2}, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->a(FF)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->m()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->b(FF)Z

    move-result v0

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public c(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public d(Landroid/view/MotionEvent;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->m()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->b(FF)Z

    move-result v0

    :goto_13
    return v0

    :cond_14
    iput-boolean v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->m:Z

    goto :goto_13
.end method

.method protected g()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/b/c/b;->g()V

    iget-object v0, p0, Lcom/kwad/sdk/b/c/b;->e:Lcom/kwad/sdk/b/c/c;

    iget-object v0, v0, Lcom/kwad/sdk/b/c/c;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->s:Lcom/kwad/sdk/b/e/a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->i:Lcom/kwad/sdk/contentalliance/widget/KsAdFrameLayout;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->j:Lcom/kwad/sdk/contentalliance/widget/a;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/widget/KsAdFrameLayout;->a(Landroid/view/GestureDetector;)V

    return-void
.end method

.method protected h()V
    .registers 4

    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->h()V

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ksad_slide_play_center_like_view_size"

    invoke-static {v1, v2}, Lcom/kwad/sdk/e/l;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->n:I

    :cond_21
    const-string v0, "ksad_slide_play_like_image"

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->h:Landroid/widget/RelativeLayout;

    const-string v0, "ksad_video_container"

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/contentalliance/widget/KsAdFrameLayout;

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->i:Lcom/kwad/sdk/contentalliance/widget/KsAdFrameLayout;

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->l()V

    const/16 v0, -0xf

    :goto_3a
    const/16 v1, 0xf

    if-ge v0, v1, :cond_4a

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->g:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    :cond_4a
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->i:Lcom/kwad/sdk/contentalliance/widget/KsAdFrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->n()V

    return-void
.end method

.method protected i()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->h:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_9
    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->i()V

    return-void
.end method

.method protected j()V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->j()V

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->i:Lcom/kwad/sdk/contentalliance/widget/KsAdFrameLayout;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->j:Lcom/kwad/sdk/contentalliance/widget/a;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/widget/KsAdFrameLayout;->b(Landroid/view/GestureDetector;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/c/b;->e:Lcom/kwad/sdk/b/c/c;

    iget-object v0, v0, Lcom/kwad/sdk/b/c/c;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->r:Lcom/kwad/sdk/b/e/e;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
