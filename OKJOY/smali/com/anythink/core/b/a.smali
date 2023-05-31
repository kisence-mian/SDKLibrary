.class public final Lcom/anythink/core/b/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/anythink/core/b/a;


# instance fields
.field private b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/b/c/o;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 4

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/b/a;->c:Ljava/util/HashMap;

    .line 51
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/b/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 52
    iget-object v0, p0, Lcom/anythink/core/b/a;->c:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lcom/anythink/core/b/a;->c:Ljava/util/HashMap;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lcom/anythink/core/b/a;->c:Ljava/util/HashMap;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lcom/anythink/core/b/a;->c:Ljava/util/HashMap;

    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-void
.end method

.method public static a()Lcom/anythink/core/b/a;
    .registers 1

    .prologue
    .line 44
    sget-object v0, Lcom/anythink/core/b/a;->a:Lcom/anythink/core/b/a;

    if-nez v0, :cond_b

    .line 45
    new-instance v0, Lcom/anythink/core/b/a;

    invoke-direct {v0}, Lcom/anythink/core/b/a;-><init>()V

    sput-object v0, Lcom/anythink/core/b/a;->a:Lcom/anythink/core/b/a;

    .line 47
    :cond_b
    sget-object v0, Lcom/anythink/core/b/a;->a:Lcom/anythink/core/b/a;

    return-object v0
.end method

.method private static a(Ljava/util/List;Ljava/util/concurrent/ConcurrentHashMap;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/anythink/core/c/c$b;",
            ">;",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/b/c/o;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 366
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_25

    if-eqz p1, :cond_25

    .line 367
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/c/c$b;

    .line 368
    iget-object v0, v0, Lcom/anythink/core/c/c$b;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/b/c/o;

    .line 369
    if-eqz v0, :cond_c

    .line 370
    iget-object v0, v0, Lcom/anythink/core/b/c/o;->b:Ljava/lang/String;

    .line 374
    :goto_24
    return-object v0

    :cond_25
    const-string v0, ""

    goto :goto_24
.end method

.method private static a(Lcom/anythink/core/b/a/b;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;Lcom/anythink/core/c/c$b;)V
    .registers 12

    .prologue
    const/4 v6, 0x0

    .line 379
    const-string v2, ""

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p4, Lcom/anythink/core/c/c$b;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object v0, p1

    move-object v1, p2

    move-object v3, p3

    invoke-static/range {v0 .. v6}, Lcom/anythink/core/b/g/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;Ljava/lang/String;IZ)Lcom/anythink/core/b/c/b;

    move-result-object v0

    .line 380
    invoke-static {p0, v0, p4}, Lcom/anythink/core/b/g/m;->a(Lcom/anythink/core/b/a/b;Lcom/anythink/core/b/c/b;Lcom/anythink/core/c/c$b;)Lcom/anythink/core/b/c/b;

    .line 2350
    const/4 v1, 0x3

    iput v1, v0, Lcom/anythink/core/b/c/b;->k:I

    .line 382
    invoke-virtual {p0, v6}, Lcom/anythink/core/b/a/b;->setRefresh(Z)V

    .line 383
    return-void
.end method

.method private static a(Lorg/json/JSONArray;ILjava/lang/String;ILjava/lang/String;ZI)V
    .registers 10

    .prologue
    .line 386
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 388
    :try_start_5
    const-string v0, "priority"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 389
    const-string v0, "unit_id"

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 390
    const-string v0, "nw_firm_id"

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 391
    const-string v0, "nw_ver"

    invoke-virtual {v1, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 392
    const-string v2, "result"

    if-eqz p5, :cond_2d

    const/4 v0, 0x1

    :goto_1e
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 393
    const/4 v0, -0x1

    if-eq p6, v0, :cond_29

    .line 394
    const-string v0, "reason"

    invoke-virtual {v1, v0, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_29} :catch_2f

    .line 401
    :cond_29
    :goto_29
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 402
    return-void

    .line 392
    :cond_2d
    const/4 v0, 0x0

    goto :goto_1e

    .line 398
    :catch_2f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_29
.end method

.method private static b()V
    .registers 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 434
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)Lcom/anythink/core/b/c/a;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/anythink/core/api/ATMediationSetting;",
            ">;)",
            "Lcom/anythink/core/b/c/a;"
        }
    .end annotation

    .prologue
    .line 130
    monitor-enter p0

    .line 131
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    :try_start_7
    invoke-virtual/range {v0 .. v5}, Lcom/anythink/core/b/a;->a(Landroid/content/Context;Ljava/lang/String;ZZLjava/util/HashMap;)Lcom/anythink/core/b/c/a;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 132
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;ZZLjava/util/HashMap;)Lcom/anythink/core/b/c/a;
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/anythink/core/api/ATMediationSetting;",
            ">;)",
            "Lcom/anythink/core/b/c/a;"
        }
    .end annotation

    .prologue
    .line 145
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_d

    .line 146
    invoke-static {}, Landroid/os/Looper;->prepare()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_33b

    .line 151
    :cond_d
    :goto_d
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 152
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 153
    monitor-enter p0

    .line 154
    :try_start_18
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/a;->b(Ljava/lang/String;)Lcom/anythink/core/c/c;

    move-result-object v12

    .line 155
    if-nez v12, :cond_34

    .line 156
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/b/a/e;->c()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/anythink/core/c/d;->a(Landroid/content/Context;)Lcom/anythink/core/c/d;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/anythink/core/c/d;->a(Ljava/lang/String;)Lcom/anythink/core/c/c;

    move-result-object v12

    .line 159
    :cond_34
    if-nez v12, :cond_39

    .line 160
    const/4 v2, 0x0

    monitor-exit p0

    .line 354
    :goto_38
    return-object v2

    .line 162
    :cond_39
    invoke-static/range {p2 .. p2}, Lcom/anythink/core/b/d;->a(Ljava/lang/String;)Lcom/anythink/core/b/d;

    move-result-object v3

    .line 163
    if-eqz v3, :cond_b7

    invoke-virtual {v3}, Lcom/anythink/core/b/d;->a()Ljava/lang/String;

    move-result-object v21

    .line 166
    :goto_43
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 167
    invoke-virtual {v12}, Lcom/anythink/core/c/c;->E()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_55

    .line 168
    invoke-virtual {v12}, Lcom/anythink/core/c/c;->E()Ljava/util/List;

    move-result-object v3

    invoke-interface {v14, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 171
    :cond_55
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anythink/core/b/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    move-object v9, v0

    .line 174
    invoke-static {v14, v9}, Lcom/anythink/core/b/a;->a(Ljava/util/List;Ljava/util/concurrent/ConcurrentHashMap;)Ljava/lang/String;

    move-result-object v10

    .line 176
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/b/a/e;->h()Ljava/lang/String;

    .line 177
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/anythink/core/b/a/e;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 180
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_23d

    .line 183
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_81
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23d

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/anythink/core/c/c$b;

    move-object v13, v0

    .line 184
    iget v3, v13, Lcom/anythink/core/c/c$b;->b:I

    const/16 v4, 0x23

    if-ne v3, v4, :cond_98

    .line 185
    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_98
    invoke-interface {v14, v13}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 189
    invoke-static {}, Lcom/anythink/core/a/b;->a()Lcom/anythink/core/a/b;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v13}, Lcom/anythink/core/a/b;->a(Ljava/lang/String;Lcom/anythink/core/c/c$b;)Z

    move-result v4

    if-eqz v4, :cond_ba

    .line 190
    iget-object v4, v13, Lcom/anythink/core/c/c$b;->q:Ljava/lang/String;

    iget v5, v13, Lcom/anythink/core/c/c$b;->b:I

    const-string v6, ""

    const/4 v7, 0x0

    const/4 v8, 0x3

    invoke-static/range {v2 .. v8}, Lcom/anythink/core/b/a;->a(Lorg/json/JSONArray;ILjava/lang/String;ILjava/lang/String;ZI)V

    goto :goto_81

    .line 355
    :catchall_b4
    move-exception v2

    monitor-exit p0
    :try_end_b6
    .catchall {:try_start_18 .. :try_end_b6} :catchall_b4

    throw v2

    .line 163
    :cond_b7
    :try_start_b7
    const-string v21, ""

    goto :goto_43

    .line 195
    :cond_ba
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/anythink/core/b/a/e;->c()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/anythink/core/a/a;->a(Landroid/content/Context;)Lcom/anythink/core/a/a;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v13}, Lcom/anythink/core/a/a;->a(Ljava/lang/String;Lcom/anythink/core/c/c$b;)Z

    move-result v4

    if-eqz v4, :cond_da

    .line 196
    iget-object v4, v13, Lcom/anythink/core/c/c$b;->q:Ljava/lang/String;

    iget v5, v13, Lcom/anythink/core/c/c$b;->b:I

    const-string v6, ""

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-static/range {v2 .. v8}, Lcom/anythink/core/b/a;->a(Lorg/json/JSONArray;ILjava/lang/String;ILjava/lang/String;ZI)V

    goto :goto_81

    .line 200
    :cond_da
    const/4 v5, 0x0

    .line 202
    if-eqz v9, :cond_177

    iget-object v4, v13, Lcom/anythink/core/c/c$b;->q:Ljava/lang/String;

    .line 203
    invoke-virtual {v9, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/anythink/core/b/c/o;

    .line 206
    :goto_e5
    if-eqz v4, :cond_ed

    invoke-virtual {v4}, Lcom/anythink/core/b/c/o;->a()Lcom/anythink/core/b/c/a;

    move-result-object v6

    if-nez v6, :cond_199

    .line 207
    :cond_ed
    const/4 v8, 0x0

    .line 209
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/anythink/core/b/a;->c:Ljava/util/HashMap;

    iget v6, v13, Lcom/anythink/core/c/c$b;->b:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .line 210
    if-eqz v4, :cond_10a

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_10a

    .line 211
    invoke-static {v13}, Lcom/anythink/core/b/g/h;->a(Lcom/anythink/core/c/c$b;)Lcom/anythink/core/b/a/b;

    move-result-object v8

    .line 214
    :cond_10a
    if-eqz v8, :cond_18c

    .line 215
    invoke-virtual {v12}, Lcom/anythink/core/c/c;->l()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-static {v0, v13, v4}, Lcom/anythink/core/c/c;->a(Ljava/lang/String;Lcom/anythink/core/c/c$b;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    .line 216
    const/4 v4, 0x0

    .line 217
    if-eqz p5, :cond_127

    .line 218
    iget v4, v13, Lcom/anythink/core/c/c$b;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/anythink/core/api/ATMediationSetting;
    :try_end_127
    .catchall {:try_start_b7 .. :try_end_127} :catchall_b4

    .line 222
    :cond_127
    :try_start_127
    move-object/from16 v0, p1

    invoke-virtual {v8, v0, v6, v4}, Lcom/anythink/core/b/a/b;->initNetworkObjectByPlacementId(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/ATMediationSetting;)Z

    move-result v4

    .line 223
    if-eqz v4, :cond_17a

    invoke-virtual {v8}, Lcom/anythink/core/b/a/b;->isAdReady()Z
    :try_end_132
    .catch Ljava/lang/Throwable; {:try_start_127 .. :try_end_132} :catch_17c
    .catchall {:try_start_127 .. :try_end_132} :catchall_b4

    move-result v4

    .line 228
    :goto_133
    if-eqz v4, :cond_17f

    .line 230
    :try_start_135
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_13f

    invoke-static/range {p1 .. p1}, Lcom/anythink/core/b/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 232
    :cond_13f
    move-object/from16 v0, p2

    invoke-static {v8, v10, v0, v12, v13}, Lcom/anythink/core/b/a;->a(Lcom/anythink/core/b/a/b;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;Lcom/anythink/core/c/c$b;)V

    .line 233
    const/4 v9, 0x0

    invoke-virtual {v13}, Lcom/anythink/core/c/c$b;->a()J

    move-result-wide v10

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move v7, v3

    invoke-virtual/range {v5 .. v12}, Lcom/anythink/core/b/a;->a(Ljava/lang/String;ILcom/anythink/core/b/a/b;Ljava/util/List;JLcom/anythink/core/c/c;)Lcom/anythink/core/b/c/o;

    move-result-object v15

    .line 235
    invoke-virtual {v8}, Lcom/anythink/core/b/a/b;->getTrackingInfo()Lcom/anythink/core/b/c/b;

    move-result-object v4

    .line 237
    if-eqz p3, :cond_170

    .line 239
    const/4 v5, 0x1

    const/4 v6, -0x1

    iget-object v12, v13, Lcom/anythink/core/c/c$b;->q:Ljava/lang/String;

    iget v9, v13, Lcom/anythink/core/c/c$b;->b:I

    invoke-virtual {v8}, Lcom/anythink/core/b/a/b;->getSDKVersion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x1

    const-string v14, ""

    move v7, v3

    move-object v8, v12

    move-object/from16 v12, v21

    invoke-static/range {v4 .. v14}, Lcom/anythink/core/b/f/c;->a(Lcom/anythink/core/b/c/b;ZIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 242
    :cond_170
    invoke-virtual {v15}, Lcom/anythink/core/b/c/o;->a()Lcom/anythink/core/b/c/a;

    move-result-object v2

    monitor-exit p0

    goto/16 :goto_38

    .line 203
    :cond_177
    const/4 v4, 0x0

    goto/16 :goto_e5

    .line 223
    :cond_17a
    const/4 v4, 0x0

    goto :goto_133

    :catch_17c
    move-exception v4

    move v4, v5

    goto :goto_133

    .line 244
    :cond_17f
    iget-object v4, v13, Lcom/anythink/core/c/c$b;->q:Ljava/lang/String;

    iget v5, v13, Lcom/anythink/core/c/c$b;->b:I

    const-string v6, ""

    const/4 v7, 0x0

    const/4 v8, 0x4

    invoke-static/range {v2 .. v8}, Lcom/anythink/core/b/a;->a(Lorg/json/JSONArray;ILjava/lang/String;ILjava/lang/String;ZI)V

    goto/16 :goto_81

    .line 248
    :cond_18c
    iget-object v4, v13, Lcom/anythink/core/c/c$b;->q:Ljava/lang/String;

    iget v5, v13, Lcom/anythink/core/c/c$b;->b:I

    const-string v6, ""

    const/4 v7, 0x0

    const/4 v8, 0x4

    invoke-static/range {v2 .. v8}, Lcom/anythink/core/b/a;->a(Lorg/json/JSONArray;ILjava/lang/String;ILjava/lang/String;ZI)V

    goto/16 :goto_81

    .line 255
    :cond_199
    invoke-virtual {v4}, Lcom/anythink/core/b/c/o;->a()Lcom/anythink/core/b/c/a;

    move-result-object v15

    .line 256
    invoke-virtual {v12}, Lcom/anythink/core/c/c;->s()I

    move-result v4

    const-string v5, "0"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v4, v5, :cond_20d

    .line 257
    invoke-virtual {v15}, Lcom/anythink/core/b/c/a;->h()Lcom/anythink/core/b/a/b;

    move-result-object v4

    if-eqz v4, :cond_20b

    invoke-virtual {v15}, Lcom/anythink/core/b/c/a;->i()Lcom/anythink/core/b/c/e;

    move-result-object v4

    if-eqz v4, :cond_20b

    const/4 v4, 0x1

    .line 262
    :goto_1ba
    if-eqz v4, :cond_230

    .line 263
    invoke-virtual {v15}, Lcom/anythink/core/b/c/a;->g()J

    move-result-wide v4

    invoke-virtual {v15}, Lcom/anythink/core/b/c/a;->c()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_223

    .line 265
    invoke-virtual {v15}, Lcom/anythink/core/b/c/a;->h()Lcom/anythink/core/b/a/b;

    move-result-object v10

    .line 267
    iget-object v4, v13, Lcom/anythink/core/c/c$b;->q:Ljava/lang/String;

    iget v5, v13, Lcom/anythink/core/c/c$b;->b:I

    invoke-virtual {v10}, Lcom/anythink/core/b/a/b;->getSDKVersion()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, -0x1

    invoke-static/range {v2 .. v8}, Lcom/anythink/core/b/a;->a(Lorg/json/JSONArray;ILjava/lang/String;ILjava/lang/String;ZI)V

    .line 269
    invoke-virtual {v10}, Lcom/anythink/core/b/a/b;->getTrackingInfo()Lcom/anythink/core/b/c/b;

    move-result-object v4

    .line 270
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/anythink/core/b/c/b;->k(Ljava/lang/String;)V

    .line 271
    if-eqz p3, :cond_207

    .line 272
    const/4 v5, 0x1

    const/4 v6, -0x1

    iget-object v8, v13, Lcom/anythink/core/c/c$b;->q:Ljava/lang/String;

    iget v9, v13, Lcom/anythink/core/c/c$b;->b:I

    .line 273
    invoke-virtual {v10}, Lcom/anythink/core/b/a/b;->getSDKVersion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1354
    iget v2, v4, Lcom/anythink/core/b/c/b;->k:I

    .line 273
    const/4 v7, 0x3

    if-ne v2, v7, :cond_221

    const/4 v13, 0x1

    :goto_1ff
    const-string v14, ""

    move v7, v3

    move-object/from16 v12, v21

    .line 272
    invoke-static/range {v4 .. v14}, Lcom/anythink/core/b/f/c;->a(Lcom/anythink/core/b/c/b;ZIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 277
    :cond_207
    monitor-exit p0

    move-object v2, v15

    goto/16 :goto_38

    .line 257
    :cond_20b
    const/4 v4, 0x0

    goto :goto_1ba

    .line 259
    :cond_20d
    invoke-virtual {v15}, Lcom/anythink/core/b/c/a;->h()Lcom/anythink/core/b/a/b;

    move-result-object v4

    if-eqz v4, :cond_21f

    invoke-virtual {v15}, Lcom/anythink/core/b/c/a;->h()Lcom/anythink/core/b/a/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/anythink/core/b/a/b;->isAdReady()Z

    move-result v4

    if-eqz v4, :cond_21f

    const/4 v4, 0x1

    goto :goto_1ba

    :cond_21f
    const/4 v4, 0x0

    goto :goto_1ba

    .line 273
    :cond_221
    const/4 v13, 0x0

    goto :goto_1ff

    .line 279
    :cond_223
    iget-object v4, v13, Lcom/anythink/core/c/c$b;->q:Ljava/lang/String;

    iget v5, v13, Lcom/anythink/core/c/c$b;->b:I

    const-string v6, ""

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Lcom/anythink/core/b/a;->a(Lorg/json/JSONArray;ILjava/lang/String;ILjava/lang/String;ZI)V

    goto/16 :goto_81

    .line 283
    :cond_230
    iget-object v4, v13, Lcom/anythink/core/c/c$b;->q:Ljava/lang/String;

    iget v5, v13, Lcom/anythink/core/c/c$b;->b:I

    const-string v6, ""

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/anythink/core/b/a;->a(Lorg/json/JSONArray;ILjava/lang/String;ILjava/lang/String;ZI)V

    goto/16 :goto_81

    .line 290
    :cond_23d
    const/4 v3, 0x0

    .line 291
    invoke-virtual {v12}, Lcom/anythink/core/c/c;->j()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2f1

    .line 292
    const/4 v3, 0x1

    .line 298
    :cond_246
    :goto_246
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_303

    if-eqz v3, :cond_303

    .line 299
    invoke-static {}, Lcom/anythink/core/b/k;->a()Lcom/anythink/core/b/k;

    move-result-object v3

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v3, v0, v1}, Lcom/anythink/core/b/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 300
    const/4 v4, 0x0

    .line 302
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_27e

    .line 303
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_265
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/core/c/c$b;

    .line 304
    iget-object v7, v3, Lcom/anythink/core/c/c$b;->e:Ljava/lang/String;

    if-eqz v7, :cond_265

    iget-object v7, v3, Lcom/anythink/core/c/c$b;->e:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_265

    move-object v4, v3

    .line 311
    :cond_27e
    if-eqz v4, :cond_303

    .line 312
    invoke-virtual {v12}, Lcom/anythink/core/c/c;->l()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-static {v0, v4, v3}, Lcom/anythink/core/c/c;->a(Ljava/lang/String;Lcom/anythink/core/c/c$b;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 313
    const-string v5, "isDefaultOffer"

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_291
    .catchall {:try_start_135 .. :try_end_291} :catchall_b4

    .line 316
    :try_start_291
    invoke-static {v4}, Lcom/anythink/core/b/g/h;->a(Lcom/anythink/core/c/c$b;)Lcom/anythink/core/b/a/b;

    move-result-object v8

    .line 317
    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v8, v0, v3, v5}, Lcom/anythink/core/b/a/b;->initNetworkObjectByPlacementId(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/ATMediationSetting;)Z

    move-result v3

    .line 318
    if-eqz v3, :cond_2fc

    invoke-virtual {v8}, Lcom/anythink/core/b/a/b;->isAdReady()Z

    move-result v3

    .line 319
    :goto_2a2
    if-eqz v3, :cond_303

    .line 321
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2fe

    invoke-static/range {p1 .. p1}, Lcom/anythink/core/b/d;->b(Landroid/content/Context;)Ljava/lang/String;
    :try_end_2ad
    .catch Ljava/lang/Throwable; {:try_start_291 .. :try_end_2ad} :catch_300
    .catchall {:try_start_291 .. :try_end_2ad} :catchall_b4

    move-result-object v3

    .line 322
    :goto_2ae
    :try_start_2ae
    move-object/from16 v0, p2

    invoke-static {v8, v3, v0, v12, v4}, Lcom/anythink/core/b/a;->a(Lcom/anythink/core/b/a/b;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;Lcom/anythink/core/c/c$b;)V

    .line 323
    iget v7, v4, Lcom/anythink/core/c/c$b;->a:I

    const/4 v9, 0x0

    invoke-virtual {v4}, Lcom/anythink/core/c/c$b;->a()J

    move-result-wide v10

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    invoke-virtual/range {v5 .. v12}, Lcom/anythink/core/b/a;->a(Ljava/lang/String;ILcom/anythink/core/b/a/b;Ljava/util/List;JLcom/anythink/core/c/c;)Lcom/anythink/core/b/c/o;

    move-result-object v5

    .line 325
    invoke-virtual {v8}, Lcom/anythink/core/b/a/b;->getTrackingInfo()Lcom/anythink/core/b/c/b;

    move-result-object v13

    .line 2206
    const/4 v6, 0x1

    iput v6, v13, Lcom/anythink/core/b/c/b;->s:I

    .line 329
    if-eqz p3, :cond_2ea

    .line 330
    const/4 v14, 0x1

    const/4 v15, -0x1

    iget v0, v4, Lcom/anythink/core/c/c$b;->a:I

    move/from16 v16, v0

    iget-object v0, v4, Lcom/anythink/core/c/c$b;->q:Ljava/lang/String;

    move-object/from16 v17, v0

    iget v0, v4, Lcom/anythink/core/c/c$b;->b:I

    move/from16 v18, v0

    .line 331
    invoke-virtual {v8}, Lcom/anythink/core/b/a/b;->getSDKVersion()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v22, 0x1

    iget-object v0, v4, Lcom/anythink/core/c/c$b;->e:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 330
    invoke-static/range {v13 .. v23}, Lcom/anythink/core/b/f/c;->a(Lcom/anythink/core/b/c/b;ZIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 334
    :cond_2ea
    invoke-virtual {v5}, Lcom/anythink/core/b/c/o;->a()Lcom/anythink/core/b/c/a;
    :try_end_2ed
    .catch Ljava/lang/Throwable; {:try_start_2ae .. :try_end_2ed} :catch_339
    .catchall {:try_start_2ae .. :try_end_2ed} :catchall_b4

    move-result-object v2

    :try_start_2ee
    monitor-exit p0

    goto/16 :goto_38

    .line 293
    :cond_2f1
    invoke-virtual {v12}, Lcom/anythink/core/c/c;->j()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_246

    move/from16 v3, p4

    .line 294
    goto/16 :goto_246

    .line 318
    :cond_2fc
    const/4 v3, 0x0

    goto :goto_2a2

    :cond_2fe
    move-object v3, v10

    .line 321
    goto :goto_2ae

    :catch_300
    move-exception v3

    move-object v3, v10

    :goto_302
    move-object v10, v3

    .line 343
    :cond_303
    if-eqz p3, :cond_335

    .line 345
    invoke-virtual {v12}, Lcom/anythink/core/c/c;->s()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-static {v3, v10, v0, v12, v4}, Lcom/anythink/core/b/g/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;I)Lcom/anythink/core/b/c/b;

    move-result-object v13

    .line 346
    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, -0x1

    const-string v17, ""

    const/16 v18, -0x1

    const-string v19, ""

    .line 347
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v22, 0x0

    const-string v23, ""

    .line 346
    invoke-static/range {v13 .. v23}, Lcom/anythink/core/b/f/c;->a(Lcom/anythink/core/b/c/b;ZIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 348
    if-eqz p4, :cond_335

    .line 349
    const/4 v3, 0x1

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-static {v13, v3, v2, v0}, Lcom/anythink/core/b/f/c;->a(Lcom/anythink/core/b/c/b;ILjava/lang/String;Ljava/lang/String;)V

    .line 354
    :cond_335
    const/4 v2, 0x0

    monitor-exit p0
    :try_end_337
    .catchall {:try_start_2ee .. :try_end_337} :catchall_b4

    goto/16 :goto_38

    :catch_339
    move-exception v4

    goto :goto_302

    :catch_33b
    move-exception v2

    goto/16 :goto_d
.end method

.method public final a(Ljava/lang/String;)Lcom/anythink/core/b/c/a;
    .registers 4

    .prologue
    .line 412
    monitor-enter p0

    .line 413
    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/b/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 415
    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-lez v1, :cond_3f

    .line 416
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    if-eqz v1, :cond_3f

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_3f

    .line 417
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/b/c/o;

    .line 418
    if-eqz v0, :cond_29

    .line 419
    invoke-virtual {v0}, Lcom/anythink/core/b/c/o;->b()Lcom/anythink/core/b/c/a;

    move-result-object v0

    .line 420
    if-eqz v0, :cond_29

    .line 421
    monitor-exit p0

    .line 427
    :goto_3e
    return-object v0

    :cond_3f
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_3e

    .line 428
    :catchall_42
    move-exception v0

    monitor-exit p0
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_42

    throw v0
.end method

.method public final a(Ljava/lang/String;ILcom/anythink/core/b/a/b;Ljava/util/List;JLcom/anythink/core/c/c;)Lcom/anythink/core/b/c/o;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/anythink/core/b/a/b;",
            "Ljava/util/List",
            "<+",
            "Lcom/anythink/core/b/c/e;",
            ">;J",
            "Lcom/anythink/core/c/c;",
            ")",
            "Lcom/anythink/core/b/c/o;"
        }
    .end annotation

    .prologue
    .line 67
    monitor-enter p0

    .line 69
    :try_start_1
    iget-object v2, p0, Lcom/anythink/core/b/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 70
    invoke-virtual {p3}, Lcom/anythink/core/b/a/b;->getmUnitgroupInfo()Lcom/anythink/core/c/c$b;

    move-result-object v4

    .line 72
    invoke-virtual {p3}, Lcom/anythink/core/b/a/b;->getmUnitgroupInfo()Lcom/anythink/core/c/c$b;

    move-result-object v3

    iget-object v5, v3, Lcom/anythink/core/c/c$b;->q:Ljava/lang/String;

    .line 73
    if-nez v2, :cond_c4

    .line 74
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 75
    iget-object v3, p0, Lcom/anythink/core/b/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v2

    .line 79
    :goto_20
    invoke-virtual {v3, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/core/b/c/o;

    .line 81
    if-nez v2, :cond_8a

    .line 82
    new-instance v2, Lcom/anythink/core/b/c/o;

    invoke-direct {v2}, Lcom/anythink/core/b/c/o;-><init>()V

    .line 83
    iput p2, v2, Lcom/anythink/core/b/c/o;->a:I

    .line 84
    invoke-virtual {p3}, Lcom/anythink/core/b/a/b;->getTrackingInfo()Lcom/anythink/core/b/c/b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/anythink/core/b/c/b;->E()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/anythink/core/b/c/o;->b:Ljava/lang/String;

    .line 85
    move-object/from16 v0, p7

    iput-object v0, v2, Lcom/anythink/core/b/c/o;->c:Lcom/anythink/core/c/c;

    .line 86
    invoke-virtual {v3, v5, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v2

    .line 92
    :goto_41
    if-eqz p4, :cond_98

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_98

    .line 93
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/core/b/c/e;

    .line 94
    new-instance v6, Lcom/anythink/core/b/c/a;

    invoke-direct {v6}, Lcom/anythink/core/b/c/a;-><init>()V

    .line 95
    invoke-virtual {v6, p2}, Lcom/anythink/core/b/c/a;->b(I)V

    .line 96
    invoke-virtual {v6, p3}, Lcom/anythink/core/b/c/a;->a(Lcom/anythink/core/b/a/b;)V

    .line 97
    invoke-virtual {v6, v2}, Lcom/anythink/core/b/c/a;->a(Lcom/anythink/core/b/c/e;)V

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/anythink/core/b/c/a;->c(J)V

    .line 99
    move-wide/from16 v0, p5

    invoke-virtual {v6, v0, v1}, Lcom/anythink/core/b/c/a;->b(J)V

    .line 100
    invoke-virtual {p3}, Lcom/anythink/core/b/a/b;->getTrackingInfo()Lcom/anythink/core/b/c/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/b/c/b;->E()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/anythink/core/b/c/a;->a(Ljava/lang/String;)V

    .line 101
    iget-wide v8, v4, Lcom/anythink/core/c/c$b;->s:J

    invoke-virtual {v6, v8, v9}, Lcom/anythink/core/b/c/a;->a(J)V

    .line 102
    invoke-virtual {v3, v6}, Lcom/anythink/core/b/c/o;->a(Lcom/anythink/core/b/c/a;)V

    goto :goto_4d

    .line 119
    :catchall_87
    move-exception v2

    monitor-exit p0
    :try_end_89
    .catchall {:try_start_1 .. :try_end_89} :catchall_87

    throw v2

    .line 88
    :cond_8a
    :try_start_8a
    iput p2, v2, Lcom/anythink/core/b/c/o;->a:I

    .line 89
    invoke-virtual {p3}, Lcom/anythink/core/b/a/b;->getTrackingInfo()Lcom/anythink/core/b/c/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/b/c/b;->E()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/anythink/core/b/c/o;->b:Ljava/lang/String;

    move-object v3, v2

    goto :goto_41

    .line 105
    :cond_98
    new-instance v2, Lcom/anythink/core/b/c/a;

    invoke-direct {v2}, Lcom/anythink/core/b/c/a;-><init>()V

    .line 106
    invoke-virtual {v2, p2}, Lcom/anythink/core/b/c/a;->b(I)V

    .line 107
    invoke-virtual {v2, p3}, Lcom/anythink/core/b/c/a;->a(Lcom/anythink/core/b/a/b;)V

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/anythink/core/b/c/a;->c(J)V

    .line 109
    move-wide/from16 v0, p5

    invoke-virtual {v2, v0, v1}, Lcom/anythink/core/b/c/a;->b(J)V

    .line 110
    invoke-virtual {p3}, Lcom/anythink/core/b/a/b;->getTrackingInfo()Lcom/anythink/core/b/c/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/anythink/core/b/c/b;->E()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/anythink/core/b/c/a;->a(Ljava/lang/String;)V

    .line 111
    iget-wide v4, v4, Lcom/anythink/core/c/c$b;->s:J

    invoke-virtual {v2, v4, v5}, Lcom/anythink/core/b/c/a;->a(J)V

    .line 113
    invoke-virtual {v3, v2}, Lcom/anythink/core/b/c/o;->a(Lcom/anythink/core/b/c/a;)V

    .line 116
    :cond_c2
    monitor-exit p0
    :try_end_c3
    .catchall {:try_start_8a .. :try_end_c3} :catchall_87

    return-object v3

    :cond_c4
    move-object v3, v2

    goto/16 :goto_20
.end method

.method public final a(Landroid/content/Context;Lcom/anythink/core/b/c/a;)V
    .registers 6

    .prologue
    .line 476
    monitor-enter p0

    .line 477
    :try_start_1
    invoke-virtual {p2}, Lcom/anythink/core/b/c/a;->h()Lcom/anythink/core/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/b;->getTrackingInfo()Lcom/anythink/core/b/c/b;

    move-result-object v0

    .line 479
    if-eqz v0, :cond_17

    .line 482
    invoke-static {}, Lcom/anythink/core/b/g/a/a;->a()Lcom/anythink/core/b/g/a/a;

    move-result-object v1

    new-instance v2, Lcom/anythink/core/b/a$1;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/anythink/core/b/a$1;-><init>(Lcom/anythink/core/b/a;Landroid/content/Context;Lcom/anythink/core/b/c/b;Lcom/anythink/core/b/c/a;)V

    invoke-virtual {v1, v2}, Lcom/anythink/core/b/g/a/a;->a(Ljava/lang/Runnable;)V

    .line 500
    :cond_17
    monitor-exit p0

    return-void

    :catchall_19
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 442
    monitor-enter p0

    .line 443
    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/b/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 444
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-lez v1, :cond_1c

    .line 445
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/b/c/o;

    .line 446
    if-eqz v0, :cond_1c

    .line 447
    invoke-virtual {v0}, Lcom/anythink/core/b/c/o;->c()V

    .line 450
    :cond_1c
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public final declared-synchronized a(Ljava/util/List;Ljava/lang/String;Lcom/anythink/core/c/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/anythink/core/c/c$b;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/anythink/core/c/c;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 522
    monitor-enter p0

    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_5
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/anythink/core/c/c$b;

    move-object v9, v0

    .line 523
    iget-object v2, p0, Lcom/anythink/core/b/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 524
    if-eqz v2, :cond_5

    .line 525
    iget-object v3, v9, Lcom/anythink/core/c/c$b;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/anythink/core/b/c/o;

    move-object v10, v0

    .line 527
    if-eqz v10, :cond_5

    .line 531
    invoke-virtual {v10}, Lcom/anythink/core/b/c/o;->a()Lcom/anythink/core/b/c/a;

    move-result-object v12

    .line 533
    if-eqz v12, :cond_de

    .line 534
    invoke-virtual {v12}, Lcom/anythink/core/b/c/a;->g()J

    move-result-wide v4

    invoke-virtual {v12}, Lcom/anythink/core/b/c/a;->c()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_de

    .line 536
    invoke-virtual {v12}, Lcom/anythink/core/b/c/a;->b()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 540
    invoke-virtual {v12}, Lcom/anythink/core/b/c/a;->a()Z

    move-result v3

    if-eqz v3, :cond_de

    invoke-virtual {v12}, Lcom/anythink/core/b/c/a;->j()Z

    move-result v3

    if-eqz v3, :cond_de

    .line 543
    invoke-virtual/range {p3 .. p3}, Lcom/anythink/core/c/c;->v()I

    move-result v7

    move-object/from16 v2, p4

    move-object v3, p2

    move-object/from16 v4, p5

    move-object/from16 v5, p3

    move-object/from16 v6, p6

    move/from16 v8, p7

    .line 542
    invoke-static/range {v2 .. v8}, Lcom/anythink/core/b/g/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;Ljava/lang/String;IZ)Lcom/anythink/core/b/c/b;

    move-result-object v3

    .line 546
    invoke-virtual {v12}, Lcom/anythink/core/b/c/a;->h()Lcom/anythink/core/b/a/b;

    move-result-object v2

    invoke-static {v2, v3, v9}, Lcom/anythink/core/b/g/m;->a(Lcom/anythink/core/b/a/b;Lcom/anythink/core/b/c/b;Lcom/anythink/core/c/c$b;)Lcom/anythink/core/b/c/b;

    .line 3350
    const/4 v2, 0x4

    iput v2, v3, Lcom/anythink/core/b/c/b;->k:I

    .line 550
    invoke-virtual {v12}, Lcom/anythink/core/b/c/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/anythink/core/b/f/c;->b(Lcom/anythink/core/b/c/b;Ljava/lang/String;)V

    .line 4070
    monitor-enter v10
    :try_end_7d
    .catchall {:try_start_1 .. :try_end_7d} :catchall_d6

    .line 4071
    :try_start_7d
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4072
    iget v2, v9, Lcom/anythink/core/c/c$b;->a:I

    iput v2, v10, Lcom/anythink/core/b/c/o;->a:I

    .line 4073
    invoke-virtual {v3}, Lcom/anythink/core/b/c/b;->E()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcom/anythink/core/b/c/o;->b:Ljava/lang/String;

    .line 4074
    move-object/from16 v0, p3

    iput-object v0, v10, Lcom/anythink/core/b/c/o;->c:Lcom/anythink/core/c/c;

    .line 4075
    iget-object v2, v10, Lcom/anythink/core/b/c/o;->d:Ljava/util/List;

    if-eqz v2, :cond_d9

    .line 4077
    iget-object v2, v10, Lcom/anythink/core/b/c/o;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9a
    :goto_9a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/core/b/c/a;

    .line 4079
    invoke-virtual {v2}, Lcom/anythink/core/b/c/a;->a()Z

    move-result v6

    if-eqz v6, :cond_9a

    invoke-virtual {v2}, Lcom/anythink/core/b/c/a;->g()J

    move-result-wide v6

    invoke-virtual {v2}, Lcom/anythink/core/b/c/a;->c()J

    move-result-wide v8

    add-long/2addr v6, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_9a

    invoke-virtual {v2}, Lcom/anythink/core/b/c/a;->j()Z

    move-result v6

    if-eqz v6, :cond_9a

    .line 4081
    invoke-virtual {v2}, Lcom/anythink/core/b/c/a;->h()Lcom/anythink/core/b/a/b;

    move-result-object v6

    .line 4083
    invoke-virtual {v6, v3}, Lcom/anythink/core/b/a/b;->setTrackingInfo(Lcom/anythink/core/b/c/b;)V

    .line 4084
    iget v6, v10, Lcom/anythink/core/b/c/o;->a:I

    invoke-virtual {v2, v6}, Lcom/anythink/core/b/c/a;->b(I)V

    .line 4085
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9a

    .line 4091
    :catchall_d3
    move-exception v2

    monitor-exit v10
    :try_end_d5
    .catchall {:try_start_7d .. :try_end_d5} :catchall_d3

    :try_start_d5
    throw v2
    :try_end_d6
    .catchall {:try_start_d5 .. :try_end_d6} :catchall_d6

    .line 522
    :catchall_d6
    move-exception v2

    monitor-exit p0

    throw v2

    .line 4090
    :cond_d9
    :try_start_d9
    iput-object v4, v10, Lcom/anythink/core/b/c/o;->d:Ljava/util/List;

    .line 4091
    monitor-exit v10
    :try_end_dc
    .catchall {:try_start_d9 .. :try_end_dc} :catchall_d3

    goto/16 :goto_5

    .line 558
    :cond_de
    :try_start_de
    iget-object v3, v9, Lcom/anythink/core/c/c$b;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e3
    .catchall {:try_start_de .. :try_end_e3} :catchall_d6

    goto/16 :goto_5

    .line 562
    :cond_e5
    monitor-exit p0

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/b/c/o;
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 505
    iget-object v0, p0, Lcom/anythink/core/b/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 506
    if-eqz v0, :cond_2f

    .line 507
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/b/c/o;

    .line 508
    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Lcom/anythink/core/b/c/o;->a()Lcom/anythink/core/b/c/a;

    move-result-object v2

    .line 509
    :goto_17
    if-eqz v2, :cond_2d

    invoke-virtual {v2}, Lcom/anythink/core/b/c/a;->g()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/anythink/core/b/c/a;->c()J

    move-result-wide v2

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_2d

    .line 514
    :goto_2a
    return-object v0

    :cond_2b
    move-object v2, v1

    .line 508
    goto :goto_17

    :cond_2d
    move-object v0, v1

    .line 512
    goto :goto_2a

    :cond_2f
    move-object v0, v1

    .line 514
    goto :goto_2a
.end method

.method public final b(Ljava/lang/String;)Lcom/anythink/core/c/c;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 458
    iget-object v0, p0, Lcom/anythink/core/b/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 459
    if-eqz v0, :cond_28

    .line 460
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 461
    if-eqz v0, :cond_28

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    if-lez v2, :cond_28

    .line 462
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/b/c/o;

    .line 463
    if-eqz v0, :cond_26

    iget-object v0, v0, Lcom/anythink/core/b/c/o;->c:Lcom/anythink/core/c/c;

    .line 466
    :goto_25
    return-object v0

    :cond_26
    move-object v0, v1

    .line 463
    goto :goto_25

    :cond_28
    move-object v0, v1

    .line 466
    goto :goto_25
.end method
