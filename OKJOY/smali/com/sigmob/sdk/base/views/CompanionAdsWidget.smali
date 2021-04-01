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

.field private i:Lcom/sigmob/volley/toolbox/s;

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
    .registers 21

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->j:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    const/4 v1, 0x0

    iput v1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->k:I

    move/from16 v0, p14

    invoke-static {v0, p1}, Lcom/sigmob/sdk/base/common/utils/b;->c(FLandroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->a:I

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1, p1}, Lcom/sigmob/sdk/base/common/utils/b;->c(FLandroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->n:I

    iput p6, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->k:I

    iput p7, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->e:I

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->d:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->d:Landroid/widget/TextView;

    const/4 v2, 0x1

    const/high16 v3, 0x41880000    # 17.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->d:Landroid/widget/TextView;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->d:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->d:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->d:Landroid/widget/TextView;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->d:Landroid/widget/TextView;

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->as()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->d:Landroid/widget/TextView;

    iget v2, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->n:I

    div-int/lit8 v2, v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    move/from16 v0, p11

    iput v0, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->m:I

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->c:Landroid/widget/TextView;

    const/4 v2, 0x1

    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->c:Landroid/widget/TextView;

    move/from16 v0, p10

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->c:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->c:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->c:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v1, p1}, Lcom/sigmob/sdk/base/common/utils/b;->c(FLandroid/content/Context;)I

    move-result v2

    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v3, p9}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    mul-int/lit8 v1, v2, 0x6

    int-to-float v1, v1

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    new-instance v1, Lcom/sigmob/sdk/base/views/CircleImageView;

    invoke-direct {v1, p1}, Lcom/sigmob/sdk/base/views/CircleImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->b:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->b:Landroid/widget/ImageView;

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->as()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setId(I)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->b:Landroid/widget/ImageView;

    check-cast v1, Lcom/sigmob/sdk/base/views/CircleImageView;

    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/sigmob/sdk/base/views/CircleImageView;->b:Z

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->b:Landroid/widget/ImageView;

    check-cast v1, Lcom/sigmob/sdk/base/views/CircleImageView;

    mul-int/lit8 v4, v2, 0x2

    int-to-float v4, v4

    iput v4, v1, Lcom/sigmob/sdk/base/views/CircleImageView;->a:F

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v1, v4, :cond_123

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_e2
    iget-object v1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->c:Landroid/widget/TextView;

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->as()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setId(I)V

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    move/from16 v0, p12

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    move/from16 v0, p13

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_129

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_109
    iput-object p0, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->j:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    iget v1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->e:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12d

    invoke-virtual {p0, p1, p4}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->a(Landroid/content/Context;F)V

    :goto_113
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->a(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->b:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0, p8}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->g()V

    return-void

    :cond_123
    iget-object v1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_e2

    :cond_129
    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_109

    :cond_12d
    invoke-virtual {p0, p1, p5}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_113
.end method

.method static synthetic a(Lcom/sigmob/sdk/base/views/CompanionAdsWidget;)Lcom/sigmob/sdk/base/views/CompanionAdsWidget;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->j:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .registers 11

    const/4 v4, 0x5

    const/4 v8, 0x1

    const/16 v7, 0x8

    const/4 v6, -0x2

    const/4 v5, 0x0

    const/high16 v0, 0x42700000    # 60.0f

    invoke-static {v0, p1}, Lcom/sigmob/sdk/base/common/utils/b;->c(FLandroid/content/Context;)I

    move-result v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget v2, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->n:I

    invoke-virtual {v1, v2, v5, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v1}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v2, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->n:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->n:I

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->b:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->b:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getId()I

    move-result v2

    invoke-virtual {v1, v8, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->c:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getId()I

    move-result v2

    invoke-virtual {v1, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->d:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v1}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->f:Landroid/widget/TextView;

    if-eqz v1, :cond_e3

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v2, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->n:I

    div-int/lit8 v2, v2, 0x4

    iget v3, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->n:I

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v5, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->b:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getId()I

    move-result v2

    invoke-virtual {v1, v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->d:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getId()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->f:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v1}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v2, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->n:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->n:I

    div-int/lit8 v3, v3, 0x4

    iget v4, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->n:I

    div-int/lit8 v4, v4, 0x4

    invoke-virtual {v1, v2, v3, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->f:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getId()I

    move-result v2

    invoke-virtual {v1, v8, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->c:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getId()I

    move-result v2

    invoke-virtual {v1, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->f:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->f:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getId()I

    move-result v2

    invoke-virtual {v1, v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->h:Lcom/sigmob/sdk/base/views/FiveStarView;

    invoke-virtual {p0, v2, v1}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_ba
    :goto_ba
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    int-to-float v0, v0

    const v2, 0x3fe66666    # 1.8f

    div-float/2addr v0, v2

    float-to-int v0, v0

    invoke-direct {v1, v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v0, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->n:I

    invoke-virtual {v1, v5, v5, v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->c:Landroid/widget/TextView;

    iget v2, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->n:I

    iget v3, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->n:I

    invoke-virtual {v0, v2, v5, v3, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->c:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_e3
    iget-object v1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->g:Landroid/widget/TextView;

    if-eqz v1, :cond_ba

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v2, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->n:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v5, v5, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->d:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getId()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->c:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getId()I

    move-result v2

    invoke-virtual {v1, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->b:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getId()I

    move-result v2

    invoke-virtual {v1, v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->g:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v1}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_ba
.end method

.method static synthetic a(Lcom/sigmob/sdk/base/views/CompanionAdsWidget;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->p:Z

    return p1
.end method

.method static synthetic b(Lcom/sigmob/sdk/base/views/CompanionAdsWidget;)V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->g()V

    return-void
.end method

.method static synthetic b(Lcom/sigmob/sdk/base/views/CompanionAdsWidget;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->q:Z

    return p1
.end method

.method static synthetic c(Lcom/sigmob/sdk/base/views/CompanionAdsWidget;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method private c()V
    .registers 2

    iget v0, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->k:I

    packed-switch v0, :pswitch_data_16

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->h()V

    :goto_8
    return-void

    :pswitch_9
    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->e()V

    goto :goto_8

    :pswitch_d
    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->h()V

    goto :goto_8

    :pswitch_11
    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->f()V

    goto :goto_8

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_9
        :pswitch_d
        :pswitch_11
    .end packed-switch
.end method

.method private d()V
    .registers 5

    const/4 v2, 0x3

    const-string v0, "scaleX"

    new-array v1, v2, [F

    fill-array-data v1, :array_38

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    const-string v1, "scaleY"

    new-array v2, v2, [F

    fill-array-data v2, :array_42

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {p0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/sigmob/sdk/base/views/CompanionAdsWidget$1;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget$1;-><init>(Lcom/sigmob/sdk/base/views/CompanionAdsWidget;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->f()V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_38
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_42
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic d(Lcom/sigmob/sdk/base/views/CompanionAdsWidget;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->l:Z

    return v0
.end method

.method private e()V
    .registers 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ObjectAnimatorBinding"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    invoke-static {v0, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    const v2, 0x3f733333    # 0.95f

    invoke-static {v1, v2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v1

    const v2, 0x3f19999a    # 0.6f

    const v3, 0x3f666666    # 0.9f

    invoke-static {v2, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    const v3, 0x3f333333    # 0.7f

    invoke-static {v3, v6}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    const v4, 0x3f4ccccd    # 0.8f

    const v5, 0x3f733333    # 0.95f

    invoke-static {v4, v5}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    invoke-static {v6, v6}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    const-string v6, "scaleX"

    const/4 v7, 0x6

    new-array v7, v7, [Landroid/animation/Keyframe;

    aput-object v0, v7, v10

    aput-object v1, v7, v9

    aput-object v2, v7, v11

    const/4 v8, 0x3

    aput-object v3, v7, v8

    const/4 v8, 0x4

    aput-object v4, v7, v8

    const/4 v8, 0x5

    aput-object v5, v7, v8

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    const-string v7, "scaleY"

    const/4 v8, 0x6

    new-array v8, v8, [Landroid/animation/Keyframe;

    aput-object v0, v8, v10

    aput-object v1, v8, v9

    aput-object v2, v8, v11

    const/4 v0, 0x3

    aput-object v3, v8, v0

    const/4 v0, 0x4

    aput-object v4, v8, v0

    const/4 v0, 0x5

    aput-object v5, v8, v0

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    new-array v1, v11, [Landroid/animation/PropertyValuesHolder;

    aput-object v6, v1, v10

    aput-object v0, v1, v9

    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->f()V

    iput-boolean v9, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->q:Z

    new-instance v1, Lcom/sigmob/sdk/base/views/CompanionAdsWidget$2;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget$2;-><init>(Lcom/sigmob/sdk/base/views/CompanionAdsWidget;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method static synthetic e(Lcom/sigmob/sdk/base/views/CompanionAdsWidget;)V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->c()V

    return-void
.end method

.method private f()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->o:Z

    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private g()V
    .registers 2

    const/4 v0, 0x4

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private h()V
    .registers 10

    const/4 v2, 0x0

    const/4 v1, 0x2

    const-string v0, "startDownToUpAnimator"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->f()V

    new-instance v1, Lcom/sigmob/sdk/base/views/CompanionAdsWidget$3;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget$3;-><init>(Lcom/sigmob/sdk/base/views/CompanionAdsWidget;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->j:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private i()V
    .registers 10

    const/4 v2, 0x0

    const/4 v1, 0x2

    const-string v0, "startUpToDownAnimator"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, 0x3f800000    # 1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v1, Lcom/sigmob/sdk/base/views/CompanionAdsWidget$4;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget$4;-><init>(Lcom/sigmob/sdk/base/views/CompanionAdsWidget;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->j:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;F)V
    .registers 8

    const/4 v2, 0x1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->f:Landroid/widget/TextView;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->f:Landroid/widget/TextView;

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->as()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->f:Landroid/widget/TextView;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_39

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->f:Landroid/widget/TextView;

    const-string v1, "%.1f"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_39
    new-instance v0, Lcom/sigmob/sdk/base/views/FiveStarView;

    invoke-direct {v0, p1, p2}, Lcom/sigmob/sdk/base/views/FiveStarView;-><init>(Landroid/content/Context;F)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->h:Lcom/sigmob/sdk/base/views/FiveStarView;

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->g:Landroid/widget/TextView;

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->as()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->g:Landroid/widget/TextView;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->g:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {}, Lcom/sigmob/sdk/base/c/i;->b()Lcom/sigmob/volley/toolbox/p;

    move-result-object v0

    if-eqz v0, :cond_17

    new-instance v1, Lcom/sigmob/sdk/base/views/CompanionAdsWidget$5;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget$5;-><init>(Lcom/sigmob/sdk/base/views/CompanionAdsWidget;)V

    invoke-virtual {v0, p1, v1}, Lcom/sigmob/volley/toolbox/p;->a(Ljava/lang/String;Lcom/sigmob/volley/toolbox/t;)Lcom/sigmob/volley/toolbox/s;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->i:Lcom/sigmob/volley/toolbox/s;

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

    :goto_a
    return-void

    :cond_b
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_a
.end method

.method public setVisibility(I)V
    .registers 3

    const/16 v0, 0x8

    if-ne p1, v0, :cond_10

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->i:Lcom/sigmob/volley/toolbox/s;

    invoke-virtual {v0}, Lcom/sigmob/volley/toolbox/s;->a()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->l:Z

    :cond_f
    :goto_f
    return-void

    :cond_10
    if-nez p1, :cond_2d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->l:Z

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->j:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->q:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->c()V

    goto :goto_f

    :cond_2d
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3c

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->j:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_f

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->i()V

    goto :goto_f

    :cond_3c
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_f
.end method
