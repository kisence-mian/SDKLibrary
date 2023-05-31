.class public Lcom/kwad/sdk/b/d/g/c;
.super Lcom/kwad/sdk/b/d/d;
.source ""


# instance fields
.field private f:Lcom/ksad/lottie/LottieAnimationView;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/TextView;

.field private i:Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;

.field private j:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private k:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private l:Landroid/view/GestureDetector;

.field private m:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private n:Z

.field private o:Z

.field private p:I

.field private q:Z

.field private r:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/kwad/sdk/b/d/d;-><init>()V

    iput-boolean v0, p0, Lcom/kwad/sdk/b/d/g/c;->n:Z

    iput-boolean v0, p0, Lcom/kwad/sdk/b/d/g/c;->o:Z

    iput v0, p0, Lcom/kwad/sdk/b/d/g/c;->p:I

    iput-boolean v0, p0, Lcom/kwad/sdk/b/d/g/c;->q:Z

    new-instance v0, Lcom/kwad/sdk/b/d/g/c$a;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/b/d/g/c$a;-><init>(Lcom/kwad/sdk/b/d/g/c;)V

    iput-object v0, p0, Lcom/kwad/sdk/b/d/g/c;->r:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/b/d/g/c;I)I
    .registers 2

    iput p1, p0, Lcom/kwad/sdk/b/d/g/c;->p:I

    return p1
.end method

.method static synthetic a(Lcom/kwad/sdk/b/d/g/c;Landroid/view/GestureDetector;)Landroid/view/GestureDetector;
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/b/d/g/c;->l:Landroid/view/GestureDetector;

    return-object p1
.end method

.method static synthetic a(Lcom/kwad/sdk/b/d/g/c;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/c;->g:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b(Lcom/kwad/sdk/b/d/g/c;)I
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/b/d/g/c;->p:I

    return v0
.end method

.method static synthetic c(Lcom/kwad/sdk/b/d/g/c;)Landroid/view/GestureDetector$SimpleOnGestureListener;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/c;->k:Landroid/view/GestureDetector$SimpleOnGestureListener;

    return-object v0
.end method

.method static synthetic d(Lcom/kwad/sdk/b/d/g/c;)Landroid/content/Context;
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/kwad/sdk/b/d/g/c;)Landroid/content/Context;
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/kwad/sdk/b/d/g/c;)Landroid/content/Context;
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/kwad/sdk/b/d/g/c;)Landroid/content/Context;
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcom/kwad/sdk/b/d/g/c;)Z
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/b/d/g/c;->o()Z

    move-result v0

    return v0
.end method

.method static synthetic i(Lcom/kwad/sdk/b/d/g/c;)Z
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/b/d/g/c;->n()Z

    move-result v0

    return v0
.end method

.method static synthetic j(Lcom/kwad/sdk/b/d/g/c;)Lcom/ksad/lottie/LottieAnimationView;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/c;->f:Lcom/ksad/lottie/LottieAnimationView;

    return-object v0
.end method

.method static synthetic k(Lcom/kwad/sdk/b/d/g/c;)Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/c;->i:Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;

    return-object v0
.end method

.method static synthetic l(Lcom/kwad/sdk/b/d/g/c;)Landroid/content/Context;
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private l()V
    .registers 3

    new-instance v0, Lcom/kwad/sdk/b/d/g/c$b;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/b/d/g/c$b;-><init>(Lcom/kwad/sdk/b/d/g/c;)V

    iput-object v0, p0, Lcom/kwad/sdk/b/d/g/c;->m:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/c;->i:Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;

    iget-object v1, p0, Lcom/kwad/sdk/b/d/g/c;->m:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/b/f/b;->a(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method static synthetic m(Lcom/kwad/sdk/b/d/g/c;)Landroid/content/Context;
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private m()V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/c;->j:Landroid/view/GestureDetector$SimpleOnGestureListener;

    if-nez v0, :cond_33

    new-instance v0, Lcom/kwad/sdk/b/d/g/c$c;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/b/d/g/c$c;-><init>(Lcom/kwad/sdk/b/d/g/c;)V

    iput-object v0, p0, Lcom/kwad/sdk/b/d/g/c;->j:Landroid/view/GestureDetector$SimpleOnGestureListener;

    new-instance v0, Lcom/kwad/sdk/b/d/g/c$d;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/b/d/g/c$d;-><init>(Lcom/kwad/sdk/b/d/g/c;)V

    iput-object v0, p0, Lcom/kwad/sdk/b/d/g/c;->k:Landroid/view/GestureDetector$SimpleOnGestureListener;

    iget v0, p0, Lcom/kwad/sdk/b/d/g/c;->p:I

    if-nez v0, :cond_34

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/sdk/b/d/g/c;->j:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/kwad/sdk/b/d/g/c;->l:Landroid/view/GestureDetector;

    :cond_24
    :goto_24
    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/c;->g:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/c;->g:Landroid/view/View;

    new-instance v1, Lcom/kwad/sdk/b/d/g/c$e;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/b/d/g/c$e;-><init>(Lcom/kwad/sdk/b/d/g/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_33
    return-void

    :cond_34
    if-ne v0, v3, :cond_24

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/sdk/b/d/g/c;->k:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/kwad/sdk/b/d/g/c;->l:Landroid/view/GestureDetector;

    goto :goto_24
.end method

.method static synthetic n(Lcom/kwad/sdk/b/d/g/c;)Landroid/content/Context;
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private n()Z
    .registers 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/kwad/sdk/b/d/g/c;->n:Z

    if-nez v1, :cond_6

    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lcom/kwad/sdk/b/d/g/c;->g:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iput-boolean v0, p0, Lcom/kwad/sdk/b/d/g/c;->n:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/kwad/sdk/b/d/g/c;->p:I

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/e/m;->e(Landroid/content/Context;)V

    :cond_1e
    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/c;->g:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/c;->f:Lcom/ksad/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/ksad/lottie/LottieAnimationView;->a()V

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/c;->g:Landroid/view/View;

    iget-object v1, p0, Lcom/kwad/sdk/b/d/g/c;->r:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    goto :goto_5
.end method

.method static synthetic o(Lcom/kwad/sdk/b/d/g/c;)Landroid/content/Context;
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private o()Z
    .registers 7

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/kwad/sdk/b/d/g/c;->o:Z

    if-nez v2, :cond_8

    :goto_7
    return v0

    :cond_8
    iget-object v2, p0, Lcom/kwad/sdk/b/d/g/c;->g:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/kwad/sdk/b/d/g/c;->f:Lcom/ksad/lottie/LottieAnimationView;

    invoke-virtual {v2}, Lcom/ksad/lottie/LottieAnimationView;->a()V

    iget-object v2, p0, Lcom/kwad/sdk/b/d/g/c;->g:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iput-boolean v0, p0, Lcom/kwad/sdk/b/d/g/c;->o:Z

    iput v1, p0, Lcom/kwad/sdk/b/d/g/c;->p:I

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_4f

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v3, p0, Lcom/kwad/sdk/b/d/g/c;->g:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0x258

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/kwad/sdk/b/d/g/c$f;

    invoke-direct {v3, p0}, Lcom/kwad/sdk/b/d/g/c$f;-><init>(Lcom/kwad/sdk/b/d/g/c;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    iput-boolean v1, p0, Lcom/kwad/sdk/b/d/g/c;->q:Z

    :cond_4f
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_63

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/kwad/sdk/e/m;->f(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/kwad/sdk/e/m;->a(Landroid/content/Context;Z)V

    :cond_63
    move v0, v1

    goto :goto_7
.end method

.method private p()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/c;->f:Lcom/ksad/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/ksad/lottie/LottieAnimationView;->a()V

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/c;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ksad_detail_double_click_like_guide_anim"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/kwad/sdk/b/d/g/c;->f:Lcom/ksad/lottie/LottieAnimationView;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/AppCompatImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/kwad/sdk/b/d/g/c;->f:Lcom/ksad/lottie/LottieAnimationView;

    invoke-virtual {v1, v0}, Lcom/ksad/lottie/LottieAnimationView;->setAnimation(I)V

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/c;->f:Lcom/ksad/lottie/LottieAnimationView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ksad/lottie/LottieAnimationView;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/c;->f:Lcom/ksad/lottie/LottieAnimationView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ksad/lottie/LottieAnimationView;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/c;->f:Lcom/ksad/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/ksad/lottie/LottieAnimationView;->c()V

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ksad_double_click_like_tips"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/b/d/g/c;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/kwad/sdk/b/d/g/c;->q:Z

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/c;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v1, p0, Lcom/kwad/sdk/b/d/g/c;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v2

    int-to-float v0, v0

    add-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_5e
    return-void
.end method

.method static synthetic p(Lcom/kwad/sdk/b/d/g/c;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/b/d/g/c;->p()V

    return-void
.end method

.method static synthetic q(Lcom/kwad/sdk/b/d/g/c;)Landroid/view/GestureDetector;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/c;->l:Landroid/view/GestureDetector;

    return-object v0
.end method

.method private q()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/c;->f:Lcom/ksad/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/ksad/lottie/LottieAnimationView;->a()V

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ksad_detail_guider_slider_up_guide"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/kwad/sdk/b/d/g/c;->g:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/kwad/sdk/b/d/g/c;->f:Lcom/ksad/lottie/LottieAnimationView;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/AppCompatImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/kwad/sdk/b/d/g/c;->f:Lcom/ksad/lottie/LottieAnimationView;

    invoke-virtual {v1, v0}, Lcom/ksad/lottie/LottieAnimationView;->setAnimation(I)V

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/c;->f:Lcom/ksad/lottie/LottieAnimationView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ksad/lottie/LottieAnimationView;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/c;->f:Lcom/ksad/lottie/LottieAnimationView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ksad/lottie/LottieAnimationView;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/c;->f:Lcom/ksad/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/ksad/lottie/LottieAnimationView;->c()V

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ksad_slide_up_tips"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/b/d/g/c;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic r(Lcom/kwad/sdk/b/d/g/c;)Landroid/content/Context;
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected g()V
    .registers 5

    const/16 v3, 0x8

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0}, Lcom/kwad/sdk/b/d/d;->g()V

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/e/m;->b(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kwad/sdk/b/d/g/c;->n:Z

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/e/m;->d(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kwad/sdk/b/d/g/c;->o:Z

    iget-boolean v0, p0, Lcom/kwad/sdk/b/d/g/c;->o:Z

    if-eqz v0, :cond_3c

    iput v2, p0, Lcom/kwad/sdk/b/d/g/c;->p:I

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/m;->a(Landroid/content/Context;Z)V

    :goto_2e
    iget-boolean v0, p0, Lcom/kwad/sdk/b/d/g/c;->o:Z

    if-eqz v0, :cond_55

    invoke-direct {p0}, Lcom/kwad/sdk/b/d/g/c;->q()V

    invoke-direct {p0}, Lcom/kwad/sdk/b/d/g/c;->m()V

    invoke-direct {p0}, Lcom/kwad/sdk/b/d/g/c;->l()V

    :cond_3b
    :goto_3b
    return-void

    :cond_3c
    iget-boolean v0, p0, Lcom/kwad/sdk/b/d/g/c;->n:Z

    if-eqz v0, :cond_4a

    iput v1, p0, Lcom/kwad/sdk/b/d/g/c;->p:I

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/m;->a(Landroid/content/Context;Z)V

    goto :goto_2e

    :cond_4a
    const/4 v0, 0x2

    iput v0, p0, Lcom/kwad/sdk/b/d/g/c;->p:I

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/kwad/sdk/e/m;->a(Landroid/content/Context;Z)V

    goto :goto_2e

    :cond_55
    iget-boolean v0, p0, Lcom/kwad/sdk/b/d/g/c;->n:Z

    if-eqz v0, :cond_60

    invoke-direct {p0}, Lcom/kwad/sdk/b/d/g/c;->p()V

    invoke-direct {p0}, Lcom/kwad/sdk/b/d/g/c;->m()V

    goto :goto_3b

    :cond_60
    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/c;->f:Lcom/ksad/lottie/LottieAnimationView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/AppCompatImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/c;->g:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3b
.end method

.method protected h()V
    .registers 2

    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->h()V

    const-string v0, "kasd_guider_mask"

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/b/d/g/c;->g:Landroid/view/View;

    const-string v0, "ksad_guider_title"

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kwad/sdk/b/d/g/c;->h:Landroid/widget/TextView;

    const-string v0, "ksad_guider_animation"

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/kwad/sdk/b/d/g/c;->f:Lcom/ksad/lottie/LottieAnimationView;

    const-string v0, "ksad_slide_play_view_pager"

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;

    iput-object v0, p0, Lcom/kwad/sdk/b/d/g/c;->i:Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;

    return-void
.end method

.method protected j()V
    .registers 4

    const/16 v2, 0x8

    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->j()V

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/e/m;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/m;->a(Landroid/content/Context;Z)V

    :cond_1d
    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/c;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/c;->m:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_2f

    iget-object v1, p0, Lcom/kwad/sdk/b/d/g/c;->i:Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;

    invoke-virtual {v1, v0}, Lcom/kwad/sdk/b/f/b;->b(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    :cond_2f
    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/c;->g:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/c;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/c;->f:Lcom/ksad/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/ksad/lottie/LottieAnimationView;->b()Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/c;->f:Lcom/ksad/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/ksad/lottie/LottieAnimationView;->a()V

    :cond_47
    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/c;->f:Lcom/ksad/lottie/LottieAnimationView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/AppCompatImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/c;->g:Landroid/view/View;

    iget-object v1, p0, Lcom/kwad/sdk/b/d/g/c;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
