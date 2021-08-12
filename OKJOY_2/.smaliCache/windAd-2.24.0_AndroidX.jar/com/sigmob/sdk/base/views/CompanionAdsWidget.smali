.class public Lcom/sigmob/sdk/base/views/CompanionAdsWidget;
.super Landroid/widget/RelativeLayout;


# instance fields
.field a:I

.field private final b:Landroid/widget/ImageView;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/TextView;

.field private final e:I

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Lcom/sigmob/sdk/base/views/FiveStarView;

.field private i:Lcom/sigmob/volley/toolbox/k$c;

.field private j:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

.field private k:I

.field private l:Z

.field private m:I

.field private n:I

.field private o:Z

.field private p:Z

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;IILjava/lang/String;IIIIIF)V
    .registers 26

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p7

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->j:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    const/4 v3, 0x0

    iput v3, v0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->k:I

    move/from16 v4, p14

    invoke-static {v4, p1}, Lcom/sigmob/sdk/common/f/d;->c(FLandroid/content/Context;)I

    move-result v4

    iput v4, v0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->a:I

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4, p1}, Lcom/sigmob/sdk/common/f/d;->c(FLandroid/content/Context;)I

    move-result v4

    iput v4, v0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->n:I

    move/from16 v4, p6

    iput v4, v0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->k:I

    iput v2, v0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->e:I

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->d:Landroid/widget/TextView;

    move-object v5, p2

    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, 0x1

    const/high16 v6, 0x41880000    # 17.0f

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 v6, -0x1000000

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v4}, Landroid/widget/TextView;->setSingleLine()V

    invoke-static {v3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 v6, 0x10

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setGravity(I)V

    invoke-static {}, Lcom/sigmob/sdk/common/a;->am()I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setId(I)V

    iget v7, v0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->n:I

    div-int/lit8 v7, v7, 0x6

    invoke-virtual {v4, v7, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    move/from16 v7, p11

    iput v7, v0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->m:I

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->c:Landroid/widget/TextView;

    const/high16 v8, 0x41700000    # 15.0f

    invoke-virtual {v7, v5, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    move/from16 v8, p10

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v4}, Landroid/widget/TextView;->setSingleLine()V

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    move-object v4, p3

    invoke-virtual {v7, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4, p1}, Lcom/sigmob/sdk/common/f/d;->c(FLandroid/content/Context;)I

    move-result v4

    new-instance v8, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v8}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    move/from16 v9, p9

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    mul-int/lit8 v9, v4, 0x6

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    new-instance v9, Lcom/sigmob/sdk/base/views/CircleImageView;

    invoke-direct {v9, p1}, Lcom/sigmob/sdk/base/views/CircleImageView;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->b:Landroid/widget/ImageView;

    sget-object v10, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-static {}, Lcom/sigmob/sdk/common/a;->am()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setId(I)V

    move-object v10, v9

    check-cast v10, Lcom/sigmob/sdk/base/views/CircleImageView;

    iput-boolean v3, v10, Lcom/sigmob/sdk/base/views/CircleImageView;->b:Z

    move-object v3, v9

    check-cast v3, Lcom/sigmob/sdk/base/views/CircleImageView;

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iput v4, v3, Lcom/sigmob/sdk/base/views/CircleImageView;->a:F

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v6, :cond_bf

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_c2

    :cond_bf
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_c2
    invoke-static {}, Lcom/sigmob/sdk/common/a;->am()I

    move-result v3

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setId(I)V

    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    move/from16 v4, p12

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    move/from16 v4, p13

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v6, :cond_e3

    invoke-virtual {p0, v3}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_e6

    :cond_e3
    invoke-virtual {p0, v3}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_e6
    iput-object v0, v0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->j:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    if-ne v2, v5, :cond_ef

    move v2, p4

    invoke-virtual {p0, p1, p4}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->a(Landroid/content/Context;F)V

    goto :goto_f4

    :cond_ef
    move-object/from16 v2, p5

    invoke-virtual {p0, p1, v2}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_f4
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->setupUILayout(Landroid/content/Context;)V

    const/4 v1, 0x4

    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v1, p8

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->f()V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/base/views/CompanionAdsWidget;)Lcom/sigmob/sdk/base/views/CompanionAdsWidget;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->j:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    return-object p0
.end method

.method static synthetic a(Lcom/sigmob/sdk/base/views/CompanionAdsWidget;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->p:Z

    return p1
.end method

.method static synthetic b(Lcom/sigmob/sdk/base/views/CompanionAdsWidget;)V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->f()V

    return-void
.end method

.method static synthetic b(Lcom/sigmob/sdk/base/views/CompanionAdsWidget;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->q:Z

    return p1
.end method

.method static synthetic c(Lcom/sigmob/sdk/base/views/CompanionAdsWidget;)Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->b:Landroid/widget/ImageView;

    return-object p0
.end method

.method private c()V
    .registers 2

    iget v0, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->k:I

    packed-switch v0, :pswitch_data_12

    goto :goto_a

    :pswitch_6
    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->e()V

    goto :goto_11

    :goto_a
    :pswitch_a
    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->g()V

    goto :goto_11

    :pswitch_e
    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->d()V

    :goto_11
    return-void

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_e
        :pswitch_a
        :pswitch_6
    .end packed-switch
.end method

.method private d()V
    .registers 16

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    const v2, 0x3f733333    # 0.95f

    invoke-static {v1, v2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v1

    const v3, 0x3f19999a    # 0.6f

    const v4, 0x3f666666    # 0.9f

    invoke-static {v3, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    const v4, 0x3f333333    # 0.7f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    const v6, 0x3f4ccccd    # 0.8f

    invoke-static {v6, v2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    invoke-static {v5, v5}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    const/4 v6, 0x6

    new-array v7, v6, [Landroid/animation/Keyframe;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v9, 0x1

    aput-object v1, v7, v9

    const/4 v10, 0x2

    aput-object v3, v7, v10

    const/4 v11, 0x3

    aput-object v4, v7, v11

    const/4 v12, 0x4

    aput-object v2, v7, v12

    const/4 v13, 0x5

    aput-object v5, v7, v13

    const-string v14, "scaleX"

    invoke-static {v14, v7}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    new-array v6, v6, [Landroid/animation/Keyframe;

    aput-object v0, v6, v8

    aput-object v1, v6, v9

    aput-object v3, v6, v10

    aput-object v4, v6, v11

    aput-object v2, v6, v12

    aput-object v5, v6, v13

    const-string v0, "scaleY"

    invoke-static {v0, v6}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    new-array v1, v10, [Landroid/animation/PropertyValuesHolder;

    aput-object v7, v1, v8

    aput-object v0, v1, v9

    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->e()V

    iput-boolean v9, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->q:Z

    new-instance v1, Lcom/sigmob/sdk/base/views/CompanionAdsWidget$1;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget$1;-><init>(Lcom/sigmob/sdk/base/views/CompanionAdsWidget;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method static synthetic d(Lcom/sigmob/sdk/base/views/CompanionAdsWidget;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->l:Z

    return p0
.end method

.method private e()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->o:Z

    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method static synthetic e(Lcom/sigmob/sdk/base/views/CompanionAdsWidget;)V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->c()V

    return-void
.end method

.method private f()V
    .registers 2

    const/4 v0, 0x4

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private g()V
    .registers 11

    const-string v0, "startDownToUpAnimator"

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x2

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->e()V

    new-instance v1, Lcom/sigmob/sdk/base/views/CompanionAdsWidget$2;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget$2;-><init>(Lcom/sigmob/sdk/base/views/CompanionAdsWidget;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->j:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private h()V
    .registers 11

    const-string v0, "startUpToDownAnimator"

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v1, Lcom/sigmob/sdk/base/views/CompanionAdsWidget$3;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget$3;-><init>(Lcom/sigmob/sdk/base/views/CompanionAdsWidget;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->j:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private setupUILayout(Landroid/content/Context;)V
    .registers 12

    const/high16 v0, 0x42700000    # 60.0f

    invoke-static {v0, p1}, Lcom/sigmob/sdk/common/f/d;->c(FLandroid/content/Context;)I

    move-result p1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget v2, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->n:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v0}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v4, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->n:I

    div-int/lit8 v5, v4, 0x2

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v0, v5, v4, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v4, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->b:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getId()I

    move-result v4

    const/4 v5, 0x6

    invoke-virtual {v0, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v4, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->b:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getId()I

    move-result v4

    const/4 v6, 0x1

    invoke-virtual {v0, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v4, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->c:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getId()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v4, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->d:Landroid/widget/TextView;

    invoke-virtual {p0, v4, v0}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->f:Landroid/widget/TextView;

    const/4 v4, 0x5

    const/16 v7, 0x8

    if-eqz v0, :cond_b2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v8, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->n:I

    div-int/lit8 v9, v8, 0x4

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {v0, v9, v3, v3, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v8, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->b:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getId()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v8, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->d:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getId()I

    move-result v8

    invoke-virtual {v0, v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v4, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->f:Landroid/widget/TextView;

    invoke-virtual {p0, v4, v0}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v4, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->n:I

    div-int/lit8 v8, v4, 0x2

    div-int/lit8 v9, v4, 0x4

    div-int/lit8 v4, v4, 0x4

    invoke-virtual {v0, v8, v9, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v4, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->f:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getId()I

    move-result v4

    invoke-virtual {v0, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v4, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->c:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getId()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v4, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->f:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getId()I

    move-result v4

    invoke-virtual {v0, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v4, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->f:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getId()I

    move-result v4

    invoke-virtual {v0, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v4, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->h:Lcom/sigmob/sdk/base/views/FiveStarView;

    :goto_ae
    invoke-virtual {p0, v4, v0}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_e0

    :cond_b2
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_e0

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v5, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->n:I

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v0, v3, v3, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v5, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->d:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getId()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v4, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->c:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getId()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v4, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->b:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getId()I

    move-result v4

    invoke-virtual {v0, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v4, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->g:Landroid/widget/TextView;

    goto :goto_ae

    :cond_e0
    :goto_e0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    int-to-float p1, p1

    const v4, 0x3fe66666    # 1.8f

    div-float/2addr p1, v4

    float-to-int p1, p1

    invoke-direct {v0, v2, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget p1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->n:I

    invoke-virtual {v0, v3, v3, p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p1, 0xb

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->c:Landroid/widget/TextView;

    iget v1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->n:I

    invoke-virtual {p1, v1, v3, v1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->c:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v0}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;F)V
    .registers 7

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->f:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->f:Landroid/widget/TextView;

    invoke-static {}, Lcom/sigmob/sdk/common/a;->am()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setId(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->f:Landroid/widget/TextView;

    const v2, -0x777778

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_37

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->f:Landroid/widget/TextView;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "%.1f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_37
    new-instance v0, Lcom/sigmob/sdk/base/views/FiveStarView;

    invoke-direct {v0, p1, p2}, Lcom/sigmob/sdk/base/views/FiveStarView;-><init>(Landroid/content/Context;F)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->h:Lcom/sigmob/sdk/base/views/FiveStarView;

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->g:Landroid/widget/TextView;

    invoke-static {}, Lcom/sigmob/sdk/common/a;->am()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setId(I)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->g:Landroid/widget/TextView;

    const v0, -0x777778

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->g:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->setSingleLine()V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->g:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->g:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {}, Lcom/sigmob/sdk/common/e/f;->b()Lcom/sigmob/volley/toolbox/k;

    move-result-object v0

    if-eqz v0, :cond_17

    new-instance v1, Lcom/sigmob/sdk/base/views/CompanionAdsWidget$4;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget$4;-><init>(Lcom/sigmob/sdk/base/views/CompanionAdsWidget;)V

    invoke-virtual {v0, p1, v1}, Lcom/sigmob/volley/toolbox/k;->a(Ljava/lang/String;Lcom/sigmob/volley/toolbox/k$d;)Lcom/sigmob/volley/toolbox/k$c;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->i:Lcom/sigmob/volley/toolbox/k$c;

    :cond_17
    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->o:Z

    return v0
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->p:Z

    return v0
.end method

.method public getVisibility()I
    .registers 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    return v0
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .registers 4

    iget v0, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->m:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_e

    :cond_b
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_e
    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    const/16 v0, 0x8

    if-ne p1, v0, :cond_10

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->i:Lcom/sigmob/volley/toolbox/k$c;

    invoke-virtual {p1}, Lcom/sigmob/volley/toolbox/k$c;->a()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->l:Z

    goto :goto_42

    :cond_10
    if-nez p1, :cond_2f

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->l:Z

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->j:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    if-nez p1, :cond_2e

    iget-boolean p1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->q:Z

    if-eqz p1, :cond_22

    goto :goto_2e

    :cond_22
    iget-object p1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_42

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->c()V

    goto :goto_42

    :cond_2e
    :goto_2e
    return-void

    :cond_2f
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3f

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->j:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p1, :cond_3b

    return-void

    :cond_3b
    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->h()V

    goto :goto_42

    :cond_3f
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_42
    :goto_42
    return-void
.end method
