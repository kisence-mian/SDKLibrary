.class public Lcom/tds/tapdb/b/d;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(III)I
    .registers 4

    if-eqz p0, :cond_5

    const/4 v0, 0x2

    if-ne p0, v0, :cond_6

    :cond_5
    move p1, p2

    :cond_6
    return p1
.end method

.method public static a()Ljava/lang/String;
    .registers 3

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "unknown"

    if-nez v0, :cond_d

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    goto :goto_e

    :cond_d
    move-object v0, v1

    :goto_e
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_18

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    :cond_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)[I
    .registers 10

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_5
    const-string v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v4

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x11

    if-lt v6, v7, :cond_26

    invoke-virtual {v3, v5}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    :goto_23
    iget v3, v5, Landroid/graphics/Point;->x:I

    goto :goto_30

    :cond_26
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xd

    if-lt v6, v7, :cond_33

    invoke-virtual {v3, v5}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    goto :goto_23

    :goto_30
    iget v5, v5, Landroid/graphics/Point;->y:I

    goto :goto_3e

    :cond_33
    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    move v8, v5

    move v5, v3

    move v3, v8

    :goto_3e
    invoke-static {v4, v3, v5}, Lcom/tds/tapdb/b/d;->b(III)I

    move-result v6

    aput v6, v0, v2

    invoke-static {v4, v3, v5}, Lcom/tds/tapdb/b/d;->a(III)I

    move-result v3

    aput v3, v0, v1
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_4a} :catch_4b

    goto :goto_62

    :catch_4b
    move-exception v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v3, :cond_62

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget v3, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    aput v3, v0, v2

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    aput p0, v0, v1

    :cond_62
    :goto_62
    return-object v0
.end method

.method private static b(III)I
    .registers 4

    if-eqz p0, :cond_7

    const/4 v0, 0x2

    if-ne p0, v0, :cond_6

    goto :goto_7

    :cond_6
    move p1, p2

    :cond_7
    :goto_7
    return p1
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, "UNKNOWN"

    :cond_6
    return-object v0
.end method

.method public static c()Z
    .registers 3

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "manufacturer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/String;)V

    const-string v1, "xiaomi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    return v0

    :cond_22
    const/4 v0, 0x0

    return v0
.end method
