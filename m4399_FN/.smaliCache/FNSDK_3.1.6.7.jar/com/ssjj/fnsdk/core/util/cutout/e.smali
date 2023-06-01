.class Lcom/ssjj/fnsdk/core/util/cutout/e;
.super Lcom/ssjj/fnsdk/core/util/cutout/AbsFNCutoutAdapter;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/util/cutout/AbsFNCutoutAdapter;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;F)I
    .registers 3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float p2, p2, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1
.end method


# virtual methods
.method public adaptCutout(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public getCutoutSize(Landroid/app/Activity;)[I
    .registers 4

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-direct {p0, p1, v0}, Lcom/ssjj/fnsdk/core/util/cutout/e;->a(Landroid/content/Context;F)I

    move-result v0

    const/high16 v1, 0x41d80000    # 27.0f

    invoke-direct {p0, p1, v1}, Lcom/ssjj/fnsdk/core/util/cutout/e;->a(Landroid/content/Context;F)I

    move-result p1

    filled-new-array {v0, p1}, [I

    move-result-object p1

    return-object p1
.end method

.method public hasCutout(Landroid/app/Activity;)Z
    .registers 7

    const/4 p1, 0x0

    :try_start_1
    const-string v0, "android.util.FtFeature"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "isFeatureSupport"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, p1

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_29} :catch_2a

    return p1

    :catch_2a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return p1
.end method
