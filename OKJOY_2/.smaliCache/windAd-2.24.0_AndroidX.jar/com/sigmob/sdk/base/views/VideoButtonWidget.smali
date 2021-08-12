.class public Lcom/sigmob/sdk/base/views/VideoButtonWidget;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private a:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/high16 p2, 0x41f00000    # 30.0f

    invoke-static {p2, p1}, Lcom/sigmob/sdk/common/f/d;->b(FLandroid/content/Context;)I

    move-result p2

    const/high16 v0, 0x41700000    # 15.0f

    invoke-static {v0, p1}, Lcom/sigmob/sdk/common/f/d;->b(FLandroid/content/Context;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->a(I)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    div-int/lit8 p2, p2, 0x2

    const-string v0, "#ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    int-to-float p2, p2

    invoke-virtual {v1, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/16 p2, 0x66

    invoke-virtual {v1, p2}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/base/views/VideoButtonWidget;)Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->a:Landroid/widget/ImageView;

    return-object p0
.end method

.method private a(I)V
    .registers 4

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->a:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0xd

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->a:Landroid/widget/ImageView;

    sget-object v1, Lcom/sigmob/sdk/base/views/d;->d:Lcom/sigmob/sdk/base/views/d;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/views/d;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->a:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->a:Landroid/widget/ImageView;

    const/16 v1, 0xcc

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, p1, v0}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lcom/sigmob/sdk/common/e/f;->b()Lcom/sigmob/volley/toolbox/k;

    move-result-object v0

    if-eqz v0, :cond_e

    new-instance v1, Lcom/sigmob/sdk/base/views/VideoButtonWidget$1;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/sdk/base/views/VideoButtonWidget$1;-><init>(Lcom/sigmob/sdk/base/views/VideoButtonWidget;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/sigmob/volley/toolbox/k;->a(Ljava/lang/String;Lcom/sigmob/volley/toolbox/k$d;)Lcom/sigmob/volley/toolbox/k$c;

    :cond_e
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_35

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_35

    :cond_15
    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    :try_start_1d
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->a:Landroid/widget/ImageView;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V
    :try_end_2b
    .catchall {:try_start_1d .. :try_end_2b} :catchall_2c

    goto :goto_38

    :catchall_2c
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    goto :goto_38

    :cond_35
    :goto_35
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->b(Ljava/lang/String;)V

    :cond_38
    :goto_38
    return-void
.end method

.method public setOnTouchListenerToContent(Landroid/view/View$OnTouchListener;)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
