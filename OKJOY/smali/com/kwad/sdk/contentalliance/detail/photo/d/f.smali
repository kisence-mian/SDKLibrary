.class public Lcom/kwad/sdk/contentalliance/detail/photo/d/f;
.super Landroid/widget/LinearLayout;
.source ""


# instance fields
.field private a:I

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/ksad/lottie/LottieAnimationView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/contentalliance/detail/photo/d/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/f;->a:I

    iput-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/f;->b:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/f;->c:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/photo/d/f;->c()V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/contentalliance/detail/photo/d/f;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/f;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method private a(I)V
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/f;->d:Lcom/ksad/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/ksad/lottie/LottieAnimationView;->a()V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_40

    move v0, v1

    :goto_b
    iget-object v4, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/f;->d:Lcom/ksad/lottie/LottieAnimationView;

    if-eqz v0, :cond_42

    const v3, 0x3f99999a    # 1.2f

    :goto_12
    invoke-virtual {v4, v3}, Lcom/ksad/lottie/LottieAnimationView;->setSpeed(F)V

    iget-object v3, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/f;->d:Lcom/ksad/lottie/LottieAnimationView;

    invoke-virtual {v3, v1}, Lcom/ksad/lottie/LottieAnimationView;->a(Z)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v0, :cond_45

    const-string v0, "ksad_detail_right_button_like_anim"

    :goto_22
    invoke-static {v1, v0}, Lcom/kwad/sdk/e/l;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/f;->d:Lcom/ksad/lottie/LottieAnimationView;

    invoke-virtual {v1, v0}, Lcom/ksad/lottie/LottieAnimationView;->setAnimation(I)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/f;->d:Lcom/ksad/lottie/LottieAnimationView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/AppCompatImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/f;->d:Lcom/ksad/lottie/LottieAnimationView;

    new-instance v1, Lcom/kwad/sdk/contentalliance/detail/photo/d/f$a;

    invoke-direct {v1, p0, p1}, Lcom/kwad/sdk/contentalliance/detail/photo/d/f$a;-><init>(Lcom/kwad/sdk/contentalliance/detail/photo/d/f;I)V

    invoke-virtual {v0, v1}, Lcom/ksad/lottie/LottieAnimationView;->a(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/f;->d:Lcom/ksad/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/ksad/lottie/LottieAnimationView;->c()V

    return-void

    :cond_40
    move v0, v2

    goto :goto_b

    :cond_42
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_12

    :cond_45
    const-string v0, "ksad_detail_right_button_unlike_anim"

    goto :goto_22
.end method

.method static synthetic a(Lcom/kwad/sdk/contentalliance/detail/photo/d/f;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kwad/sdk/contentalliance/detail/photo/d/f;->setImageView(I)V

    return-void
.end method

.method static synthetic b(Lcom/kwad/sdk/contentalliance/detail/photo/d/f;)Lcom/ksad/lottie/LottieAnimationView;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/f;->d:Lcom/ksad/lottie/LottieAnimationView;

    return-object v0
.end method

.method private c()V
    .registers 4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ksad_content_alliance_photo_like_button"

    invoke-static {v1, v2}, Lcom/kwad/sdk/e/l;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ksad_photo_like_button_image"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/f;->b:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ksad_photo_like_count_text"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/f;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ksad_photo_like_animation_view"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/f;->d:Lcom/ksad/lottie/LottieAnimationView;

    return-void
.end method

.method private setImageView(I)V
    .registers 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_13

    const-string v0, "ksad_photo_like_button_normal"

    :goto_5
    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/f;->b:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/kwad/sdk/e/l;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_13
    const-string v0, "ksad_photo_like_button_selected"

    goto :goto_5
.end method

.method private setImageViewWithAnimator(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kwad/sdk/contentalliance/detail/photo/d/f;->setImageView(I)V

    invoke-direct {p0, p1}, Lcom/kwad/sdk/contentalliance/detail/photo/d/f;->a(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/f;->d:Lcom/ksad/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/ksad/lottie/LottieAnimationView;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/f;->d:Lcom/ksad/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/ksad/lottie/LottieAnimationView;->a()V

    :cond_d
    return-void
.end method

.method public a(IJ)V
    .registers 4

    iput p1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/f;->a:I

    invoke-direct {p0, p1}, Lcom/kwad/sdk/contentalliance/detail/photo/d/f;->setImageView(I)V

    invoke-virtual {p0, p2, p3}, Lcom/kwad/sdk/contentalliance/detail/photo/d/f;->setLikeCount(J)V

    return-void
.end method

.method public b()Z
    .registers 3

    iget v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/f;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getLikeState()I
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/f;->a:I

    return v0
.end method

.method public setLikeCount(J)V
    .registers 6

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/f;->c:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/kwad/sdk/e/n;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLikeState(I)V
    .registers 2

    iput p1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/f;->a:I

    invoke-direct {p0, p1}, Lcom/kwad/sdk/contentalliance/detail/photo/d/f;->setImageViewWithAnimator(I)V

    return-void
.end method
