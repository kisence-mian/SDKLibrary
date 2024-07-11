.class public Lcom/sigmob/volley/toolbox/NetworkImageView;
.super Landroid/widget/ImageView;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Lcom/sigmob/volley/toolbox/k;

.field private e:Lcom/sigmob/volley/toolbox/k$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sigmob/volley/toolbox/NetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sigmob/volley/toolbox/NetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/volley/toolbox/NetworkImageView;)I
    .registers 1

    iget p0, p0, Lcom/sigmob/volley/toolbox/NetworkImageView;->c:I

    return p0
.end method

.method private a()V
    .registers 2

    iget v0, p0, Lcom/sigmob/volley/toolbox/NetworkImageView;->b:I

    if-eqz v0, :cond_8

    invoke-virtual {p0, v0}, Lcom/sigmob/volley/toolbox/NetworkImageView;->setImageResource(I)V

    goto :goto_c

    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sigmob/volley/toolbox/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_c
    return-void
.end method

.method static synthetic b(Lcom/sigmob/volley/toolbox/NetworkImageView;)I
    .registers 1

    iget p0, p0, Lcom/sigmob/volley/toolbox/NetworkImageView;->b:I

    return p0
.end method


# virtual methods
.method a(Z)V
    .registers 10

    invoke-virtual {p0}, Lcom/sigmob/volley/toolbox/NetworkImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/sigmob/volley/toolbox/NetworkImageView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/sigmob/volley/toolbox/NetworkImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sigmob/volley/toolbox/NetworkImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2c

    invoke-virtual {p0}, Lcom/sigmob/volley/toolbox/NetworkImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v5, -0x2

    if-ne v2, v5, :cond_1f

    move v2, v3

    goto :goto_20

    :cond_1f
    move v2, v4

    :goto_20
    invoke-virtual {p0}, Lcom/sigmob/volley/toolbox/NetworkImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v6, v5, :cond_2a

    move v5, v3

    goto :goto_2e

    :cond_2a
    move v5, v4

    goto :goto_2e

    :cond_2c
    move v2, v4

    move v5, v2

    :goto_2e
    if-eqz v2, :cond_33

    if-eqz v5, :cond_33

    goto :goto_34

    :cond_33
    move v3, v4

    :goto_34
    if-nez v0, :cond_3b

    if-nez v1, :cond_3b

    if-nez v3, :cond_3b

    return-void

    :cond_3b
    iget-object v3, p0, Lcom/sigmob/volley/toolbox/NetworkImageView;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_51

    iget-object p1, p0, Lcom/sigmob/volley/toolbox/NetworkImageView;->e:Lcom/sigmob/volley/toolbox/k$c;

    if-eqz p1, :cond_4d

    invoke-virtual {p1}, Lcom/sigmob/volley/toolbox/k$c;->a()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sigmob/volley/toolbox/NetworkImageView;->e:Lcom/sigmob/volley/toolbox/k$c;

    :cond_4d
    invoke-direct {p0}, Lcom/sigmob/volley/toolbox/NetworkImageView;->a()V

    return-void

    :cond_51
    iget-object v3, p0, Lcom/sigmob/volley/toolbox/NetworkImageView;->e:Lcom/sigmob/volley/toolbox/k$c;

    if-eqz v3, :cond_72

    invoke-virtual {v3}, Lcom/sigmob/volley/toolbox/k$c;->c()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_72

    iget-object v3, p0, Lcom/sigmob/volley/toolbox/NetworkImageView;->e:Lcom/sigmob/volley/toolbox/k$c;

    invoke-virtual {v3}, Lcom/sigmob/volley/toolbox/k$c;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/sigmob/volley/toolbox/NetworkImageView;->a:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a

    return-void

    :cond_6a
    iget-object v3, p0, Lcom/sigmob/volley/toolbox/NetworkImageView;->e:Lcom/sigmob/volley/toolbox/k$c;

    invoke-virtual {v3}, Lcom/sigmob/volley/toolbox/k$c;->a()V

    invoke-direct {p0}, Lcom/sigmob/volley/toolbox/NetworkImageView;->a()V

    :cond_72
    if-eqz v2, :cond_75

    move v0, v4

    :cond_75
    if-eqz v5, :cond_79

    move v6, v4

    goto :goto_7a

    :cond_79
    move v6, v1

    :goto_7a
    iget-object v2, p0, Lcom/sigmob/volley/toolbox/NetworkImageView;->d:Lcom/sigmob/volley/toolbox/k;

    iget-object v3, p0, Lcom/sigmob/volley/toolbox/NetworkImageView;->a:Ljava/lang/String;

    new-instance v4, Lcom/sigmob/volley/toolbox/NetworkImageView$1;

    invoke-direct {v4, p0, p1}, Lcom/sigmob/volley/toolbox/NetworkImageView$1;-><init>(Lcom/sigmob/volley/toolbox/NetworkImageView;Z)V

    move v5, v0

    invoke-virtual/range {v2 .. v7}, Lcom/sigmob/volley/toolbox/k;->a(Ljava/lang/String;Lcom/sigmob/volley/toolbox/k$d;IILandroid/widget/ImageView$ScaleType;)Lcom/sigmob/volley/toolbox/k$c;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/volley/toolbox/NetworkImageView;->e:Lcom/sigmob/volley/toolbox/k$c;

    return-void
.end method

.method protected drawableStateChanged()V
    .registers 1

    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    invoke-virtual {p0}, Lcom/sigmob/volley/toolbox/NetworkImageView;->invalidate()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/NetworkImageView;->e:Lcom/sigmob/volley/toolbox/k$c;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/sigmob/volley/toolbox/k$c;->a()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sigmob/volley/toolbox/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sigmob/volley/toolbox/NetworkImageView;->e:Lcom/sigmob/volley/toolbox/k$c;

    :cond_d
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sigmob/volley/toolbox/NetworkImageView;->a(Z)V

    return-void
.end method

.method public setDefaultImageResId(I)V
    .registers 2

    iput p1, p0, Lcom/sigmob/volley/toolbox/NetworkImageView;->b:I

    return-void
.end method

.method public setErrorImageResId(I)V
    .registers 2

    iput p1, p0, Lcom/sigmob/volley/toolbox/NetworkImageView;->c:I

    return-void
.end method
