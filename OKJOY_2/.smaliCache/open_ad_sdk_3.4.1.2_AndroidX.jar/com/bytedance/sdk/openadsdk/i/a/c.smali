.class public Lcom/bytedance/sdk/openadsdk/i/a/c;
.super Lcom/bytedance/sdk/openadsdk/i/a/a;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/i/a/c$a;,
        Lcom/bytedance/sdk/openadsdk/i/a/c$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/io/File;

.field private final b:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

.field private final e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

.field private final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bytedance/sdk/openadsdk/i/a/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private volatile g:J

.field private volatile h:F

.field private final i:Lcom/bytedance/sdk/openadsdk/i/a/c$b;

.field private final j:Ljava/lang/Runnable;

.field private final k:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/i/a/a;-><init>()V

    .line 38
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/a/c;->b:Ljava/util/LinkedHashMap;

    .line 39
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/a/c;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 40
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/i/a/c;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 41
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/a/c;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/a/c;->f:Ljava/util/Set;

    .line 44
    const-wide/32 v0, 0x6400000

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/i/a/c;->g:J

    .line 45
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/i/a/c;->h:F

    .line 47
    new-instance v0, Lcom/bytedance/sdk/openadsdk/i/a/c$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/i/a/c$b;-><init>(Lcom/bytedance/sdk/openadsdk/i/a/c$1;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/a/c;->i:Lcom/bytedance/sdk/openadsdk/i/a/c$b;

    .line 49
    new-instance v0, Lcom/bytedance/sdk/openadsdk/i/a/c$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/i/a/c$1;-><init>(Lcom/bytedance/sdk/openadsdk/i/a/c;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/a/c;->j:Ljava/lang/Runnable;

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/a/c;->k:Landroid/os/Handler;

    .line 77
    if-eqz p1, :cond_7a

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_6a

    goto :goto_7a

    .line 86
    :cond_6a
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/a/c;->a:Ljava/io/File;

    .line 88
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/i/a/c$2;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/i/a/c$2;-><init>(Lcom/bytedance/sdk/openadsdk/i/a/c;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 94
    return-void

    .line 79
    :cond_7a
    :goto_7a
    if-nez p1, :cond_7f

    .line 80
    const-string p1, " dir null"

    goto :goto_c0

    .line 82
    :cond_7f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exists: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isDirectory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", canRead: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", canWrite: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 84
    :goto_c0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dir error!  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/i/a/c;)J
    .registers 3

    .line 35
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/i/a/c;->g:J

    return-wide v0
.end method

.method private a(Ljava/io/File;)Ljava/lang/String;
    .registers 2

    .line 347
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/i/a/c;J)V
    .registers 3

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/i/a/c;->b(J)V

    return-void
.end method

.method private b()V
    .registers 9

    .line 97
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/a/c;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 100
    :try_start_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/a/c;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_5b

    array-length v1, v0

    if-lez v1, :cond_5b

    .line 102
    new-instance v1, Ljava/util/HashMap;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 103
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 104
    array-length v3, v0

    const/4 v4, 0x0

    :goto_1e
    if-ge v4, v3, :cond_39

    aget-object v5, v0, v4

    .line 105
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_36

    .line 106
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_36
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 110
    :cond_39
    new-instance v0, Lcom/bytedance/sdk/openadsdk/i/a/c$3;

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/i/a/c$3;-><init>(Lcom/bytedance/sdk/openadsdk/i/a/c;Ljava/util/HashMap;)V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 124
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_45
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 125
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/i/a/c;->b:Ljava/util/LinkedHashMap;

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/i/a/c;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5a
    .catchall {:try_start_5 .. :try_end_5a} :catchall_65

    .line 126
    goto :goto_45

    .line 130
    :cond_5b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/a/c;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 131
    nop

    .line 133
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/i/a/c;->c()V

    .line 134
    return-void

    .line 130
    :catchall_65
    move-exception v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/i/a/c;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 131
    throw v0
.end method

.method private b(J)V
    .registers 15

    .line 281
    nop

    .line 282
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 284
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/i/a/c;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 286
    const-wide/16 v1, 0x0

    .line 287
    const/4 v3, 0x0

    :try_start_e
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/i/a/c;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 288
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5
    :try_end_2e
    .catchall {:try_start_e .. :try_end_2e} :catchall_d2

    add-long/2addr v1, v5

    .line 289
    goto :goto_18

    .line 290
    :cond_30
    cmp-long v4, v1, p1

    if-gtz v4, :cond_3a

    .line 326
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/a/c;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 291
    return-void

    .line 294
    :cond_3a
    long-to-float p1, p1

    :try_start_3b
    iget p2, p0, Lcom/bytedance/sdk/openadsdk/i/a/c;->h:F

    mul-float/2addr p1, p2

    float-to-long p1, p1

    .line 295
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V
    :try_end_44
    .catchall {:try_start_3b .. :try_end_44} :catchall_d2

    .line 297
    :try_start_44
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/i/a/c;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 298
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    .line 299
    if-eqz v6, :cond_a6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_a6

    .line 300
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/i/a/c;->i:Lcom/bytedance/sdk/openadsdk/i/a/c$b;

    invoke-direct {p0, v6}, Lcom/bytedance/sdk/openadsdk/i/a/c;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/bytedance/sdk/openadsdk/i/a/c$b;->c(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_ad

    .line 301
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v7

    .line 303
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-tmp"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v6, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_a5

    .line 305
    invoke-virtual {v0, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 307
    sub-long/2addr v1, v7

    .line 308
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 310
    :cond_a5
    goto :goto_ad

    .line 312
    :cond_a6
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 315
    :cond_ad
    :goto_ad
    cmp-long v5, v1, p1

    if-gtz v5, :cond_b2

    .line 316
    goto :goto_b3

    .line 318
    :cond_b2
    goto :goto_4e

    .line 320
    :cond_b3
    :goto_b3
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 321
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/i/a/c;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c8
    .catchall {:try_start_44 .. :try_end_c8} :catchall_cf

    .line 322
    goto :goto_b7

    .line 326
    :cond_c9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/a/c;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 327
    goto :goto_dc

    .line 323
    :catchall_cf
    move-exception p1

    move-object v3, v4

    goto :goto_d3

    :catchall_d2
    move-exception p1

    .line 324
    :goto_d3
    :try_start_d3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_d6
    .catchall {:try_start_d3 .. :try_end_d6} :catchall_100

    .line 326
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/a/c;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 327
    move-object v4, v3

    .line 329
    :goto_dc
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/a/c;->f:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_f2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/sdk/openadsdk/i/a/c$a;

    .line 330
    invoke-interface {p2, v4}, Lcom/bytedance/sdk/openadsdk/i/a/c$a;->a(Ljava/util/Set;)V

    .line 331
    goto :goto_e2

    .line 333
    :cond_f2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/i/a/c$5;

    const/4 v1, 0x1

    invoke-direct {p2, p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/i/a/c$5;-><init>(Lcom/bytedance/sdk/openadsdk/i/a/c;ILjava/util/HashSet;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 344
    return-void

    .line 326
    :catchall_100
    move-exception p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/i/a/c;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 327
    throw p1
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/i/a/c;)V
    .registers 1

    .line 35
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/i/a/c;->b()V

    return-void
.end method

.method private c()V
    .registers 5

    .line 152
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/a/c;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/i/a/c;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 153
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/a/c;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/i/a/c;->j:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 154
    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .line 159
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/d;->c()Lcom/bytedance/sdk/openadsdk/i/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/i/d;->d()V

    .line 163
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/e;->a()Landroid/content/Context;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_15

    .line 165
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/i/b/c;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/i/b/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/i/b/c;->a(I)V

    .line 168
    :cond_15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/a/c;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/i/a/c;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 170
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/i/a/c$4;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/bytedance/sdk/openadsdk/i/a/c$4;-><init>(Lcom/bytedance/sdk/openadsdk/i/a/c;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 177
    return-void
.end method

.method public a(J)V
    .registers 3

    .line 137
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/i/a/c;->g:J

    .line 138
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/i/a/c;->c()V

    .line 139
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/i/a/c$a;)V
    .registers 3

    .line 65
    if-eqz p1, :cond_7

    .line 66
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/a/c;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_7
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .line 226
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 227
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/a/c;->i:Lcom/bytedance/sdk/openadsdk/i/a/c$b;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/i/a/c$b;->a(Ljava/lang/String;)V

    .line 229
    :cond_b
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    .line 233
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 234
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/a/c;->i:Lcom/bytedance/sdk/openadsdk/i/a/c$b;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/i/a/c$b;->b(Ljava/lang/String;)V

    .line 236
    :cond_b
    return-void
.end method

.method public c(Ljava/lang/String;)Ljava/io/File;
    .registers 5

    .line 240
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/a/c;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 241
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/a/c;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 242
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/i/a/c;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 244
    if-eqz v0, :cond_15

    .line 245
    return-object v0

    .line 248
    :cond_15
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/i/a/c;->a:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 250
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/i/a/c;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 251
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/i/a/c;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/i/a/c;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 254
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/i/a/c;->f:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/i/a/c$a;

    .line 255
    invoke-interface {v2, p1}, Lcom/bytedance/sdk/openadsdk/i/a/c$a;->a(Ljava/lang/String;)V

    .line 256
    goto :goto_31

    .line 258
    :cond_41
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/i/a/c;->c()V

    .line 259
    return-object v0
.end method

.method public d(Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .line 264
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/a/c;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 265
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/a/c;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    .line 266
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/a/c;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 267
    return-object p1

    .line 269
    :cond_16
    const/4 p1, 0x0

    return-object p1
.end method
