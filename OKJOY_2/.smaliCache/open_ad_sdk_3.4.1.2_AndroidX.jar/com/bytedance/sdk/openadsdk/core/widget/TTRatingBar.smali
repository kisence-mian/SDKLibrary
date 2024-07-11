.class public Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;
.super Landroid/widget/LinearLayout;
.source "TTRatingBar.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:F

.field private e:F

.field private f:F

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/4 p2, 0x5

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->a:I

    .line 19
    const/4 p2, 0x0

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->b:I

    .line 20
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->c:I

    .line 31
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->setOrientation(I)V

    .line 33
    const-string p2, "tt_star_empty_bg"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->g:Landroid/graphics/drawable/Drawable;

    .line 34
    const-string v0, "tt_star_full_bg"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->h:Landroid/graphics/drawable/Drawable;

    .line 35
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->i:Landroid/graphics/drawable/Drawable;

    .line 37
    const/high16 p2, 0x41700000    # 15.0f

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->d:F

    .line 38
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->e:F

    .line 39
    const/high16 p2, 0x40a00000    # 5.0f

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->f:F

    .line 41
    return-void
.end method

.method private getStarImageView()Landroid/widget/ImageView;
    .registers 5

    .line 140
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 141
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->d:F

    .line 142
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->e:F

    .line 143
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 145
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->f:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 147
    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 5

    .line 116
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->removeAllViews()V

    .line 118
    const/4 v0, 0x0

    move v1, v0

    :goto_5
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->getStarFillNum()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 119
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->getStarImageView()Landroid/widget/ImageView;

    move-result-object v2

    .line 120
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->getStarFillDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->addView(Landroid/view/View;)V

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 125
    :cond_1c
    move v1, v0

    :goto_1d
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->getStarHalfNum()I

    move-result v2

    if-ge v1, v2, :cond_34

    .line 126
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->getStarImageView()Landroid/widget/ImageView;

    move-result-object v2

    .line 127
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->getStarHalfDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 128
    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->addView(Landroid/view/View;)V

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 132
    :cond_34
    nop

    :goto_35
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->getStarEmptyNum()I

    move-result v1

    if-ge v0, v1, :cond_4c

    .line 133
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->getStarImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 134
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->getStarEmptyDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 135
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->addView(Landroid/view/View;)V

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    .line 137
    :cond_4c
    return-void
.end method

.method public getStarEmptyDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->g:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getStarEmptyNum()I
    .registers 2

    .line 60
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->c:I

    return v0
.end method

.method public getStarFillDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->h:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getStarFillNum()I
    .registers 2

    .line 44
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->a:I

    return v0
.end method

.method public getStarHalfDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->i:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getStarHalfNum()I
    .registers 2

    .line 52
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->b:I

    return v0
.end method

.method public getStarImageHeight()F
    .registers 2

    .line 76
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->e:F

    return v0
.end method

.method public getStarImagePadding()F
    .registers 2

    .line 84
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->f:F

    return v0
.end method

.method public getStarImageWidth()F
    .registers 2

    .line 68
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->d:F

    return v0
.end method

.method public setStarEmptyDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 96
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->g:Landroid/graphics/drawable/Drawable;

    .line 97
    return-void
.end method

.method public setStarEmptyNum(I)V
    .registers 2

    .line 64
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->c:I

    .line 65
    return-void
.end method

.method public setStarFillDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 104
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->h:Landroid/graphics/drawable/Drawable;

    .line 105
    return-void
.end method

.method public setStarFillNum(I)V
    .registers 2

    .line 48
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->a:I

    .line 49
    return-void
.end method

.method public setStarHalfDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 112
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->i:Landroid/graphics/drawable/Drawable;

    .line 113
    return-void
.end method

.method public setStarHalfNum(I)V
    .registers 2

    .line 56
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->b:I

    .line 57
    return-void
.end method

.method public setStarImageHeight(F)V
    .registers 2

    .line 80
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->e:F

    .line 81
    return-void
.end method

.method public setStarImagePadding(F)V
    .registers 2

    .line 88
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->f:F

    .line 89
    return-void
.end method

.method public setStarImageWidth(F)V
    .registers 2

    .line 72
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->d:F

    .line 73
    return-void
.end method
