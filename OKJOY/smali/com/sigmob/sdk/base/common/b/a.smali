.class public Lcom/sigmob/sdk/base/common/b/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "lastDay"

.field private static b:Lcom/sigmob/sdk/base/common/b/a;

.field private static h:I

.field private static i:Ljava/text/SimpleDateFormat;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation
.end field


# instance fields
.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile d:Z

.field private final e:Ljava/lang/String;

.field private f:J

.field private final g:Ljava/util/concurrent/locks/ReadWriteLock;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    sput-object v0, Lcom/sigmob/sdk/base/common/b/a;->b:Lcom/sigmob/sdk/base/common/b/a;

    const/16 v0, 0xa

    sput v0, Lcom/sigmob/sdk/base/common/b/a;->h:I

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sigmob/sdk/base/common/b/a;->i:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/b/a;->c:Ljava/util/List;

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/sigmob/sdk/base/common/b/a;->f:J

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/b/a;->g:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/b/a;->e:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/sigmob/sdk/base/common/b/a;
    .registers 3

    sget-object v0, Lcom/sigmob/sdk/base/common/b/a;->b:Lcom/sigmob/sdk/base/common/b/a;

    if-nez v0, :cond_36

    const-class v1, Lcom/sigmob/sdk/base/common/b/a;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/sigmob/sdk/base/common/b/a;->b:Lcom/sigmob/sdk/base/common/b/a;

    if-nez v0, :cond_35

    new-instance v0, Lcom/sigmob/sdk/base/common/b/a;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/common/b/a;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/base/common/b/a;->b:Lcom/sigmob/sdk/base/common/b/a;
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_40

    :try_start_12
    invoke-static {}, Lcom/sigmob/sdk/base/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/base/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/SDKConfig;->getMaxSendLogRecords()I

    move-result v0

    sput v0, Lcom/sigmob/sdk/base/common/b/a;->h:I

    invoke-static {}, Lcom/sigmob/sdk/base/common/b/a;->f()Z

    move-result v0

    invoke-static {}, Lcom/sigmob/sdk/base/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/base/common/SDKConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/common/SDKConfig;->isDisableUpAppInfo()Z

    move-result v2

    if-nez v2, :cond_35

    if-nez v0, :cond_35

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->b()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-static {}, Lcom/sigmob/sdk/base/common/b/a;->e()V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_35} :catch_39
    .catchall {:try_start_12 .. :try_end_35} :catchall_40

    :cond_35
    :goto_35
    :try_start_35
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_40

    :cond_36
    sget-object v0, Lcom/sigmob/sdk/base/common/b/a;->b:Lcom/sigmob/sdk/base/common/b/a;

    return-object v0

    :catch_39
    move-exception v0

    :try_start_3a
    const-string v2, "BuriedPointManager getInstance"

    invoke-static {v2, v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_35

    :catchall_40
    move-exception v0

    monitor-exit v1
    :try_end_42
    .catchall {:try_start_3a .. :try_end_42} :catchall_40

    throw v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-object p0

    :cond_9
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/zip/DeflaterOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/util/zip/DeflaterOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/util/zip/DeflaterOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    goto :goto_8
.end method

.method public static a(Lorg/json/JSONArray;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_2d

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Lorg/json/JSONArray;

    if-eqz v3, :cond_22

    check-cast v0, Lorg/json/JSONArray;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/b/a;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    :cond_1b
    :goto_1b
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_22
    instance-of v3, v0, Lorg/json/JSONObject;

    if-eqz v3, :cond_1b

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/b/a;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    goto :goto_1b

    :cond_2d
    return-object v2
.end method

.method public static a(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_23

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_23
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_2b
    return-object v2
.end method

.method static synthetic a(Lcom/sigmob/sdk/base/common/b/a;)Ljava/util/concurrent/locks/ReadWriteLock;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/b/a;->g:Ljava/util/concurrent/locks/ReadWriteLock;

    return-object v0
.end method

.method static synthetic a(Landroid/content/pm/PackageInfo;)V
    .registers 1

    invoke-static {p0}, Lcom/sigmob/sdk/base/common/b/a;->b(Landroid/content/pm/PackageInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/base/common/b/a;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/sigmob/sdk/base/common/b/a;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/sigmob/sdk/base/common/b/a;)J
    .registers 3

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/b/a;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method private static b(Landroid/content/pm/PackageInfo;)V
    .registers 8

    const/4 v1, 0x0

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/sigmob/sdk/base/common/b/a;->b:Lcom/sigmob/sdk/base/common/b/a;

    if-nez v0, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    sget-object v0, Lcom/sigmob/sdk/base/common/b/a;->b:Lcom/sigmob/sdk/base/common/b/a;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    :try_start_13
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->v()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "app_name"

    invoke-interface {v6, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_2e} :catch_50

    :goto_2e
    const-string v2, "package_name"

    iget-object v3, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "update"

    iget-wide v4, p0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "app_version"

    iget-object v3, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "10"

    const/4 v3, 0x0

    move-object v4, v1

    move-object v5, v1

    invoke-virtual/range {v0 .. v6}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_b

    :catch_50
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    goto :goto_2e
.end method

.method private b(Ljava/lang/String;)V
    .registers 3

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/common/b/a;->d:Z

    new-instance v0, Lcom/sigmob/sdk/base/common/b/a$3;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/base/common/b/a$3;-><init>(Lcom/sigmob/sdk/base/common/b/a;)V

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/c/k;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/c/m;)V

    goto :goto_2
.end method

.method static synthetic c(Lcom/sigmob/sdk/base/common/b/a;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/b/a;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c()Ljava/text/SimpleDateFormat;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/base/common/b/a;->i:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method private d()J
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/sigmob/sdk/base/common/b/a;->f:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/sigmob/sdk/base/common/b/a;->f:J

    monitor-exit p0

    return-wide v0

    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method static synthetic d(Lcom/sigmob/sdk/base/common/b/a;)J
    .registers 3

    iget-wide v0, p0, Lcom/sigmob/sdk/base/common/b/a;->f:J

    return-wide v0
.end method

.method private static e()V
    .registers 2

    invoke-static {}, Lcom/sigmob/sdk/base/common/a/e;->b()Lcom/sigmob/sdk/base/common/a/e;

    move-result-object v0

    new-instance v1, Lcom/sigmob/sdk/base/common/b/a$1;

    invoke-direct {v1}, Lcom/sigmob/sdk/base/common/b/a$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/common/a/e;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic e(Lcom/sigmob/sdk/base/common/b/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/b/a;->i()V

    return-void
.end method

.method private static f()Z
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->v()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->v()Landroid/content/Context;

    move-result-object v1

    const-string v2, "BuriedPointConfig"

    invoke-static {v1, v2}, Lcom/sigmob/sdk/base/common/utils/aa;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "lastDay"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_11
.end method

.method private g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/b/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method private h()V
    .registers 8

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_84

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_84

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_84

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/utils/e;->f(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_25
    if-ge v0, v2, :cond_84

    aget-object v6, v1, v0

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "lck"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5b

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".lck"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5e

    :cond_5b
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_5e
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5b

    invoke-static {v6}, Lcom/sigmob/sdk/base/common/utils/e;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_78

    const-string v1, "data"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_78
    const/4 v1, 0x0

    const-string v2, "201"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_84
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_84} :catch_85

    :cond_84
    :goto_84
    return-void

    :catch_85
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_84
.end method

.method private i()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/common/b/a;->d:Z

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/b/a;->g:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/b/a;->c:Ljava/util/List;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/b/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_22

    :cond_18
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/b/a;->g:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_21
    return-void

    :cond_22
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/b/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/models/PointEntity;->clearLogDB(J)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/b/a;->c:Ljava/util/List;

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/b/a;->g:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_21
.end method


# virtual methods
.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/view/MotionEvent;Ljava/lang/String;Z)V
    .registers 15

    const/4 v9, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {}, Lcom/sigmob/sdk/base/common/b/a;->a()Lcom/sigmob/sdk/base/common/b/a;

    move-result-object v0

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v1, "location"

    const-string v4, "{x:%f,y:%f}"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v9

    const/4 v7, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "click_duration"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pressure"

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPressure()F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "touchSize"

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSize()F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "touchType"

    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "is_valid_click"

    if-eqz p4, :cond_78

    const-string v1, "1"

    :goto_6c
    invoke-interface {v5, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "102"

    const/4 v3, 0x0

    move-object v1, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_78
    const-string v1, "0"

    goto :goto_6c
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/sdk/base/models/BaseAdUnit;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/sigmob/sdk/base/common/a/e;->b()Lcom/sigmob/sdk/base/common/a/e;

    move-result-object v8

    new-instance v0, Lcom/sigmob/sdk/base/common/b/a$2;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p5

    move-object v4, p6

    move-object v5, p4

    move v6, p3

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/sigmob/sdk/base/common/b/a$2;-><init>(Lcom/sigmob/sdk/base/common/b/a;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ILcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-virtual {v8, v0}, Lcom/sigmob/sdk/base/common/a/e;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/sdk/base/models/BaseAdUnit;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public b()V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/b/a;->g:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    sget v0, Lcom/sigmob/sdk/base/common/b/a;->h:I

    invoke-static {v0}, Lcom/sigmob/sdk/base/models/PointEntity;->getLogs(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/b/a;->c:Ljava/util/List;

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/b/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Lcom/sigmob/sdk/base/common/b/a;->d:Z

    if-eqz v0, :cond_27

    :cond_1d
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/b/a;->g:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_26
    return-void

    :cond_27
    :try_start_27
    invoke-static {}, Lcom/sigmob/sdk/base/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/base/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/SDKConfig;->getLogUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/c/v;->c(Ljava/lang/String;)Z
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_3b} :catch_73
    .catchall {:try_start_27 .. :try_end_3b} :catchall_101

    move-result v0

    if-nez v0, :cond_48

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/b/a;->g:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_26

    :cond_48
    :try_start_48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/b/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_58
    :goto_58
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_81

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_72} :catch_73
    .catchall {:try_start_48 .. :try_end_72} :catchall_101

    goto :goto_58

    :catch_73
    move-exception v0

    :try_start_74
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_101

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/b/a;->g:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_26

    :cond_81
    :try_start_81
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v1, ""
    :try_end_8c
    .catch Ljava/lang/Throwable; {:try_start_81 .. :try_end_8c} :catch_73
    .catchall {:try_start_81 .. :try_end_8c} :catchall_101

    :try_start_8c
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->g()Ljava/lang/String;
    :try_end_93
    .catch Ljava/lang/Throwable; {:try_start_8c .. :try_end_93} :catch_f6
    .catchall {:try_start_8c .. :try_end_93} :catchall_101

    move-result-object v0

    :goto_94
    :try_start_94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sigandroid_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_uniq_key="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&_batch_value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_c3
    .catch Ljava/lang/Throwable; {:try_start_94 .. :try_end_c3} :catch_73
    .catchall {:try_start_94 .. :try_end_c3} :catchall_101

    move-result-object v0

    :try_start_c4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BPLog_Count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/b/a;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/models/PointEntity;->toURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/base/common/b/a;->b(Ljava/lang/String;)V
    :try_end_eb
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_eb} :catch_fc
    .catch Ljava/lang/Throwable; {:try_start_c4 .. :try_end_eb} :catch_73
    .catchall {:try_start_c4 .. :try_end_eb} :catchall_101

    :goto_eb
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/b/a;->g:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_26

    :catch_f6
    move-exception v0

    :try_start_f7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    goto :goto_94

    :catch_fc
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_100
    .catch Ljava/lang/Throwable; {:try_start_f7 .. :try_end_100} :catch_73
    .catchall {:try_start_f7 .. :try_end_100} :catchall_101

    goto :goto_eb

    :catchall_101
    move-exception v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/b/a;->g:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
