.class public Lcom/sigmob/sdk/base/common/utils/b;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)F
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public static a(FLandroid/content/Context;)I
    .registers 4

    invoke-static {p0, p1}, Lcom/sigmob/sdk/base/common/utils/b;->d(FLandroid/content/Context;)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static b(FLandroid/content/Context;)I
    .registers 4

    invoke-static {p0, p1}, Lcom/sigmob/sdk/base/common/utils/b;->e(FLandroid/content/Context;)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static b(Landroid/content/Context;)I
    .registers 2

    invoke-static {p0}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    invoke-static {v0, p0}, Lcom/sigmob/sdk/base/common/utils/b;->a(FLandroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static c(FLandroid/content/Context;)I
    .registers 4

    invoke-static {p0, p1}, Lcom/sigmob/sdk/base/common/utils/b;->f(FLandroid/content/Context;)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static c(Landroid/content/Context;)I
    .registers 2

    invoke-static {p0}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    invoke-static {v0, p0}, Lcom/sigmob/sdk/base/common/utils/b;->a(FLandroid/content/Context;)I

    move-result v0

    return v0
.end method

.method private static d(FLandroid/content/Context;)F
    .registers 3

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/utils/b;->a(Landroid/content/Context;)F

    move-result v0

    div-float v0, p0, v0

    return v0
.end method

.method private static e(FLandroid/content/Context;)F
    .registers 3

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/utils/b;->a(Landroid/content/Context;)F

    move-result v0

    mul-float/2addr v0, p0

    return v0
.end method

.method private static f(FLandroid/content/Context;)F
    .registers 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method
