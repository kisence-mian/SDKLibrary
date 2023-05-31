.class public Lcom/ksad/lottie/e;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ksad/lottie/k",
            "<",
            "Lcom/ksad/lottie/d;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ksad/lottie/e;->a:Ljava/util/Map;

    return-void
.end method

.method private static a(Lcom/ksad/lottie/d;Ljava/lang/String;)Lcom/ksad/lottie/g;
    .registers 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/ksad/lottie/d;->h()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/g;

    invoke-virtual {v0}, Lcom/ksad/lottie/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :goto_22
    return-object v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public static a(Ljava/io/InputStream;Ljava/lang/String;)Lcom/ksad/lottie/j;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/ksad/lottie/j",
            "<",
            "Lcom/ksad/lottie/d;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/ksad/lottie/e;->a(Ljava/io/InputStream;Ljava/lang/String;Z)Lcom/ksad/lottie/j;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Ljava/lang/String;Z)Lcom/ksad/lottie/j;
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/ksad/lottie/j",
            "<",
            "Lcom/ksad/lottie/d;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v0, p1}, Lcom/ksad/lottie/e;->b(Landroid/util/JsonReader;Ljava/lang/String;)Lcom/ksad/lottie/j;
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_14

    move-result-object v0

    if-eqz p2, :cond_13

    invoke-static {p0}, Lcom/ksad/lottie/r/f;->a(Ljava/io/Closeable;)V

    :cond_13
    return-object v0

    :catchall_14
    move-exception v0

    if-eqz p2, :cond_1a

    invoke-static {p0}, Lcom/ksad/lottie/r/f;->a(Ljava/io/Closeable;)V

    :cond_1a
    throw v0
.end method

.method public static a(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/ksad/lottie/j;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipInputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/ksad/lottie/j",
            "<",
            "Lcom/ksad/lottie/d;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0, p1}, Lcom/ksad/lottie/e;->b(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/ksad/lottie/j;
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    move-result-object v0

    invoke-static {p0}, Lcom/ksad/lottie/r/f;->a(Ljava/io/Closeable;)V

    return-object v0

    :catchall_8
    move-exception v0

    invoke-static {p0}, Lcom/ksad/lottie/r/f;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static a(Landroid/content/Context;I)Lcom/ksad/lottie/k;
    .registers 5
    .param p1    # I
        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lcom/ksad/lottie/k",
            "<",
            "Lcom/ksad/lottie/d;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/ksad/lottie/e;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ksad/lottie/e$c;

    invoke-direct {v2, v0, p1}, Lcom/ksad/lottie/e$c;-><init>(Landroid/content/Context;I)V

    invoke-static {v1, v2}, Lcom/ksad/lottie/e;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/ksad/lottie/k;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/ksad/lottie/k;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/ksad/lottie/k",
            "<",
            "Lcom/ksad/lottie/d;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/ksad/lottie/e$b;

    invoke-direct {v1, v0, p1}, Lcom/ksad/lottie/e$b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lcom/ksad/lottie/e;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/ksad/lottie/k;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/util/JsonReader;Ljava/lang/String;)Lcom/ksad/lottie/k;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Ljava/lang/String;",
            ")",
            "Lcom/ksad/lottie/k",
            "<",
            "Lcom/ksad/lottie/d;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/ksad/lottie/e$d;

    invoke-direct {v0, p0, p1}, Lcom/ksad/lottie/e$d;-><init>(Landroid/util/JsonReader;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/ksad/lottie/e;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/ksad/lottie/k;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/ksad/lottie/k;
    .registers 5
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lcom/ksad/lottie/j",
            "<",
            "Lcom/ksad/lottie/d;",
            ">;>;)",
            "Lcom/ksad/lottie/k",
            "<",
            "Lcom/ksad/lottie/d;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/ksad/lottie/p/f;->a()Lcom/ksad/lottie/p/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ksad/lottie/p/f;->a(Ljava/lang/String;)Lcom/ksad/lottie/d;

    move-result-object v1

    if-eqz v1, :cond_15

    new-instance v0, Lcom/ksad/lottie/k;

    new-instance v2, Lcom/ksad/lottie/e$e;

    invoke-direct {v2, v1}, Lcom/ksad/lottie/e$e;-><init>(Lcom/ksad/lottie/d;)V

    invoke-direct {v0, v2}, Lcom/ksad/lottie/k;-><init>(Ljava/util/concurrent/Callable;)V

    :goto_14
    return-object v0

    :cond_15
    sget-object v0, Lcom/ksad/lottie/e;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    sget-object v0, Lcom/ksad/lottie/e;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/k;

    goto :goto_14

    :cond_26
    new-instance v0, Lcom/ksad/lottie/k;

    invoke-direct {v0, p1}, Lcom/ksad/lottie/k;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v1, Lcom/ksad/lottie/e$f;

    invoke-direct {v1, p0}, Lcom/ksad/lottie/e$f;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ksad/lottie/k;->b(Lcom/ksad/lottie/h;)Lcom/ksad/lottie/k;

    new-instance v1, Lcom/ksad/lottie/e$a;

    invoke-direct {v1, p0}, Lcom/ksad/lottie/e$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ksad/lottie/k;->a(Lcom/ksad/lottie/h;)Lcom/ksad/lottie/k;

    sget-object v1, Lcom/ksad/lottie/e;->a:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14
.end method

.method private static a(I)Ljava/lang/String;
    .registers 3
    .param p0    # I
        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rawRes_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a()Ljava/util/Map;
    .registers 1

    sget-object v0, Lcom/ksad/lottie/e;->a:Ljava/util/Map;

    return-object v0
.end method

.method public static b(Landroid/content/Context;I)Lcom/ksad/lottie/j;
    .registers 4
    .param p1    # I
        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lcom/ksad/lottie/j",
            "<",
            "Lcom/ksad/lottie/d;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {p1}, Lcom/ksad/lottie/e;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ksad/lottie/e;->a(Ljava/io/InputStream;Ljava/lang/String;)Lcom/ksad/lottie/j;
    :try_end_f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v0

    :goto_10
    return-object v0

    :catch_11
    move-exception v0

    move-object v1, v0

    new-instance v0, Lcom/ksad/lottie/j;

    invoke-direct {v0, v1}, Lcom/ksad/lottie/j;-><init>(Ljava/lang/Throwable;)V

    goto :goto_10
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Lcom/ksad/lottie/j;
    .registers 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/ksad/lottie/j",
            "<",
            "Lcom/ksad/lottie/d;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "asset_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".zip"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    new-instance v1, Ljava/util/zip/ZipInputStream;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1, v0}, Lcom/ksad/lottie/e;->a(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/ksad/lottie/j;

    move-result-object v0

    :goto_2c
    return-object v0

    :cond_2d
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ksad/lottie/e;->a(Ljava/io/InputStream;Ljava/lang/String;)Lcom/ksad/lottie/j;
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_38} :catch_3a

    move-result-object v0

    goto :goto_2c

    :catch_3a
    move-exception v0

    move-object v1, v0

    new-instance v0, Lcom/ksad/lottie/j;

    invoke-direct {v0, v1}, Lcom/ksad/lottie/j;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2c
.end method

.method public static b(Landroid/util/JsonReader;Ljava/lang/String;)Lcom/ksad/lottie/j;
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Ljava/lang/String;",
            ")",
            "Lcom/ksad/lottie/j",
            "<",
            "Lcom/ksad/lottie/d;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/ksad/lottie/q/t;->a(Landroid/util/JsonReader;)Lcom/ksad/lottie/d;

    move-result-object v1

    invoke-static {}, Lcom/ksad/lottie/p/f;->a()Lcom/ksad/lottie/p/f;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/ksad/lottie/p/f;->a(Ljava/lang/String;Lcom/ksad/lottie/d;)V

    new-instance v0, Lcom/ksad/lottie/j;

    invoke-direct {v0, v1}, Lcom/ksad/lottie/j;-><init>(Ljava/lang/Object;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    :goto_10
    return-object v0

    :catch_11
    move-exception v0

    move-object v1, v0

    new-instance v0, Lcom/ksad/lottie/j;

    invoke-direct {v0, v1}, Lcom/ksad/lottie/j;-><init>(Ljava/lang/Throwable;)V

    goto :goto_10
.end method

.method private static b(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/ksad/lottie/j;
    .registers 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipInputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/ksad/lottie/j",
            "<",
            "Lcom/ksad/lottie/d;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    :try_start_6
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    move-object v2, v1

    :goto_b
    if-eqz v0, :cond_60

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "__MACOSX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_23

    :cond_19
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    move-object v1, v2

    :goto_1d
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    move-object v2, v1

    goto :goto_b

    :cond_23
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, ".json"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3c

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/ksad/lottie/e;->a(Ljava/io/InputStream;Ljava/lang/String;Z)Lcom/ksad/lottie/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksad/lottie/j;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/d;

    move-object v1, v0

    goto :goto_1d

    :cond_3c
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, ".png"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_5e} :catch_f4

    move-object v1, v2

    goto :goto_1d

    :cond_60
    if-nez v2, :cond_6f

    new-instance v0, Lcom/ksad/lottie/j;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unable to parse composition"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/ksad/lottie/j;-><init>(Ljava/lang/Throwable;)V

    :goto_6e
    return-object v0

    :cond_6f
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_77
    :goto_77
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_99

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/ksad/lottie/e;->a(Lcom/ksad/lottie/d;Ljava/lang/String;)Lcom/ksad/lottie/g;

    move-result-object v1

    if-eqz v1, :cond_77

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Lcom/ksad/lottie/g;->a(Landroid/graphics/Bitmap;)V

    goto :goto_77

    :cond_99
    invoke-virtual {v2}, Lcom/ksad/lottie/d;->h()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ksad/lottie/g;

    invoke-virtual {v1}, Lcom/ksad/lottie/g;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_a5

    new-instance v1, Lcom/ksad/lottie/j;

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "There is no image for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/g;

    invoke-virtual {v0}, Lcom/ksad/lottie/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/ksad/lottie/j;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_6e

    :cond_e6
    invoke-static {}, Lcom/ksad/lottie/p/f;->a()Lcom/ksad/lottie/p/f;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/ksad/lottie/p/f;->a(Ljava/lang/String;Lcom/ksad/lottie/d;)V

    new-instance v0, Lcom/ksad/lottie/j;

    invoke-direct {v0, v2}, Lcom/ksad/lottie/j;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_6e

    :catch_f4
    move-exception v0

    move-object v1, v0

    new-instance v0, Lcom/ksad/lottie/j;

    invoke-direct {v0, v1}, Lcom/ksad/lottie/j;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_6e
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Lcom/ksad/lottie/k;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/ksad/lottie/k",
            "<",
            "Lcom/ksad/lottie/d;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/ksad/lottie/network/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/ksad/lottie/k;

    move-result-object v0

    return-object v0
.end method
