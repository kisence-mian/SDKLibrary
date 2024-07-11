.class public Lcom/ss/android/downloadlib/addownload/b/i;
.super Ljava/lang/Object;
.source "SharedPrefsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadlib/addownload/b/i$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/downloadlib/addownload/b/i$1;)V
    .registers 2

    .line 29
    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/b/i;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/downloadlib/addownload/b/i;)Landroid/content/SharedPreferences;
    .registers 1

    .line 29
    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/b/i;->c()Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static a()Lcom/ss/android/downloadlib/addownload/b/i;
    .registers 1

    .line 35
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/i$a;->a()Lcom/ss/android/downloadlib/addownload/b/i;

    move-result-object v0

    return-object v0
.end method

.method private c()Landroid/content/SharedPreferences;
    .registers 4

    .line 41
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sp_ad_download_event"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/ss/android/downloadad/a/b/b;)V
    .registers 3

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-virtual {p0, v0}, Lcom/ss/android/downloadlib/addownload/b/i;->a(Ljava/util/Collection;)V

    .line 96
    return-void
.end method

.method public declared-synchronized a(Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/ss/android/downloadad/a/b/b;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 99
    if-eqz p1, :cond_1c

    :try_start_3
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_1c

    .line 102
    :cond_a
    invoke-static {}, Lcom/ss/android/downloadlib/d;->a()Lcom/ss/android/downloadlib/d;

    move-result-object v0

    new-instance v1, Lcom/ss/android/downloadlib/addownload/b/i$1;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/downloadlib/addownload/b/i$1;-><init>(Lcom/ss/android/downloadlib/addownload/b/i;Ljava/util/Collection;)V

    const/4 p1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/downloadlib/d;->a(Ljava/lang/Runnable;Z)V
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_19

    .line 114
    monitor-exit p0

    return-void

    .line 98
    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1

    .line 100
    :cond_1c
    :goto_1c
    monitor-exit p0

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 130
    if-eqz p1, :cond_17

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_17

    .line 133
    :cond_9
    invoke-static {}, Lcom/ss/android/downloadlib/d;->a()Lcom/ss/android/downloadlib/d;

    move-result-object v0

    new-instance v1, Lcom/ss/android/downloadlib/addownload/b/i$2;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/downloadlib/addownload/b/i$2;-><init>(Lcom/ss/android/downloadlib/addownload/b/i;Ljava/util/List;)V

    const/4 p1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/downloadlib/d;->a(Ljava/lang/Runnable;Z)V

    .line 143
    return-void

    .line 131
    :cond_17
    :goto_17
    return-void
.end method

.method b()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Lcom/ss/android/downloadad/a/b/b;",
            ">;"
        }
    .end annotation

    .line 69
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 70
    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/b/i;->c()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 71
    if-nez v1, :cond_10

    .line 72
    return-object v0

    .line 74
    :cond_10
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 75
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2b

    .line 76
    goto :goto_18

    .line 79
    :cond_2b
    :try_start_2b
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 80
    new-instance v5, Lorg/json/JSONObject;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-static {v5}, Lcom/ss/android/downloadad/a/b/b;->b(Lorg/json/JSONObject;)Lcom/ss/android/downloadad/a/b/b;

    move-result-object v2

    .line 82
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_59

    if-eqz v2, :cond_59

    .line 83
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_59} :catch_5a

    .line 87
    :cond_59
    goto :goto_5e

    .line 85
    :catch_5a
    move-exception v2

    .line 86
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 88
    :goto_5e
    goto :goto_18

    .line 89
    :cond_5f
    return-object v0
.end method
