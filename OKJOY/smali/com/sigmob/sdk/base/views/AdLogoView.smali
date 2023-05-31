.class public Lcom/sigmob/sdk/base/views/AdLogoView;
.super Landroid/widget/RelativeLayout;


# static fields
.field private static d:F = 0.0f

.field private static final e:F = 1.0f


# instance fields
.field private final a:I

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private f:Lcom/sigmob/volley/toolbox/s;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/high16 v0, 0x41000000    # 8.0f

    sput v0, Lcom/sigmob/sdk/base/views/AdLogoView;->d:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 11

    const/4 v4, -0x2

    const/high16 v3, 0x41200000    # 10.0f

    const/16 v7, 0xc

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput p2, p0, Lcom/sigmob/sdk/base/views/AdLogoView;->a:I

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/AdLogoView;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/AdLogoView;->b:Landroid/widget/ImageView;

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->as()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/AdLogoView;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/AdLogoView;->c:Landroid/widget/TextView;

    const-string v1, "#999999"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/AdLogoView;->c:Landroid/widget/TextView;

    sget v1, Lcom/sigmob/sdk/base/views/AdLogoView;->d:F

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 v0, 0x40400000    # 3.0f

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/AdLogoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/common/utils/b;->b(FLandroid/content/Context;)I

    move-result v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v3, p1}, Lcom/sigmob/sdk/base/common/utils/b;->b(FLandroid/content/Context;)I

    move-result v2

    invoke-direct {v1, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v3, p1}, Lcom/sigmob/sdk/base/common/utils/b;->b(FLandroid/content/Context;)I

    move-result v3

    invoke-direct {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/sigmob/sdk/base/views/AdLogoView;->c:Landroid/widget/TextView;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v3, p0, Lcom/sigmob/sdk/base/views/AdLogoView;->b:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    if-ne p2, v6, :cond_93

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    mul-int/lit8 v3, v0, 0x2

    invoke-virtual {v2, v3, v5, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    mul-int/lit8 v3, v0, 0x2

    invoke-virtual {v1, v5, v5, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :goto_7f
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/AdLogoView;->b:Landroid/widget/ImageView;

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/AdLogoView;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/sdk/base/views/AdLogoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/AdLogoView;->c:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v2}, Lcom/sigmob/sdk/base/views/AdLogoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_93
    mul-int/lit8 v3, v0, 0x4

    invoke-virtual {v1, v3, v5, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v0, v5, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/AdLogoView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getId()I

    move-result v0

    invoke-virtual {v2, v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v0, 0x8

    iget-object v3, p0, Lcom/sigmob/sdk/base/views/AdLogoView;->b:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getId()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_7f
.end method

.method static synthetic a(Lcom/sigmob/sdk/base/views/AdLogoView;)I
    .registers 2

    iget v0, p0, Lcom/sigmob/sdk/base/views/AdLogoView;->a:I

    return v0
.end method

.method static synthetic b(Lcom/sigmob/sdk/base/views/AdLogoView;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/AdLogoView;->b:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .registers 3

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/AdLogoView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_7
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lcom/sigmob/sdk/base/c/i;->b()Lcom/sigmob/volley/toolbox/p;

    move-result-object v0

    if-eqz v0, :cond_11

    new-instance v1, Lcom/sigmob/sdk/base/views/AdLogoView$1;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/base/views/AdLogoView$1;-><init>(Lcom/sigmob/sdk/base/views/AdLogoView;)V

    invoke-virtual {v0, p1, v1}, Lcom/sigmob/volley/toolbox/p;->a(Ljava/lang/String;Lcom/sigmob/volley/toolbox/t;)Lcom/sigmob/volley/toolbox/s;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/AdLogoView;->f:Lcom/sigmob/volley/toolbox/s;

    :cond_11
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/AdLogoView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string v1, "showAdText error"

    invoke-static {v1, v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method
