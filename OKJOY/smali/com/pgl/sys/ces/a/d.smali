.class public Lcom/pgl/sys/ces/a/d;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field public static b:I

.field public static c:I

.field private static d:I

.field private static e:I

.field private static f:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lcom/pgl/sys/ces/a/d;->a:I

    sput v0, Lcom/pgl/sys/ces/a/d;->b:I

    sput v0, Lcom/pgl/sys/ces/a/d;->d:I

    sput v0, Lcom/pgl/sys/ces/a/d;->c:I

    sput v0, Lcom/pgl/sys/ces/a/d;->e:I

    sput v0, Lcom/pgl/sys/ces/a/d;->f:I

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    :try_start_0
    invoke-static {p0}, Lcom/pgl/sys/ces/a/d;->b(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/pgl/sys/ces/a/d;->c(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/pgl/sys/ces/a/d;->d(Landroid/content/Context;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_3d

    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/pgl/sys/ces/a/d;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[<!>]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/pgl/sys/ces/a/d;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/pgl/sys/ces/a/d;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[<!>]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_3d
    move-exception v0

    goto :goto_9
.end method

.method private static b(Landroid/content/Context;)V
    .registers 5

    :try_start_0
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_23

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v0, v1, Landroid/graphics/Point;->x:I

    sput v0, Lcom/pgl/sys/ces/a/d;->a:I

    iget v0, v1, Landroid/graphics/Point;->y:I

    sput v0, Lcom/pgl/sys/ces/a/d;->b:I

    :goto_22
    return-void

    :cond_23
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xd

    if-lt v2, v3, :cond_37

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v0, v1, Landroid/graphics/Point;->x:I

    sput v0, Lcom/pgl/sys/ces/a/d;->a:I

    iget v0, v1, Landroid/graphics/Point;->y:I

    sput v0, Lcom/pgl/sys/ces/a/d;->b:I

    goto :goto_22

    :catch_35
    move-exception v0

    goto :goto_22

    :cond_37
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    sput v1, Lcom/pgl/sys/ces/a/d;->a:I

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    sput v0, Lcom/pgl/sys/ces/a/d;->b:I
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_43} :catch_35

    goto :goto_22
.end method

.method private static c(Landroid/content/Context;)V
    .registers 3

    if-nez p0, :cond_3

    :goto_2
    return-void

    :cond_3
    :try_start_3
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-int v1, v1

    sput v1, Lcom/pgl/sys/ces/a/d;->d:I

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v0, Lcom/pgl/sys/ces/a/d;->c:I
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_19} :catch_1a

    goto :goto_2

    :catch_1a
    move-exception v0

    goto :goto_2
.end method

.method private static d(Landroid/content/Context;)V
    .registers 3

    :try_start_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    float-to-int v1, v1

    sput v1, Lcom/pgl/sys/ces/a/d;->e:I

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    float-to-int v0, v0

    sput v0, Lcom/pgl/sys/ces/a/d;->f:I
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_17} :catch_18

    :goto_17
    return-void

    :catch_18
    move-exception v0

    goto :goto_17
.end method
