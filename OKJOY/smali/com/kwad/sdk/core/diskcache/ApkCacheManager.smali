.class public Lcom/kwad/sdk/core/diskcache/ApkCacheManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/diskcache/ApkCacheManager$Holder;
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/Future;

.field private b:Ljava/io/File;

.field private final c:Ljava/util/concurrent/ExecutorService;

.field private final d:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/diskcache/ApkCacheManager;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/kwad/sdk/core/diskcache/ApkCacheManager$a;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/core/diskcache/ApkCacheManager$a;-><init>(Lcom/kwad/sdk/core/diskcache/ApkCacheManager;)V

    iput-object v0, p0, Lcom/kwad/sdk/core/diskcache/ApkCacheManager;->d:Ljava/util/concurrent/Callable;

    invoke-static {}, Lcom/kwad/sdk/KsAdSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_17

    :goto_16
    return-void

    :cond_17
    invoke-static {}, Lcom/kwad/sdk/KsAdSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/a;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/diskcache/ApkCacheManager;->b:Ljava/io/File;

    goto :goto_16
.end method

.method synthetic constructor <init>(Lcom/kwad/sdk/core/diskcache/ApkCacheManager$a;)V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/core/diskcache/ApkCacheManager;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/core/diskcache/ApkCacheManager;)Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/ApkCacheManager;->b:Ljava/io/File;

    return-object v0
.end method

.method static synthetic a(Lcom/kwad/sdk/core/diskcache/ApkCacheManager;Ljava/io/File;)Ljava/util/List;
    .registers 3

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/diskcache/ApkCacheManager;->b(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/io/File;)V
    .registers 6

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    :try_start_9
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_15
    if-ge v0, v2, :cond_25

    aget-object v3, v1, v0

    invoke-direct {p0, v3}, Lcom/kwad/sdk/core/diskcache/ApkCacheManager;->a(Ljava/io/File;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_1f
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_25
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_28} :catch_29

    goto :goto_8

    :catch_29
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8
.end method

.method private a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/kwad/sdk/core/diskcache/ApkCacheManager$b;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/core/diskcache/ApkCacheManager$b;-><init>(Lcom/kwad/sdk/core/diskcache/ApkCacheManager;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public static b()Lcom/kwad/sdk/core/diskcache/ApkCacheManager;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/core/diskcache/ApkCacheManager$Holder;->INSTANCE:Lcom/kwad/sdk/core/diskcache/ApkCacheManager$Holder;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/diskcache/ApkCacheManager$Holder;->getInstance()Lcom/kwad/sdk/core/diskcache/ApkCacheManager;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/io/File;)Ljava/util/List;
    .registers 4
    .param p1    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_c

    :goto_b
    return-object v0

    :cond_c
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0, v0}, Lcom/kwad/sdk/core/diskcache/ApkCacheManager;->a(Ljava/util/List;)V

    goto :goto_b
.end method

.method static synthetic b(Lcom/kwad/sdk/core/diskcache/ApkCacheManager;Ljava/io/File;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/diskcache/ApkCacheManager;->a(Ljava/io/File;)V

    return-void
.end method

.method static synthetic b(Lcom/kwad/sdk/core/diskcache/ApkCacheManager;)Z
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/core/diskcache/ApkCacheManager;->c()Z

    move-result v0

    return v0
.end method

.method private c(Ljava/io/File;)I
    .registers 5

    const/high16 v2, 0x447a0000    # 1000.0f

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/diskcache/ApkCacheManager;->d(Ljava/io/File;)J

    move-result-wide v0

    long-to-float v0, v0

    div-float/2addr v0, v2

    div-float/2addr v0, v2

    float-to-int v0, v0

    return v0
.end method

.method private c()Z
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/kwad/sdk/core/diskcache/ApkCacheManager;->b:Ljava/io/File;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_c

    :cond_b
    :goto_b
    return v0

    :cond_c
    iget-object v1, p0, Lcom/kwad/sdk/core/diskcache/ApkCacheManager;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x5

    if-le v2, v3, :cond_25

    array-length v1, v1

    const/16 v2, 0xa

    if-gt v1, v2, :cond_b

    iget-object v1, p0, Lcom/kwad/sdk/core/diskcache/ApkCacheManager;->b:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/kwad/sdk/core/diskcache/ApkCacheManager;->c(Ljava/io/File;)I

    move-result v1

    const/16 v2, 0x190

    if-gt v1, v2, :cond_b

    :cond_25
    const/4 v0, 0x1

    goto :goto_b
.end method

.method private d(Ljava/io/File;)J
    .registers 10

    const-wide/16 v0, 0x0

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_26

    array-length v4, v3

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v4, :cond_26

    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1e

    aget-object v5, v3, v2

    invoke-direct {p0, v5}, Lcom/kwad/sdk/core/diskcache/ApkCacheManager;->d(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v0, v6

    :goto_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1e
    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v0, v6

    goto :goto_1b

    :cond_26
    return-wide v0
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/ApkCacheManager;->b:Ljava/io/File;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/ApkCacheManager;->a:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_15

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_15
    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/ApkCacheManager;->c:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/kwad/sdk/core/diskcache/ApkCacheManager;->d:Ljava/util/concurrent/Callable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/diskcache/ApkCacheManager;->a:Ljava/util/concurrent/Future;

    goto :goto_a
.end method
