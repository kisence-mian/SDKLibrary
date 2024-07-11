.class public Lcom/kwad/sdk/reward/b/b;
.super Lcom/kwad/sdk/reward/d;


# static fields
.field private static b:Ljava/lang/String;


# instance fields
.field private c:Landroid/view/View;

.field private d:Lcom/kwad/sdk/widget/KsLogoView;

.field private e:Landroid/widget/ImageView;

.field private f:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/FrameLayout;

.field private i:Landroid/widget/FrameLayout;

.field private j:Lcom/kwad/sdk/c/b;

.field private k:Landroid/animation/Animator;

.field private l:Landroid/animation/Animator;

.field private m:Lcom/kwad/sdk/contentalliance/detail/video/d;

.field private n:Lcom/kwad/sdk/core/webview/jshandler/a$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "RewardMiddleEndCardPresenter"

    sput-object v0, Lcom/kwad/sdk/reward/b/b;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/reward/d;-><init>()V

    new-instance v0, Lcom/kwad/sdk/reward/b/b$1;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/reward/b/b$1;-><init>(Lcom/kwad/sdk/reward/b/b;)V

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/b;->m:Lcom/kwad/sdk/contentalliance/detail/video/d;

    new-instance v0, Lcom/kwad/sdk/reward/b/b$5;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/reward/b/b$5;-><init>(Lcom/kwad/sdk/reward/b/b;)V

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/b;->n:Lcom/kwad/sdk/core/webview/jshandler/a$b;

    return-void
.end method

.method private a(II)Landroid/animation/Animator;
    .registers 12

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b;->c:Landroid/view/View;

    const/4 v1, 0x2

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    neg-int p1, p1

    int-to-float p1, p1

    const/4 v5, 0x1

    aput p1, v2, v5

    const-string p1, "translationY"

    invoke-static {v0, p1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b;->d:Lcom/kwad/sdk/widget/KsLogoView;

    new-array v2, v1, [F

    fill-array-data v2, :array_70

    const-string v6, "alpha"

    invoke-static {v0, v6, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v2, p0, Lcom/kwad/sdk/reward/b/b;->f:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    invoke-virtual {v2}, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v6, p0, Lcom/kwad/sdk/reward/b/b;->f:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    invoke-virtual {v6}, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->getWidth()I

    iget-object v6, p0, Lcom/kwad/sdk/reward/b/b;->f:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    invoke-virtual {v6}, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget-object v7, p0, Lcom/kwad/sdk/reward/b/b;->e:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    new-array v8, v1, [I

    float-to-int v2, v2

    aput v2, v8, v3

    aput p2, v8, v5

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    new-instance v2, Lcom/kwad/sdk/reward/b/b$3;

    invoke-direct {v2, p0, v6, v7}, Lcom/kwad/sdk/reward/b/b$3;-><init>(Lcom/kwad/sdk/reward/b/b;Landroid/view/ViewGroup$LayoutParams;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const v2, 0x3f147ae1    # 0.58f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v4, v4, v2, v6}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v2

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object p1, v2, v3

    aput-object v0, v2, v5

    aput-object p2, v2, v1

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v4

    nop

    :array_70
    .array-data 4
        0x0
        0x437f0000    # 255.0f
    .end array-data
.end method

.method static synthetic a(Lcom/kwad/sdk/reward/b/b;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/reward/b/b;->m()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b;->e:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {}, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->getInstance()Lcom/kwad/sdk/core/imageloader/core/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/b;->e:Landroid/widget/ImageView;

    new-instance v2, Lcom/kwad/sdk/reward/b/b$2;

    invoke-direct {v2, p0}, Lcom/kwad/sdk/reward/b/b$2;-><init>(Lcom/kwad/sdk/reward/b/b;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;)V

    return-void
.end method

.method private a(Z)V
    .registers 6

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b;->i:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    if-eqz p1, :cond_b

    move v3, v1

    goto :goto_c

    :cond_b
    move v3, v2

    :goto_c
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_f
    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b;->h:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_19

    if-eqz p1, :cond_16

    move v1, v2

    :cond_16
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_19
    return-void
.end method

.method private a(Lcom/kwad/sdk/core/response/model/AdInfo;)Z
    .registers 3

    invoke-static {p1}, Lcom/kwad/sdk/core/response/b/a;->z(Lcom/kwad/sdk/core/response/model/AdInfo;)Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;

    move-result-object p1

    iget v0, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;->height:I

    iget p1, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;->width:I

    if-le v0, p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method private b(I)I
    .registers 5

    invoke-virtual {p0}, Lcom/kwad/sdk/reward/b/b;->l()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/kwad/sdk/R$dimen;->ksad_reward_middle_end_card_logo_view_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/kwad/sdk/reward/b/b;->l()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/kwad/sdk/R$dimen;->ksad_reward_middle_end_card_logo_view_margin_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/kwad/sdk/reward/b/b;->j()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/kwad/sdk/utils/ah;->c(Landroid/app/Activity;)I

    move-result v2

    int-to-float v2, v2

    int-to-float p1, p1

    sub-float/2addr v2, p1

    int-to-float p1, v0

    add-float/2addr v2, p1

    int-to-float p1, v1

    add-float/2addr v2, p1

    float-to-int p1, v2

    return p1
.end method

.method static synthetic b(Lcom/kwad/sdk/reward/b/b;)Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/reward/b/b;->f:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    return-object p0
.end method

.method static synthetic c(Lcom/kwad/sdk/reward/b/b;)Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/reward/b/b;->e:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic d(Lcom/kwad/sdk/reward/b/b;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/reward/b/b;->q()V

    return-void
.end method

.method static synthetic e(Lcom/kwad/sdk/reward/b/b;)Lcom/kwad/sdk/reward/a;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/reward/b/b;->a:Lcom/kwad/sdk/reward/a;

    return-object p0
.end method

.method private m()V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b;->j:Lcom/kwad/sdk/c/b;

    invoke-virtual {v0}, Lcom/kwad/sdk/c/b;->d()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/kwad/sdk/reward/b/b;->a(Z)V

    if-nez v0, :cond_19

    invoke-direct {p0}, Lcom/kwad/sdk/reward/b/b;->p()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/b;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/b;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_19
    invoke-direct {p0}, Lcom/kwad/sdk/reward/b/b;->o()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/kwad/sdk/reward/b/b;->b(I)I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/kwad/sdk/reward/b/b;->a(II)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/b;->k:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    invoke-direct {p0}, Lcom/kwad/sdk/reward/b/b;->n()Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/b;->l:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v2, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v2, :cond_45

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    neg-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_55

    :cond_45
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    neg-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/b;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_55
    return-void
.end method

.method private n()Landroid/animation/Animator;
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b;->g:Landroid/view/View;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_22

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/high16 v1, 0x3e800000    # 0.25f

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v1, v3}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object v0

    :array_22
    .array-data 4
        0x437f0000    # 255.0f
        0x0
    .end array-data
.end method

.method private o()I
    .registers 3

    invoke-virtual {p0}, Lcom/kwad/sdk/reward/b/b;->j()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/utils/ah;->b(Landroid/app/Activity;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41100000    # 9.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x41800000    # 16.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private p()Landroid/view/View;
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->f:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/b;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/sdk/reward/b/b;->a:Lcom/kwad/sdk/reward/a;

    iget v2, v2, Lcom/kwad/sdk/reward/a;->e:I

    invoke-direct {p0, v0}, Lcom/kwad/sdk/reward/b/b;->a(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v0

    if-nez v2, :cond_26

    if-eqz v0, :cond_20

    new-instance v0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitVertical;

    invoke-direct {v0, v1}, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitVertical;-><init>(Landroid/content/Context;)V

    goto :goto_33

    :cond_20
    new-instance v0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;

    invoke-direct {v0, v1}, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;-><init>(Landroid/content/Context;)V

    goto :goto_33

    :cond_26
    if-eqz v0, :cond_2e

    new-instance v0, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;

    invoke-direct {v0, v1}, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;-><init>(Landroid/content/Context;)V

    goto :goto_33

    :cond_2e
    new-instance v0, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeHorizontal;

    invoke-direct {v0, v1}, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeHorizontal;-><init>(Landroid/content/Context;)V

    :goto_33
    iget-object v1, p0, Lcom/kwad/sdk/reward/b/b;->a:Lcom/kwad/sdk/reward/a;

    iget-object v1, v1, Lcom/kwad/sdk/reward/a;->f:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v2, p0, Lcom/kwad/sdk/reward/b/b;->a:Lcom/kwad/sdk/reward/a;

    iget-object v2, v2, Lcom/kwad/sdk/reward/a;->d:Lorg/json/JSONObject;

    new-instance v3, Lcom/kwad/sdk/reward/b/b$4;

    invoke-direct {v3, p0}, Lcom/kwad/sdk/reward/b/b$4;-><init>(Lcom/kwad/sdk/reward/b/b;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/kwad/sdk/reward/widget/tailframe/a;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;Lcom/kwad/sdk/reward/widget/tailframe/b;)V

    invoke-interface {v0}, Lcom/kwad/sdk/reward/widget/tailframe/a;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private q()V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->f:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/b;->a:Lcom/kwad/sdk/reward/a;

    iget-object v1, v1, Lcom/kwad/sdk/reward/a;->h:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    invoke-virtual {v1}, Lcom/kwad/sdk/core/view/AdBaseFrameLayout;->getTouchCoords()Lcom/kwad/sdk/utils/o$a;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/sdk/reward/b/b;->a:Lcom/kwad/sdk/reward/a;

    iget-object v2, v2, Lcom/kwad/sdk/reward/a;->d:Lorg/json/JSONObject;

    const/4 v3, 0x2

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/core/report/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/utils/o$a;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->b:Lcom/kwad/sdk/reward/a/b;

    invoke-interface {v0}, Lcom/kwad/sdk/reward/a/b;->a()V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 8

    invoke-super {p0}, Lcom/kwad/sdk/reward/d;->a()V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->i:Lcom/kwad/sdk/reward/c/a;

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/b;->m:Lcom/kwad/sdk/contentalliance/detail/video/d;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/reward/c/a;->a(Lcom/kwad/sdk/contentalliance/detail/video/d;)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->m:Lcom/kwad/sdk/c/b;

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/b;->j:Lcom/kwad/sdk/c/b;

    if-eqz v0, :cond_60

    invoke-virtual {p0}, Lcom/kwad/sdk/reward/b/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/c/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->f:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/b;->j:Lcom/kwad/sdk/c/b;

    iget-object v2, p0, Lcom/kwad/sdk/reward/b/b;->n:Lcom/kwad/sdk/core/webview/jshandler/a$b;

    invoke-virtual {v1, v2}, Lcom/kwad/sdk/c/b;->a(Lcom/kwad/sdk/core/webview/jshandler/a$b;)V

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/b;->j:Lcom/kwad/sdk/c/b;

    iget-object v2, p0, Lcom/kwad/sdk/reward/b/b;->h:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/kwad/sdk/reward/b/b;->a:Lcom/kwad/sdk/reward/a;

    iget-object v3, v3, Lcom/kwad/sdk/reward/a;->h:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    iget-object v4, p0, Lcom/kwad/sdk/reward/b/b;->a:Lcom/kwad/sdk/reward/a;

    iget-object v5, v4, Lcom/kwad/sdk/reward/a;->j:Lcom/kwad/sdk/core/download/b/b;

    iget-object v4, p0, Lcom/kwad/sdk/reward/b/b;->a:Lcom/kwad/sdk/reward/a;

    iget v6, v4, Lcom/kwad/sdk/reward/a;->e:I

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Lcom/kwad/sdk/c/b;->a(Landroid/widget/FrameLayout;Lcom/kwad/sdk/core/view/AdBaseFrameLayout;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/download/b/b;I)V

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/b;->j:Lcom/kwad/sdk/c/b;

    iget-object v2, p0, Lcom/kwad/sdk/reward/b/b;->a:Lcom/kwad/sdk/reward/a;

    iget-object v2, v2, Lcom/kwad/sdk/reward/a;->g:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/kwad/sdk/c/b;->a(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/b;->j:Lcom/kwad/sdk/c/b;

    invoke-virtual {v1}, Lcom/kwad/sdk/c/b;->g()V

    iget-object v1, v0, Lcom/kwad/sdk/core/response/model/AdTemplate;->adInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_60

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdTemplate;->adInfoList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->f(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kwad/sdk/reward/b/b;->a(Ljava/lang/String;)V

    :cond_60
    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b;->d:Lcom/kwad/sdk/widget/KsLogoView;

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/b;->a:Lcom/kwad/sdk/reward/a;

    iget-object v1, v1, Lcom/kwad/sdk/reward/a;->f:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/widget/KsLogoView;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    return-void
.end method

.method protected b()V
    .registers 2

    invoke-super {p0}, Lcom/kwad/sdk/reward/d;->b()V

    sget v0, Lcom/kwad/sdk/R$id;->ksad_middle_end_card:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/reward/b/b;->a(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/b;->c:Landroid/view/View;

    sget v0, Lcom/kwad/sdk/R$id;->ksad_video_player:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/reward/b/b;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/b;->f:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    sget v0, Lcom/kwad/sdk/R$id;->ksad_splash_logo_container:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/reward/b/b;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/widget/KsLogoView;

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/b;->d:Lcom/kwad/sdk/widget/KsLogoView;

    sget v0, Lcom/kwad/sdk/R$id;->ksad_blur_video_cover:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/reward/b/b;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/b;->e:Landroid/widget/ImageView;

    sget v0, Lcom/kwad/sdk/R$id;->ksad_play_web_card_webView:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/reward/b/b;->a(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/b;->g:Landroid/view/View;

    sget v0, Lcom/kwad/sdk/R$id;->ksad_middle_end_card_webview_container:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/reward/b/b;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/b;->h:Landroid/widget/FrameLayout;

    sget v0, Lcom/kwad/sdk/R$id;->ksad_middle_end_card_native:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/reward/b/b;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/b;->i:Landroid/widget/FrameLayout;

    return-void
.end method

.method protected c()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/reward/d;->c()V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->i:Lcom/kwad/sdk/reward/c/a;

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/b;->m:Lcom/kwad/sdk/contentalliance/detail/video/d;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/reward/c/a;->b(Lcom/kwad/sdk/contentalliance/detail/video/d;)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b;->j:Lcom/kwad/sdk/c/b;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/kwad/sdk/c/b;->i()V

    :cond_13
    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b;->l:Landroid/animation/Animator;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1a
    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b;->k:Landroid/animation/Animator;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/b;->l:Landroid/animation/Animator;

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/b;->k:Landroid/animation/Animator;

    return-void
.end method

.method protected e()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/kwad/sdk/reward/b/b;->l()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lcom/kwad/sdk/reward/b/b;->l()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/core/config/c;->f(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1d
    invoke-static {}, Lcom/kwad/sdk/core/config/c;->n()Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-static {}, Lcom/kwad/sdk/core/config/c;->n()Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;->h5Url:Ljava/lang/String;

    return-object v0

    :cond_2a
    const/4 v0, 0x0

    return-object v0
.end method
