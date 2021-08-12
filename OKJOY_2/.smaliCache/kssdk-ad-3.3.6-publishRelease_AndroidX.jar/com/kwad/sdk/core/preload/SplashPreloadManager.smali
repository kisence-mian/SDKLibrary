.class public Lcom/kwad/sdk/core/preload/SplashPreloadManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/preload/SplashPreloadManager$PreLoadPara;,
        Lcom/kwad/sdk/core/preload/SplashPreloadManager$PreLoadItem;,
        Lcom/kwad/sdk/core/preload/SplashPreloadManager$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/kwad/sdk/core/preload/SplashPreloadManager$PreLoadItem;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile c:Landroid/content/SharedPreferences;

.field private final d:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/preload/SplashPreloadManager;->d:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/preload/SplashPreloadManager;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/preload/SplashPreloadManager;->b:Ljava/util/List;

    invoke-virtual {p0}, Lcom/kwad/sdk/core/preload/SplashPreloadManager;->a()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kwad/sdk/core/preload/SplashPreloadManager$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/core/preload/SplashPreloadManager;-><init>()V

    return-void
.end method

.method private a(Lcom/kwad/sdk/core/response/model/AdInfo;)V
    .registers 9

    new-instance v0, Lcom/kwad/sdk/core/preload/SplashPreloadManager$PreLoadItem;

    invoke-direct {v0}, Lcom/kwad/sdk/core/preload/SplashPreloadManager$PreLoadItem;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/kwad/sdk/core/preload/SplashPreloadManager$PreLoadItem;->cacheTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p1, Lcom/kwad/sdk/core/response/model/AdInfo;->adPreloadInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdPreloadInfo;

    iget v3, v3, Lcom/kwad/sdk/core/response/model/AdInfo$AdPreloadInfo;->validityPeriod:I

    int-to-long v3, v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/kwad/sdk/core/preload/SplashPreloadManager$PreLoadItem;->expiredTime:J

    invoke-static {p1}, Lcom/kwad/sdk/core/response/b/a;->A(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kwad/sdk/core/preload/SplashPreloadManager$PreLoadItem;->preloadId:Ljava/lang/String;

    iget-object v1, p0, Lcom/kwad/sdk/core/preload/SplashPreloadManager;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_23
    iget-object v2, p0, Lcom/kwad/sdk/core/preload/SplashPreloadManager;->a:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/kwad/sdk/core/response/model/AdInfo;->adPreloadInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdPreloadInfo;

    iget-object v3, v3, Lcom/kwad/sdk/core/response/model/AdInfo$AdPreloadInfo;->preloadId:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/kwad/sdk/core/preload/SplashPreloadManager;->b:Ljava/util/List;

    iget-object v3, p1, Lcom/kwad/sdk/core/response/model/AdInfo;->adPreloadInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdPreloadInfo;

    iget-object v3, v3, Lcom/kwad/sdk/core/response/model/AdInfo$AdPreloadInfo;->preloadId:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    iget-object v2, p0, Lcom/kwad/sdk/core/preload/SplashPreloadManager;->b:Ljava/util/List;

    iget-object v3, p1, Lcom/kwad/sdk/core/response/model/AdInfo;->adPreloadInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdPreloadInfo;

    iget-object v3, v3, Lcom/kwad/sdk/core/response/model/AdInfo$AdPreloadInfo;->preloadId:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_23 .. :try_end_42} :catchall_5f

    iget-object v1, p0, Lcom/kwad/sdk/core/preload/SplashPreloadManager;->c:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_5e

    iget-object v1, p0, Lcom/kwad/sdk/core/preload/SplashPreloadManager;->c:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object p1, p1, Lcom/kwad/sdk/core/response/model/AdInfo;->adPreloadInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdPreloadInfo;

    iget-object p1, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdPreloadInfo;->preloadId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/preload/SplashPreloadManager$PreLoadItem;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_5e
    return-void

    :catchall_5f
    move-exception p1

    :try_start_60
    monitor-exit v1
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw p1
.end method

.method public static b()Lcom/kwad/sdk/core/preload/SplashPreloadManager;
    .registers 2

    invoke-static {}, Lcom/kwad/sdk/core/preload/SplashPreloadManager$a;->a()Lcom/kwad/sdk/core/preload/SplashPreloadManager;

    move-result-object v0

    iget-object v1, v0, Lcom/kwad/sdk/core/preload/SplashPreloadManager;->c:Landroid/content/SharedPreferences;

    if-nez v1, :cond_b

    invoke-virtual {v0}, Lcom/kwad/sdk/core/preload/SplashPreloadManager;->a()V

    :cond_b
    return-object v0
.end method

.method private b(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_43

    invoke-static {}, Lcom/kwad/sdk/core/diskcache/b/a;->a()Lcom/kwad/sdk/core/diskcache/b/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/kwad/sdk/core/diskcache/b/a;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check preloadId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " file exists "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-nez v1, :cond_25

    const-string v2, "null"

    goto :goto_2d

    :cond_25
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_2d
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "PreloadManager"

    invoke-static {v2, p1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_43

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_43

    const/4 v0, 0x1

    :cond_43
    return v0
.end method

.method private d()V
    .registers 8

    iget-object v0, p0, Lcom/kwad/sdk/core/preload/SplashPreloadManager;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/kwad/sdk/core/preload/SplashPreloadManager$PreLoadItem;

    invoke-direct {v4}, Lcom/kwad/sdk/core/preload/SplashPreloadManager$PreLoadItem;-><init>()V

    :try_start_24
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_13

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lcom/kwad/sdk/core/preload/SplashPreloadManager$PreLoadItem;->parseJson(Lorg/json/JSONObject;)V

    iget-object v5, v4, Lcom/kwad/sdk/core/preload/SplashPreloadManager$PreLoadItem;->preloadId:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_13

    invoke-static {}, Lcom/kwad/sdk/core/diskcache/b/a;->a()Lcom/kwad/sdk/core/diskcache/b/a;

    move-result-object v5

    iget-object v6, v4, Lcom/kwad/sdk/core/preload/SplashPreloadManager$PreLoadItem;->preloadId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/kwad/sdk/core/diskcache/b/a;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_68

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_68

    iget-object v5, p0, Lcom/kwad/sdk/core/preload/SplashPreloadManager;->d:Ljava/lang/Object;

    monitor-enter v5
    :try_end_51
    .catch Lorg/json/JSONException; {:try_start_24 .. :try_end_51} :catch_88

    :try_start_51
    iget-object v6, p0, Lcom/kwad/sdk/core/preload/SplashPreloadManager;->a:Ljava/util/HashMap;

    invoke-virtual {v6, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/kwad/sdk/core/preload/SplashPreloadManager;->b:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_63

    iget-object v4, p0, Lcom/kwad/sdk/core/preload/SplashPreloadManager;->b:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_63
    monitor-exit v5

    goto :goto_13

    :catchall_65
    move-exception v3

    monitor-exit v5
    :try_end_67
    .catchall {:try_start_51 .. :try_end_67} :catchall_65

    :try_start_67
    throw v3

    :cond_68
    iget-object v3, v4, Lcom/kwad/sdk/core/preload/SplashPreloadManager$PreLoadItem;->preloadId:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "PreloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remove null file list "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, v4, Lcom/kwad/sdk/core/preload/SplashPreloadManager$PreLoadItem;->preloadId:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_87
    .catch Lorg/json/JSONException; {:try_start_67 .. :try_end_87} :catch_88

    goto :goto_13

    :catch_88
    move-exception v3

    invoke-static {v3}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    goto :goto_13

    :cond_8d
    iget-object v0, p0, Lcom/kwad/sdk/core/preload/SplashPreloadManager;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_97
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_97

    :cond_a7
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private e()V
    .registers 11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/kwad/sdk/core/preload/SplashPreloadManager;->d:Ljava/lang/Object;

    monitor-enter v2

    :try_start_7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/kwad/sdk/core/preload/SplashPreloadManager;->a:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_16
    :goto_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/kwad/sdk/core/preload/SplashPreloadManager;->a:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kwad/sdk/core/preload/SplashPreloadManager$PreLoadItem;

    if-eqz v6, :cond_16

    iget-wide v6, v6, Lcom/kwad/sdk/core/preload/SplashPreloadManager$PreLoadItem;->expiredTime:J

    cmp-long v6, v6, v0

    if-gez v6, :cond_16

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_36
    iget-object v0, p0, Lcom/kwad/sdk/core/preload/SplashPreloadManager;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_40
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_61

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/kwad/sdk/core/preload/SplashPreloadManager;->b:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/kwad/sdk/core/preload/SplashPreloadManager;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/kwad/sdk/core/diskcache/b/a;->a()Lcom/kwad/sdk/core/diskcache/b/a;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/kwad/sdk/core/diskcache/b/a;->c(Ljava/lang/String;)Z

    goto :goto_40

    :cond_61
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/kwad/sdk/core/preload/SplashPreloadManager;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v2
    :try_end_6b
    .catchall {:try_start_7 .. :try_end_6b} :catchall_fa

    const/16 v1, 0x1e

    if-le v0, v1, :cond_f9

    const-string v1, "PreloadManager"

    const-string v2, "\u5927\u4e8e 30 \u6309\u5931\u6548\u65e5\u671f\u8fdc\u8fd1\u987a\u5e8f\u79fb\u9664"

    invoke-static {v1, v2}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0xf

    const/4 v1, 0x0

    :goto_79
    if-ge v1, v0, :cond_f9

    const-wide v2, 0x7fffffffffffffffL

    const-string v4, ""

    iget-object v5, p0, Lcom/kwad/sdk/core/preload/SplashPreloadManager;->d:Ljava/lang/Object;

    monitor-enter v5

    :try_start_85
    iget-object v6, p0, Lcom/kwad/sdk/core/preload/SplashPreloadManager;->a:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8f
    :goto_8f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kwad/sdk/core/preload/SplashPreloadManager$PreLoadItem;

    iget-wide v8, v7, Lcom/kwad/sdk/core/preload/SplashPreloadManager$PreLoadItem;->expiredTime:J

    cmp-long v8, v8, v2

    if-gez v8, :cond_8f

    iget-wide v2, v7, Lcom/kwad/sdk/core/preload/SplashPreloadManager$PreLoadItem;->expiredTime:J

    iget-object v4, v7, Lcom/kwad/sdk/core/preload/SplashPreloadManager$PreLoadItem;->preloadId:Ljava/lang/String;

    goto :goto_8f

    :cond_a6
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_e5

    iget-object v6, p0, Lcom/kwad/sdk/core/preload/SplashPreloadManager;->b:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/kwad/sdk/core/preload/SplashPreloadManager;->a:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/kwad/sdk/core/preload/SplashPreloadManager;->c:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v6, "PreloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u79fb\u9664 preloadId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " expiredTime =  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e5
    monitor-exit v5
    :try_end_e6
    .catchall {:try_start_85 .. :try_end_e6} :catchall_f6

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f3

    invoke-static {}, Lcom/kwad/sdk/core/diskcache/b/a;->a()Lcom/kwad/sdk/core/diskcache/b/a;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/kwad/sdk/core/diskcache/b/a;->c(Ljava/lang/String;)Z

    :cond_f3
    add-int/lit8 v1, v1, 0x1

    goto :goto_79

    :catchall_f6
    move-exception v0

    :try_start_f7
    monitor-exit v5
    :try_end_f8
    .catchall {:try_start_f7 .. :try_end_f8} :catchall_f6

    throw v0

    :cond_f9
    return-void

    :catchall_fa
    move-exception v0

    :try_start_fb
    monitor-exit v2
    :try_end_fc
    .catchall {:try_start_fb .. :try_end_fc} :catchall_fa

    throw v0
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/core/response/model/AdResultData;Z)I
    .registers 15

    iget-object v0, p1, Lcom/kwad/sdk/core/response/model/AdResultData;->adTemplateList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_b5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kwad/sdk/core/response/model/AdTemplate;

    if-eqz v3, :cond_8

    iget-object v5, v3, Lcom/kwad/sdk/core/response/model/AdTemplate;->adInfoList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1d
    :goto_1d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v7, v6, Lcom/kwad/sdk/core/response/model/AdInfo;->adPreloadInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdPreloadInfo;

    if-eqz v7, :cond_1d

    iget-object v7, p0, Lcom/kwad/sdk/core/preload/SplashPreloadManager;->c:Landroid/content/SharedPreferences;

    if-eqz v7, :cond_1d

    iget-object v7, v6, Lcom/kwad/sdk/core/response/model/AdInfo;->adPreloadInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdPreloadInfo;

    iget-object v7, v7, Lcom/kwad/sdk/core/response/model/AdInfo$AdPreloadInfo;->preloadId:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/kwad/sdk/core/preload/SplashPreloadManager;->b(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a7

    invoke-static {v6}, Lcom/kwad/sdk/core/response/b/a;->C(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v7

    if-eqz v7, :cond_46

    invoke-static {v6}, Lcom/kwad/sdk/core/response/b/a;->a(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v7

    goto :goto_54

    :cond_46
    invoke-static {v6}, Lcom/kwad/sdk/core/response/b/a;->D(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v7

    if-eqz v7, :cond_53

    invoke-static {v6}, Lcom/kwad/sdk/core/response/b/a;->y(Lcom/kwad/sdk/core/response/model/AdInfo;)Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;

    move-result-object v7

    iget-object v7, v7, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;->materialUrl:Ljava/lang/String;

    goto :goto_54

    :cond_53
    move-object v7, v4

    :goto_54
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1d

    invoke-static {v6}, Lcom/kwad/sdk/core/response/b/a;->A(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v6, Lcom/kwad/sdk/core/response/model/AdInfo;->adPreloadInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdPreloadInfo;

    iget v9, v9, Lcom/kwad/sdk/core/response/model/AdInfo$AdPreloadInfo;->preloadType:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_74

    invoke-static {}, Lcom/kwad/sdk/api/KsAdSDK;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/ksad/download/d/b;->b(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_74

    if-eqz p2, :cond_72

    goto :goto_74

    :cond_72
    move v9, v1

    goto :goto_75

    :cond_74
    :goto_74
    move v9, v10

    :goto_75
    if-eqz v9, :cond_1d

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "start Download preloadId "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " true url "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v11, "PreloadManager"

    invoke-static {v11, v9}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/kwad/sdk/core/preload/SplashPreloadManager;->e()V

    new-instance v9, Lcom/kwad/sdk/core/diskcache/b/c$a;

    invoke-direct {v9}, Lcom/kwad/sdk/core/diskcache/b/c$a;-><init>()V

    invoke-static {v7, v8, v9}, Lcom/kwad/sdk/reward/f;->a(Ljava/lang/String;Ljava/lang/String;Lcom/kwad/sdk/core/diskcache/b/c$a;)Z

    move-result v7

    if-eqz v7, :cond_ae

    :cond_a7
    invoke-direct {p0, v6}, Lcom/kwad/sdk/core/preload/SplashPreloadManager;->a(Lcom/kwad/sdk/core/response/model/AdInfo;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1d

    :cond_ae
    iget-object v6, v9, Lcom/kwad/sdk/core/diskcache/b/c$a;->a:Ljava/lang/String;

    invoke-static {v3, v10, v6}, Lcom/kwad/sdk/core/report/e;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILjava/lang/String;)V

    goto/16 :goto_1d

    :cond_b5
    iget-object p2, p1, Lcom/kwad/sdk/core/response/model/AdResultData;->adTemplateList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_c6

    iget-object p1, p1, Lcom/kwad/sdk/core/response/model/AdResultData;->adTemplateList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/kwad/sdk/core/response/model/AdTemplate;

    :cond_c6
    if-lez v2, :cond_cb

    invoke-static {v4, v2}, Lcom/kwad/sdk/core/report/e;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;I)V

    :cond_cb
    return v2
.end method

.method public a(Ljava/lang/String;)Ljava/io/File;
    .registers 4

    if-eqz p1, :cond_35

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVideoFile preloadId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  url "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreloadManager"

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/kwad/sdk/core/diskcache/b/a;->a()Lcom/kwad/sdk/core/diskcache/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/core/diskcache/b/a;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_35

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_35

    return-object p1

    :cond_35
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .registers 4

    invoke-static {}, Lcom/kwad/sdk/api/KsAdSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_12

    const/4 v1, 0x0

    const-string v2, "ksadsdk_splash_preload_id_list"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/preload/SplashPreloadManager;->c:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/kwad/sdk/core/preload/SplashPreloadManager;->d()V

    :cond_12
    return-void
.end method

.method public a(Lcom/kwad/sdk/core/response/model/AdResultData;)Z
    .registers 8

    iget-object v0, p1, Lcom/kwad/sdk/core/response/model/AdResultData;->adTemplateList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_77

    iget-object p1, p1, Lcom/kwad/sdk/core/response/model/AdResultData;->adTemplateList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v0, p1, Lcom/kwad/sdk/core/response/model/AdTemplate;->adInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_77

    iget-object v0, p1, Lcom/kwad/sdk/core/response/model/AdTemplate;->adInfoList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v2, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->adPreloadInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdPreloadInfo;

    if-eqz v2, :cond_77

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->A(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kwad/sdk/core/preload/SplashPreloadManager;->b(Ljava/lang/String;)Z

    move-result v1

    new-instance v2, Lcom/kwad/sdk/core/preload/SplashPreloadManager$PreLoadPara;

    invoke-direct {v2}, Lcom/kwad/sdk/core/preload/SplashPreloadManager$PreLoadPara;-><init>()V

    iput v1, v2, Lcom/kwad/sdk/core/preload/SplashPreloadManager$PreLoadPara;->isValidReturned:I

    if-eqz v1, :cond_4c

    iget-object v3, p0, Lcom/kwad/sdk/core/preload/SplashPreloadManager;->d:Ljava/lang/Object;

    monitor-enter v3

    :try_start_39
    iget-object v4, p0, Lcom/kwad/sdk/core/preload/SplashPreloadManager;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/preload/SplashPreloadManager$PreLoadItem;

    monitor-exit v3
    :try_end_42
    .catchall {:try_start_39 .. :try_end_42} :catchall_49

    if-eqz v0, :cond_4c

    iget-wide v3, v0, Lcom/kwad/sdk/core/preload/SplashPreloadManager$PreLoadItem;->cacheTime:J

    iput-wide v3, v2, Lcom/kwad/sdk/core/preload/SplashPreloadManager$PreLoadPara;->spreadTime:J

    goto :goto_4c

    :catchall_49
    move-exception p1

    :try_start_4a
    monitor-exit v3
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw p1

    :cond_4c
    :goto_4c
    const-string v0, "PreloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check checked "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " spreadTime "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v2, Lcom/kwad/sdk/core/preload/SplashPreloadManager$PreLoadPara;->spreadTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/kwad/sdk/core/preload/SplashPreloadManager$PreLoadPara;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/kwad/sdk/core/report/b;->b(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;)V

    :cond_77
    return v1
.end method

.method public b(Lcom/kwad/sdk/core/response/model/AdResultData;)Z
    .registers 4

    iget-object v0, p1, Lcom/kwad/sdk/core/response/model/AdResultData;->adTemplateList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_26

    iget-object p1, p1, Lcom/kwad/sdk/core/response/model/AdResultData;->adTemplateList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v0, p1, Lcom/kwad/sdk/core/response/model/AdTemplate;->adInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    iget-object p1, p1, Lcom/kwad/sdk/core/response/model/AdTemplate;->adInfoList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {p1}, Lcom/kwad/sdk/core/response/b/a;->D(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result p1

    return p1

    :cond_26
    return v1
.end method

.method public c()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/kwad/sdk/core/preload/SplashPreloadManager;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    const-string v2, "PreloadManager"

    const-string v3, "getPreloadIdList start "

    invoke-static {v2, v3}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_10
    iget-object v3, p0, Lcom/kwad/sdk/core/preload/SplashPreloadManager;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_36

    iget-object v3, p0, Lcom/kwad/sdk/core/preload/SplashPreloadManager;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {}, Lcom/kwad/sdk/core/diskcache/b/a;->a()Lcom/kwad/sdk/core/diskcache/b/a;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/kwad/sdk/core/diskcache/b/a;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_33

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_36
    const-string v2, "PreloadManager"

    const-string v3, "getPreloadIdList end "

    invoke-static {v2, v3}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_8 .. :try_end_3e} :catchall_5d

    const-string v1, "PreloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPreloadIdList "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kwad/sdk/core/preload/SplashPreloadManager;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catchall_5d
    move-exception v0

    :try_start_5e
    monitor-exit v1
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    throw v0
.end method
