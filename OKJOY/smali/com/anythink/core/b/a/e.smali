.class public Lcom/anythink/core/b/a/e;
.super Ljava/lang/Object;


# static fields
.field private static d:Lcom/anythink/core/b/a/e;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Z

.field private e:Landroid/content/Context;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Landroid/os/Handler;

.field private i:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/String;

.field private l:Lorg/json/JSONObject;

.field private m:Landroid/content/BroadcastReceiver;

.field private n:Ljava/lang/String;

.field private o:Lcom/anythink/core/api/IATChinaSDKHandler;

.field private final p:Ljava/lang/String;

.field private q:Z

.field private r:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, "SDK.init"

    iput-object v0, p0, Lcom/anythink/core/b/a/e;->a:Ljava/lang/String;

    .line 56
    const-string v0, "com.anythink.china.api.ATChinaSDKHandler"

    iput-object v0, p0, Lcom/anythink/core/b/a/e;->b:Ljava/lang/String;

    .line 57
    iput-boolean v1, p0, Lcom/anythink/core/b/a/e;->c:Z

    .line 79
    iput-boolean v1, p0, Lcom/anythink/core/b/a/e;->q:Z

    .line 80
    iput-boolean v1, p0, Lcom/anythink/core/b/a/e;->r:Z

    .line 112
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/anythink/core/b/a/e;->h:Landroid/os/Handler;

    .line 113
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/b/a/e;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 114
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/b/a/e;->i:Ljava/util/concurrent/ConcurrentHashMap;

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "anythink.test"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/b/a/e;->p:Ljava/lang/String;

    .line 117
    return-void
.end method

.method static synthetic a(Lcom/anythink/core/b/a/e;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/anythink/core/b/a/e;->e:Landroid/content/Context;

    return-object v0
.end method

.method public static a()Lcom/anythink/core/b/a/e;
    .registers 2

    .prologue
    .line 84
    sget-object v0, Lcom/anythink/core/b/a/e;->d:Lcom/anythink/core/b/a/e;

    if-nez v0, :cond_f

    .line 85
    const-class v1, Lcom/anythink/core/b/a/e;

    monitor-enter v1

    .line 86
    :try_start_7
    new-instance v0, Lcom/anythink/core/b/a/e;

    invoke-direct {v0}, Lcom/anythink/core/b/a/e;-><init>()V

    sput-object v0, Lcom/anythink/core/b/a/e;->d:Lcom/anythink/core/b/a/e;

    .line 87
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_12

    .line 89
    :cond_f
    sget-object v0, Lcom/anythink/core/b/a/e;->d:Lcom/anythink/core/b/a/e;

    return-object v0

    .line 87
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method static synthetic a(JLandroid/content/Context;)V
    .registers 13

    .prologue
    const-wide/16 v8, 0x0

    .line 54
    .line 7364
    :try_start_2
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    .line 8124
    iget-object v0, v0, Lcom/anythink/core/b/a/e;->e:Landroid/content/Context;

    .line 7364
    sget-object v1, Lcom/anythink/core/b/a/d;->m:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/b/a/e;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "playRecord"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/b/g/l;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7366
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_96

    .line 7367
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 7368
    const-string v0, "start_time"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 7369
    const-string v3, "end_time"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 7370
    const-string v3, "psid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 7371
    const-string v3, "launch_mode"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 7373
    cmp-long v3, p0, v8

    if-eqz v3, :cond_bd

    .line 7374
    const/4 v3, 0x1

    if-ne v2, v3, :cond_bb

    const/4 v2, 0x4

    :goto_55
    invoke-static {v2, v0, v1, v4, v5}, Lcom/anythink/core/b/f/c;->a(IJJ)V

    .line 7375
    const-string v2, "SDK.init"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Create new psid, SDKContext.init to send playTime:"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v0, v4, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 7380
    :goto_6e
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    .line 9124
    iget-object v0, v0, Lcom/anythink/core/b/a/e;->e:Landroid/content/Context;

    .line 7380
    sget-object v1, Lcom/anythink/core/b/a/d;->m:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/b/a/e;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "playRecord"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/b/g/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_96} :catch_d4

    :cond_96
    move-wide v0, p0

    .line 7387
    :goto_97
    cmp-long v2, v0, v8

    if-nez v2, :cond_102

    .line 7388
    sget-object v0, Lcom/anythink/core/b/a/d;->m:Ljava/lang/String;

    const-string v1, "SPU_INIT_TIME_KEY"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p2, v0, v1, v2}, Lcom/anythink/core/b/g/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-wide v2, v0

    .line 7392
    :goto_ac
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    new-instance v1, Lcom/anythink/core/b/a/c;

    invoke-direct {v1, v2, v3}, Lcom/anythink/core/b/a/c;-><init>(J)V

    .line 7393
    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 54
    return-void

    .line 7374
    :cond_bb
    const/4 v2, 0x2

    goto :goto_55

    .line 7378
    :cond_bd
    :try_start_bd
    const-string v2, "SDK.init"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Psid is old, use pervioud statime\uff0cclose before:"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_d2} :catch_ff

    move-wide p0, v0

    goto :goto_6e

    .line 7384
    :catch_d4
    move-exception v0

    :goto_d5
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    .line 10124
    iget-object v0, v0, Lcom/anythink/core/b/a/e;->e:Landroid/content/Context;

    .line 7384
    sget-object v1, Lcom/anythink/core/b/a/d;->m:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/b/a/e;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "playRecord"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/b/g/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, p0

    goto :goto_97

    :catch_ff
    move-exception v2

    move-wide p0, v0

    goto :goto_d5

    :cond_102
    move-wide v2, v0

    goto :goto_ac
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 843
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 847
    :try_start_6
    const-string v0, "{"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 848
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 849
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_17} :catch_96

    move-result-object p1

    .line 862
    :cond_18
    :goto_18
    const-string v0, "\u2554\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550"

    .line 864
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 865
    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 866
    array-length v3, v2

    const/4 v1, 0x0

    :goto_31
    if-ge v1, v3, :cond_75

    aget-object v4, v2, v1

    .line 867
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 868
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\u2551 "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 866
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 850
    :cond_62
    :try_start_62
    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 851
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 852
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;
    :try_end_73
    .catch Lorg/json/JSONException; {:try_start_62 .. :try_end_73} :catch_96

    move-result-object p1

    goto :goto_18

    .line 870
    :cond_75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\u255a\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 872
    const-string v1, " \n"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    return-void

    .line 857
    :catch_96
    move-exception v0

    goto :goto_18
.end method

.method static a(Landroid/content/Context;Ljava/util/List;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 644
    if-nez p1, :cond_6

    .line 672
    :goto_5
    return v0

    .line 648
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 649
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 651
    :try_start_1c
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v7, 0x20000

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_84

    .line 655
    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_3e} :catch_41

    move v0, v2

    :goto_3f
    move v1, v0

    .line 660
    goto :goto_10

    .line 657
    :catch_41
    move-exception v0

    .line 659
    const-string v1, "error: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    .line 661
    goto :goto_10

    .line 662
    :cond_51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-le v0, v8, :cond_5a

    .line 663
    invoke-virtual {v3, v2, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 666
    :cond_5a
    if-eqz v1, :cond_65

    .line 667
    sget-object v0, Lcom/anythink/core/b/a/d;->l:Ljava/lang/String;

    const-string v2, "Activities : VERIFIED"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_63
    move v0, v1

    .line 672
    goto :goto_5

    .line 669
    :cond_65
    sget-object v0, Lcom/anythink/core/b/a/d;->l:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Activities : Missing "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " declare in AndroidManifest"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63

    :cond_84
    move v0, v1

    goto :goto_3f
.end method

.method static synthetic b(Lcom/anythink/core/b/a/e;)Lcom/anythink/core/api/IATChinaSDKHandler;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/anythink/core/b/a/e;->o:Lcom/anythink/core/api/IATChinaSDKHandler;

    return-object v0
.end method

.method private static b(JLandroid/content/Context;)V
    .registers 13

    .prologue
    const-wide/16 v8, 0x0

    .line 362
    .line 364
    :try_start_2
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    .line 5124
    iget-object v0, v0, Lcom/anythink/core/b/a/e;->e:Landroid/content/Context;

    .line 364
    sget-object v1, Lcom/anythink/core/b/a/d;->m:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/b/a/e;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "playRecord"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/b/g/l;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 366
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_96

    .line 367
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 368
    const-string v0, "start_time"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 369
    const-string v3, "end_time"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 370
    const-string v3, "psid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 371
    const-string v3, "launch_mode"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 373
    cmp-long v3, p0, v8

    if-eqz v3, :cond_bd

    .line 374
    const/4 v3, 0x1

    if-ne v2, v3, :cond_bb

    const/4 v2, 0x4

    :goto_55
    invoke-static {v2, v0, v1, v4, v5}, Lcom/anythink/core/b/f/c;->a(IJJ)V

    .line 375
    const-string v2, "SDK.init"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Create new psid, SDKContext.init to send playTime:"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v0, v4, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    :goto_6e
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    .line 6124
    iget-object v0, v0, Lcom/anythink/core/b/a/e;->e:Landroid/content/Context;

    .line 380
    sget-object v1, Lcom/anythink/core/b/a/d;->m:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/b/a/e;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "playRecord"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/b/g/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_96} :catch_d4

    :cond_96
    move-wide v0, p0

    .line 387
    :goto_97
    cmp-long v2, v0, v8

    if-nez v2, :cond_102

    .line 388
    sget-object v0, Lcom/anythink/core/b/a/d;->m:Ljava/lang/String;

    const-string v1, "SPU_INIT_TIME_KEY"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p2, v0, v1, v2}, Lcom/anythink/core/b/g/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-wide v2, v0

    .line 392
    :goto_ac
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    new-instance v1, Lcom/anythink/core/b/a/c;

    invoke-direct {v1, v2, v3}, Lcom/anythink/core/b/a/c;-><init>(J)V

    .line 393
    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 394
    return-void

    .line 374
    :cond_bb
    const/4 v2, 0x2

    goto :goto_55

    .line 378
    :cond_bd
    :try_start_bd
    const-string v2, "SDK.init"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Psid is old, use pervioud statime\uff0cclose before:"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_d2} :catch_ff

    move-wide p0, v0

    goto :goto_6e

    .line 384
    :catch_d4
    move-exception v0

    :goto_d5
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    .line 7124
    iget-object v0, v0, Lcom/anythink/core/b/a/e;->e:Landroid/content/Context;

    .line 384
    sget-object v1, Lcom/anythink/core/b/a/d;->m:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/b/a/e;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "playRecord"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/b/g/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, p0

    goto :goto_97

    :catch_ff
    move-exception v2

    move-wide p0, v0

    goto :goto_d5

    :cond_102
    move-wide v2, v0

    goto :goto_ac
.end method

.method public static b(Ljava/lang/Runnable;)V
    .registers 2

    .prologue
    .line 783
    invoke-static {}, Lcom/anythink/core/b/g/a/a;->a()Lcom/anythink/core/b/g/a/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/anythink/core/b/g/a/a;->a(Ljava/lang/Runnable;)V

    .line 784
    return-void
.end method

.method private static b(Ljava/lang/Runnable;J)V
    .registers 4

    .prologue
    .line 795
    invoke-static {}, Lcom/anythink/core/b/g/a/a;->a()Lcom/anythink/core/b/g/a/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/anythink/core/b/g/a/a;->a(Ljava/lang/Runnable;J)V

    .line 796
    return-void
.end method

.method static b(Landroid/content/Context;Ljava/util/List;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 677
    if-nez p1, :cond_6

    .line 705
    :goto_5
    return v0

    .line 681
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 682
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 683
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :goto_14
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 685
    :try_start_20
    new-instance v6, Landroid/content/Intent;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v7, 0x20000

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_84

    .line 688
    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_3e} :catch_41

    move v0, v2

    :goto_3f
    move v1, v0

    .line 693
    goto :goto_14

    .line 690
    :catch_41
    move-exception v0

    .line 692
    const-string v1, "error: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    .line 694
    goto :goto_14

    .line 695
    :cond_51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-le v0, v8, :cond_5a

    .line 696
    invoke-virtual {v3, v2, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 699
    :cond_5a
    if-eqz v1, :cond_65

    .line 700
    sget-object v0, Lcom/anythink/core/b/a/d;->l:Ljava/lang/String;

    const-string v2, "Services : VERIFIED"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_63
    move v0, v1

    .line 705
    goto :goto_5

    .line 702
    :cond_65
    sget-object v0, Lcom/anythink/core/b/a/d;->l:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Services : Missing "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " declare in AndroidManifest"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63

    :cond_84
    move v0, v1

    goto :goto_3f
.end method

.method static b(Ljava/util/Map;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 618
    if-nez p0, :cond_6

    .line 640
    :goto_5
    return v0

    .line 623
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 624
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v0

    :goto_14
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 625
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_5c

    .line 627
    const-string v1, ", "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v3

    :goto_36
    move v2, v0

    .line 629
    goto :goto_14

    .line 630
    :cond_38
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-le v0, v6, :cond_41

    .line 631
    invoke-virtual {v4, v3, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 634
    :cond_41
    if-eqz v2, :cond_4c

    .line 635
    sget-object v0, Lcom/anythink/core/b/a/d;->l:Ljava/lang/String;

    const-string v1, "Dependence Plugin: VERIFIED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4a
    move v0, v2

    .line 640
    goto :goto_5

    .line 637
    :cond_4c
    sget-object v0, Lcom/anythink/core/b/a/d;->l:Ljava/lang/String;

    const-string v1, "Dependence Plugin: Missing "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    :cond_5c
    move v0, v2

    goto :goto_36
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 513
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/anythink/core/b/a/e;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    invoke-static {}, Lcom/anythink/core/b/g/a/a;->a()Lcom/anythink/core/b/g/a/a;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/b/a/e$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/anythink/core/b/a/e$6;-><init>(Lcom/anythink/core/b/a/e;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/g/a/a;->a(Ljava/lang/Runnable;)V

    .line 527
    return-void
.end method

.method static c(Landroid/content/Context;Ljava/util/List;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 709
    if-nez p1, :cond_7

    move v1, v3

    .line 755
    :cond_6
    :goto_6
    return v1

    .line 713
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 715
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 717
    const/4 v2, 0x0

    .line 719
    :try_start_11
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x8

    invoke-virtual {v0, v4, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_1a} :catch_4d

    move-result-object v0

    move v2, v3

    .line 726
    :goto_1c
    if-eqz v0, :cond_6

    .line 730
    iget-object v6, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 732
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_24
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 734
    array-length v8, v6

    move v4, v1

    :goto_32
    if-ge v4, v8, :cond_96

    aget-object v9, v6, v4

    .line 735
    iget-object v9, v9, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-static {v9, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5e

    move v4, v3

    .line 740
    :goto_3f
    if-nez v4, :cond_94

    .line 742
    const-string v2, ", "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    :goto_4b
    move v2, v0

    .line 744
    goto :goto_24

    .line 721
    :catch_4d
    move-exception v0

    .line 723
    const-string v4, "error: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v2

    move v2, v1

    goto :goto_1c

    .line 734
    :cond_5e
    add-int/lit8 v4, v4, 0x1

    goto :goto_32

    .line 745
    :cond_61
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-le v0, v10, :cond_6a

    .line 746
    invoke-virtual {v5, v1, v10}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 749
    :cond_6a
    if-eqz v2, :cond_75

    .line 750
    sget-object v0, Lcom/anythink/core/b/a/d;->l:Ljava/lang/String;

    const-string v1, "Providers : VERIFIED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_73
    move v1, v2

    .line 755
    goto :goto_6

    .line 752
    :cond_75
    sget-object v0, Lcom/anythink/core/b/a/d;->l:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Providers : Missing "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " declare in AndroidManifest"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_73

    :cond_94
    move v0, v2

    goto :goto_4b

    :cond_96
    move v4, v1

    goto :goto_3f
.end method

.method static e(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 607
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 608
    sget-object v0, Lcom/anythink/core/b/a/d;->l:Ljava/lang/String;

    const-string v1, "SDK: VERIFIED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_a} :catch_c

    .line 609
    const/4 v0, 0x1

    .line 614
    :goto_b
    return v0

    .line 613
    :catch_c
    move-exception v0

    sget-object v0, Lcom/anythink/core/b/a/d;->l:Ljava/lang/String;

    const-string v1, "SDK: NOT VERIFIED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private g(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 197
    iput-object p1, p0, Lcom/anythink/core/b/a/e;->f:Ljava/lang/String;

    .line 198
    iget-object v0, p0, Lcom/anythink/core/b/a/e;->e:Landroid/content/Context;

    sget-object v1, Lcom/anythink/core/b/a/d;->m:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/b/a/d;->n:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/anythink/core/b/g/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method private h(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 209
    iput-object p1, p0, Lcom/anythink/core/b/a/e;->g:Ljava/lang/String;

    .line 210
    iget-object v0, p0, Lcom/anythink/core/b/a/e;->e:Landroid/content/Context;

    sget-object v1, Lcom/anythink/core/b/a/d;->m:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/b/a/d;->o:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/anythink/core/b/g/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method private i(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .prologue
    .line 489
    const-string v0, "SDK.init"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": sessionid is empty."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    invoke-virtual {p0}, Lcom/anythink/core/b/a/e;->i()Ljava/lang/String;

    move-result-object v1

    .line 491
    const-string v0, ""

    .line 492
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/anythink/core/b/a/e;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/anythink/core/b/g/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/b/g/c;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const v3, 0x989680

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 496
    :cond_58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 497
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/b/g/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 499
    :try_start_79
    iget-object v4, p0, Lcom/anythink/core/b/a/e;->l:Lorg/json/JSONObject;

    invoke-virtual {v4, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_7e} :catch_b2

    .line 503
    :goto_7e
    iget-object v4, p0, Lcom/anythink/core/b/a/e;->e:Landroid/content/Context;

    sget-object v5, Lcom/anythink/core/b/a/d;->m:Ljava/lang/String;

    const-string v6, "SPU_SESSIONID_KEY"

    iget-object v7, p0, Lcom/anythink/core/b/a/e;->l:Lorg/json/JSONObject;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/anythink/core/b/g/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const-string v4, "SDK.init"

    const-string v5, "placementSessionId :"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const-string v4, "2"

    invoke-virtual {p0}, Lcom/anythink/core/b/a/e;->i()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b0

    :goto_a8
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v4, v0, v2}, Lcom/anythink/core/b/f/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    return-object v1

    .line 506
    :cond_b0
    const/4 v0, 0x0

    goto :goto_a8

    :catch_b2
    move-exception v4

    goto :goto_7e
.end method

.method private k()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/anythink/core/b/a/e;->i:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private l()V
    .registers 3

    .prologue
    .line 252
    invoke-static {}, Lcom/anythink/core/b/g/a/a;->a()Lcom/anythink/core/b/g/a/a;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/b/a/e$1;

    invoke-direct {v1, p0}, Lcom/anythink/core/b/a/e$1;-><init>(Lcom/anythink/core/b/a/e;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/g/a/a;->a(Ljava/lang/Runnable;)V

    .line 284
    return-void
.end method

.method private m()V
    .registers 4

    .prologue
    .line 401
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/b/a/e;->m:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_b

    .line 402
    iget-object v0, p0, Lcom/anythink/core/b/a/e;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/anythink/core/b/a/e;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 404
    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/core/b/a/e;->m:Landroid/content/BroadcastReceiver;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_e} :catch_29

    .line 410
    :goto_e
    :try_start_e
    new-instance v0, Lcom/anythink/core/b/a/e$5;

    invoke-direct {v0, p0}, Lcom/anythink/core/b/a/e$5;-><init>(Lcom/anythink/core/b/a/e;)V

    iput-object v0, p0, Lcom/anythink/core/b/a/e;->m:Landroid/content/BroadcastReceiver;

    .line 418
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 419
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 420
    iget-object v1, p0, Lcom/anythink/core/b/a/e;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/core/b/a/e;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_26} :catch_27

    .line 424
    :goto_26
    return-void

    :catch_27
    move-exception v0

    goto :goto_26

    :catch_29
    move-exception v0

    goto :goto_e
.end method

.method private n()V
    .registers 5

    .prologue
    .line 817
    const/4 v0, 0x0

    .line 818
    iget-object v1, p0, Lcom/anythink/core/b/a/e;->e:Landroid/content/Context;

    if-eqz v1, :cond_2a

    .line 820
    :try_start_5
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/anythink/core/b/a/e;->e:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/core/b/a/e;->p:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    .line 821
    if-nez v0, :cond_2a

    .line 822
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/anythink/core/b/a/e;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/core/b/a/e;->p:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_29} :catch_2d

    move-result v0

    .line 829
    :cond_2a
    :goto_2a
    iput-boolean v0, p0, Lcom/anythink/core/b/a/e;->q:Z

    .line 830
    return-void

    .line 825
    :catch_2d
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2a
.end method


# virtual methods
.method protected final declared-synchronized a(Landroid/content/Context;Ljava/lang/String;I)J
    .registers 16

    .prologue
    const-wide/16 v0, 0x0

    .line 435
    monitor-enter p0

    :try_start_3
    invoke-static {p1}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;)Lcom/anythink/core/c/b;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/anythink/core/c/b;->b(Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object v6

    .line 437
    sget-object v2, Lcom/anythink/core/b/a/d;->m:Ljava/lang/String;

    const-string v3, "SPU_PSID_KEY"

    const-string v4, ""

    invoke-static {p1, v2, v3, v4}, Lcom/anythink/core/b/g/l;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 438
    sget-object v2, Lcom/anythink/core/b/a/d;->m:Ljava/lang/String;

    const-string v3, "SPU_SESSIONID_KEY"

    const-string v4, ""

    invoke-static {p1, v2, v3, v4}, Lcom/anythink/core/b/g/l;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 439
    sget-object v2, Lcom/anythink/core/b/a/d;->m:Ljava/lang/String;

    const-string v3, "SPU_INIT_TIME_KEY"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {p1, v2, v3, v4}, Lcom/anythink/core/b/g/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 441
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 443
    sub-long v10, v2, v4

    cmp-long v9, v10, v0

    if-gez v9, :cond_3c

    move-wide v4, v0

    .line 448
    :cond_3c
    sub-long v10, v2, v4

    if-nez p3, :cond_87

    .line 449
    invoke-virtual {v6}, Lcom/anythink/core/c/a;->n()J

    move-result-wide v4

    :goto_44
    cmp-long v4, v10, v4

    if-gtz v4, :cond_8d

    .line 450
    const-string v2, "SDK.init"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "psid updataTime<="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/anythink/core/c/a;->n()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    iput-object v7, p0, Lcom/anythink/core/b/a/e;->k:Ljava/lang/String;

    .line 452
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6f

    .line 453
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/anythink/core/b/a/e;->l:Lorg/json/JSONObject;

    .line 455
    :cond_6f
    const-string v2, "SDK.init"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "psid :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/anythink/core/b/a/e;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_85
    .catchall {:try_start_3 .. :try_end_85} :catchall_13c

    .line 477
    :goto_85
    monitor-exit p0

    return-wide v0

    .line 449
    :cond_87
    :try_start_87
    invoke-virtual {v6}, Lcom/anythink/core/c/a;->a()I

    move-result v4

    int-to-long v4, v4

    goto :goto_44

    .line 458
    :cond_8d
    const-string v0, "SDK.init"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "psid updataTime>"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/anythink/core/c/a;->n()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    invoke-virtual {p0}, Lcom/anythink/core/b/a/e;->i()Ljava/lang/String;

    move-result-object v1

    .line 460
    const-string v0, ""

    .line 461
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_da

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/anythink/core/b/g/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/b/g/c;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 463
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const v4, 0x989680

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 466
    :cond_da
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/b/g/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/b/a/e;->k:Ljava/lang/String;

    .line 469
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/anythink/core/b/a/e;->l:Lorg/json/JSONObject;

    .line 471
    sget-object v1, Lcom/anythink/core/b/a/d;->m:Ljava/lang/String;

    const-string v4, "SPU_PSID_KEY"

    iget-object v5, p0, Lcom/anythink/core/b/a/e;->k:Ljava/lang/String;

    invoke-static {p1, v1, v4, v5}, Lcom/anythink/core/b/g/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    sget-object v1, Lcom/anythink/core/b/a/d;->m:Ljava/lang/String;

    const-string v4, "SPU_SESSIONID_KEY"

    const-string v5, ""

    invoke-static {p1, v1, v4, v5}, Lcom/anythink/core/b/g/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    sget-object v1, Lcom/anythink/core/b/a/d;->m:Ljava/lang/String;

    const-string v4, "SPU_INIT_TIME_KEY"

    invoke-static {p1, v1, v4, v2, v3}, Lcom/anythink/core/b/g/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 475
    const-string v1, "SDK.init"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "psid :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/anythink/core/b/a/e;->k:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    const/4 v1, 0x0

    const-string v4, "1"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v0, v5}, Lcom/anythink/core/b/f/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_139
    .catchall {:try_start_87 .. :try_end_139} :catchall_13c

    move-wide v0, v2

    .line 477
    goto/16 :goto_85

    .line 435
    :catchall_13c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 145
    iget-object v0, p0, Lcom/anythink/core/b/a/e;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 146
    iget-object v2, p0, Lcom/anythink/core/b/a/e;->i:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_16

    .line 147
    iget-object v2, p0, Lcom/anythink/core/b/a/e;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 149
    :cond_16
    if-eqz v0, :cond_1b

    .line 150
    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 154
    :cond_1b
    const-string v0, "channel"

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v0, "sub_channel"

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v0, p0, Lcom/anythink/core/b/a/e;->i:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "channel"

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 158
    iget-object v2, p0, Lcom/anythink/core/b/a/e;->i:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, "sub_channel"

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 160
    if-eqz v0, :cond_3c

    .line 161
    const-string v3, "channel"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :cond_3c
    if-eqz v2, :cond_43

    .line 165
    const-string v0, "sub_channel"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :cond_43
    return-object v1
.end method

.method public final a(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 120
    iput-object p1, p0, Lcom/anythink/core/b/a/e;->e:Landroid/content/Context;

    .line 121
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .prologue
    .line 294
    if-nez p1, :cond_3

    .line 353
    :goto_2
    return-void

    .line 299
    :cond_3
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/a/a;->a(Landroid/content/Context;)Lcom/anythink/core/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/a/a;->a()V

    .line 301
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 2120
    iput-object v2, p0, Lcom/anythink/core/b/a/e;->e:Landroid/content/Context;

    .line 2197
    iput-object p2, p0, Lcom/anythink/core/b/a/e;->f:Ljava/lang/String;

    .line 2198
    iget-object v0, p0, Lcom/anythink/core/b/a/e;->e:Landroid/content/Context;

    sget-object v1, Lcom/anythink/core/b/a/d;->m:Ljava/lang/String;

    sget-object v3, Lcom/anythink/core/b/a/d;->n:Ljava/lang/String;

    invoke-static {v0, v1, v3, p2}, Lcom/anythink/core/b/g/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2209
    iput-object p3, p0, Lcom/anythink/core/b/a/e;->g:Ljava/lang/String;

    .line 2210
    iget-object v0, p0, Lcom/anythink/core/b/a/e;->e:Landroid/content/Context;

    sget-object v1, Lcom/anythink/core/b/a/d;->m:Ljava/lang/String;

    sget-object v3, Lcom/anythink/core/b/a/d;->o:Ljava/lang/String;

    invoke-static {v0, v1, v3, p3}, Lcom/anythink/core/b/g/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2817
    const/4 v1, 0x0

    .line 2818
    iget-object v0, p0, Lcom/anythink/core/b/a/e;->e:Landroid/content/Context;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2d} :catch_c0

    if-eqz v0, :cond_55

    .line 2820
    :try_start_2f
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/anythink/core/b/a/e;->e:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lcom/anythink/core/b/a/e;->p:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_40} :catch_c3
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_40} :catch_c0

    move-result v0

    .line 2821
    if-nez v0, :cond_54

    .line 2822
    :try_start_43
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/anythink/core/b/a/e;->e:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lcom/anythink/core/b/a/e;->p:Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_53} :catch_cc
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_53} :catch_c0

    move-result v0

    :cond_54
    move v1, v0

    .line 2829
    :cond_55
    :goto_55
    :try_start_55
    iput-boolean v1, p0, Lcom/anythink/core/b/a/e;->q:Z
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_57} :catch_c0

    .line 3401
    :try_start_57
    iget-object v0, p0, Lcom/anythink/core/b/a/e;->m:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_62

    .line 3402
    iget-object v0, p0, Lcom/anythink/core/b/a/e;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/anythink/core/b/a/e;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3404
    :cond_62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/core/b/a/e;->m:Landroid/content/BroadcastReceiver;
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_65} :catch_ca
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_65} :catch_c0

    .line 3410
    :goto_65
    :try_start_65
    new-instance v0, Lcom/anythink/core/b/a/e$5;

    invoke-direct {v0, p0}, Lcom/anythink/core/b/a/e$5;-><init>(Lcom/anythink/core/b/a/e;)V

    iput-object v0, p0, Lcom/anythink/core/b/a/e;->m:Landroid/content/BroadcastReceiver;

    .line 3418
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3419
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3420
    iget-object v1, p0, Lcom/anythink/core/b/a/e;->e:Landroid/content/Context;

    iget-object v3, p0, Lcom/anythink/core/b/a/e;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_7d} :catch_c8
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_7d} :catch_c0

    .line 309
    :goto_7d
    :try_start_7d
    invoke-static {}, Lcom/anythink/core/b/g/a/a;->a()Lcom/anythink/core/b/g/a/a;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/b/a/e$2;

    invoke-direct {v1, p0, v2, p2, p1}, Lcom/anythink/core/b/a/e$2;-><init>(Lcom/anythink/core/b/a/e;Landroid/content/Context;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/g/a/a;->a(Ljava/lang/Runnable;)V

    .line 326
    new-instance v0, Lcom/anythink/core/b/a/e$3;

    invoke-direct {v0, p0, v2}, Lcom/anythink/core/b/a/e$3;-><init>(Lcom/anythink/core/b/a/e;Landroid/content/Context;)V

    const-wide/16 v4, 0x1388

    invoke-virtual {p0, v0, v4, v5}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;J)V

    .line 4252
    invoke-static {}, Lcom/anythink/core/b/g/a/a;->a()Lcom/anythink/core/b/g/a/a;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/b/a/e$1;

    invoke-direct {v1, p0}, Lcom/anythink/core/b/a/e$1;-><init>(Lcom/anythink/core/b/a/e;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/g/a/a;->a(Ljava/lang/Runnable;)V

    .line 336
    invoke-static {}, Lcom/anythink/core/b/g/a/a;->a()Lcom/anythink/core/b/g/a/a;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/b/a/e$4;

    invoke-direct {v1, p0, p1, v2}, Lcom/anythink/core/b/a/e$4;-><init>(Lcom/anythink/core/b/a/e;Landroid/content/Context;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/g/a/a;->a(Ljava/lang/Runnable;)V

    .line 4513
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/anythink/core/b/a/e;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4515
    invoke-static {}, Lcom/anythink/core/b/g/a/a;->a()Lcom/anythink/core/b/g/a/a;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/b/a/e$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/anythink/core/b/a/e$6;-><init>(Lcom/anythink/core/b/a/e;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/g/a/a;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 353
    :catch_c0
    move-exception v0

    goto/16 :goto_2

    .line 2825
    :catch_c3
    move-exception v0

    :goto_c4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_c7} :catch_c0

    goto :goto_55

    :catch_c8
    move-exception v0

    goto :goto_7d

    :catch_ca
    move-exception v0

    goto :goto_65

    :catch_cc
    move-exception v1

    move-object v6, v1

    move v1, v0

    move-object v0, v6

    goto :goto_c4
.end method

.method public final a(Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 779
    iget-object v0, p0, Lcom/anythink/core/b/a/e;->h:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 780
    return-void
.end method

.method public final a(Ljava/lang/Runnable;J)V
    .registers 6

    .prologue
    .line 787
    iget-object v0, p0, Lcom/anythink/core/b/a/e;->h:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 788
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/anythink/core/b/a/e;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/anythink/core/b/a/e;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 130
    if-eqz p1, :cond_c

    .line 131
    iget-object v0, p0, Lcom/anythink/core/b/a/e;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 133
    :cond_c
    return-void
.end method

.method public final a(Z)V
    .registers 2

    .prologue
    .line 813
    iput-boolean p1, p0, Lcom/anythink/core/b/a/e;->r:Z

    .line 814
    return-void
.end method

.method public final declared-synchronized b()Lcom/anythink/core/api/IATChinaSDKHandler;
    .registers 3

    .prologue
    .line 93
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/anythink/core/b/a/e;->c:Z

    if-eqz v0, :cond_9

    .line 94
    iget-object v0, p0, Lcom/anythink/core/b/a/e;->o:Lcom/anythink/core/api/IATChinaSDKHandler;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_2f

    .line 108
    :goto_7
    monitor-exit p0

    return-object v0

    .line 98
    :cond_9
    :try_start_9
    const-string v0, "com.anythink.china.api.ATChinaSDKHandler"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/anythink/core/api/IATChinaSDKHandler;

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 100
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 101
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 102
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/api/IATChinaSDKHandler;

    iput-object v0, p0, Lcom/anythink/core/b/a/e;->o:Lcom/anythink/core/api/IATChinaSDKHandler;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_29} :catch_32
    .catchall {:try_start_9 .. :try_end_29} :catchall_2f

    .line 107
    :goto_29
    const/4 v0, 0x1

    :try_start_2a
    iput-boolean v0, p0, Lcom/anythink/core/b/a/e;->c:Z

    .line 108
    iget-object v0, p0, Lcom/anythink/core/b/a/e;->o:Lcom/anythink/core/api/IATChinaSDKHandler;
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_2f

    goto :goto_7

    .line 93
    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_32
    move-exception v0

    goto :goto_29
.end method

.method public final b(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 530
    invoke-static {}, Lcom/anythink/core/b/g/a/a;->a()Lcom/anythink/core/b/g/a/a;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/b/a/e$7;

    invoke-direct {v1, p0, p1}, Lcom/anythink/core/b/a/e$7;-><init>(Lcom/anythink/core/b/a/e;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/g/a/a;->a(Ljava/lang/Runnable;)V

    .line 602
    return-void
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 768
    invoke-static {}, Lcom/anythink/core/b/g/a/a;->a()Lcom/anythink/core/b/g/a/a;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/b/a/e$8;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/anythink/core/b/a/e$8;-><init>(Lcom/anythink/core/b/a/e;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/g/a/a;->a(Ljava/lang/Runnable;)V

    .line 776
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 177
    iget-object v0, p0, Lcom/anythink/core/b/a/e;->i:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "channel"

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    return-void
.end method

.method public final c()Landroid/content/Context;
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/anythink/core/b/a/e;->e:Landroid/content/Context;

    return-object v0
.end method

.method public final c(Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 791
    iget-object v0, p0, Lcom/anythink/core/b/a/e;->h:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 792
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 186
    iget-object v0, p0, Lcom/anythink/core/b/a/e;->i:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "sub_channel"

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    return-void
.end method

.method public final d()Ljava/lang/String;
    .registers 3

    .prologue
    .line 172
    iget-object v0, p0, Lcom/anythink/core/b/a/e;->i:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "channel"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 173
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const-string v0, ""

    goto :goto_e
.end method

.method public final declared-synchronized d(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 233
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/b/a/e;->l:Lorg/json/JSONObject;

    if-nez v0, :cond_c

    .line 234
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/b/a/e;->l:Lorg/json/JSONObject;

    .line 237
    :cond_c
    iget-object v0, p0, Lcom/anythink/core/b/a/e;->l:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 239
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 240
    invoke-direct {p0, p1}, Lcom/anythink/core/b/a/e;->i(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_46

    move-result-object v0

    .line 246
    :goto_1c
    monitor-exit p0

    return-object v0

    .line 242
    :cond_1e
    :try_start_1e
    const-string v1, "SDK.init"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": sessionid exits."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v1, "SDK.init"

    const-string v2, "placementSessionId :"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_45
    .catchall {:try_start_1e .. :try_end_45} :catchall_46

    goto :goto_1c

    .line 233
    :catchall_46
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()Ljava/lang/String;
    .registers 3

    .prologue
    .line 181
    iget-object v0, p0, Lcom/anythink/core/b/a/e;->i:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "sub_channel"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const-string v0, ""

    goto :goto_e
.end method

.method public final f()Ljava/lang/String;
    .registers 5

    .prologue
    .line 190
    iget-object v0, p0, Lcom/anythink/core/b/a/e;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 191
    iget-object v0, p0, Lcom/anythink/core/b/a/e;->e:Landroid/content/Context;

    sget-object v1, Lcom/anythink/core/b/a/d;->m:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/b/a/d;->n:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/b/g/l;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/b/a/e;->f:Ljava/lang/String;

    .line 193
    :cond_16
    iget-object v0, p0, Lcom/anythink/core/b/a/e;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final f(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 808
    iget-object v0, p0, Lcom/anythink/core/b/a/e;->e:Landroid/content/Context;

    sget-object v1, Lcom/anythink/core/b/a/d;->m:Ljava/lang/String;

    const-string v2, "UP_ID"

    invoke-static {v0, v1, v2, p1}, Lcom/anythink/core/b/g/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    iput-object p1, p0, Lcom/anythink/core/b/a/e;->n:Ljava/lang/String;

    .line 810
    return-void
.end method

.method public final g()Ljava/lang/String;
    .registers 5

    .prologue
    .line 202
    iget-object v0, p0, Lcom/anythink/core/b/a/e;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 203
    iget-object v0, p0, Lcom/anythink/core/b/a/e;->e:Landroid/content/Context;

    sget-object v1, Lcom/anythink/core/b/a/d;->m:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/b/a/d;->o:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/b/g/l;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/b/a/e;->g:Ljava/lang/String;

    .line 205
    :cond_16
    iget-object v0, p0, Lcom/anythink/core/b/a/e;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .registers 4

    .prologue
    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/b/a/e;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1124
    iget-object v0, p0, Lcom/anythink/core/b/a/e;->e:Landroid/content/Context;

    .line 217
    invoke-virtual {p0}, Lcom/anythink/core/b/a/e;->f()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/anythink/core/b/a/e;->a(Landroid/content/Context;Ljava/lang/String;I)J
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_15

    .line 222
    :cond_12
    :goto_12
    iget-object v0, p0, Lcom/anythink/core/b/a/e;->k:Ljava/lang/String;

    return-object v0

    :catch_15
    move-exception v0

    goto :goto_12
.end method

.method public final i()Ljava/lang/String;
    .registers 5

    .prologue
    .line 800
    iget-object v0, p0, Lcom/anythink/core/b/a/e;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 801
    iget-object v0, p0, Lcom/anythink/core/b/a/e;->e:Landroid/content/Context;

    sget-object v1, Lcom/anythink/core/b/a/d;->m:Ljava/lang/String;

    const-string v2, "UP_ID"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/b/g/l;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/b/a/e;->n:Ljava/lang/String;

    .line 803
    :cond_16
    iget-object v0, p0, Lcom/anythink/core/b/a/e;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Z
    .registers 2

    .prologue
    .line 833
    iget-boolean v0, p0, Lcom/anythink/core/b/a/e;->q:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/anythink/core/b/a/e;->r:Z

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
