.class public Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotRefreshView;
.super Lcom/kwad/sdk/contentalliance/refreshview/e;
.source ""


# static fields
.field private static final e0:F


# instance fields
.field private c0:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$h;

.field private d0:Lcom/ksad/lottie/LottieAnimationView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lcom/kwad/sdk/KsAdSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42160000    # 37.5f

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/p;->a(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotRefreshView;->e0:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotRefreshView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/contentalliance/refreshview/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget v0, Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotRefreshView;->e0:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->setRefreshTargetOffset(F)V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotRefreshView;)Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$h;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotRefreshView;->c0:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$h;

    return-object v0
.end method

.method static synthetic a(Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotRefreshView;Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method static synthetic d()F
    .registers 1

    sget v0, Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotRefreshView;->e0:F

    return v0
.end method


# virtual methods
.method protected a(ILandroid/view/animation/Animation$AnimationListener;)V
    .registers 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->getRefreshTargetOffset()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2d

    :cond_18
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->h:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTop(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->clearAnimation()V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotRefreshView;->d0:Lcom/ksad/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/ksad/lottie/LottieAnimationView;->a()V

    invoke-interface {p2, v2}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    invoke-interface {p2, v2}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    :goto_2c
    return-void

    :cond_2d
    invoke-super {p0, p1, p2}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->a(ILandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_2c
.end method

.method protected a(Landroid/util/AttributeSet;)V
    .registers 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ksad_content_alliance_hot_shoot_refresh_view"

    invoke-static {v1, v2}, Lcom/kwad/sdk/e/l;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ksad_shoot_refresh_view"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->h:Landroid/view/View;

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->h:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ksad_pull_to_refresh_animation_view"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotRefreshView;->d0:Lcom/ksad/lottie/LottieAnimationView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ksad_detail_loading_amin_top"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotRefreshView;->d0:Lcom/ksad/lottie/LottieAnimationView;

    invoke-virtual {v1, v0}, Lcom/ksad/lottie/LottieAnimationView;->setAnimation(I)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->h:Landroid/view/View;

    instance-of v1, v0, Lcom/kwad/sdk/contentalliance/refreshview/d;

    if-eqz v1, :cond_59

    check-cast v0, Lcom/kwad/sdk/contentalliance/refreshview/d;

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->i:Lcom/kwad/sdk/contentalliance/refreshview/d;

    return-void

    :cond_59
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "the refreshView must implement the interface IRefreshStatus"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected b()Lcom/kwad/sdk/contentalliance/refreshview/b;
    .registers 2

    new-instance v0, Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotRefreshView$c;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotRefreshView$c;-><init>(Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotRefreshView;)V

    return-object v0
.end method

.method public setOnRefreshListener(Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$h;)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotRefreshView;->c0:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$h;

    new-instance v0, Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotRefreshView$a;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotRefreshView$a;-><init>(Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotRefreshView;)V

    invoke-super {p0, v0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->setOnRefreshListener(Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$h;)V

    return-void
.end method

.method public setRefreshing(Z)V
    .registers 6

    if-nez p1, :cond_d

    new-instance v0, Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotRefreshView$b;

    invoke-direct {v0, p0, p1}, Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotRefreshView$b;-><init>(Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotRefreshView;Z)V

    const-wide/16 v2, 0x258

    invoke-virtual {p0, v0, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_c
    return-void

    :cond_d
    invoke-super {p0, p1}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->setRefreshing(Z)V

    goto :goto_c
.end method
