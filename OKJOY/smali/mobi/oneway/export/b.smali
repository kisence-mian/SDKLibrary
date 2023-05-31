.class public Lmobi/oneway/export/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/Class;
    .registers 2

    :try_start_0
    invoke-static {}, Lmobi/oneway/export/b;->a()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    :goto_8
    return-object v0

    :catch_9
    move-exception v0

    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static a()Ljava/lang/ClassLoader;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lmobi/oneway/export/b;->a:Ljava/lang/ClassLoader;

    if-nez v1, :cond_16

    invoke-static {}, Lmobi/oneway/export/b;->e()V

    invoke-static {}, Lmobi/oneway/export/d/d;->a()Z

    move-result v1

    if-eqz v1, :cond_19

    const-class v1, Lmobi/oneway/export/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    sput-object v1, Lmobi/oneway/export/b;->a:Ljava/lang/ClassLoader;

    :cond_16
    :goto_16
    sget-object v0, Lmobi/oneway/export/b;->a:Ljava/lang/ClassLoader;

    :goto_18
    return-object v0

    :cond_19
    new-instance v1, Ldalvik/system/DexClassLoader;

    invoke-static {}, Lmobi/oneway/export/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lmobi/oneway/export/b;->c()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-class v5, Lmobi/oneway/export/b;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v1, Lmobi/oneway/export/b;->a:Ljava/lang/ClassLoader;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2f} :catch_30

    goto :goto_16

    :catch_30
    move-exception v1

    sget-object v2, Lmobi/oneway/export/enums/PluginErrorType;->shell_error_classloader:Lmobi/oneway/export/enums/PluginErrorType;

    invoke-static {v1}, Lmobi/oneway/export/h/g;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lmobi/oneway/export/e/c;->a(Lmobi/oneway/export/enums/PluginErrorType;Ljava/lang/String;)V

    goto :goto_18
.end method

.method private static b()Ljava/lang/String;
    .registers 4

    invoke-static {}, Lmobi/oneway/export/d/b;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/oneway/export/d/b;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "plugin"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "OnewaySdk2.4.2.jar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2e
    return-object v0

    :cond_2f
    const-string v0, ""

    goto :goto_2e
.end method

.method private static c()Ljava/lang/String;
    .registers 3

    invoke-static {}, Lmobi/oneway/export/d/b;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-static {}, Lmobi/oneway/export/d/b;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "opt"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_15
    return-object v0

    :cond_16
    const-string v0, ""

    goto :goto_15
.end method

.method private static d()Ljava/lang/String;
    .registers 3

    invoke-static {}, Lmobi/oneway/export/d/b;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-static {}, Lmobi/oneway/export/d/b;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "plugin"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_15
    return-object v0

    :cond_16
    const-string v0, ""

    goto :goto_15
.end method

.method private static e()V
    .registers 3

    invoke-static {}, Lmobi/oneway/export/d/b;->a()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_c

    const-string v0, "context is null,please invoke OnewaySdk.init method first"

    invoke-static {v0}, Lmobi/oneway/export/h/l;->d(Ljava/lang/String;)V

    :cond_b
    :goto_b
    return-void

    :cond_c
    invoke-static {}, Lmobi/oneway/export/b;->f()V

    invoke-static {}, Lmobi/oneway/export/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/oneway/export/h/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/oneway/export/d/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lmobi/oneway/export/d/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_38
    invoke-static {}, Lmobi/oneway/export/d/b;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmobi/oneway/export/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lmobi/oneway/export/h/h;->a(Ljava/io/File;[B)Z
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_59} :catch_5a

    goto :goto_b

    :catch_5a
    move-exception v0

    const-string v1, "load local default OnewaySdk failed"

    invoke-static {v1}, Lmobi/oneway/export/h/l;->d(Ljava/lang/String;)V

    sget-object v1, Lmobi/oneway/export/enums/PluginErrorType;->shell_error_assetsIo:Lmobi/oneway/export/enums/PluginErrorType;

    invoke-static {v0}, Lmobi/oneway/export/h/g;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmobi/oneway/export/e/c;->a(Lmobi/oneway/export/enums/PluginErrorType;Ljava/lang/String;)V

    goto :goto_b
.end method

.method private static f()V
    .registers 6

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmobi/oneway/export/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lmobi/oneway/export/h/h;->e(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_32

    new-instance v1, Lmobi/oneway/export/b$1;

    invoke-direct {v1}, Lmobi/oneway/export/b$1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_32

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1c
    if-ge v0, v2, :cond_32

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OnewaySdk2.4.2.jar"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2f

    invoke-static {v3}, Lmobi/oneway/export/h/h;->j(Ljava/io/File;)Z

    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_32
    return-void
.end method
