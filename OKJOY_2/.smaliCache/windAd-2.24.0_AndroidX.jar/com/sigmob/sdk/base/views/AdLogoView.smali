.class public Lcom/sigmob/sdk/base/views/AdLogoView;
.super Landroid/widget/RelativeLayout;


# static fields
.field private static d:F


# instance fields
.field private final a:I

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private e:Lcom/sigmob/volley/toolbox/k$c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/high16 v0, 0x41000000    # 8.0f

    sput v0, Lcom/sigmob/sdk/base/views/AdLogoView;->d:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 9

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput p2, p0, Lcom/sigmob/sdk/base/views/AdLogoView;->a:I

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/AdLogoView;->b:Landroid/widget/ImageView;

    invoke-static {}, Lcom/sigmob/sdk/common/a;->am()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/AdLogoView;->c:Landroid/widget/TextView;

    const-string v1, "#B9B9B9"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/AdLogoView;->c:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/AdLogoView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v2, v0}, Lcom/sigmob/sdk/common/f/d;->b(FLandroid/content/Context;)I

    move-result v0

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3, p1}, Lcom/sigmob/sdk/common/f/d;->b(FLandroid/content/Context;)I

    move-result v4

    invoke-static {v3, p1}, Lcom/sigmob/sdk/common/f/d;->b(FLandroid/content/Context;)I

    move-result v5

    invoke-direct {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v3, p1}, Lcom/sigmob/sdk/common/f/d;->b(FLandroid/content/Context;)I

    move-result p1

    const/4 v3, -0x2

    invoke-direct {v4, v3, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/AdLogoView;->c:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/AdLogoView;->b:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/16 p1, 0x9

    const/16 v3, 0xc

    const/4 v5, 0x0

    if-ne p2, v1, :cond_7a

    invoke-virtual {v4, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    mul-int/lit8 p1, v0, 0x2

    invoke-virtual {v4, v0, v5, v5, p1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 p2, 0xb

    invoke-virtual {v2, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v5, v5, v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_9a

    :cond_7a
    invoke-virtual {v2, v0, v5, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v4, v5, v5, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/AdLogoView;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getId()I

    move-result p1

    invoke-virtual {v4, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 p1, 0x8

    iget-object p2, p0, Lcom/sigmob/sdk/base/views/AdLogoView;->b:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getId()I

    move-result p2

    invoke-virtual {v4, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_9a
    iget-object p1, p0, Lcom/sigmob/sdk/base/views/AdLogoView;->b:Landroid/widget/ImageView;

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/AdLogoView;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, p1, v2}, Lcom/sigmob/sdk/base/views/AdLogoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/AdLogoView;->c:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v4}, Lcom/sigmob/sdk/base/views/AdLogoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/base/views/AdLogoView;)I
    .registers 1

    iget p0, p0, Lcom/sigmob/sdk/base/views/AdLogoView;->a:I

    return p0
.end method

.method static synthetic b(Lcom/sigmob/sdk/base/views/AdLogoView;)Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/base/views/AdLogoView;->b:Landroid/widget/ImageView;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lcom/sigmob/sdk/common/e/f;->b()Lcom/sigmob/volley/toolbox/k;

    move-result-object v0

    if-eqz v0, :cond_11

    new-instance v1, Lcom/sigmob/sdk/base/views/AdLogoView$1;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/base/views/AdLogoView$1;-><init>(Lcom/sigmob/sdk/base/views/AdLogoView;)V

    invoke-virtual {v0, p1, v1}, Lcom/sigmob/volley/toolbox/k;->a(Ljava/lang/String;Lcom/sigmob/volley/toolbox/k$d;)Lcom/sigmob/volley/toolbox/k$c;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/AdLogoView;->e:Lcom/sigmob/volley/toolbox/k$c;

    :cond_11
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/AdLogoView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    goto :goto_c

    :catchall_6
    move-exception p1

    const-string v0, "showAdText error"

    invoke-static {v0, p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_c
    return-void
.end method
