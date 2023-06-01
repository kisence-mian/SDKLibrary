.class Lcom/ssjj/fnsdk/core/util/cutout/c;
.super Lcom/ssjj/fnsdk/core/util/cutout/AbsFNCutoutAdapter;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/util/cutout/AbsFNCutoutAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public adaptCutout(Landroid/app/Activity;)V
    .registers 8

    :try_start_0
    const-class v0, Landroid/view/Window;

    const-string v1, "addExtraFlags"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    const/16 v2, 0x700

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception p1

    :goto_23
    return-void
.end method

.method public getCutoutSize(Landroid/app/Activity;)[I
    .registers 6

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isLandscape ? "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    if-eqz v1, :cond_29

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_2b

    :cond_29
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_2b
    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/util/cutout/c;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "width: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "height: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    filled-new-array {v0, p1}, [I

    move-result-object p1

    return-object p1
.end method

.method public hasCutout(Landroid/app/Activity;)Z
    .registers 8

    const/4 p1, 0x0

    :try_start_1
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInt"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, p1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "ro.miui.notch"

    aput-object v2, v1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_30} :catch_34

    if-ne v0, v5, :cond_33

    return v5

    :cond_33
    return p1

    :catch_34
    move-exception v0

    return p1
.end method
