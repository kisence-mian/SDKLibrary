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
    .catchall {:try_start_0 .. :try_end_9} :catchall_a

    goto :goto_b

    :catchall_a
    move-exception p0

    :goto_b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget v0, Lcom/pgl/sys/ces/a/d;->c:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "[<!>]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget v1, Lcom/pgl/sys/ces/a/d;->a:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "*"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget v1, Lcom/pgl/sys/ces/a/d;->b:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/content/Context;)V
    .registers 4

    :try_start_0
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_23

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget p0, v0, Landroid/graphics/Point;->x:I

    sput p0, Lcom/pgl/sys/ces/a/d;->a:I

    iget p0, v0, Landroid/graphics/Point;->y:I

    :goto_20
    sput p0, Lcom/pgl/sys/ces/a/d;->b:I

    goto :goto_3f

    :cond_23
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-lt v1, v2, :cond_33

    invoke-virtual {p0, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget p0, v0, Landroid/graphics/Point;->x:I

    sput p0, Lcom/pgl/sys/ces/a/d;->a:I

    iget p0, v0, Landroid/graphics/Point;->y:I

    goto :goto_20

    :cond_33
    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result v0

    sput v0, Lcom/pgl/sys/ces/a/d;->a:I

    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result p0
    :try_end_3d
    .catchall {:try_start_0 .. :try_end_3d} :catchall_3e

    goto :goto_20

    :catchall_3e
    move-exception p0

    :goto_3f
    return-void
.end method

.method private static c(Landroid/content/Context;)V
    .registers 2

    if-nez p0, :cond_3

    return-void

    :cond_3
    :try_start_3
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget v0, p0, Landroid/util/DisplayMetrics;->density:F

    float-to-int v0, v0

    sput v0, Lcom/pgl/sys/ces/a/d;->d:I

    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    sput p0, Lcom/pgl/sys/ces/a/d;->c:I
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1a

    goto :goto_1b

    :catchall_1a
    move-exception p0

    :goto_1b
    return-void
.end method

.method private static d(Landroid/content/Context;)V
    .registers 2

    :try_start_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget v0, p0, Landroid/util/DisplayMetrics;->xdpi:F

    float-to-int v0, v0

    sput v0, Lcom/pgl/sys/ces/a/d;->e:I

    iget p0, p0, Landroid/util/DisplayMetrics;->ydpi:F

    float-to-int p0, p0

    sput p0, Lcom/pgl/sys/ces/a/d;->f:I
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_18

    goto :goto_19

    :catchall_18
    move-exception p0

    :goto_19
    return-void
.end method
