.class public Lcom/kwad/sdk/core/diskcache/ApkCacheManager;
.super Ljava/lang/Object;


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
            "Ljava/util/concurrent/Callable<",
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

    new-instance v0, Lcom/kwad/sdk/core/diskcache/ApkCacheManager$1;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/core/diskcache/ApkCacheManager$1;-><init>(Lcom/kwad/sdk/core/diskcache/ApkCacheManager;)V

    iput-object v0, p0, Lcom/kwad/sdk/core/diskcache/ApkCacheManager;->d:Ljava/util/concurrent/Callable;

    invoke-static {}, Lcom/kwad/sdk/KsAdSDKImpl;->get()Lcom/kwad/sdk/KsAdSDKImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/KsAdSDKImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1b

    return-void

    :cond_1b
    :try_start_1b
    invoke-static {}, Lcom/kwad/sdk/KsAdSDKImpl;->get()Lcom/kwad/sdk/KsAdSDKImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/KsAdSDKImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/utils/z;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/diskcache/ApkCacheManager;->b:Ljava/io/File;
    :try_end_29
    .catchall {:try_start_1b .. :try_end_29} :catchall_2a

    goto :goto_2e

    :catchall_2a
    move-exception v0

    invoke-static {v0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :goto_2e
    return-void
.end method

.method synthetic constructor <init>(Lcom/kwad/sdk/core/diskcache/ApkCacheManager$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/core/diskcache/ApkCacheManager;-><init>()V

    return-void
.end method

.method private a(Ljava/io/File;)I
    .registers 4

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/diskcache/ApkCacheManager;->b(Ljava/io/File;)J

    move-result-wide v0

    long-to-float p1, v0

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p1, v0

    div-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public static a()Lcom/kwad/sdk/core/diskcache/ApkCacheManager;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/core/diskcache/ApkCacheManager$Holder;->INSTANCE:Lcom/kwad/sdk/core/diskcache/ApkCacheManager$Holder;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/diskcache/ApkCacheManager$Holder;->getInstance()Lcom/kwad/sdk/core/diskcache/ApkCacheManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/kwad/sdk/core/diskcache/ApkCacheManager;)Ljava/io/File;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/diskcache/ApkCacheManager;->b:Ljava/io/File;

    return-object p0
.end method

.method static synthetic a(Lcom/kwad/sdk/core/diskcache/ApkCacheManager;Ljava/io/File;)Ljava/util/List;
    .registers 2

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/diskcache/ApkCacheManager;->d(Ljava/io/File;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/kwad/sdk/core/diskcache/ApkCacheManager$2;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/core/diskcache/ApkCacheManager$2;-><init>(Lcom/kwad/sdk/core/diskcache/ApkCacheManager;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private b(Ljava/io/File;)J
    .registers 8

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_25

    array-length v2, p1

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v2, :cond_25

    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1b

    aget-object v4, p1, v3

    invoke-direct {p0, v4}, Lcom/kwad/sdk/core/diskcache/ApkCacheManager;->b(Ljava/io/File;)J

    move-result-wide v4

    goto :goto_21

    :cond_1b
    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    :goto_21
    add-long/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_25
    return-wide v0
.end method

.method static synthetic b(Lcom/kwad/sdk/core/diskcache/ApkCacheManager;Ljava/io/File;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/diskcache/ApkCacheManager;->c(Ljava/io/File;)V

    return-void
.end method

.method static synthetic b(Lcom/kwad/sdk/core/diskcache/ApkCacheManager;)Z
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/core/diskcache/ApkCacheManager;->c()Z

    move-result p0

    return p0
.end method

.method private c(Ljava/io/File;)V
    .registers 6

    if-eqz p1, :cond_2e

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_2e

    :cond_9
    :try_start_9
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v1, :cond_1f

    aget-object v3, v0, v2

    invoke-direct {p0, v3}, Lcom/kwad/sdk/core/diskcache/ApkCacheManager;->c(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_1f
    :goto_1f
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_2e

    :cond_23
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_27} :catch_2a

    if-eqz v0, :cond_2e

    goto :goto_1f

    :catch_2a
    move-exception p1

    invoke-static {p1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :cond_2e
    :goto_2e
    return-void
.end method

.method private c()Z
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/ApkCacheManager;->b:Ljava/io/File;

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_26

    :cond_c
    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/ApkCacheManager;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x5

    if-le v2, v3, :cond_25

    array-length v0, v0

    const/16 v2, 0xa

    if-gt v0, v2, :cond_26

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/ApkCacheManager;->b:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/kwad/sdk/core/diskcache/ApkCacheManager;->a(Ljava/io/File;)I

    move-result v0

    const/16 v2, 0x190

    if-gt v0, v2, :cond_26

    :cond_25
    const/4 v1, 0x1

    :cond_26
    :goto_26
    return v1
.end method

.method private d(Ljava/io/File;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_c

    return-object v0

    :cond_c
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0, v0}, Lcom/kwad/sdk/core/diskcache/ApkCacheManager;->a(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/ApkCacheManager;->b:Ljava/io/File;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_1f

    :cond_b
    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/ApkCacheManager;->a:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_15

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_15
    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/ApkCacheManager;->c:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/kwad/sdk/core/diskcache/ApkCacheManager;->d:Ljava/util/concurrent/Callable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/diskcache/ApkCacheManager;->a:Ljava/util/concurrent/Future;

    :cond_1f
    :goto_1f
    return-void
.end method
