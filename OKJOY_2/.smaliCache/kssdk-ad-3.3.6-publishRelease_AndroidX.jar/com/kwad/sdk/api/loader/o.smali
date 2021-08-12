.class Lcom/kwad/sdk/api/loader/o;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/api/loader/o$a;,
        Lcom/kwad/sdk/api/loader/o$e;,
        Lcom/kwad/sdk/api/loader/o$f;,
        Lcom/kwad/sdk/api/loader/o$b;,
        Lcom/kwad/sdk/api/loader/o$c;,
        Lcom/kwad/sdk/api/loader/o$d;
    }
.end annotation


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/kwad/sdk/api/loader/o;->a:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kwad/sdk/api/loader/o;->b:Ljava/lang/Object;

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)Landroid/content/res/Resources;
    .registers 6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/api/loader/o;->a(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {v0, p1}, Lcom/kwad/sdk/api/loader/o$d;->a(Landroid/content/res/Resources;Landroid/content/res/AssetManager;)Landroid/content/res/Resources;

    move-result-object p0

    return-object p0

    :cond_f
    invoke-static {v0}, Lcom/kwad/sdk/api/loader/o;->b(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-static {v0, p1}, Lcom/kwad/sdk/api/loader/o$c;->a(Landroid/content/res/Resources;Landroid/content/res/AssetManager;)Landroid/content/res/Resources;

    move-result-object p0

    return-object p0

    :cond_1a
    invoke-static {v0}, Lcom/kwad/sdk/api/loader/o;->e(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-static {v0, p1}, Lcom/kwad/sdk/api/loader/o$b;->a(Landroid/content/res/Resources;Landroid/content/res/AssetManager;)Landroid/content/res/Resources;

    move-result-object p0

    return-object p0

    :cond_25
    invoke-static {v0}, Lcom/kwad/sdk/api/loader/o;->c(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-static {p0, v0, p1}, Lcom/kwad/sdk/api/loader/o$f;->a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/AssetManager;)Landroid/content/res/Resources;

    move-result-object p0

    return-object p0

    :cond_30
    invoke-static {v0}, Lcom/kwad/sdk/api/loader/o;->d(Landroid/content/res/Resources;)Z

    move-result p0

    if-eqz p0, :cond_3b

    invoke-static {v0, p1}, Lcom/kwad/sdk/api/loader/o$e;->a(Landroid/content/res/Resources;Landroid/content/res/AssetManager;)Landroid/content/res/Resources;

    move-result-object p0

    return-object p0

    :cond_3b
    invoke-static {v0}, Lcom/kwad/sdk/api/loader/o;->f(Landroid/content/res/Resources;)Z

    move-result p0

    if-eqz p0, :cond_46

    invoke-static {v0, p1}, Lcom/kwad/sdk/api/loader/o$a;->a(Landroid/content/res/Resources;Landroid/content/res/AssetManager;)Landroid/content/res/Resources;

    move-result-object p0

    return-object p0

    :cond_46
    new-instance p0, Landroid/content/res/Resources;

    invoke-direct {p0, p1, p2, p3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    return-object p0
.end method

.method static a(Landroid/content/Context;Landroid/content/res/Resources;Ljava/lang/String;)Landroid/content/res/Resources;
    .registers 5

    sget-object v0, Lcom/kwad/sdk/api/loader/o;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/kwad/sdk/api/loader/o;->a:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Resources;

    if-nez v1, :cond_32

    invoke-static {p0, p1, p2}, Lcom/kwad/sdk/api/loader/o;->b(Landroid/content/Context;Landroid/content/res/Resources;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_19

    sget-object p0, Lcom/kwad/sdk/api/loader/o;->a:Ljava/util/Map;

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_32

    :cond_19
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not createResources for "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_32
    :goto_32
    monitor-exit v0

    return-object v1

    :catchall_34
    move-exception p0

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw p0
.end method

.method public static a(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_2
    invoke-static {p0}, Lcom/kwad/sdk/api/loader/Reflect;->a(Ljava/lang/Object;)Lcom/kwad/sdk/api/loader/Reflect;

    move-result-object v2

    const-string v3, "addOverlayPath"

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p1, v5, v0

    invoke-virtual {v2, v3, v4, v5}, Lcom/kwad/sdk/api/loader/Reflect;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/kwad/sdk/api/loader/Reflect;
    :try_end_15
    .catchall {:try_start_2 .. :try_end_15} :catchall_16

    goto :goto_2a

    :catchall_16
    move-exception v2

    invoke-static {p0}, Lcom/kwad/sdk/api/loader/Reflect;->a(Ljava/lang/Object;)Lcom/kwad/sdk/api/loader/Reflect;

    move-result-object p0

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string p1, "addAssetPath"

    invoke-virtual {p0, p1, v2, v1}, Lcom/kwad/sdk/api/loader/Reflect;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/kwad/sdk/api/loader/Reflect;

    :goto_2a
    return-void
.end method

.method private static a(Landroid/content/res/Resources;)Z
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.content.res.MiuiResources"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/res/AssetManager;Ljava/lang/String;)I
    .registers 9

    const-string v0, "addAssetPath"

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_4
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_1e

    invoke-static {p0}, Lcom/kwad/sdk/api/loader/Reflect;->a(Ljava/lang/Object;)Lcom/kwad/sdk/api/loader/Reflect;

    move-result-object v3

    const-string v4, "addAssetPathAsSharedLibrary"

    new-array v5, v1, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v2

    new-array v6, v1, [Ljava/lang/Object;

    aput-object p1, v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lcom/kwad/sdk/api/loader/Reflect;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/kwad/sdk/api/loader/Reflect;

    goto :goto_42

    :cond_1e
    invoke-static {p0}, Lcom/kwad/sdk/api/loader/Reflect;->a(Ljava/lang/Object;)Lcom/kwad/sdk/api/loader/Reflect;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v2

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p1, v5, v2

    invoke-virtual {v3, v0, v4, v5}, Lcom/kwad/sdk/api/loader/Reflect;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/kwad/sdk/api/loader/Reflect;
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_30

    goto :goto_42

    :catchall_30
    move-exception v3

    invoke-static {p0}, Lcom/kwad/sdk/api/loader/Reflect;->a(Ljava/lang/Object;)Lcom/kwad/sdk/api/loader/Reflect;

    move-result-object p0

    new-array v3, v1, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v3, v1}, Lcom/kwad/sdk/api/loader/Reflect;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/kwad/sdk/api/loader/Reflect;

    :goto_42
    return v2
.end method

.method private static b(Landroid/content/Context;Landroid/content/res/Resources;Ljava/lang/String;)Landroid/content/res/Resources;
    .registers 10

    const-class v0, Landroid/content/res/AssetManager;

    invoke-static {v0}, Lcom/kwad/sdk/api/loader/Reflect;->a(Ljava/lang/Class;)Lcom/kwad/sdk/api/loader/Reflect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/api/loader/Reflect;->b()Lcom/kwad/sdk/api/loader/Reflect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/api/loader/Reflect;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetManager;

    invoke-static {v0}, Lcom/kwad/sdk/api/loader/Reflect;->a(Ljava/lang/Object;)Lcom/kwad/sdk/api/loader/Reflect;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v5

    const-string p2, "addAssetPath"

    invoke-virtual {v1, p2, v3, v2}, Lcom/kwad/sdk/api/loader/Reflect;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/kwad/sdk/api/loader/Reflect;

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt p2, v1, :cond_86

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    :try_start_2f
    invoke-static {p2}, Lcom/kwad/sdk/api/loader/Reflect;->a(Ljava/lang/Object;)Lcom/kwad/sdk/api/loader/Reflect;

    move-result-object v1

    const-string v2, "resourceDirs"

    invoke-virtual {v1, v2}, Lcom/kwad/sdk/api/loader/Reflect;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_62

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_62

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    array-length v2, v1

    if-lez v2, :cond_62

    array-length v2, v1

    move v3, v5

    :goto_4e
    if-ge v3, v2, :cond_62

    aget-object v4, v1, v3

    instance-of v6, v4, Ljava/lang/String;

    if-eqz v6, :cond_5b

    check-cast v4, Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/kwad/sdk/api/loader/o;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    :try_end_5b
    .catchall {:try_start_2f .. :try_end_5b} :catchall_5e

    :cond_5b
    add-int/lit8 v3, v3, 0x1

    goto :goto_4e

    :catchall_5e
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_62
    :try_start_62
    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    if-eqz v1, :cond_86

    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_86

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    array-length v1, p2

    :goto_6e
    if-ge v5, v1, :cond_86

    aget-object v2, p2, v5

    if-eqz v2, :cond_7f

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7f

    invoke-static {v0, v2}, Lcom/kwad/sdk/api/loader/o;->b(Landroid/content/res/AssetManager;Ljava/lang/String;)I
    :try_end_7f
    .catchall {:try_start_62 .. :try_end_7f} :catchall_82

    :cond_7f
    add-int/lit8 v5, v5, 0x1

    goto :goto_6e

    :catchall_82
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_86
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-static {p0, v0, p2, p1}, Lcom/kwad/sdk/api/loader/o;->a(Landroid/content/Context;Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/content/res/Resources;)Z
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.content.res.MiuiResourcesImpl"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static c(Landroid/content/res/Resources;)Z
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.content.res.VivoResources"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static d(Landroid/content/res/Resources;)Z
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.content.res.NubiaResources"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static e(Landroid/content/res/Resources;)Z
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.content.res.HwResources"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static f(Landroid/content/res/Resources;)Z
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.content.res.Resources"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
