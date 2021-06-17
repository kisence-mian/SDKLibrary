.class public Lcom/tapjoy/TapjoyCacheMap;
.super Ljava/util/concurrent/ConcurrentHashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentHashMap<",
        "Ljava/lang/String;",
        "Lcom/tapjoy/TapjoyCachedAssetData;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "cacheLimit"    # I

    .line 18
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lcom/tapjoy/TapjoyCacheMap;->b:I

    .line 19
    iput-object p1, p0, Lcom/tapjoy/TapjoyCacheMap;->a:Landroid/content/Context;

    .line 20
    iput p2, p0, Lcom/tapjoy/TapjoyCacheMap;->b:I

    .line 21
    return-void
.end method

.method private a()Ljava/lang/String;
    .registers 11

    .line 28
    nop

    .line 29
    nop

    .line 31
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyCacheMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, -0x1

    const-string v3, ""

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 32
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tapjoy/TapjoyCachedAssetData;

    invoke-virtual {v5}, Lcom/tapjoy/TapjoyCachedAssetData;->getTimestampInSeconds()J

    move-result-wide v5

    .line 33
    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-eqz v9, :cond_2e

    cmp-long v7, v5, v1

    if-gez v7, :cond_37

    .line 34
    :cond_2e
    nop

    .line 35
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v3, v1

    move-wide v1, v5

    .line 37
    :cond_37
    goto :goto_e

    .line 39
    :cond_38
    return-object v3
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 105
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public put(Ljava/lang/String;Lcom/tapjoy/TapjoyCachedAssetData;)Lcom/tapjoy/TapjoyCachedAssetData;
    .registers 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "assetData"    # Lcom/tapjoy/TapjoyCachedAssetData;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TapjoyCacheMap::put() -- key: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " assetURL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/tapjoy/TapjoyCachedAssetData;->getAssetURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TapjoyCacheMap"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x0

    if-nez p2, :cond_26

    .line 48
    return-object v0

    .line 50
    :cond_26
    invoke-virtual {p2}, Lcom/tapjoy/TapjoyCachedAssetData;->getTimeOfDeathInSeconds()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    cmp-long v5, v1, v3

    if-gtz v5, :cond_36

    .line 51
    return-object v0

    .line 55
    :cond_36
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyCacheMap;->size()I

    move-result v0

    iget v1, p0, Lcom/tapjoy/TapjoyCacheMap;->b:I

    if-ne v0, v1, :cond_45

    .line 56
    invoke-direct {p0}, Lcom/tapjoy/TapjoyCacheMap;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tapjoy/TapjoyCacheMap;->remove(Ljava/lang/Object;)Lcom/tapjoy/TapjoyCachedAssetData;

    .line 59
    :cond_45
    iget-object v0, p0, Lcom/tapjoy/TapjoyCacheMap;->a:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "tapjoyCacheData"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 60
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 63
    invoke-virtual {p2}, Lcom/tapjoy/TapjoyCachedAssetData;->getLocalFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tapjoy/TapjoyCachedAssetData;->toRawJSONString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 64
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 66
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TapjoyCachedAssetData;

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 10
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/tapjoy/TapjoyCachedAssetData;

    invoke-virtual {p0, p1, p2}, Lcom/tapjoy/TapjoyCacheMap;->put(Ljava/lang/String;Lcom/tapjoy/TapjoyCachedAssetData;)Lcom/tapjoy/TapjoyCachedAssetData;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Lcom/tapjoy/TapjoyCachedAssetData;
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;

    .line 71
    invoke-virtual {p0, p1}, Lcom/tapjoy/TapjoyCacheMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 74
    iget-object v0, p0, Lcom/tapjoy/TapjoyCacheMap;->a:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "tapjoyCacheData"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 75
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 77
    invoke-virtual {p0, p1}, Lcom/tapjoy/TapjoyCacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/TapjoyCachedAssetData;

    invoke-virtual {v1}, Lcom/tapjoy/TapjoyCachedAssetData;->getLocalFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 78
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 81
    invoke-virtual {p0, p1}, Lcom/tapjoy/TapjoyCacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TapjoyCachedAssetData;

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyCachedAssetData;->getLocalFilePath()Ljava/lang/String;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3d

    .line 83
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/tapjoy/TapjoyUtil;->deleteFileOrDirectory(Ljava/io/File;)V

    .line 86
    :cond_3d
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TapjoyCacheMap::remove() -- key: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TapjoyCacheMap"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-super {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TapjoyCachedAssetData;

    return-object v0

    .line 89
    :cond_53
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 10
    invoke-virtual {p0, p1}, Lcom/tapjoy/TapjoyCacheMap;->remove(Ljava/lang/Object;)Lcom/tapjoy/TapjoyCachedAssetData;

    move-result-object p1

    return-object p1
.end method

.method public replace(Ljava/lang/String;Lcom/tapjoy/TapjoyCachedAssetData;)Lcom/tapjoy/TapjoyCachedAssetData;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/tapjoy/TapjoyCachedAssetData;

    .line 100
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 10
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/tapjoy/TapjoyCachedAssetData;

    invoke-virtual {p0, p1, p2}, Lcom/tapjoy/TapjoyCacheMap;->replace(Ljava/lang/String;Lcom/tapjoy/TapjoyCachedAssetData;)Lcom/tapjoy/TapjoyCachedAssetData;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    .line 10
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/tapjoy/TapjoyCachedAssetData;

    check-cast p3, Lcom/tapjoy/TapjoyCachedAssetData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/tapjoy/TapjoyCacheMap;->replace(Ljava/lang/String;Lcom/tapjoy/TapjoyCachedAssetData;Lcom/tapjoy/TapjoyCachedAssetData;)Z

    move-result p1

    return p1
.end method

.method public replace(Ljava/lang/String;Lcom/tapjoy/TapjoyCachedAssetData;Lcom/tapjoy/TapjoyCachedAssetData;)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "oldValue"    # Lcom/tapjoy/TapjoyCachedAssetData;
    .param p3, "newValue"    # Lcom/tapjoy/TapjoyCachedAssetData;

    .line 95
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
