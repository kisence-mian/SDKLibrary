.class public Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SsjjFNSplashParams"
.end annotation


# instance fields
.field public delayMs1:I

.field public delayMs2:I

.field public drawableBg:Landroid/graphics/drawable/Drawable;

.field public drawableBg1:Landroid/graphics/drawable/Drawable;

.field public drawableBg2:Landroid/graphics/drawable/Drawable;

.field public drawableName1:Ljava/lang/String;

.field public drawableName2:Ljava/lang/String;

.field public heightPx1:I

.field public heightPx2:I

.field public scaleType1:Landroid/widget/ImageView$ScaleType;

.field public scaleType2:Landroid/widget/ImageView$ScaleType;

.field public widthPx1:I

.field public widthPx2:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;->widthPx1:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;->heightPx1:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;->widthPx2:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;->heightPx2:I

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->a()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;->drawableBg:Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->a()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;->drawableBg1:Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->a()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;->drawableBg2:Landroid/graphics/drawable/Drawable;

    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;->scaleType1:Landroid/widget/ImageView$ScaleType;

    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;->scaleType2:Landroid/widget/ImageView$ScaleType;

    const/16 p1, 0x7d0

    iput p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;->delayMs1:I

    const/16 p1, 0x3e8

    iput p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;->delayMs2:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;->drawableName1:Ljava/lang/String;

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager$SsjjFNSplashParams;->drawableName2:Ljava/lang/String;

    return-void
.end method
