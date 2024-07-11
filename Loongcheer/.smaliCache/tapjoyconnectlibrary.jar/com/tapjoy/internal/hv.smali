.class public Lcom/tapjoy/internal/hv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/tapjoy/internal/hv;


# instance fields
.field public b:Landroid/content/Context;

.field public c:Landroid/content/SharedPreferences;

.field public d:Landroid/content/SharedPreferences;

.field private e:Ljava/io/File;

.field private f:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    new-instance v0, Lcom/tapjoy/internal/hv;

    invoke-direct {v0}, Lcom/tapjoy/internal/hv;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/hv;->a:Lcom/tapjoy/internal/hv;

    return-void
.end method

.method private constructor <init>()V
    .registers 9

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/hv;->c:Landroid/content/SharedPreferences;

    .line 54
    iput-object v0, p0, Lcom/tapjoy/internal/hv;->d:Landroid/content/SharedPreferences;

    .line 60
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/tapjoy/internal/hv;->f:Ljava/util/concurrent/ExecutorService;

    .line 62
    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/hv;)Landroid/content/Context;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/tapjoy/internal/hv;->b:Landroid/content/Context;

    return-object p0
.end method

.method public static a(J)Z
    .registers 5

    .line 72
    const-wide/16 v0, 0xe10

    cmp-long v2, p0, v0

    if-ltz v2, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic b(Lcom/tapjoy/internal/hv;)V
    .registers 1

    .line 37
    invoke-direct {p0}, Lcom/tapjoy/internal/hv;->c()V

    return-void
.end method

.method static synthetic c(Lcom/tapjoy/internal/hv;)Landroid/content/SharedPreferences;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/tapjoy/internal/hv;->c:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method private declared-synchronized c()V
    .registers 15

    monitor-enter p0

    .line 255
    nop

    .line 256
    :try_start_2
    invoke-static {}, Lcom/tapjoy/internal/u;->b()J

    move-result-wide v0

    .line 257
    invoke-virtual {p0}, Lcom/tapjoy/internal/hv;->b()Ljava/io/File;

    move-result-object v2

    .line 260
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 262
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 263
    const/4 v4, 0x0

    if-eqz v2, :cond_26

    .line 264
    array-length v5, v2

    const/4 v6, 0x0

    :goto_18
    if-ge v6, v5, :cond_26

    aget-object v7, v2, v6

    .line 265
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    .line 269
    :cond_26
    iget-object v2, p0, Lcom/tapjoy/internal/hv;->c:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 270
    iget-object v5, p0, Lcom/tapjoy/internal/hv;->d:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 271
    new-instance v6, Ljava/util/HashMap;

    iget-object v7, p0, Lcom/tapjoy/internal/hv;->c:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 272
    new-instance v7, Ljava/util/HashMap;

    iget-object v8, p0, Lcom/tapjoy/internal/hv;->d:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 275
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x0

    .line 276
    :goto_51
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_76

    .line 277
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 278
    invoke-interface {v7, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_75

    .line 279
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    .line 280
    invoke-interface {v2, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 281
    new-array v9, v11, [Ljava/lang/Object;

    aput-object v10, v9, v4

    .line 282
    const/4 v9, 0x1

    .line 284
    :cond_75
    goto :goto_51

    .line 286
    :cond_76
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 287
    :goto_7e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a2

    .line 288
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 289
    invoke-interface {v6, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a1

    .line 290
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 291
    invoke-interface {v5, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 292
    new-array v9, v11, [Ljava/lang/Object;

    aput-object v8, v9, v4

    .line 293
    const/4 v9, 0x1

    .line 295
    :cond_a1
    goto :goto_7e

    .line 298
    :cond_a2
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 299
    :goto_aa
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d9

    .line 300
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 301
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 302
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 303
    cmp-long v8, v12, v0

    if-gez v8, :cond_d5

    .line 304
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 305
    invoke-interface {v2, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 306
    invoke-interface {v5, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 307
    const/4 v9, 0x1

    goto :goto_aa

    .line 309
    :cond_d5
    invoke-virtual {v3, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    goto :goto_aa

    .line 314
    :cond_d9
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_fb

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 315
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 316
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 318
    new-array v3, v11, [Ljava/lang/Object;

    aput-object v1, v3, v4

    .line 319
    goto :goto_e1

    .line 322
    :cond_fb
    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x1e

    if-le v0, v1, :cond_151

    .line 323
    nop

    .line 325
    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .line 327
    new-instance v1, Ljava/util/LinkedList;

    .line 328
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 329
    new-instance v3, Lcom/tapjoy/internal/hv$3;

    invoke-direct {v3, p0}, Lcom/tapjoy/internal/hv$3;-><init>(Lcom/tapjoy/internal/hv;)V

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 338
    nop

    .line 339
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :goto_120
    if-ge v3, v0, :cond_152

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_152

    .line 340
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 341
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 342
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 344
    invoke-interface {v2, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 345
    invoke-interface {v5, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 346
    invoke-virtual {p0, v7}, Lcom/tapjoy/internal/hv;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 347
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 348
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v7, v8, v4

    aput-object v6, v8, v11

    .line 349
    add-int/lit8 v3, v3, 0x1

    .line 350
    goto :goto_120

    .line 322
    :cond_151
    move v11, v9

    .line 361
    :cond_152
    if-eqz v11, :cond_15a

    .line 362
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 363
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_15a
    .catchall {:try_start_2 .. :try_end_15a} :catchall_15c

    .line 365
    :cond_15a
    monitor-exit p0

    return-void

    .line 254
    :catchall_15c
    move-exception v0

    monitor-exit p0

    goto :goto_160

    :goto_15f
    throw v0

    :goto_160
    goto :goto_15f
.end method


# virtual methods
.method final a(Ljava/lang/String;)Ljava/io/File;
    .registers 4

    .line 214
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/tapjoy/internal/hv;->b()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Ljava/net/URL;)Ljava/io/File;
    .registers 15

    .line 88
    iget-object v0, p0, Lcom/tapjoy/internal/hv;->b:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 89
    return-object v1

    .line 92
    :cond_6
    monitor-enter p0

    .line 93
    :try_start_7
    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/hv;->b(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/hv;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 95
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_17

    .line 96
    monitor-exit p0

    return-object v1

    .line 99
    :cond_17
    invoke-static {}, Lcom/tapjoy/internal/u;->b()J

    move-result-wide v3

    .line 100
    iget-object v5, p0, Lcom/tapjoy/internal/hv;->c:Landroid/content/SharedPreferences;

    const-wide/16 v6, 0x0

    invoke-interface {v5, v0, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 101
    const/4 v5, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x2

    cmp-long v12, v8, v3

    if-ltz v12, :cond_32

    .line 102
    new-array v1, v11, [Ljava/lang/Object;

    aput-object v0, v1, v10

    aput-object p1, v1, v5

    .line 103
    monitor-exit p0

    return-object v2

    .line 105
    :cond_32
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v0, p1, v10

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, p1, v5

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, p1, v11

    .line 106
    cmp-long p1, v8, v6

    if-eqz p1, :cond_61

    .line 107
    iget-object p1, p0, Lcom/tapjoy/internal/hv;->c:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 108
    iget-object p1, p0, Lcom/tapjoy/internal/hv;->d:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 110
    :cond_61
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 111
    monitor-exit p0

    return-object v1

    .line 113
    :catchall_66
    move-exception p1

    monitor-exit p0
    :try_end_68
    .catchall {:try_start_7 .. :try_end_68} :catchall_66

    throw p1
.end method

.method public final a()V
    .registers 3

    .line 76
    iget-object v0, p0, Lcom/tapjoy/internal/hv;->f:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/tapjoy/internal/hv$1;

    invoke-direct {v1, p0}, Lcom/tapjoy/internal/hv$1;-><init>(Lcom/tapjoy/internal/hv;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 85
    return-void
.end method

.method public final a(Ljava/net/URL;Ljava/io/InputStream;J)V
    .registers 13

    .line 117
    iget-object v0, p0, Lcom/tapjoy/internal/hv;->b:Landroid/content/Context;

    if-nez v0, :cond_5

    .line 118
    return-void

    .line 120
    :cond_5
    iget-object v0, p0, Lcom/tapjoy/internal/hv;->f:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/tapjoy/internal/hv$2;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/tapjoy/internal/hv$2;-><init>(Lcom/tapjoy/internal/hv;Ljava/net/URL;Ljava/io/InputStream;J)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 167
    return-void
.end method

.method final b()Ljava/io/File;
    .registers 4

    .line 196
    iget-object v0, p0, Lcom/tapjoy/internal/hv;->e:Ljava/io/File;

    .line 197
    if-nez v0, :cond_13

    .line 198
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tapjoy/internal/hv;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "tapjoy_mm_cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 199
    iput-object v0, p0, Lcom/tapjoy/internal/hv;->e:Ljava/io/File;

    .line 202
    :cond_13
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 203
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 205
    :cond_1c
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_25

    .line 206
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 209
    :cond_25
    return-object v0
.end method

.method final declared-synchronized b(Ljava/net/URL;)Ljava/lang/String;
    .registers 7

    monitor-enter p0

    .line 171
    :try_start_1
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    .line 172
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/cc;->a([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->convertToHex([B)Ljava/lang/String;

    move-result-object v0

    .line 173
    iget-object v1, p0, Lcom/tapjoy/internal/hv;->d:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 174
    if-nez v1, :cond_29

    .line 175
    iget-object v1, p0, Lcom/tapjoy/internal/hv;->d:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_68

    .line 176
    monitor-exit p0

    return-object v0

    .line 177
    :cond_29
    :try_start_29
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_68

    if-eqz v1, :cond_31

    .line 178
    monitor-exit p0

    return-object v0

    .line 181
    :cond_31
    const/4 v1, 0x0

    .line 184
    :cond_32
    add-int/lit8 v1, v1, 0x1

    .line 185
    :try_start_34
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 186
    iget-object v4, p0, Lcom/tapjoy/internal/hv;->d:Landroid/content/SharedPreferences;

    invoke-interface {v4, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 187
    if-eqz v4, :cond_59

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 189
    :cond_59
    iget-object v0, p0, Lcom/tapjoy/internal/hv;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_66
    .catchall {:try_start_34 .. :try_end_66} :catchall_68

    .line 190
    monitor-exit p0

    return-object v3

    .line 170
    :catchall_68
    move-exception p1

    monitor-exit p0

    goto :goto_6c

    :goto_6b
    throw p1

    :goto_6c
    goto :goto_6b
.end method
