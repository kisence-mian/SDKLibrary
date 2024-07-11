.class public final Lcom/sigmob/windad/Drift/WindDriftAdView;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/windad/Drift/WindDriftAdView$DriftAdListener;
    }
.end annotation


# instance fields
.field a:Lcom/sigmob/windad/Drift/WindDriftAdListener;

.field private final b:Landroid/os/Handler;

.field private c:Lcom/sigmob/sdk/a/b;

.field private d:Lcom/sigmob/sdk/base/views/GifImageView;

.field private e:Ljava/lang/String;

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/sigmob/windad/Drift/WindDriftAdListener;)V
    .registers 7

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/windad/Drift/WindDriftAdView;->f:Z

    new-instance v0, Lcom/sigmob/sdk/a/b;

    new-instance v1, Lcom/sigmob/windad/Drift/WindDriftAdView$DriftAdListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sigmob/windad/Drift/WindDriftAdView$DriftAdListener;-><init>(Lcom/sigmob/windad/Drift/WindDriftAdView;Lcom/sigmob/windad/Drift/WindDriftAdView$1;)V

    invoke-direct {v0, p1, p2, v1}, Lcom/sigmob/sdk/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sigmob/sdk/a/a;)V

    iput-object v0, p0, Lcom/sigmob/windad/Drift/WindDriftAdView;->c:Lcom/sigmob/sdk/a/b;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sigmob/windad/Drift/WindDriftAdView;->b:Landroid/os/Handler;

    new-instance v0, Lcom/sigmob/sdk/base/views/GifImageView;

    invoke-direct {v0, p1}, Lcom/sigmob/sdk/base/views/GifImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/windad/Drift/WindDriftAdView;->d:Lcom/sigmob/sdk/base/views/GifImageView;

    iput-object p3, p0, Lcom/sigmob/windad/Drift/WindDriftAdView;->a:Lcom/sigmob/windad/Drift/WindDriftAdListener;

    iput-object p2, p0, Lcom/sigmob/windad/Drift/WindDriftAdView;->e:Ljava/lang/String;

    const/4 p3, 0x4

    invoke-virtual {p0, p3}, Lcom/sigmob/windad/Drift/WindDriftAdView;->setVisibility(I)V

    invoke-direct {p0, p1}, Lcom/sigmob/windad/Drift/WindDriftAdView;->setupLayout(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/sigmob/windad/Drift/WindDriftAdView;->c:Lcom/sigmob/sdk/a/b;

    if-eqz p1, :cond_38

    invoke-virtual {p1}, Lcom/sigmob/sdk/a/b;->c()V

    goto :goto_4c

    :cond_38
    iget-object p1, p0, Lcom/sigmob/windad/Drift/WindDriftAdView;->a:Lcom/sigmob/windad/Drift/WindDriftAdListener;

    if-eqz p1, :cond_4c

    new-instance p3, Lcom/sigmob/windad/WindAdAdapterError;

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_REQUEST:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result v0

    const-string v1, "ad is null"

    invoke-direct {p3, v0, v1}, Lcom/sigmob/windad/WindAdAdapterError;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p3, p2}, Lcom/sigmob/windad/Drift/WindDriftAdListener;->onDriftAdError(Lcom/sigmob/windad/WindAdAdapterError;Ljava/lang/String;)V

    :cond_4c
    :goto_4c
    return-void
.end method

.method static synthetic a(Lcom/sigmob/windad/Drift/WindDriftAdView;)Lcom/sigmob/sdk/a/b;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/windad/Drift/WindDriftAdView;->c:Lcom/sigmob/sdk/a/b;

    return-object p0
.end method

.method static synthetic a(Lcom/sigmob/windad/Drift/WindDriftAdView;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/sigmob/windad/Drift/WindDriftAdView;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/sigmob/windad/Drift/WindDriftAdView;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/windad/Drift/WindDriftAdView;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/sigmob/windad/Drift/WindDriftAdView;)Lcom/sigmob/sdk/base/views/GifImageView;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/windad/Drift/WindDriftAdView;->d:Lcom/sigmob/sdk/base/views/GifImageView;

    return-object p0
.end method

.method static synthetic d(Lcom/sigmob/windad/Drift/WindDriftAdView;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/sigmob/windad/Drift/WindDriftAdView;->f:Z

    return p0
.end method

.method static synthetic e(Lcom/sigmob/windad/Drift/WindDriftAdView;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/windad/Drift/WindDriftAdView;->b:Landroid/os/Handler;

    return-object p0
.end method

.method private setupLayout(Landroid/content/Context;)V
    .registers 10

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sigmob/windad/Drift/WindDriftAdView;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/sigmob/sdk/common/a;->am()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setId(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5, p1}, Lcom/sigmob/sdk/common/f/d;->b(FLandroid/content/Context;)I

    move-result v6

    invoke-static {v5, p1}, Lcom/sigmob/sdk/common/f/d;->b(FLandroid/content/Context;)I

    move-result v7

    invoke-virtual {v4, v0, v6, v7, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/sigmob/windad/Drift/WindDriftAdView;->d:Lcom/sigmob/sdk/base/views/GifImageView;

    sget-object v6, Lcom/sigmob/sdk/base/views/d;->e:Lcom/sigmob/sdk/base/views/d;

    invoke-virtual {v6}, Lcom/sigmob/sdk/base/views/d;->a()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/sigmob/sdk/base/views/GifImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/sigmob/windad/Drift/WindDriftAdView;->d:Lcom/sigmob/sdk/base/views/GifImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v6}, Lcom/sigmob/sdk/base/views/GifImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/sigmob/windad/Drift/WindDriftAdView;->d:Lcom/sigmob/sdk/base/views/GifImageView;

    invoke-virtual {v1, v0, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x9

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/sigmob/sdk/common/a;->am()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setId(I)V

    const-string v6, "\u5e7f\u544a"

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v3, "#dadada"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const/4 v3, 0x3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v3, 0x1

    invoke-virtual {v4, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v1, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3, p1}, Lcom/sigmob/sdk/common/f/d;->b(FLandroid/content/Context;)I

    move-result v4

    invoke-static {v3, p1}, Lcom/sigmob/sdk/common/f/d;->b(FLandroid/content/Context;)I

    move-result v3

    invoke-direct {v0, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getId()I

    move-result v3

    const/4 v4, 0x7

    invoke-virtual {v0, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getId()I

    move-result v3

    const/4 v4, 0x6

    invoke-virtual {v0, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/sigmob/sdk/base/views/d;->e:Lcom/sigmob/sdk/base/views/d;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/views/d;->a()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance p1, Lcom/sigmob/windad/Drift/WindDriftAdView$1;

    invoke-direct {p1, p0, p0}, Lcom/sigmob/windad/Drift/WindDriftAdView$1;-><init>(Lcom/sigmob/windad/Drift/WindDriftAdView;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/sigmob/windad/Drift/WindDriftAdView$2;

    invoke-direct {p1, p0}, Lcom/sigmob/windad/Drift/WindDriftAdView$2;-><init>(Lcom/sigmob/windad/Drift/WindDriftAdView;)V

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v1, v2}, Lcom/sigmob/windad/Drift/WindDriftAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v3, v0}, Lcom/sigmob/windad/Drift/WindDriftAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
