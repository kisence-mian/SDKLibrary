.class public Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;
    }
.end annotation


# static fields
.field private static a:Landroid/app/Dialog;

.field private static b:Landroid/widget/FrameLayout;

.field private static c:Landroid/graphics/drawable/Drawable;

.field private static d:J

.field private static e:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    sput-object v0, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->a:Landroid/app/Dialog;

    sput-object v0, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->b:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, -0x20203

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sput-object v0, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->c:Landroid/graphics/drawable/Drawable;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->d:J

    const/16 v0, 0x1388

    sput v0, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->e:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Landroid/app/Dialog;
    .registers 7

    new-instance v0, Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const/16 v4, 0x400

    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p0, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 p0, 0x11

    iput p0, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 p0, 0x0

    iput p0, v4, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    iput p0, v4, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    iput p0, v4, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    iput p0, v4, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    const/high16 p0, 0x3f800000    # 1.0f

    iput p0, v4, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-virtual {v2, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 p0, 0x0

    invoke-virtual {v2, p0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v2, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    return-object v0
.end method

.method static synthetic a()Landroid/graphics/drawable/Drawable;
    .registers 1

    sget-object v0, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->c:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/drawable/Drawable;
    .registers 8

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const/4 v0, 0x0

    invoke-static {p1, v4, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    if-nez v3, :cond_16

    new-instance p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_22

    :cond_16
    new-instance p1, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    move-object p0, p1

    :goto_22
    return-object p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 5

    if-eqz p1, :cond_29

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ltz v0, :cond_29

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_29

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_24} :catch_25

    goto :goto_2a

    :catch_25
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_29
    const/4 p0, 0x0

    :goto_2a
    return-object p0
.end method

.method private static a(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 13

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v4, p1, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;->drawableBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sput-object v1, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget v5, p1, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;->widthPx1:I

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v5, p1, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;->heightPx1:I

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v5, 0x11

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p1, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;->scaleType1:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v7, p1, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;->drawableBg1:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget v2, p1, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;->widthPx2:I

    iput v2, p0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v2, p1, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;->heightPx2:I

    iput v2, p0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v5, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p1, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;->scaleType2:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v3, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p1, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;->drawableBg2:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/4 p0, 0x0

    const/16 v1, 0x8

    if-nez p2, :cond_e4

    iput p0, p1, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;->delayMs1:I

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_10f

    :cond_e4
    if-nez p3, :cond_e9

    iput p0, p1, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;->delayMs2:I

    goto :goto_10f

    :cond_e9
    if-eqz p2, :cond_10f

    if-eqz p3, :cond_10f

    new-instance p0, Landroid/view/animation/AlphaAnimation;

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 p3, 0x0

    invoke-direct {p0, p2, p3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 p2, 0x12c

    invoke-virtual {p0, p2, p3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget p2, p1, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;->delayMs1:I

    int-to-long p2, p2

    invoke-virtual {p0, p2, p3}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    new-instance p2, Lcom/ssjj/fnsdk/core/bw;

    invoke-direct {p2, v4}, Lcom/ssjj/fnsdk/core/bw;-><init>(Landroid/widget/FrameLayout;)V

    invoke-virtual {p0, p2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v4, p0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_10f
    :goto_10f
    iget p0, p1, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;->delayMs1:I

    if-nez p0, :cond_116

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_116
    iget p0, p1, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;->delayMs2:I

    if-nez p0, :cond_11d

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_11d
    iget p0, p1, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;->delayMs1:I

    iget p1, p1, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;->delayMs2:I

    add-int/2addr p0, p1

    invoke-static {v0, p0}, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->showSplashDialog(Landroid/view/View;I)V

    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_14

    :try_start_d
    invoke-static {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->a(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_11} :catch_12

    goto :goto_16

    :catch_12
    move-exception p0

    goto :goto_16

    :catch_14
    move-exception p0

    move-object p1, v0

    :goto_16
    if-eqz p1, :cond_1d

    :try_start_18
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_1c

    goto :goto_1d

    :catch_1c
    move-exception p0

    :cond_1d
    :goto_1d
    return-object v0
.end method

.method static synthetic b()V
    .registers 0

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->c()V

    return-void
.end method

.method private static c()V
    .registers 0

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->hideSplashDialogForce()V

    return-void
.end method

.method public static dp2px(Landroid/content/Context;F)I
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 4

    if-eqz p1, :cond_31

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ltz v0, :cond_31

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_19

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_19
    invoke-static {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_32

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_32

    :cond_31
    const/4 v0, 0x0

    :cond_32
    :goto_32
    return-object v0
.end method

.method public static getSplashParamsForSsjj1(Landroid/content/Context;I)Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;
    .registers 5

    new-instance v0, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;

    invoke-direct {v0, p0}, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;-><init>(Landroid/content/Context;)V

    const-string v1, "splash_logo_ssjj"

    iput-object v1, v0, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;->drawableName1:Ljava/lang/String;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v1, v0, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;->scaleType1:Landroid/widget/ImageView$ScaleType;

    const/high16 v1, 0x438c0000    # 280.0f

    invoke-static {p0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->dp2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;->widthPx1:I

    invoke-static {p0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->dp2px(Landroid/content/Context;F)I

    move-result p0

    iput p0, v0, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;->heightPx1:I

    iput p1, v0, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;->delayMs1:I

    return-object v0
.end method

.method public static getSplashParamsForSsjj2(Landroid/content/Context;I)Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;
    .registers 5

    new-instance v0, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;

    invoke-direct {v0, p0}, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;-><init>(Landroid/content/Context;)V

    const-string v1, "splash_logo_ssjj"

    iput-object v1, v0, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;->drawableName2:Ljava/lang/String;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v1, v0, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;->scaleType2:Landroid/widget/ImageView$ScaleType;

    const/high16 v1, 0x438c0000    # 280.0f

    invoke-static {p0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->dp2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;->widthPx2:I

    invoke-static {p0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->dp2px(Landroid/content/Context;F)I

    move-result p0

    iput p0, v0, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;->heightPx2:I

    iput p1, v0, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;->delayMs2:I

    return-object v0
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .registers 3

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->isFullScreen(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_28

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_28

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-nez v0, :cond_29

    const/high16 v0, 0x41c80000    # 25.0f

    invoke-static {p0, v0}, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->dp2px(Landroid/content/Context;F)I

    move-result v0

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :cond_29
    :goto_29
    return v0
.end method

.method public static hideSplashDialogAfterMinDelay()V
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->d:J

    sub-long/2addr v0, v2

    sget v2, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->e:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_11

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->hideSplashDialogForce()V

    :cond_11
    return-void
.end method

.method public static hideSplashDialogForce()V
    .registers 2

    sget-object v0, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->b:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    sput-object v1, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->b:Landroid/widget/FrameLayout;

    :cond_14
    sget-object v0, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    sput-object v1, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->a:Landroid/app/Dialog;

    :cond_1b
    return-void
.end method

.method public static isFullScreen(Landroid/content/Context;)Z
    .registers 3

    instance-of v0, p0, Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 p0, p0, 0x400

    if-eqz p0, :cond_17

    const/4 p0, 0x1

    return p0

    :cond_17
    return v1
.end method

.method public static setDefaultBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 1

    if-eqz p0, :cond_4

    sput-object p0, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->c:Landroid/graphics/drawable/Drawable;

    :cond_4
    return-void
.end method

.method public static setMinDelay(I)V
    .registers 2

    const/16 v0, 0x5dc

    if-le p0, v0, :cond_6

    sput p0, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->e:I

    :cond_6
    return-void
.end method

.method public static showSplash(Landroid/content/Context;)V
    .registers 4

    const/16 v0, 0x7d0

    const/16 v1, 0xbb8

    const/16 v2, 0x9c4

    invoke-static {p0, v2, v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->showSplash(Landroid/content/Context;III)V

    return-void
.end method

.method public static showSplash(Landroid/content/Context;III)V
    .registers 10

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->hideSplashDialogForce()V

    if-nez p0, :cond_6

    return-void

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fnres/splash_fn_plat"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".jpg"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fnres/splash_fn_ssjj"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const-string v3, ".png"

    if-nez v0, :cond_4f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_4f
    if-nez v2, :cond_66

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_66
    if-nez v0, :cond_6b

    if-nez v2, :cond_6b

    return-void

    :cond_6b
    const/4 v1, 0x0

    if-nez v0, :cond_70

    move p2, p3

    const/4 p1, 0x0

    :cond_70
    if-nez v2, :cond_73

    goto :goto_75

    :cond_73
    move p3, p1

    move v1, p2

    :goto_75
    new-instance p1, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;

    invoke-direct {p1, p0}, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;-><init>(Landroid/content/Context;)V

    const-string p2, ""

    iput-object p2, p1, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;->drawableName1:Ljava/lang/String;

    iput-object p2, p1, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;->drawableName2:Ljava/lang/String;

    iput p3, p1, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;->delayMs1:I

    iput v1, p1, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;->delayMs2:I

    invoke-static {p0, p1, v0, v2}, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->a(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static showSplashDialog(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;)V
    .registers 4

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->hideSplashDialogForce()V

    if-eqz p0, :cond_1c

    if-nez p1, :cond_8

    goto :goto_1c

    :cond_8
    iget-object v0, p1, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;->drawableName1:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p1, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;->drawableName2:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v0, :cond_19

    if-nez v1, :cond_19

    return-void

    :cond_19
    invoke-static {p0, p1, v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->a(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method public static showSplashDialog(Landroid/view/View;I)V
    .registers 5

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->hideSplashDialogForce()V

    if-nez p0, :cond_6

    return-void

    :cond_6
    if-gtz p1, :cond_a

    const/16 p1, 0x1f4

    :cond_a
    const/16 v0, 0x2710

    if-le p1, v0, :cond_10

    const/16 p1, 0x2710

    :cond_10
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1b

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1b
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->a(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->a:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    sget-object v0, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->a:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    sget-object v0, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    new-instance v0, Lcom/ssjj/fnsdk/core/by;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/by;-><init>()V

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sput-wide p0, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->d:J

    return-void
.end method

.method public static showSplashDialogImagePlatFirst(Landroid/content/Context;Ljava/lang/String;II)V
    .registers 4

    invoke-static {p0, p3}, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->getSplashParamsForSsjj2(Landroid/content/Context;I)Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;

    move-result-object p3

    iput-object p1, p3, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;->drawableName1:Ljava/lang/String;

    iput p2, p3, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;->delayMs1:I

    invoke-static {p0, p3}, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->showSplashDialog(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;)V

    return-void
.end method

.method public static showSplashDialogImageSsjjFirst(Landroid/content/Context;Ljava/lang/String;II)V
    .registers 4

    invoke-static {p0, p3}, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->getSplashParamsForSsjj1(Landroid/content/Context;I)Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;

    move-result-object p3

    iput-object p1, p3, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;->drawableName2:Ljava/lang/String;

    iput p2, p3, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;->delayMs2:I

    invoke-static {p0, p3}, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->showSplashDialog(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;)V

    return-void
.end method

.method public static showSplashDialogLogoPlatFirst(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;III)V
    .registers 6

    invoke-static {p0, p5}, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->getSplashParamsForSsjj2(Landroid/content/Context;I)Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;

    move-result-object p5

    iput-object p1, p5, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;->drawableName1:Ljava/lang/String;

    iput-object p2, p5, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;->drawableBg1:Landroid/graphics/drawable/Drawable;

    iput p4, p5, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;->delayMs1:I

    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object p1, p5, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;->scaleType1:Landroid/widget/ImageView$ScaleType;

    int-to-float p1, p3

    invoke-static {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->dp2px(Landroid/content/Context;F)I

    move-result p2

    iput p2, p5, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;->widthPx1:I

    invoke-static {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p5, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;->heightPx1:I

    invoke-static {p0, p5}, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->showSplashDialog(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;)V

    return-void
.end method

.method public static showSplashDialogLogoSsjjFirst(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;III)V
    .registers 6

    invoke-static {p0, p5}, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->getSplashParamsForSsjj1(Landroid/content/Context;I)Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;

    move-result-object p5

    iput-object p1, p5, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;->drawableName2:Ljava/lang/String;

    iput-object p2, p5, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;->drawableBg2:Landroid/graphics/drawable/Drawable;

    iput p4, p5, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;->delayMs2:I

    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object p1, p5, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;->scaleType2:Landroid/widget/ImageView$ScaleType;

    int-to-float p1, p3

    invoke-static {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->dp2px(Landroid/content/Context;F)I

    move-result p2

    iput p2, p5, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;->widthPx2:I

    invoke-static {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p5, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;->heightPx2:I

    invoke-static {p0, p5}, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->showSplashDialog(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;)V

    return-void
.end method

.method public static showSplashDialogSsjjJust(Landroid/content/Context;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->getSplashParamsForSsjj1(Landroid/content/Context;I)Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->showSplashDialog(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;)V

    return-void
.end method
