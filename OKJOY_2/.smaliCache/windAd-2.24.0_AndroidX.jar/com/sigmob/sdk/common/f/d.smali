.class public Lcom/sigmob/sdk/common/f/d;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)F
    .registers 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    return p0
.end method

.method public static a(FLandroid/content/Context;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/sigmob/sdk/common/f/d;->d(FLandroid/content/Context;)F

    move-result p0

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public static b(FLandroid/content/Context;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/sigmob/sdk/common/f/d;->e(FLandroid/content/Context;)F

    move-result p0

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public static b(Landroid/content/Context;)I
    .registers 2

    invoke-static {p0}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    invoke-static {v0, p0}, Lcom/sigmob/sdk/common/f/d;->a(FLandroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static c(FLandroid/content/Context;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/sigmob/sdk/common/f/d;->f(FLandroid/content/Context;)F

    move-result p0

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public static c(Landroid/content/Context;)I
    .registers 2

    invoke-static {p0}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    invoke-static {v0, p0}, Lcom/sigmob/sdk/common/f/d;->a(FLandroid/content/Context;)I

    move-result p0

    return p0
.end method

.method private static d(FLandroid/content/Context;)F
    .registers 2

    invoke-static {p1}, Lcom/sigmob/sdk/common/f/d;->a(Landroid/content/Context;)F

    move-result p1

    div-float/2addr p0, p1

    return p0
.end method

.method private static e(FLandroid/content/Context;)F
    .registers 2

    invoke-static {p1}, Lcom/sigmob/sdk/common/f/d;->a(Landroid/content/Context;)F

    move-result p1

    mul-float/2addr p0, p1

    return p0
.end method

.method private static f(FLandroid/content/Context;)F
    .registers 3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method
