.class public Lcom/sigmob/sdk/base/views/VideoButtonWidget;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private final b:Lcom/sigmob/sdk/base/views/c;

.field private final c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/sigmob/sdk/base/common/utils/b;->b(FLandroid/content/Context;)I

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0, p1}, Lcom/sigmob/sdk/base/common/utils/b;->b(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->c:I

    const/high16 v0, 0x41f00000    # 30.0f

    invoke-static {v0, p1}, Lcom/sigmob/sdk/base/common/utils/b;->b(FLandroid/content/Context;)I

    move-result v0

    new-instance v1, Lcom/sigmob/sdk/base/views/c;

    invoke-direct {v1}, Lcom/sigmob/sdk/base/views/c;-><init>()V

    iput-object v1, p0, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->b:Lcom/sigmob/sdk/base/views/c;

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->a(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/base/views/VideoButtonWidget;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method private a(I)V
    .registers 5

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->a:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->a:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->b:Lcom/sigmob/sdk/base/views/c;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->a:Landroid/widget/ImageView;

    sget-object v2, Lcom/sigmob/sdk/base/views/l;->d:Lcom/sigmob/sdk/base/views/l;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/views/l;->a()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->a:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lcom/sigmob/sdk/base/c/i;->b()Lcom/sigmob/volley/toolbox/p;

    move-result-object v0

    if-eqz v0, :cond_e

    new-instance v1, Lcom/sigmob/sdk/base/views/VideoButtonWidget$1;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/sdk/base/views/VideoButtonWidget$1;-><init>(Lcom/sigmob/sdk/base/views/VideoButtonWidget;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/sigmob/volley/toolbox/p;->a(Ljava/lang/String;Lcom/sigmob/volley/toolbox/t;)Lcom/sigmob/volley/toolbox/s;

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

    if-nez v1, :cond_14

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    :cond_14
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->b(Ljava/lang/String;)V

    :cond_17
    :goto_17
    return-void

    :cond_18
    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    :try_start_20
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->a:Landroid/widget/ImageView;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_2e} :catch_2f

    goto :goto_17

    :catch_2f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_17
.end method

.method public setOnTouchListenerToContent(Landroid/view/View$OnTouchListener;)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
