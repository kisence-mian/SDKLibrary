.class public Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/content/Context;

.field public static density:F

.field public static densityDpi:I

.field public static scaleDensity:F

.field public static screenHeight:I

.field public static screenWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->screenWidth:I

    sput v0, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->screenHeight:I

    const/4 v0, 0x1

    sput v0, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->densityDpi:I

    const/high16 v0, 0x40000000    # 2.0f

    sput v0, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->density:F

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->scaleDensity:F

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createColorStateList(III)Landroid/content/res/ColorStateList;
    .registers 7

    filled-new-array {p1, p2, p0, p2, p0}, [I

    move-result-object p0

    const/4 p1, 0x5

    new-array p1, p1, [[I

    const p2, 0x10100a7

    const v0, 0x101009e

    filled-new-array {p2, v0}, [I

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, p1, v1

    const p2, 0x101009c

    filled-new-array {v0, p2}, [I

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, p1, v3

    const/4 v2, 0x2

    filled-new-array {v0}, [I

    move-result-object v0

    aput-object v0, p1, v2

    const/4 v0, 0x3

    filled-new-array {p2}, [I

    move-result-object p2

    aput-object p2, p1, v0

    const/4 p2, 0x4

    new-array v0, v1, [I

    aput-object v0, p1, p2

    new-instance p2, Landroid/content/res/ColorStateList;

    invoke-direct {p2, p1, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p2
.end method

.method public static dpiToPx(F)I
    .registers 2

    sget v0, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->density:F

    mul-float v0, v0, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public static getScreenHeight()I
    .registers 1

    sget v0, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->screenHeight:I

    return v0
.end method

.method public static getScreenWidth()I
    .registers 1

    sget v0, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->screenWidth:I

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 2

    if-eqz p0, :cond_29

    sget-object v0, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->a:Landroid/content/Context;

    if-eqz v0, :cond_7

    goto :goto_29

    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->screenWidth:I

    iget v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v0, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->screenHeight:I

    iget v0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v0, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->densityDpi:I

    iget v0, p0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->density:F

    iget p0, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    sput p0, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->scaleDensity:F

    :cond_29
    :goto_29
    return-void
.end method

.method public static isLandscape()Z
    .registers 2

    sget-object v0, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v1, v0, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public static pxToDpi(F)I
    .registers 2

    sget v0, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->density:F

    div-float/2addr p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static pxToSp(F)I
    .registers 2

    sget v0, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->scaleDensity:F

    div-float/2addr p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static spToPx(F)I
    .registers 2

    sget v0, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->scaleDensity:F

    mul-float v0, v0, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method
