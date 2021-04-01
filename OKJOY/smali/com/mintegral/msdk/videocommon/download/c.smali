.class public Lcom/mintegral/msdk/videocommon/download/c;
.super Ljava/lang/Object;
.source "DownLoadManager.java"


# static fields
.field private static a:Lcom/mintegral/msdk/videocommon/download/c;


# instance fields
.field private b:Ljava/util/concurrent/ThreadPoolExecutor;

.field private c:Z

.field private d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mintegral/msdk/videocommon/download/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 9

    .prologue
    const/4 v2, 0x5

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/videocommon/download/c;->c:Z

    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/videocommon/download/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 48
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0xf

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    move v3, v2

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/mintegral/msdk/videocommon/download/c;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 49
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/c;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 51
    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/mintegral/msdk/videocommon/download/k;
    .registers 4

    .prologue
    .line 99
    const/4 v0, 0x0

    .line 100
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_15

    .line 101
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 102
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/videocommon/download/k;

    .line 105
    :cond_15
    return-object v0
.end method

.method public static getInstance()Lcom/mintegral/msdk/videocommon/download/c;
    .registers 2

    .prologue
    .line 54
    sget-object v0, Lcom/mintegral/msdk/videocommon/download/c;->a:Lcom/mintegral/msdk/videocommon/download/c;

    if-nez v0, :cond_13

    .line 55
    const-class v1, Lcom/mintegral/msdk/videocommon/download/c;

    monitor-enter v1

    .line 56
    :try_start_7
    sget-object v0, Lcom/mintegral/msdk/videocommon/download/c;->a:Lcom/mintegral/msdk/videocommon/download/c;

    if-nez v0, :cond_12

    .line 57
    new-instance v0, Lcom/mintegral/msdk/videocommon/download/c;

    invoke-direct {v0}, Lcom/mintegral/msdk/videocommon/download/c;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/videocommon/download/c;->a:Lcom/mintegral/msdk/videocommon/download/c;

    .line 59
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 61
    :cond_13
    sget-object v0, Lcom/mintegral/msdk/videocommon/download/c;->a:Lcom/mintegral/msdk/videocommon/download/c;

    return-object v0

    .line 59
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/mintegral/msdk/videocommon/download/d;)I
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 267
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_88

    .line 268
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 269
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 270
    :cond_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_88

    .line 271
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 272
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/videocommon/download/k;

    .line 274
    if-eqz v0, :cond_f

    .line 278
    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/download/k;->c()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    .line 279
    if-eqz v4, :cond_f

    .line 283
    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    move v2, v1

    .line 284
    :goto_2e
    if-ge v2, v5, :cond_f

    .line 285
    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 286
    if-eqz v0, :cond_84

    .line 287
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 289
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 291
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_84

    .line 292
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 293
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/videocommon/download/a;

    .line 294
    if-eqz v0, :cond_84

    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/download/a;->g()Z

    move-result v6

    if-eqz v6, :cond_84

    .line 295
    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/download/a;->l()Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v6

    .line 296
    if-eqz v6, :cond_84

    .line 297
    invoke-virtual {v6}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v6

    .line 298
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_84

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_84

    .line 299
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_84

    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/download/a;->g()Z

    move-result v6

    if-eqz v6, :cond_84

    .line 300
    invoke-virtual {v0, p2}, Lcom/mintegral/msdk/videocommon/download/a;->a(Lcom/mintegral/msdk/videocommon/download/d;)V

    .line 301
    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/download/a;->h()I

    move-result v0

    .line 310
    :goto_83
    return v0

    .line 284
    :cond_84
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2e

    :cond_88
    move v0, v1

    .line 310
    goto :goto_83
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/mintegral/msdk/videocommon/download/a;
    .registers 4

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/videocommon/download/c;->a(Ljava/lang/String;)Lcom/mintegral/msdk/videocommon/download/k;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_b

    .line 73
    invoke-virtual {v0, p2}, Lcom/mintegral/msdk/videocommon/download/k;->a(Ljava/lang/String;)Lcom/mintegral/msdk/videocommon/download/a;

    move-result-object v0

    .line 75
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final a(Ljava/lang/String;Z)Lcom/mintegral/msdk/videocommon/download/a;
    .registers 4

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/videocommon/download/c;->a(Ljava/lang/String;)Lcom/mintegral/msdk/videocommon/download/k;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_b

    .line 87
    invoke-virtual {v0, p2}, Lcom/mintegral/msdk/videocommon/download/k;->b(Z)Lcom/mintegral/msdk/videocommon/download/a;

    move-result-object v0

    .line 89
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final a()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    .line 340
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_77

    .line 342
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 344
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 345
    :cond_f
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 346
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 347
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mintegral/msdk/videocommon/download/k;

    .line 348
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1356
    :try_start_27
    const-string v2, "com.mintegral.msdk.videocommon.e.a"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 1358
    invoke-static {}, Lcom/mintegral/msdk/videocommon/e/b;->a()Lcom/mintegral/msdk/videocommon/e/b;

    .line 1359
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v2

    .line 1358
    invoke-static {v2, v0}, Lcom/mintegral/msdk/videocommon/e/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mintegral/msdk/videocommon/e/c;

    move-result-object v2

    .line 1360
    if-eqz v2, :cond_f

    .line 1363
    invoke-virtual {v2}, Lcom/mintegral/msdk/videocommon/e/c;->F()I

    move-result v2

    if-ne v2, v4, :cond_6f

    .line 1364
    invoke-virtual {v1}, Lcom/mintegral/msdk/videocommon/download/k;->b()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_46} :catch_47

    goto :goto_f

    :catch_47
    move-exception v2

    .line 1375
    :try_start_48
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 1376
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    .line 1377
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/mintegral/msdk/c/b;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/mintegral/msdk/c/d;

    move-result-object v2

    .line 1378
    if-nez v2, :cond_78

    .line 1379
    invoke-static {v0}, Lcom/mintegral/msdk/c/d;->c(Ljava/lang/String;)Lcom/mintegral/msdk/c/d;

    move-result-object v0

    .line 1381
    :goto_63
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/d;->o()I

    move-result v0

    if-ne v0, v4, :cond_73

    .line 1382
    invoke-virtual {v1}, Lcom/mintegral/msdk/videocommon/download/k;->b()V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_6c} :catch_6d

    goto :goto_f

    .line 350
    :catch_6d
    move-exception v0

    goto :goto_f

    .line 1367
    :cond_6f
    :try_start_6f
    invoke-virtual {v1}, Lcom/mintegral/msdk/videocommon/download/k;->a()V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_72} :catch_47

    goto :goto_f

    .line 1384
    :cond_73
    :try_start_73
    invoke-virtual {v1}, Lcom/mintegral/msdk/videocommon/download/k;->a()V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_76} :catch_6d

    goto :goto_f

    .line 352
    :cond_77
    return-void

    :cond_78
    move-object v0, v2

    goto :goto_63
.end method

.method public final a(Z)V
    .registers 4

    .prologue
    .line 224
    iput-boolean p1, p0, Lcom/mintegral/msdk/videocommon/download/c;->c:Z

    .line 225
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_28

    .line 227
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 229
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 230
    :cond_10
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 231
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 232
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/videocommon/download/k;

    .line 233
    if-eqz v0, :cond_10

    .line 234
    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/download/k;->b()V

    goto :goto_10

    .line 238
    :cond_28
    return-void
.end method

.method public final a(ILjava/lang/String;Z)Z
    .registers 11

    .prologue
    const/4 v2, 0x0

    .line 116
    .line 118
    :try_start_1
    invoke-direct {p0, p2}, Lcom/mintegral/msdk/videocommon/download/c;->a(Ljava/lang/String;)Lcom/mintegral/msdk/videocommon/download/k;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_b1

    .line 120
    invoke-virtual {v0, p3}, Lcom/mintegral/msdk/videocommon/download/k;->a(Z)Lcom/mintegral/msdk/videocommon/download/a;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_a1

    move-result-object v1

    .line 121
    if-nez v1, :cond_5f

    move v1, v2

    .line 1139
    :goto_e
    :try_start_e
    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/download/k;->c()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    .line 1141
    if-eqz v3, :cond_9f

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9f

    .line 1142
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1143
    :goto_1f
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_61

    .line 1144
    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1145
    if-eqz v0, :cond_5c

    .line 1146
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 1147
    if-eqz v0, :cond_61

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_61

    .line 1150
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1151
    if-eqz v0, :cond_61

    .line 1154
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 1155
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1156
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/videocommon/download/a;

    .line 1157
    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/download/a;->l()Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v0

    .line 1158
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1143
    :cond_5c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 124
    :cond_5f
    const/4 v1, 0x1

    goto :goto_e

    .line 1162
    :cond_61
    invoke-static {p1, p3}, Lcom/mintegral/msdk/videocommon/a;->a(IZ)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    .line 1164
    if-eqz v0, :cond_9f

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    if-lez v2, :cond_9f

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_9f

    .line 1165
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1166
    :cond_7b
    :goto_7b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 1167
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1168
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    .line 1169
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_94} :catch_95

    goto :goto_7b

    .line 1173
    :catch_95
    move-exception v0

    .line 1174
    :try_start_96
    sget-boolean v2, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v2, :cond_9d

    .line 1175
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_9d} :catch_ac

    :cond_9d
    move v0, v1

    .line 133
    :cond_9e
    :goto_9e
    return v0

    :cond_9f
    move v0, v1

    .line 1177
    goto :goto_9e

    .line 128
    :catch_a1
    move-exception v0

    move-object v1, v0

    move v0, v2

    .line 129
    :goto_a4
    sget-boolean v2, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v2, :cond_9e

    .line 130
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9e

    .line 128
    :catch_ac
    move-exception v0

    move-object v6, v0

    move v0, v1

    move-object v1, v6

    goto :goto_a4

    :cond_b1
    move v1, v2

    goto/16 :goto_e
.end method

.method public final b(Z)V
    .registers 4

    .prologue
    .line 317
    if-eqz p1, :cond_7

    .line 318
    iget-boolean v0, p0, Lcom/mintegral/msdk/videocommon/download/c;->c:Z

    if-eqz v0, :cond_a

    .line 334
    :cond_6
    return-void

    .line 322
    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/videocommon/download/c;->c:Z

    .line 325
    :cond_a
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_6

    .line 326
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 327
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 328
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 329
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 330
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/videocommon/download/k;

    .line 331
    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/download/k;->a()V

    goto :goto_18
.end method

.method public createUnitCache(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ILcom/mintegral/msdk/videocommon/listener/a;)Lcom/mintegral/msdk/videocommon/download/k;
    .registers 8

    .prologue
    .line 203
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    if-nez p3, :cond_a

    .line 204
    :cond_8
    const/4 v0, 0x0

    .line 217
    :goto_9
    return-object v0

    .line 207
    :cond_a
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 208
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/videocommon/download/k;

    .line 209
    invoke-virtual {v0, p5}, Lcom/mintegral/msdk/videocommon/download/k;->a(Lcom/mintegral/msdk/videocommon/listener/a;)V

    .line 210
    invoke-virtual {v0, p3}, Lcom/mintegral/msdk/videocommon/download/k;->a(Ljava/util/List;)V

    goto :goto_9

    .line 212
    :cond_21
    new-instance v0, Lcom/mintegral/msdk/videocommon/download/k;

    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/c;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {v0, p3, v1, p2, p4}, Lcom/mintegral/msdk/videocommon/download/k;-><init>(Ljava/util/List;Ljava/util/concurrent/ExecutorService;Ljava/lang/String;I)V

    .line 214
    invoke-virtual {v0, p5}, Lcom/mintegral/msdk/videocommon/download/k;->a(Lcom/mintegral/msdk/videocommon/listener/a;)V

    .line 215
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9
.end method

.method public load(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/videocommon/download/c;->a(Ljava/lang/String;)Lcom/mintegral/msdk/videocommon/download/k;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_9

    .line 188
    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/download/k;->a()V

    .line 190
    :cond_9
    return-void
.end method
