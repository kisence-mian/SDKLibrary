.class public Lcom/bytedance/sdk/openadsdk/h/a/c;
.super Lcom/bytedance/sdk/openadsdk/h/a/a;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/h/a/c$a;,
        Lcom/bytedance/sdk/openadsdk/h/a/c$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/io/File;

.field private final b:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
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
            "Ljava/util/Set",
            "<",
            "Lcom/bytedance/sdk/openadsdk/h/a/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private volatile g:J

.field private volatile h:F

.field private final i:Lcom/bytedance/sdk/openadsdk/h/a/c$b;

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

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/h/a/a;-><init>()V

    .line 36
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->b:Ljava/util/LinkedHashMap;

    .line 37
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 38
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 39
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->f:Ljava/util/Set;

    .line 42
    const-wide/32 v0, 0x6400000

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->g:J

    .line 43
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->h:F

    .line 45
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/a/c$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/a/c$b;-><init>(Lcom/bytedance/sdk/openadsdk/h/a/c$1;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->i:Lcom/bytedance/sdk/openadsdk/h/a/c$b;

    .line 47
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/a/c$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/h/a/c$1;-><init>(Lcom/bytedance/sdk/openadsdk/h/a/c;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->j:Ljava/lang/Runnable;

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->k:Landroid/os/Handler;

    .line 74
    if-eqz p1, :cond_6d

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_cc

    .line 76
    :cond_6d
    if-nez p1, :cond_8a

    .line 77
    const-string v0, " dir null"

    .line 81
    :goto_71
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dir error!  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 79
    :cond_8a
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

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_71

    .line 83
    :cond_cc
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->a:Ljava/io/File;

    .line 84
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a;->a()Lcom/bytedance/sdk/openadsdk/i/a;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/h/a/c$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/h/a/c$2;-><init>(Lcom/bytedance/sdk/openadsdk/h/a/c;)V

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/i/a;->c(Ljava/lang/Runnable;I)V

    .line 90
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/h/a/c;)J
    .registers 3

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->g:J

    return-wide v0
.end method

.method private a(Ljava/io/File;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 339
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/h/a/c;J)V
    .registers 4

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/h/a/c;->b(J)V

    return-void
.end method

.method private b()V
    .registers 9

    .prologue
    .line 93
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 96
    :try_start_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 97
    if-eqz v1, :cond_62

    array-length v0, v1

    if-lez v0, :cond_62

    .line 98
    new-instance v2, Ljava/util/HashMap;

    array-length v0, v1

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 99
    new-instance v3, Ljava/util/ArrayList;

    array-length v0, v1

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 100
    array-length v4, v1

    const/4 v0, 0x0

    :goto_1e
    if-ge v0, v4, :cond_39

    aget-object v5, v1, v0

    .line 101
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_36

    .line 102
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 106
    :cond_39
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/a/c$3;

    invoke-direct {v0, p0, v2}, Lcom/bytedance/sdk/openadsdk/h/a/c$3;-><init>(Lcom/bytedance/sdk/openadsdk/h/a/c;Ljava/util/HashMap;)V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 120
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_45
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 121
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->b:Ljava/util/LinkedHashMap;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/h/a/c;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5a
    .catchall {:try_start_5 .. :try_end_5a} :catchall_5b

    goto :goto_45

    .line 126
    :catchall_5b
    move-exception v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0

    :cond_62
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 129
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/h/a/c;->c()V

    .line 130
    return-void
.end method

.method private b(J)V
    .registers 20

    .prologue
    .line 273
    const/4 v3, 0x0

    .line 274
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/h/a/c;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 278
    const-wide/16 v4, 0x0

    .line 279
    :try_start_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/h/a/c;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 280
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_30} :catch_123
    .catchall {:try_start_f .. :try_end_30} :catchall_100

    move-result-wide v8

    add-long/2addr v4, v8

    .line 281
    goto :goto_1b

    .line 282
    :cond_33
    cmp-long v2, v4, p1

    if-gtz v2, :cond_3f

    .line 318
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/h/a/c;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 336
    :goto_3e
    return-void

    .line 286
    :cond_3f
    move-wide/from16 v0, p1

    long-to-float v2, v0

    :try_start_42
    move-object/from16 v0, p0

    iget v6, v0, Lcom/bytedance/sdk/openadsdk/h/a/c;->h:F

    mul-float/2addr v2, v6

    float-to-long v8, v2

    .line 287
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_4d} :catch_123
    .catchall {:try_start_42 .. :try_end_4d} :catchall_100

    .line 289
    :try_start_4d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/h/a/c;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_59
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ba

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 290
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 291
    if-eqz v3, :cond_f8

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_f8

    .line 292
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/bytedance/sdk/openadsdk/h/a/c;->i:Lcom/bytedance/sdk/openadsdk/h/a/c$b;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/bytedance/sdk/openadsdk/h/a/c;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/bytedance/sdk/openadsdk/h/a/c$b;->c(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_b6

    .line 293
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v12

    .line 295
    new-instance v11, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "-tmp"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 296
    invoke-virtual {v3, v11}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_b4

    .line 297
    invoke-virtual {v7, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 299
    sub-long/2addr v4, v12

    .line 300
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_b4
    move-wide v2, v4

    move-wide v4, v2

    .line 307
    :cond_b6
    :goto_b6
    cmp-long v2, v4, v8

    if-gtz v2, :cond_59

    .line 312
    :cond_ba
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_be
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_109

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 313
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/h/a/c;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d1
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_d1} :catch_d2
    .catchall {:try_start_4d .. :try_end_d1} :catchall_100

    goto :goto_be

    .line 315
    :catch_d2
    move-exception v2

    move-object v3, v2

    move-object v2, v6

    .line 316
    :goto_d5
    :try_start_d5
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_d8
    .catchall {:try_start_d5 .. :try_end_d8} :catchall_100

    .line 318
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/h/a/c;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    move-object v3, v2

    .line 321
    :goto_e0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/h/a/c;->f:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_e8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_112

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/h/a/c$a;

    .line 322
    invoke-interface {v2, v3}, Lcom/bytedance/sdk/openadsdk/h/a/c$a;->a(Ljava/util/Set;)V

    goto :goto_e8

    .line 304
    :cond_f8
    :try_start_f8
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_ff
    .catch Ljava/lang/Throwable; {:try_start_f8 .. :try_end_ff} :catch_d2
    .catchall {:try_start_f8 .. :try_end_ff} :catchall_100

    goto :goto_b6

    .line 318
    :catchall_100
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/h/a/c;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v2

    :cond_109
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/h/a/c;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    move-object v3, v6

    .line 319
    goto :goto_e0

    .line 325
    :cond_112
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a;->a()Lcom/bytedance/sdk/openadsdk/i/a;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/h/a/c$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v7}, Lcom/bytedance/sdk/openadsdk/h/a/c$5;-><init>(Lcom/bytedance/sdk/openadsdk/h/a/c;Ljava/util/HashSet;)V

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/i/a;->c(Ljava/lang/Runnable;I)V

    goto/16 :goto_3e

    .line 315
    :catch_123
    move-exception v2

    move-object/from16 v16, v2

    move-object v2, v3

    move-object/from16 v3, v16

    goto :goto_d5
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/h/a/c;)V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/h/a/c;->b()V

    return-void
.end method

.method private c()V
    .registers 5

    .prologue
    .line 148
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 149
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->j:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 150
    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 155
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/d;->c()Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/h/d;->d()V

    .line 159
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/e;->a()Landroid/content/Context;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_15

    .line 161
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/b/c;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/h/b/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/b/c;->a(I)V

    .line 164
    :cond_15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 165
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a;->a()Lcom/bytedance/sdk/openadsdk/i/a;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/h/a/c$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/h/a/c$4;-><init>(Lcom/bytedance/sdk/openadsdk/h/a/c;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/i/a;->c(Ljava/lang/Runnable;I)V

    .line 171
    return-void
.end method

.method public a(J)V
    .registers 4

    .prologue
    .line 133
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->g:J

    .line 134
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/h/a/c;->c()V

    .line 135
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/h/a/c$a;)V
    .registers 3

    .prologue
    .line 62
    if-eqz p1, :cond_7

    .line 63
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_7
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 218
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 219
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->i:Lcom/bytedance/sdk/openadsdk/h/a/c$b;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/h/a/c$b;->a(Ljava/lang/String;)V

    .line 221
    :cond_b
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 225
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 226
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->i:Lcom/bytedance/sdk/openadsdk/h/a/c$b;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/h/a/c$b;->b(Ljava/lang/String;)V

    .line 228
    :cond_b
    return-void
.end method

.method public c(Ljava/lang/String;)Ljava/io/File;
    .registers 5

    .prologue
    .line 232
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 233
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 234
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 236
    if-eqz v0, :cond_15

    .line 251
    :goto_14
    return-object v0

    .line 240
    :cond_15
    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->a:Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 243
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 246
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/h/a/c$a;

    .line 247
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/h/a/c$a;->a(Ljava/lang/String;)V

    goto :goto_31

    .line 250
    :cond_41
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/h/a/c;->c()V

    move-object v0, v1

    .line 251
    goto :goto_14
.end method

.method public d(Ljava/lang/String;)Ljava/io/File;
    .registers 4

    .prologue
    .line 256
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 257
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 258
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 261
    :goto_15
    return-object v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method
