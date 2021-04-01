.class public Lcom/ss/android/downloadlib/a/b/e;
.super Ljava/lang/Object;
.source "SharedPrefsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadlib/a/b/e$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/downloadlib/a/b/e$1;)V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/ss/android/downloadlib/a/b/e;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/downloadlib/a/b/e;)Landroid/content/SharedPreferences;
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/ss/android/downloadlib/a/b/e;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static a()Lcom/ss/android/downloadlib/a/b/e;
    .registers 1

    .prologue
    .line 34
    invoke-static {}, Lcom/ss/android/downloadlib/a/b/e$a;->a()Lcom/ss/android/downloadlib/a/b/e;

    move-result-object v0

    return-object v0
.end method

.method private c()Landroid/content/SharedPreferences;
    .registers 4

    .prologue
    .line 40
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sp_ad_download_event"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/ss/android/downloadad/a/b/a;)V
    .registers 3

    .prologue
    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-virtual {p0, v0}, Lcom/ss/android/downloadlib/a/b/e;->a(Ljava/util/List;)V

    .line 93
    return-void
.end method

.method public declared-synchronized a(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/downloadad/a/b/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    monitor-enter p0

    if-eqz p1, :cond_9

    :try_start_3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_18

    move-result v0

    if-eqz v0, :cond_b

    .line 111
    :cond_9
    :goto_9
    monitor-exit p0

    return-void

    .line 99
    :cond_b
    :try_start_b
    invoke-static {}, Lcom/ss/android/downloadlib/d;->a()Lcom/ss/android/downloadlib/d;

    move-result-object v0

    new-instance v1, Lcom/ss/android/downloadlib/a/b/e$1;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/downloadlib/a/b/e$1;-><init>(Lcom/ss/android/downloadlib/a/b/e;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/d;->b(Ljava/lang/Runnable;)V
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_18

    goto :goto_9

    .line 96
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 9
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/ss/android/downloadad/a/b/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 70
    :try_start_5
    invoke-direct {p0}, Lcom/ss/android/downloadlib/a/b/e;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 71
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_15
    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_21} :catch_53

    .line 73
    :try_start_21
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 74
    new-instance v1, Lorg/json/JSONObject;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-static {v1}, Lcom/ss/android/downloadad/a/b/a;->b(Lorg/json/JSONObject;)Lcom/ss/android/downloadad/a/b/a;

    move-result-object v0

    .line 76
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_15

    if-eqz v0, :cond_15

    .line 77
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_4d} :catch_4e

    goto :goto_15

    .line 79
    :catch_4e
    move-exception v0

    .line 80
    :try_start_4f
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_52} :catch_53

    goto :goto_15

    .line 83
    :catch_53
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 86
    :cond_57
    return-object v2
.end method

.method public b(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 140
    :cond_8
    :goto_8
    return-void

    .line 130
    :cond_9
    invoke-static {}, Lcom/ss/android/downloadlib/d;->a()Lcom/ss/android/downloadlib/d;

    move-result-object v0

    new-instance v1, Lcom/ss/android/downloadlib/a/b/e$2;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/downloadlib/a/b/e$2;-><init>(Lcom/ss/android/downloadlib/a/b/e;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/d;->b(Ljava/lang/Runnable;)V

    goto :goto_8
.end method
