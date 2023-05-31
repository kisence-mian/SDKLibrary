.class public Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotShootRefreshView;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Lcom/kwad/sdk/contentalliance/refreshview/d;


# static fields
.field private static final c:F


# instance fields
.field private a:Lcom/ksad/lottie/LottieAnimationView;

.field private b:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$h;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lcom/kwad/sdk/KsAdSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/p;->a(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotShootRefreshView;->c:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotShootRefreshView;)Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$h;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotShootRefreshView;->b:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$h;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    return-void
.end method

.method public a(FF)V
    .registers 6

    sget v0, Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotShootRefreshView;->c:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_18

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotShootRefreshView;->a:Lcom/ksad/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/ksad/lottie/LottieAnimationView;->b()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotShootRefreshView;->a:Lcom/ksad/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/ksad/lottie/LottieAnimationView;->a()V

    :cond_17
    :goto_17
    return-void

    :cond_18
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotShootRefreshView;->a:Lcom/ksad/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/ksad/lottie/LottieAnimationView;->b()Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotShootRefreshView;->a:Lcom/ksad/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/ksad/lottie/LottieAnimationView;->c()V

    :cond_25
    sget v0, Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotShootRefreshView;->c:F

    sub-float v1, p1, v0

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    div-float v0, v1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    goto :goto_17
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method public c()V
    .registers 1

    return-void
.end method

.method public d()V
    .registers 1

    return-void
.end method

.method public e()V
    .registers 5

    const/4 v2, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v1

    aput v1, v0, v2

    const/4 v1, 0x1

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotShootRefreshView$a;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotShootRefreshView$a;-><init>(Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotShootRefreshView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotShootRefreshView$b;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotShootRefreshView$b;-><init>(Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotShootRefreshView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public f()I
    .registers 2

    const/16 v0, 0xc8

    return v0
.end method

.method protected onFinishInflate()V
    .registers 4

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ksad_pull_to_refresh_animation_view"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotShootRefreshView;->a:Lcom/ksad/lottie/LottieAnimationView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ksad_detail_loading_amin_top"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotShootRefreshView;->a:Lcom/ksad/lottie/LottieAnimationView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/AppCompatImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotShootRefreshView;->a:Lcom/ksad/lottie/LottieAnimationView;

    invoke-virtual {v1, v0}, Lcom/ksad/lottie/LottieAnimationView;->setAnimation(I)V

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotShootRefreshView;->a:Lcom/ksad/lottie/LottieAnimationView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/ksad/lottie/LottieAnimationView;->setRepeatMode(I)V

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotShootRefreshView;->a:Lcom/ksad/lottie/LottieAnimationView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/ksad/lottie/LottieAnimationView;->setRepeatCount(I)V

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotShootRefreshView;->a:Lcom/ksad/lottie/LottieAnimationView;

    invoke-virtual {v1, v0}, Lcom/ksad/lottie/LottieAnimationView;->setAnimation(I)V

    return-void
.end method

.method public setOnRefreshListener(Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$h;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotShootRefreshView;->b:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$h;

    return-void
.end method

.method public setVisibility(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method
