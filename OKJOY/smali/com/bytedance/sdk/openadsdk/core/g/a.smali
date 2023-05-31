.class public Lcom/bytedance/sdk/openadsdk/core/g/a;
.super Ljava/lang/Object;
.source "PlayableCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/g/a$a;,
        Lcom/bytedance/sdk/openadsdk/core/g/a$b;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/bytedance/sdk/openadsdk/core/g/a;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/bytedance/sdk/openadsdk/core/d/k;",
            "Lcom/bytedance/sdk/openadsdk/core/g/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/a;->c:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/a;->d:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/a;->f:Ljava/util/Set;

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/a;->g:Landroid/os/Handler;

    .line 68
    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/core/g/a;
    .registers 2

    .prologue
    .line 56
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/g/a;->a:Lcom/bytedance/sdk/openadsdk/core/g/a;

    if-nez v0, :cond_13

    .line 57
    const-class v1, Lcom/bytedance/sdk/openadsdk/core/g/a;

    monitor-enter v1

    .line 58
    :try_start_7
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/g/a;->a:Lcom/bytedance/sdk/openadsdk/core/g/a;

    if-nez v0, :cond_12

    .line 59
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/g/a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/g/a;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/g/a;->a:Lcom/bytedance/sdk/openadsdk/core/g/a;

    .line 61
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 63
    :cond_13
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/g/a;->a:Lcom/bytedance/sdk/openadsdk/core/g/a;

    return-object v0

    .line 61
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/g/a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/g/a;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 205
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 206
    const/4 v0, 0x0

    .line 219
    :goto_8
    return-object v0

    .line 210
    :cond_9
    const-string v0, "\\?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 211
    if-eqz v0, :cond_3a

    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3a

    .line 212
    aget-object v1, v0, v3

    if-eqz v1, :cond_2a

    aget-object v1, v0, v3

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 213
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 215
    :cond_2a
    aget-object v1, v0, v3

    if-eqz v1, :cond_3a

    aget-object v1, v0, v3

    const-string v2, "index.html"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 216
    aget-object p1, v0, v3

    .line 219
    :cond_3a
    const-string v0, "index.html"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/g/a;Ljava/io/File;Z)Lorg/json/JSONObject;
    .registers 4

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/g/a;->a(Ljava/io/File;Z)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/io/File;Z)Lorg/json/JSONObject;
    .registers 6

    .prologue
    .line 126
    if-eqz p1, :cond_4c

    :try_start_2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 127
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/k;->d(Ljava/io/File;)[B

    move-result-object v0

    .line 128
    if-eqz v0, :cond_4c

    array-length v1, v0

    if-lez v1, :cond_4c

    .line 129
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 131
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 132
    if-eqz p2, :cond_4a

    .line 133
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_4a

    .line 134
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/g/a;->d:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_4a} :catch_4b

    .line 143
    :cond_4a
    :goto_4a
    return-object v0

    .line 141
    :catch_4b
    move-exception v0

    .line 143
    :cond_4c
    const/4 v0, 0x0

    goto :goto_4a
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/g/a$a;Z)V
    .registers 5

    .prologue
    .line 396
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_10

    .line 397
    if-eqz p1, :cond_f

    .line 398
    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/g/a$a;->a(Z)V

    .line 412
    :cond_f
    :goto_f
    return-void

    .line 401
    :cond_10
    if-eqz p1, :cond_f

    .line 402
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/a;->g:Landroid/os/Handler;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/g/a$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/g/a$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/g/a;Lcom/bytedance/sdk/openadsdk/core/g/a$a;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_f
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/g/a;Lcom/bytedance/sdk/openadsdk/core/g/a$a;Z)V
    .registers 3

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/g/a;->a(Lcom/bytedance/sdk/openadsdk/core/g/a$a;Z)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/g/a;Ljava/io/File;)V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/g/a;->a(Ljava/io/File;)V

    return-void
.end method

.method private a(Ljava/io/File;)V
    .registers 3

    .prologue
    .line 416
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/g/a;->b(Ljava/io/File;)V

    .line 418
    :try_start_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->q()Lcom/bytedance/sdk/openadsdk/core/g/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/g/c;->a(Ljava/io/File;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_e} :catch_f

    .line 421
    :goto_e
    return-void

    .line 419
    :catch_f
    move-exception v0

    goto :goto_e
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 223
    if-eqz p3, :cond_9

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_b

    :cond_9
    move v0, v1

    .line 237
    :goto_a
    return v0

    .line 227
    :cond_b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/a;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 228
    if-nez v0, :cond_17

    move v0, v1

    .line 229
    goto :goto_a

    .line 232
    :cond_17
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    if-eqz v0, :cond_27

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/utils/j;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    :cond_27
    move v0, v1

    .line 234
    goto :goto_a

    .line 237
    :cond_29
    const/4 v0, 0x1

    goto :goto_a
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/g/a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private b(Ljava/io/File;)V
    .registers 8

    .prologue
    .line 425
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 426
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 427
    invoke-virtual {p1, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    move-result v2

    .line 428
    if-nez v2, :cond_4a

    .line 429
    invoke-virtual {p1, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 430
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-gez v0, :cond_4a

    .line 432
    const-string v0, "PlayableCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Last modified date "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not set for file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_4a} :catch_4b

    .line 438
    :cond_4a
    :goto_4a
    return-void

    .line 436
    :catch_4b
    move-exception v0

    goto :goto_4a
.end method

.method private c()Ljava/lang/String;
    .registers 4

    .prologue
    .line 473
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/g/a;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "games"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_14

    .line 475
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 477
    :cond_14
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/core/g/a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/g/a;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/io/File;)Z
    .registers 4

    .prologue
    .line 448
    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 449
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 450
    if-eqz v0, :cond_1c

    array-length v1, v0

    if-lez v1, :cond_1c

    .line 451
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 452
    const-string v1, "index.html"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 455
    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private d()Ljava/lang/String;
    .registers 5

    .prologue
    .line 484
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 487
    :try_start_8
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 488
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-nez v0, :cond_45

    .line 489
    :cond_1a
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 490
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 495
    :goto_2c
    new-instance v1, Ljava/io/File;

    const-string v2, "playable"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 496
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 497
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 499
    :cond_3c
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/a;->b:Ljava/lang/String;
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_42} :catch_4e

    .line 505
    :cond_42
    :goto_42
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/a;->b:Ljava/lang/String;

    return-object v0

    .line 492
    :cond_45
    :try_start_45
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_4c} :catch_4e

    move-result-object v0

    goto :goto_2c

    .line 500
    :catch_4e
    move-exception v0

    .line 501
    const-string v1, "PlayableCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init root path error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_42
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/core/g/a;)Ljava/util/Set;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/a;->f:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/core/g/a;)Ljava/util/Map;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/a;->c:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 148
    :try_start_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/g/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_a

    .line 201
    :cond_9
    :goto_9
    return-object v0

    .line 151
    :cond_a
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 152
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 153
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_19} :catch_9f

    move-result v1

    if-nez v1, :cond_9

    .line 159
    :try_start_1c
    const-string v1, "http"

    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_48

    const-string v1, "?"

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 160
    const-string v1, "\\?"

    invoke-virtual {p3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object p3, v1, v2

    .line 161
    const-string v1, "/"

    invoke-virtual {p3, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 162
    const/4 v1, 0x0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_47} :catch_a9

    move-result-object p3

    .line 168
    :cond_48
    :goto_48
    :try_start_48
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p3}, Lcom/bytedance/sdk/openadsdk/utils/v;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 169
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 174
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 179
    new-instance v3, Ljava/io/File;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/g/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-direct {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/g/a;->c(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 181
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/g/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 182
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 187
    const-string v5, ""

    invoke-virtual {p3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 188
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 192
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 193
    invoke-direct {p0, v1, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/g/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 194
    new-instance v1, Landroid/webkit/WebResourceResponse;

    const-string v3, "utf-8"

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2, v3, v4}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_9c
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_9c} :catch_9f

    move-object v0, v1

    goto/16 :goto_9

    .line 197
    :catch_9f
    move-exception v1

    .line 198
    const-string v2, "PlayableCache"

    const-string v3, "playable intercept error: "

    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 165
    :catch_a9
    move-exception v1

    goto :goto_48
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/k;Lcom/bytedance/sdk/openadsdk/core/g/a$a;)V
    .registers 11

    .prologue
    const/4 v6, 0x0

    .line 241
    if-eqz p1, :cond_17

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 242
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/r;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 243
    :cond_17
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    const/16 v1, -0x2bd

    invoke-static {v0, p1, v1, v6}, Lcom/bytedance/sdk/openadsdk/core/g/b;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;ILjava/lang/String;)V

    .line 244
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/g/a;->a(Lcom/bytedance/sdk/openadsdk/core/g/a$a;Z)V

    .line 393
    :cond_24
    :goto_24
    return-void

    .line 248
    :cond_25
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/r;->i()Ljava/lang/String;

    move-result-object v3

    .line 249
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/a;->f:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 255
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/a;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/g/a$b;

    invoke-direct {v1, v6}, Lcom/bytedance/sdk/openadsdk/core/g/a$b;-><init>(Lcom/bytedance/sdk/openadsdk/core/g/a$1;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/g/a$b;->a(J)Lcom/bytedance/sdk/openadsdk/core/g/a$b;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/g/b;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    .line 259
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 260
    new-instance v5, Ljava/io/File;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/g/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-direct {p0, v5}, Lcom/bytedance/sdk/openadsdk/core/g/a;->c(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 264
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    const/16 v1, -0x2be

    invoke-static {v0, p1, v1, v6}, Lcom/bytedance/sdk/openadsdk/core/g/b;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;ILjava/lang/String;)V

    .line 265
    invoke-direct {p0, v5}, Lcom/bytedance/sdk/openadsdk/core/g/a;->b(Ljava/io/File;)V

    .line 266
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/g/a;->a(Lcom/bytedance/sdk/openadsdk/core/g/a$a;Z)V

    goto :goto_24

    .line 273
    :cond_77
    :try_start_77
    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/utils/k;->c(Ljava/io/File;)V
    :try_end_7a
    .catch Ljava/lang/Throwable; {:try_start_77 .. :try_end_7a} :catch_93

    .line 278
    :goto_7a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/a;->f:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 279
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/g/e;

    move-result-object v7

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/g/a$2;

    move-object v1, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/g/a$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/g/a;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/io/File;Lcom/bytedance/sdk/openadsdk/core/g/a$a;)V

    invoke-virtual {v7, v3, v0}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/b$a;)V

    goto :goto_24

    .line 274
    :catch_93
    move-exception v0

    goto :goto_7a
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/k;)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 71
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v1

    .line 90
    :goto_a
    return v0

    .line 74
    :cond_b
    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/r;->i()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1f

    :cond_1d
    move v0, v1

    .line 75
    goto :goto_a

    .line 79
    :cond_1f
    :try_start_1f
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/r;->i()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 81
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/a;->d:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 82
    if-nez v0, :cond_37

    move v0, v1

    .line 83
    goto :goto_a

    .line 85
    :cond_37
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/g/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/g/a;->c(Ljava/io/File;)Z
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_43} :catch_45

    move-result v0

    goto :goto_a

    .line 87
    :catch_45
    move-exception v0

    move v0, v1

    .line 90
    goto :goto_a
.end method

.method public b()V
    .registers 4

    .prologue
    .line 94
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_15

    .line 95
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a;->a()Lcom/bytedance/sdk/openadsdk/i/a;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/g/a$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/g/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/g/a;)V

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/i/a;->c(Ljava/lang/Runnable;I)V

    .line 122
    :cond_15
    return-void
.end method
