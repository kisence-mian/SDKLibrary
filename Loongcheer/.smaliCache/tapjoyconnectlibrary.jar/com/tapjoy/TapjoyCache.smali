.class public Lcom/tapjoy/TapjoyCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TapjoyCache$CacheAssetThread;
    }
.end annotation


# static fields
.field public static final CACHE_DIRECTORY_NAME:Ljava/lang/String; = "Tapjoy/Cache/"

.field public static final CACHE_LIMIT:I = -0x1

.field private static a:Lcom/tapjoy/TapjoyCache;

.field public static unit_test_mode:Z


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/tapjoy/TapjoyCacheMap;

.field private d:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/concurrent/ExecutorService;

.field private f:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tapjoy/TapjoyCache;->unit_test_mode:Z

    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/tapjoy/TapjoyCache;->a:Lcom/tapjoy/TapjoyCache;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "applicationContext"    # Landroid/content/Context;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    sget-object v0, Lcom/tapjoy/TapjoyCache;->a:Lcom/tapjoy/TapjoyCache;

    if-eqz v0, :cond_b

    sget-boolean v0, Lcom/tapjoy/TapjoyCache;->unit_test_mode:Z

    if-eqz v0, :cond_9c

    .line 64
    :cond_b
    sput-object p0, Lcom/tapjoy/TapjoyCache;->a:Lcom/tapjoy/TapjoyCache;

    .line 65
    iput-object p1, p0, Lcom/tapjoy/TapjoyCache;->b:Landroid/content/Context;

    .line 67
    new-instance v0, Lcom/tapjoy/TapjoyCacheMap;

    const/4 v1, -0x1

    invoke-direct {v0, p1, v1}, Lcom/tapjoy/TapjoyCacheMap;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/tapjoy/TapjoyCache;->c:Lcom/tapjoy/TapjoyCacheMap;

    .line 68
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/TapjoyCache;->d:Ljava/util/Vector;

    .line 70
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TapjoyCache;->e:Ljava/util/concurrent/ExecutorService;

    .line 72
    nop

    .line 1152
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 1155
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "tapjoy"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->deleteFileOrDirectory(Ljava/io/File;)V

    .line 1158
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "tjcache/tmp/"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->deleteFileOrDirectory(Ljava/io/File;)V

    .line 1081
    :cond_48
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tapjoy/TapjoyCache;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Tapjoy/Cache/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tapjoy/TapjoyCache;->f:Ljava/io/File;

    .line 1084
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_99

    .line 1085
    iget-object v0, p0, Lcom/tapjoy/TapjoyCache;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    const-string v1, "TapjoyCache"

    if-eqz v0, :cond_91

    .line 1086
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Created directory at: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/TapjoyCache;->f:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_99

    .line 1088
    :cond_91
    const-string v0, "Error initalizing cache"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    const/4 v0, 0x0

    sput-object v0, Lcom/tapjoy/TapjoyCache;->a:Lcom/tapjoy/TapjoyCache;

    .line 1096
    :cond_99
    :goto_99
    invoke-direct {p0}, Lcom/tapjoy/TapjoyCache;->a()V

    .line 74
    :cond_9c
    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 38
    invoke-static {p0}, Lcom/tapjoy/TapjoyCache;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/tapjoy/TapjoyCache;)Ljava/util/Vector;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/tapjoy/TapjoyCache;->d:Ljava/util/Vector;

    return-object p0
.end method

.method private a()V
    .registers 14

    .line 105
    iget-object v0, p0, Lcom/tapjoy/TapjoyCache;->b:Landroid/content/Context;

    const-string v1, "tapjoyCacheData"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 106
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 108
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 110
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_111

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 111
    new-instance v3, Ljava/io/File;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    const-string v5, "TapjoyCache"

    if-eqz v4, :cond_ea

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_ea

    .line 115
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 116
    invoke-static {v3}, Lcom/tapjoy/TapjoyCachedAssetData;->fromRawJSONString(Ljava/lang/String;)Lcom/tapjoy/TapjoyCachedAssetData;

    move-result-object v3

    .line 118
    const-string v4, "Removing asset because deserialization failed."

    if-eqz v3, :cond_d8

    .line 119
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Loaded Asset: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/tapjoy/TapjoyCachedAssetData;->getAssetURL()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {v3}, Lcom/tapjoy/TapjoyCachedAssetData;->getAssetURL()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tapjoy/TapjoyCache;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 121
    if-eqz v6, :cond_c6

    const-string v7, ""

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_c6

    .line 123
    invoke-virtual {v3}, Lcom/tapjoy/TapjoyCachedAssetData;->getTimeOfDeathInSeconds()J

    move-result-wide v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    cmp-long v2, v7, v9

    if-gez v2, :cond_bf

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Asset expired, removing from cache: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/tapjoy/TapjoyCachedAssetData;->getAssetURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v3}, Lcom/tapjoy/TapjoyCachedAssetData;->getLocalFilePath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d6

    invoke-virtual {v3}, Lcom/tapjoy/TapjoyCachedAssetData;->getLocalFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_d6

    .line 126
    new-instance v2, Ljava/io/File;

    invoke-virtual {v3}, Lcom/tapjoy/TapjoyCachedAssetData;->getLocalFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/tapjoy/TapjoyUtil;->deleteFileOrDirectory(Ljava/io/File;)V

    goto/16 :goto_19

    .line 129
    :cond_bf
    iget-object v2, p0, Lcom/tapjoy/TapjoyCache;->c:Lcom/tapjoy/TapjoyCacheMap;

    invoke-virtual {v2, v6, v3}, Lcom/tapjoy/TapjoyCacheMap;->put(Ljava/lang/String;Lcom/tapjoy/TapjoyCachedAssetData;)Lcom/tapjoy/TapjoyCachedAssetData;

    goto/16 :goto_19

    .line 132
    :cond_c6
    invoke-static {v5, v4}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 135
    :cond_d6
    goto/16 :goto_19

    .line 136
    :cond_d8
    invoke-static {v5, v4}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 139
    goto/16 :goto_19

    .line 141
    :cond_ea
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Removing reference to missing asset: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 144
    goto/16 :goto_19

    .line 145
    :cond_111
    return-void
.end method

.method static synthetic b(Lcom/tapjoy/TapjoyCache;)Lcom/tapjoy/TapjoyCacheMap;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/tapjoy/TapjoyCache;->c:Lcom/tapjoy/TapjoyCacheMap;

    return-object p0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 280
    const-string v0, "//"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 281
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "http:"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 285
    :cond_12
    :try_start_12
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object p0
    :try_end_1b
    .catch Ljava/net/MalformedURLException; {:try_start_12 .. :try_end_1b} :catch_1c

    return-object p0

    .line 286
    :catch_1c
    move-exception v0

    .line 287
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Invalid URL "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "TapjoyCache"

    invoke-static {v0, p0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string p0, ""

    return-object p0
.end method

.method static synthetic c(Lcom/tapjoy/TapjoyCache;)Ljava/io/File;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/tapjoy/TapjoyCache;->f:Ljava/io/File;

    return-object p0
.end method

.method public static getInstance()Lcom/tapjoy/TapjoyCache;
    .registers 1

    .line 463
    sget-object v0, Lcom/tapjoy/TapjoyCache;->a:Lcom/tapjoy/TapjoyCache;

    return-object v0
.end method

.method public static setInstance(Lcom/tapjoy/TapjoyCache;)V
    .registers 1
    .param p0, "cache"    # Lcom/tapjoy/TapjoyCache;

    .line 472
    sput-object p0, Lcom/tapjoy/TapjoyCache;->a:Lcom/tapjoy/TapjoyCache;

    .line 473
    return-void
.end method


# virtual methods
.method public cacheAssetFromJSONObject(Lorg/json/JSONObject;)Ljava/util/concurrent/Future;
    .registers 6
    .param p1, "assetData"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 231
    :try_start_0
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    const-wide/32 v1, 0x15180

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 237
    const-string v1, "offerId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 238
    const-string v2, "timeToLive"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 240
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/tapjoy/TapjoyCache;->cacheAssetFromURL(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/concurrent/Future;

    move-result-object v0
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_24} :catch_25

    return-object v0

    .line 241
    :catch_25
    move-exception v0

    .line 242
    const-string v0, "TapjoyCache"

    const-string v1, "Required parameters to cache an asset from JSON is not present"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const/4 v0, 0x0

    return-object v0
.end method

.method public cacheAssetFromURL(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/concurrent/Future;
    .registers 10
    .param p1, "assetURLString"    # Ljava/lang/String;
    .param p2, "offerId"    # Ljava/lang/String;
    .param p3, "timeToLive"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 260
    const-string v0, "TapjoyCache"

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_8} :catch_28

    .line 264
    nop

    .line 266
    invoke-static {p1}, Lcom/tapjoy/TapjoyCache;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 267
    iget-object v4, p0, Lcom/tapjoy/TapjoyCache;->d:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 268
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "URL is already in the process of being cached: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    return-object v1

    .line 272
    :cond_23
    invoke-virtual {p0, v2, p2, p3, p4}, Lcom/tapjoy/TapjoyCache;->startCachingThread(Ljava/net/URL;Ljava/lang/String;J)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0

    .line 261
    :catch_28
    move-exception v2

    .line 262
    const-string v2, "Invalid cache assetURL"

    invoke-static {v0, v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    return-object v1
.end method

.method public cacheAssetGroup(Lorg/json/JSONArray;Lcom/tapjoy/TJCacheListener;)V
    .registers 4
    .param p1, "assetGroup"    # Lorg/json/JSONArray;
    .param p2, "tapjoyCacheListener"    # Lcom/tapjoy/TJCacheListener;

    .line 169
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_11

    .line 171
    new-instance v0, Lcom/tapjoy/TapjoyCache$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/tapjoy/TapjoyCache$1;-><init>(Lcom/tapjoy/TapjoyCache;Lorg/json/JSONArray;Lcom/tapjoy/TJCacheListener;)V

    .line 213
    invoke-virtual {v0}, Lcom/tapjoy/TapjoyCache$1;->start()V

    return-void

    .line 216
    :cond_11
    if-eqz p2, :cond_17

    .line 217
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lcom/tapjoy/TJCacheListener;->onCachingComplete(I)V

    .line 220
    :cond_17
    return-void
.end method

.method public cachedAssetsToJSON()Ljava/lang/String;
    .registers 5

    .line 400
    iget-object v0, p0, Lcom/tapjoy/TapjoyCache;->c:Lcom/tapjoy/TapjoyCacheMap;

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyCacheMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 402
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 404
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 405
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 407
    :try_start_1b
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/TapjoyCachedAssetData;

    invoke-virtual {v2}, Lcom/tapjoy/TapjoyCachedAssetData;->toRawJSONString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_32} :catch_33

    .line 410
    goto :goto_f

    .line 409
    :catch_33
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 411
    goto :goto_f

    .line 412
    :cond_38
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public clearTapjoyCache()V
    .registers 4

    .line 308
    const-string v0, "TapjoyCache"

    const-string v1, "Cleaning Tapjoy cache!"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v1, p0, Lcom/tapjoy/TapjoyCache;->f:Ljava/io/File;

    invoke-static {v1}, Lcom/tapjoy/TapjoyUtil;->deleteFileOrDirectory(Ljava/io/File;)V

    .line 312
    iget-object v1, p0, Lcom/tapjoy/TapjoyCache;->f:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Created new cache directory at: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/TapjoyCache;->f:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :cond_2c
    new-instance v0, Lcom/tapjoy/TapjoyCacheMap;

    iget-object v1, p0, Lcom/tapjoy/TapjoyCache;->b:Landroid/content/Context;

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/TapjoyCacheMap;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/tapjoy/TapjoyCache;->c:Lcom/tapjoy/TapjoyCacheMap;

    .line 317
    return-void
.end method

.method public getCachedData()Lcom/tapjoy/TapjoyCacheMap;
    .registers 2

    .line 369
    iget-object v0, p0, Lcom/tapjoy/TapjoyCache;->c:Lcom/tapjoy/TapjoyCacheMap;

    return-object v0
.end method

.method public getCachedDataForURL(Ljava/lang/String;)Lcom/tapjoy/TapjoyCachedAssetData;
    .registers 4
    .param p1, "url"    # Ljava/lang/String;

    .line 356
    invoke-static {p1}, Lcom/tapjoy/TapjoyCache;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 357
    const-string v1, ""

    if-eq v0, v1, :cond_11

    .line 358
    iget-object v1, p0, Lcom/tapjoy/TapjoyCache;->c:Lcom/tapjoy/TapjoyCacheMap;

    invoke-virtual {v1, v0}, Lcom/tapjoy/TapjoyCacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TapjoyCachedAssetData;

    return-object v0

    .line 360
    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCachedOfferIDs()Ljava/lang/String;
    .registers 5

    .line 420
    nop

    .line 421
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 423
    iget-object v1, p0, Lcom/tapjoy/TapjoyCache;->c:Lcom/tapjoy/TapjoyCacheMap;

    if-eqz v1, :cond_41

    .line 424
    invoke-virtual {v1}, Lcom/tapjoy/TapjoyCacheMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 426
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 427
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 428
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/TapjoyCachedAssetData;

    invoke-virtual {v2}, Lcom/tapjoy/TapjoyCachedAssetData;->getOfferId()Ljava/lang/String;

    move-result-object v2

    .line 430
    if-eqz v2, :cond_39

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_39

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    .line 431
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    :cond_39
    goto :goto_12

    .line 434
    :cond_3a
    const-string v1, ","

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_43

    .line 423
    :cond_41
    const-string v0, ""

    .line 436
    :goto_43
    return-object v0
.end method

.method public getPathOfCachedURL(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "url"    # Ljava/lang/String;

    .line 378
    invoke-static {p1}, Lcom/tapjoy/TapjoyCache;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 380
    const-string v1, ""

    if-eq v0, v1, :cond_33

    iget-object v1, p0, Lcom/tapjoy/TapjoyCache;->c:Lcom/tapjoy/TapjoyCacheMap;

    invoke-virtual {v1, v0}, Lcom/tapjoy/TapjoyCacheMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 382
    iget-object v1, p0, Lcom/tapjoy/TapjoyCache;->c:Lcom/tapjoy/TapjoyCacheMap;

    invoke-virtual {v1, v0}, Lcom/tapjoy/TapjoyCacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TapjoyCachedAssetData;

    .line 383
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyCachedAssetData;->getLocalFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 384
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 385
    invoke-virtual {v0}, Lcom/tapjoy/TapjoyCachedAssetData;->getLocalURL()Ljava/lang/String;

    move-result-object p1

    goto :goto_33

    .line 387
    :cond_2c
    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyCache;->removeAssetFromCache(Ljava/lang/String;)Z

    .line 391
    :cond_33
    :goto_33
    return-object p1
.end method

.method public isURLCached(Ljava/lang/String;)Z
    .registers 4
    .param p1, "url"    # Ljava/lang/String;

    .line 347
    iget-object v0, p0, Lcom/tapjoy/TapjoyCache;->c:Lcom/tapjoy/TapjoyCacheMap;

    invoke-static {p1}, Lcom/tapjoy/TapjoyCache;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/TapjoyCacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public isURLDownloading(Ljava/lang/String;)Z
    .registers 5
    .param p1, "url"    # Ljava/lang/String;

    .line 334
    iget-object v0, p0, Lcom/tapjoy/TapjoyCache;->d:Ljava/util/Vector;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 335
    invoke-static {p1}, Lcom/tapjoy/TapjoyCache;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 336
    const-string v2, ""

    if-eq v0, v2, :cond_17

    iget-object v2, p0, Lcom/tapjoy/TapjoyCache;->d:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    return v0

    :cond_17
    return v1

    .line 338
    :cond_18
    return v1
.end method

.method public printCacheInformation()V
    .registers 5

    .line 443
    const-string v0, "TapjoyCache"

    const-string v1, "------------- Cache Data -------------"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Number of files in cache: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/TapjoyCache;->c:Lcom/tapjoy/TapjoyCacheMap;

    invoke-virtual {v2}, Lcom/tapjoy/TapjoyCacheMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cache Size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/TapjoyCache;->f:Ljava/io/File;

    invoke-static {v2}, Lcom/tapjoy/TapjoyUtil;->fileOrDirectorySize(Ljava/io/File;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    const-string v1, "--------------------------------------"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    return-void
.end method

.method public removeAssetFromCache(Ljava/lang/String;)Z
    .registers 4
    .param p1, "url"    # Ljava/lang/String;

    .line 324
    invoke-static {p1}, Lcom/tapjoy/TapjoyCache;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 325
    const-string v1, ""

    if-eq v0, v1, :cond_12

    iget-object v1, p0, Lcom/tapjoy/TapjoyCache;->c:Lcom/tapjoy/TapjoyCacheMap;

    invoke-virtual {v1, v0}, Lcom/tapjoy/TapjoyCacheMap;->remove(Ljava/lang/Object;)Lcom/tapjoy/TapjoyCachedAssetData;

    move-result-object v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public startCachingThread(Ljava/net/URL;Ljava/lang/String;J)Ljava/util/concurrent/Future;
    .registers 13
    .param p1, "assetURL"    # Ljava/net/URL;
    .param p2, "offerId"    # Ljava/lang/String;
    .param p3, "timeToLive"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 297
    if-eqz p1, :cond_13

    .line 298
    iget-object v0, p0, Lcom/tapjoy/TapjoyCache;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/tapjoy/TapjoyCache$CacheAssetThread;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/tapjoy/TapjoyCache$CacheAssetThread;-><init>(Lcom/tapjoy/TapjoyCache;Ljava/net/URL;Ljava/lang/String;J)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0

    .line 300
    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method
