.class public final Lcom/anythink/core/common/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/anythink/core/common/a;


# instance fields
.field private b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/common/d/ab;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 4

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/common/a;->c:Ljava/util/HashMap;

    .line 60
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/anythink/core/common/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 61
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    return-void
.end method

.method public static declared-synchronized a()Lcom/anythink/core/common/a;
    .registers 2

    const-class v0, Lcom/anythink/core/common/a;

    monitor-enter v0

    .line 53
    :try_start_3
    sget-object v1, Lcom/anythink/core/common/a;->a:Lcom/anythink/core/common/a;

    if-nez v1, :cond_e

    .line 54
    new-instance v1, Lcom/anythink/core/common/a;

    invoke-direct {v1}, Lcom/anythink/core/common/a;-><init>()V

    sput-object v1, Lcom/anythink/core/common/a;->a:Lcom/anythink/core/common/a;

    .line 56
    :cond_e
    sget-object v1, Lcom/anythink/core/common/a;->a:Lcom/anythink/core/common/a;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 52
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static a(Lcom/anythink/core/api/ATBaseAdAdapter;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;Lcom/anythink/core/c/c$b;I)V
    .registers 14

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p4, Lcom/anythink/core/c/c$b;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v3, ""

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-static/range {v1 .. v7}, Lcom/anythink/core/common/g/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;Ljava/lang/String;IZ)Lcom/anythink/core/common/d/d;

    move-result-object p1

    .line 463
    invoke-static {p0, p1, p4, p5}, Lcom/anythink/core/common/g/n;->a(Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/common/d/d;Lcom/anythink/core/c/c$b;I)Lcom/anythink/core/common/d/d;

    .line 464
    nop

    .line 2405
    const/4 p2, 0x3

    iput p2, p1, Lcom/anythink/core/common/d/d;->m:I

    .line 466
    invoke-virtual {p0}, Lcom/anythink/core/api/ATBaseAdAdapter;->getNetworkPlacementId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/anythink/core/common/d/d;->c(Ljava/lang/String;)V

    .line 467
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/anythink/core/api/ATBaseAdAdapter;->setRefresh(Z)V

    .line 468
    return-void
.end method

.method private static a(Lorg/json/JSONArray;ILjava/lang/String;ILjava/lang/String;ZI)V
    .registers 9

    .line 471
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 473
    :try_start_5
    const-string v1, "priority"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 474
    const-string p1, "unit_id"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 475
    const-string p1, "nw_firm_id"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 476
    const-string p1, "nw_ver"

    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 477
    const-string p1, "result"

    if-eqz p5, :cond_1f

    const/4 p2, 0x1

    goto :goto_20

    :cond_1f
    const/4 p2, 0x0

    :goto_20
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 478
    const/4 p1, -0x1

    if-eq p6, p1, :cond_2b

    .line 479
    const-string p1, "reason"

    invoke-virtual {v0, p1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2b} :catch_2c

    .line 484
    :cond_2b
    goto :goto_30

    .line 483
    :catch_2c
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 486
    :goto_30
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 487
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;ILcom/anythink/core/api/ATBaseAdAdapter;Ljava/util/List;J)Lcom/anythink/core/common/d/ab;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/anythink/core/api/ATBaseAdAdapter;",
            "Ljava/util/List<",
            "+",
            "Lcom/anythink/core/api/BaseAd;",
            ">;J)",
            "Lcom/anythink/core/common/d/ab;"
        }
    .end annotation

    .line 76
    monitor-enter p0

    .line 78
    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/common/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 79
    invoke-virtual {p3}, Lcom/anythink/core/api/ATBaseAdAdapter;->getmUnitgroupInfo()Lcom/anythink/core/c/c$b;

    move-result-object v1

    .line 81
    invoke-virtual {p3}, Lcom/anythink/core/api/ATBaseAdAdapter;->getmUnitgroupInfo()Lcom/anythink/core/c/c$b;

    move-result-object v2

    iget-object v2, v2, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    .line 82
    if-nez v0, :cond_1f

    .line 83
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 84
    iget-object v3, p0, Lcom/anythink/core/common/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_1f
    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/core/common/d/ab;

    .line 90
    if-nez v3, :cond_3c

    .line 91
    new-instance v3, Lcom/anythink/core/common/d/ab;

    invoke-direct {v3}, Lcom/anythink/core/common/d/ab;-><init>()V

    .line 92
    iput p2, v3, Lcom/anythink/core/common/d/ab;->a:I

    .line 93
    invoke-virtual {p3}, Lcom/anythink/core/api/ATBaseAdAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/anythink/core/common/d/d;->F()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/anythink/core/common/d/ab;->b:Ljava/lang/String;

    .line 94
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_48

    .line 96
    :cond_3c
    iput p2, v3, Lcom/anythink/core/common/d/ab;->a:I

    .line 97
    invoke-virtual {p3}, Lcom/anythink/core/api/ATBaseAdAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/d/d;->F()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/anythink/core/common/d/ab;->b:Ljava/lang/String;

    .line 100
    :goto_48
    invoke-virtual {v3}, Lcom/anythink/core/common/d/ab;->a()Lcom/anythink/core/common/d/b;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_6a

    invoke-static {}, Lcom/anythink/core/common/p;->a()Lcom/anythink/core/common/p;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/anythink/core/common/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/anythink/core/common/d/b;->g()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/api/ATBaseAdAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/d/d;->F()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6a

    .line 103
    monitor-exit p0

    return-object v3

    .line 106
    :cond_6a
    if-eqz p4, :cond_b7

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_b7

    .line 107
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 108
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_7b
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b3

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/api/BaseAd;

    .line 109
    new-instance v2, Lcom/anythink/core/common/d/b;

    invoke-direct {v2}, Lcom/anythink/core/common/d/b;-><init>()V

    .line 110
    invoke-virtual {v2, p2}, Lcom/anythink/core/common/d/b;->b(I)V

    .line 111
    invoke-virtual {v2, p3}, Lcom/anythink/core/common/d/b;->a(Lcom/anythink/core/api/ATBaseAdAdapter;)V

    .line 112
    invoke-virtual {v2, v0}, Lcom/anythink/core/common/d/b;->a(Lcom/anythink/core/api/BaseAd;)V

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/anythink/core/common/d/b;->c(J)V

    .line 114
    invoke-virtual {v2, p5, p6}, Lcom/anythink/core/common/d/b;->b(J)V

    .line 115
    invoke-virtual {p3}, Lcom/anythink/core/api/ATBaseAdAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/d/d;->F()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/anythink/core/common/d/b;->a(Ljava/lang/String;)V

    .line 116
    iget-wide v4, v1, Lcom/anythink/core/c/c$b;->v:J

    invoke-virtual {v2, v4, v5}, Lcom/anythink/core/common/d/b;->a(J)V

    .line 118
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    goto :goto_7b

    .line 120
    :cond_b3
    invoke-virtual {v3, p1}, Lcom/anythink/core/common/d/ab;->a(Ljava/util/List;)V

    .line 121
    goto :goto_e7

    .line 122
    :cond_b7
    new-instance p1, Lcom/anythink/core/common/d/b;

    invoke-direct {p1}, Lcom/anythink/core/common/d/b;-><init>()V

    .line 123
    invoke-virtual {p1, p2}, Lcom/anythink/core/common/d/b;->b(I)V

    .line 124
    invoke-virtual {p1, p3}, Lcom/anythink/core/common/d/b;->a(Lcom/anythink/core/api/ATBaseAdAdapter;)V

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/anythink/core/common/d/b;->c(J)V

    .line 126
    invoke-virtual {p1, p5, p6}, Lcom/anythink/core/common/d/b;->b(J)V

    .line 127
    invoke-virtual {p3}, Lcom/anythink/core/api/ATBaseAdAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/anythink/core/common/d/d;->F()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/anythink/core/common/d/b;->a(Ljava/lang/String;)V

    .line 128
    iget-wide p2, v1, Lcom/anythink/core/c/c$b;->v:J

    invoke-virtual {p1, p2, p3}, Lcom/anythink/core/common/d/b;->a(J)V

    .line 130
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 131
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-virtual {v3, p2}, Lcom/anythink/core/common/d/ab;->a(Ljava/util/List;)V

    .line 135
    :goto_e7
    monitor-exit p0

    return-object v3

    .line 138
    :catchall_e9
    move-exception p1

    monitor-exit p0
    :try_end_eb
    .catchall {:try_start_1 .. :try_end_eb} :catchall_e9

    throw p1
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/core/c/c$b;)Lcom/anythink/core/common/d/ab;
    .registers 9

    .line 624
    iget v0, p2, Lcom/anythink/core/c/c$b;->b:I

    const/4 v1, 0x0

    const/16 v2, 0x42

    if-ne v0, v2, :cond_1c

    .line 625
    invoke-static {}, Lcom/anythink/core/b/e;->a()Lcom/anythink/core/b/e;

    move-result-object v0

    iget-object v2, p2, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    iget v3, p2, Lcom/anythink/core/c/c$b;->b:I

    invoke-virtual {v0, v2, v3}, Lcom/anythink/core/b/e;->b(Ljava/lang/String;I)Lcom/anythink/core/common/d/l;

    move-result-object v0

    .line 626
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/anythink/core/common/d/l;->a()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 627
    :cond_1b
    return-object v1

    .line 630
    :cond_1c
    iget-object v0, p0, Lcom/anythink/core/common/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 631
    if-eqz p1, :cond_4b

    .line 632
    iget-object p2, p2, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/core/common/d/ab;

    .line 633
    if-eqz p1, :cond_35

    invoke-virtual {p1}, Lcom/anythink/core/common/d/ab;->a()Lcom/anythink/core/common/d/b;

    move-result-object p2

    goto :goto_36

    :cond_35
    move-object p2, v1

    .line 634
    :goto_36
    if-eqz p2, :cond_4a

    invoke-virtual {p2}, Lcom/anythink/core/common/d/b;->f()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/anythink/core/common/d/b;->c()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long p2, v2, v4

    if-lez p2, :cond_4a

    .line 635
    return-object p1

    .line 637
    :cond_4a
    return-object v1

    .line 639
    :cond_4b
    return-object v1
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)Lcom/anythink/core/common/d/b;
    .registers 4

    .line 149
    monitor-enter p0

    .line 150
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/anythink/core/common/a;->a(Landroid/content/Context;Ljava/lang/String;ZZ)Lcom/anythink/core/common/d/b;

    move-result-object p1

    monitor-exit p0

    return-object p1

    .line 151
    :catchall_8
    move-exception p1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;ZZ)Lcom/anythink/core/common/d/b;
    .registers 36

    move-object/from16 v8, p0

    move-object/from16 v1, p1

    move-object/from16 v9, p2

    .line 164
    :try_start_6
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v0, v2, :cond_13

    .line 165
    invoke-static {}, Landroid/os/Looper;->prepare()V
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_14

    .line 168
    :cond_13
    goto :goto_15

    .line 167
    :catchall_14
    move-exception v0

    .line 170
    :goto_15
    new-instance v17, Lorg/json/JSONArray;

    invoke-direct/range {v17 .. v17}, Lorg/json/JSONArray;-><init>()V

    .line 171
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 173
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 174
    monitor-enter p0

    .line 175
    :try_start_25
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/c/d;->a(Landroid/content/Context;)Lcom/anythink/core/c/d;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/anythink/core/c/d;->a(Ljava/lang/String;)Lcom/anythink/core/c/c;

    move-result-object v5

    .line 177
    const/16 v18, 0x0

    if-nez v5, :cond_3b

    .line 178
    monitor-exit p0

    return-object v18

    .line 181
    :cond_3b
    invoke-static {}, Lcom/anythink/core/common/p;->a()Lcom/anythink/core/common/p;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/anythink/core/common/p;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 182
    invoke-static {}, Lcom/anythink/core/common/p;->a()Lcom/anythink/core/common/p;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/anythink/core/common/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 183
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-static/range {p1 .. p1}, Lcom/anythink/core/common/g/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    :cond_55
    move-object v4, v2

    .line 185
    if-eqz v0, :cond_5b

    .line 186
    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 189
    :cond_5b
    iget-object v0, v8, Lcom/anythink/core/common/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap;

    .line 194
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->l()Ljava/lang/String;

    .line 195
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/anythink/core/common/b/g;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 198
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    const/4 v15, 0x0

    if-lez v0, :cond_394

    .line 201
    move v14, v15

    :goto_7b
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v14, v0, :cond_38c

    .line 202
    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/anythink/core/c/c$b;

    .line 203
    iget v0, v13, Lcom/anythink/core/c/c$b;->b:I

    const/16 v10, 0x23

    if-ne v0, v10, :cond_91

    .line 204
    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    :cond_91
    iget v0, v13, Lcom/anythink/core/c/c$b;->a:I

    if-gez v0, :cond_99

    iget v0, v13, Lcom/anythink/core/c/c$b;->a:I

    move v12, v0

    goto :goto_9a

    :cond_99
    move v12, v14

    .line 209
    :goto_9a
    invoke-static {}, Lcom/anythink/core/a/c;->a()Lcom/anythink/core/a/c;

    move-result-object v0

    invoke-virtual {v0, v9, v13}, Lcom/anythink/core/a/c;->a(Ljava/lang/String;Lcom/anythink/core/c/c$b;)Z

    move-result v0

    if-eqz v0, :cond_c8

    .line 210
    iget-object v0, v13, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    iget v13, v13, Lcom/anythink/core/c/c$b;->b:I

    const-string v16, ""

    const/16 v19, 0x0

    const/16 v20, 0x3

    move-object/from16 v10, v17

    move v11, v12

    move-object v12, v0

    move/from16 v21, v14

    move-object/from16 v14, v16

    move/from16 v15, v19

    move/from16 v16, v20

    invoke-static/range {v10 .. v16}, Lcom/anythink/core/common/a;->a(Lorg/json/JSONArray;ILjava/lang/String;ILjava/lang/String;ZI)V

    .line 212
    move-object/from16 v19, v3

    move-object/from16 v30, v6

    move-object/from16 v20, v7

    move-object v6, v4

    move-object v7, v5

    move v5, v2

    goto/16 :goto_37e

    .line 215
    :cond_c8
    move/from16 v21, v14

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/a/a;->a(Landroid/content/Context;)Lcom/anythink/core/a/a;

    move-result-object v0

    invoke-virtual {v0, v9, v13}, Lcom/anythink/core/a/a;->a(Ljava/lang/String;Lcom/anythink/core/c/c$b;)Z

    move-result v0

    if-eqz v0, :cond_f7

    .line 216
    iget-object v0, v13, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    iget v13, v13, Lcom/anythink/core/c/c$b;->b:I

    const-string v14, ""

    const/4 v15, 0x0

    const/16 v16, 0x2

    move-object/from16 v10, v17

    move v11, v12

    move-object v12, v0

    invoke-static/range {v10 .. v16}, Lcom/anythink/core/common/a;->a(Lorg/json/JSONArray;ILjava/lang/String;ILjava/lang/String;ZI)V

    .line 217
    move-object/from16 v19, v3

    move-object/from16 v30, v6

    move-object/from16 v20, v7

    move-object v6, v4

    move-object v7, v5

    move v5, v2

    goto/16 :goto_37e

    .line 221
    :cond_f7
    nop

    .line 224
    iget v0, v13, Lcom/anythink/core/c/c$b;->b:I

    const/16 v10, 0x42

    if-ne v0, v10, :cond_12d

    .line 225
    invoke-static {}, Lcom/anythink/core/b/e;->a()Lcom/anythink/core/b/e;

    move-result-object v0

    iget-object v10, v13, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    iget v11, v13, Lcom/anythink/core/c/c$b;->b:I

    invoke-virtual {v0, v10, v11}, Lcom/anythink/core/b/e;->b(Ljava/lang/String;I)Lcom/anythink/core/common/d/l;

    move-result-object v0

    .line 226
    if-eqz v0, :cond_112

    invoke-virtual {v0}, Lcom/anythink/core/common/d/l;->a()Z

    move-result v0

    if-eqz v0, :cond_12d

    .line 227
    :cond_112
    iget-object v0, v13, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    iget v13, v13, Lcom/anythink/core/c/c$b;->b:I

    const-string v14, ""

    const/4 v15, 0x0

    const/16 v16, 0x5

    move-object/from16 v10, v17

    move v11, v12

    move-object v12, v0

    invoke-static/range {v10 .. v16}, Lcom/anythink/core/common/a;->a(Lorg/json/JSONArray;ILjava/lang/String;ILjava/lang/String;ZI)V

    .line 228
    move-object/from16 v19, v3

    move-object/from16 v30, v6

    move-object/from16 v20, v7

    move-object v6, v4

    move-object v7, v5

    move v5, v2

    goto/16 :goto_37e

    .line 232
    :cond_12d
    if-eqz v3, :cond_138

    .line 233
    iget-object v0, v13, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/d/ab;

    goto :goto_13a

    :cond_138
    move-object/from16 v0, v18

    .line 235
    :goto_13a
    if-eqz v0, :cond_143

    invoke-virtual {v0}, Lcom/anythink/core/common/d/ab;->a()Lcom/anythink/core/common/d/b;

    move-result-object v10

    move-object/from16 v16, v10

    goto :goto_145

    :cond_143
    move-object/from16 v16, v18

    .line 237
    :goto_145
    if-eqz v0, :cond_220

    if-nez v16, :cond_14d

    move v14, v12

    move-object v10, v13

    goto/16 :goto_222

    .line 318
    :cond_14d
    invoke-virtual {v5}, Lcom/anythink/core/c/c;->y()I

    move-result v0

    const-string v10, "0"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v0, v10, :cond_16d

    .line 319
    invoke-virtual/range {v16 .. v16}, Lcom/anythink/core/common/d/b;->g()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v0

    if-eqz v0, :cond_16b

    invoke-virtual/range {v16 .. v16}, Lcom/anythink/core/common/d/b;->h()Lcom/anythink/core/api/BaseAd;

    move-result-object v0

    if-eqz v0, :cond_16b

    move v15, v2

    goto :goto_180

    :cond_16b
    const/4 v15, 0x0

    goto :goto_180

    .line 321
    :cond_16d
    invoke-virtual/range {v16 .. v16}, Lcom/anythink/core/common/d/b;->g()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v0

    if-eqz v0, :cond_17f

    invoke-virtual/range {v16 .. v16}, Lcom/anythink/core/common/d/b;->g()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/api/ATBaseAdAdapter;->isAdReady()Z

    move-result v0

    if-eqz v0, :cond_17f

    move v15, v2

    goto :goto_180

    :cond_17f
    const/4 v15, 0x0

    .line 324
    :goto_180
    if-eqz v15, :cond_203

    .line 326
    invoke-virtual/range {v16 .. v16}, Lcom/anythink/core/common/d/b;->f()J

    move-result-wide v10

    invoke-virtual/range {v16 .. v16}, Lcom/anythink/core/common/d/b;->c()J

    move-result-wide v14

    add-long/2addr v10, v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    cmp-long v0, v10, v14

    if-lez v0, :cond_1e6

    .line 328
    invoke-virtual/range {v16 .. v16}, Lcom/anythink/core/common/d/b;->g()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v0

    .line 330
    iget-object v11, v13, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    iget v1, v13, Lcom/anythink/core/c/c$b;->b:I

    invoke-virtual {v0}, Lcom/anythink/core/api/ATBaseAdAdapter;->getNetworkSDKVersion()Ljava/lang/String;

    move-result-object v3

    const/4 v14, 0x1

    const/4 v15, -0x1

    move-object/from16 v9, v17

    move v10, v12

    move v5, v12

    move v12, v1

    move-object v1, v13

    move-object v13, v3

    invoke-static/range {v9 .. v15}, Lcom/anythink/core/common/a;->a(Lorg/json/JSONArray;ILjava/lang/String;ILjava/lang/String;ZI)V

    .line 332
    invoke-virtual {v0}, Lcom/anythink/core/api/ATBaseAdAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object v3

    .line 333
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/anythink/core/common/d/d;->m(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v3, v5}, Lcom/anythink/core/common/d/d;->j(I)V

    .line 336
    if-eqz p3, :cond_1e4

    .line 337
    const/16 v20, 0x1

    const/16 v21, -0x1

    iget-object v6, v1, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    iget v1, v1, Lcom/anythink/core/c/c$b;->b:I

    .line 338
    invoke-virtual {v0}, Lcom/anythink/core/api/ATBaseAdAdapter;->getNetworkSDKVersion()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v26

    .line 1409
    iget v0, v3, Lcom/anythink/core/common/d/d;->m:I

    .line 338
    const/4 v7, 0x3

    if-ne v0, v7, :cond_1d3

    move/from16 v28, v2

    goto :goto_1d5

    :cond_1d3
    const/16 v28, 0x0

    :goto_1d5
    const-string v29, ""

    .line 337
    move-object/from16 v19, v3

    move/from16 v22, v5

    move-object/from16 v23, v6

    move/from16 v24, v1

    move-object/from16 v27, v4

    invoke-static/range {v19 .. v29}, Lcom/anythink/core/common/f/c;->a(Lcom/anythink/core/common/d/d;ZIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 342
    :cond_1e4
    monitor-exit p0

    return-object v16

    .line 344
    :cond_1e6
    move v14, v12

    move-object v10, v13

    iget-object v12, v10, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    iget v13, v10, Lcom/anythink/core/c/c$b;->b:I

    const-string v0, ""

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object/from16 v10, v17

    move v11, v14

    move-object v14, v0

    invoke-static/range {v10 .. v16}, Lcom/anythink/core/common/a;->a(Lorg/json/JSONArray;ILjava/lang/String;ILjava/lang/String;ZI)V

    .line 345
    move-object/from16 v19, v3

    move-object/from16 v30, v6

    move-object/from16 v20, v7

    move-object v6, v4

    move-object v7, v5

    move v5, v2

    goto/16 :goto_37e

    .line 348
    :cond_203
    move v14, v12

    move-object v10, v13

    iget-object v12, v10, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    iget v13, v10, Lcom/anythink/core/c/c$b;->b:I

    const-string v0, ""

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v10, v17

    move v11, v14

    move-object v14, v0

    invoke-static/range {v10 .. v16}, Lcom/anythink/core/common/a;->a(Lorg/json/JSONArray;ILjava/lang/String;ILjava/lang/String;ZI)V

    move-object/from16 v19, v3

    move-object/from16 v30, v6

    move-object/from16 v20, v7

    move-object v6, v4

    move-object v7, v5

    move v5, v2

    goto/16 :goto_37e

    .line 237
    :cond_220
    move v14, v12

    move-object v10, v13

    .line 239
    :goto_222
    nop

    .line 241
    iget-object v0, v8, Lcom/anythink/core/common/a;->c:Ljava/util/HashMap;

    iget v11, v10, Lcom/anythink/core/c/c$b;->b:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 242
    if-eqz v0, :cond_239

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_285

    :cond_239
    iget v0, v10, Lcom/anythink/core/c/c$b;->F:I

    sget v11, Lcom/anythink/core/c/c$b;->K:I

    if-ne v0, v11, :cond_25f

    .line 244
    invoke-virtual {v5}, Lcom/anythink/core/c/c;->y()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v11, "0"

    invoke-static {v0, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25f

    .line 245
    invoke-virtual {v5}, Lcom/anythink/core/c/c;->y()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v11, "2"

    invoke-static {v0, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_285

    :cond_25f
    iget v0, v10, Lcom/anythink/core/c/c$b;->F:I

    sget v11, Lcom/anythink/core/c/c$b;->J:I

    if-ne v0, v11, :cond_28b

    .line 247
    invoke-virtual {v5}, Lcom/anythink/core/c/c;->y()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v11, "0"

    invoke-static {v0, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28b

    .line 248
    invoke-virtual {v5}, Lcom/anythink/core/c/c;->y()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v11, "2"

    invoke-static {v0, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28b

    .line 249
    :cond_285
    invoke-static {v10}, Lcom/anythink/core/common/g/i;->a(Lcom/anythink/core/c/c$b;)Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v0

    move-object v11, v0

    goto :goto_28d

    .line 252
    :cond_28b
    move-object/from16 v11, v18

    :goto_28d
    if-eqz v11, :cond_364

    .line 253
    invoke-virtual {v5, v9, v4, v10}, Lcom/anythink/core/c/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c$b;)Ljava/util/Map;

    move-result-object v0

    .line 254
    invoke-static {}, Lcom/anythink/core/common/o;->a()Lcom/anythink/core/common/o;

    move-result-object v12

    invoke-virtual {v12, v9}, Lcom/anythink/core/common/o;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v12
    :try_end_29b
    .catchall {:try_start_25 .. :try_end_29b} :catchall_4ee

    .line 255
    nop

    .line 257
    :try_start_29c
    invoke-virtual {v11, v1, v0, v12}, Lcom/anythink/core/api/ATBaseAdAdapter;->internalInitNetworkObjectByPlacementId(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)Z

    move-result v0
    :try_end_2a0
    .catchall {:try_start_29c .. :try_end_2a0} :catchall_2ea

    .line 258
    if-eqz v0, :cond_2b5

    .line 259
    move v15, v2

    move-object v2, v11

    move-object/from16 v19, v3

    move-object v3, v4

    move-object v13, v4

    move-object/from16 v4, p2

    move-object v12, v5

    move-object/from16 v30, v6

    move-object v6, v10

    move-object/from16 v20, v7

    move v7, v14

    :try_start_2b1
    invoke-static/range {v2 .. v7}, Lcom/anythink/core/common/a;->a(Lcom/anythink/core/api/ATBaseAdAdapter;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;Lcom/anythink/core/c/c$b;I)V

    goto :goto_2be

    .line 258
    :cond_2b5
    move v15, v2

    move-object/from16 v19, v3

    move-object v13, v4

    move-object v12, v5

    move-object/from16 v30, v6

    move-object/from16 v20, v7

    .line 263
    :goto_2be
    invoke-virtual {v12}, Lcom/anythink/core/c/c;->y()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2dc

    .line 264
    if-eqz v0, :cond_2d8

    invoke-virtual {v11, v1}, Lcom/anythink/core/api/ATBaseAdAdapter;->getBaseAdObject(Landroid/content/Context;)Lcom/anythink/core/api/BaseAd;

    move-result-object v0

    if-eqz v0, :cond_2da

    move v2, v15

    goto :goto_2f7

    :cond_2d8
    move-object/from16 v0, v18

    :cond_2da
    const/4 v2, 0x0

    goto :goto_2f7

    .line 266
    :cond_2dc
    if-eqz v0, :cond_2e3

    invoke-virtual {v11}, Lcom/anythink/core/api/ATBaseAdAdapter;->isAdReady()Z

    move-result v0
    :try_end_2e2
    .catchall {:try_start_2b1 .. :try_end_2e2} :catchall_2e8

    goto :goto_2e4

    :cond_2e3
    const/4 v0, 0x0

    .line 273
    :goto_2e4
    move v2, v0

    move-object/from16 v0, v18

    goto :goto_2f7

    .line 269
    :catchall_2e8
    move-exception v0

    goto :goto_2f4

    :catchall_2ea
    move-exception v0

    move v15, v2

    move-object/from16 v19, v3

    move-object v13, v4

    move-object v12, v5

    move-object/from16 v30, v6

    move-object/from16 v20, v7

    :goto_2f4
    move-object/from16 v0, v18

    const/4 v2, 0x0

    .line 275
    :goto_2f7
    if-eqz v2, :cond_34d

    .line 286
    nop

    .line 287
    if-eqz v0, :cond_30d

    .line 289
    :try_start_2fc
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 290
    invoke-virtual {v11}, Lcom/anythink/core/api/ATBaseAdAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/anythink/core/api/BaseAd;->setTrackingInfo(Lcom/anythink/core/common/d/d;)V

    .line 291
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v5, v1

    goto :goto_30f

    .line 287
    :cond_30d
    move-object/from16 v5, v18

    .line 293
    :goto_30f
    invoke-virtual {v10}, Lcom/anythink/core/c/c$b;->a()J

    move-result-wide v6

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move v3, v14

    move-object v4, v11

    invoke-virtual/range {v1 .. v7}, Lcom/anythink/core/common/a;->a(Ljava/lang/String;ILcom/anythink/core/api/ATBaseAdAdapter;Ljava/util/List;J)Lcom/anythink/core/common/d/ab;

    move-result-object v0

    .line 295
    invoke-virtual {v11}, Lcom/anythink/core/api/ATBaseAdAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object v1

    .line 296
    invoke-virtual {v1, v14}, Lcom/anythink/core/common/d/d;->j(I)V

    .line 298
    if-eqz p3, :cond_347

    .line 300
    const/16 v20, 0x1

    const/16 v21, -0x1

    iget-object v2, v10, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    iget v3, v10, Lcom/anythink/core/c/c$b;->b:I

    invoke-virtual {v11}, Lcom/anythink/core/api/ATBaseAdAdapter;->getNetworkSDKVersion()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v28, 0x1

    const-string v29, ""

    move-object/from16 v19, v1

    move/from16 v22, v14

    move-object/from16 v23, v2

    move/from16 v24, v3

    move-object/from16 v27, v13

    invoke-static/range {v19 .. v29}, Lcom/anythink/core/common/f/c;->a(Lcom/anythink/core/common/d/d;ZIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 303
    :cond_347
    invoke-virtual {v0}, Lcom/anythink/core/common/d/ab;->a()Lcom/anythink/core/common/d/b;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 305
    :cond_34d
    iget-object v0, v10, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    iget v2, v10, Lcom/anythink/core/c/c$b;->b:I

    const-string v3, ""

    const/4 v4, 0x0

    const/16 v16, 0x4

    move-object/from16 v10, v17

    move v11, v14

    move-object v7, v12

    move-object v12, v0

    move-object v6, v13

    move v13, v2

    move-object v14, v3

    move v5, v15

    move v15, v4

    invoke-static/range {v10 .. v16}, Lcom/anythink/core/common/a;->a(Lorg/json/JSONArray;ILjava/lang/String;ILjava/lang/String;ZI)V

    .line 306
    goto :goto_37e

    .line 310
    :cond_364
    move-object/from16 v19, v3

    move-object/from16 v30, v6

    move-object/from16 v20, v7

    move-object v6, v4

    move-object v7, v5

    move v5, v2

    iget-object v12, v10, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    iget v13, v10, Lcom/anythink/core/c/c$b;->b:I

    const-string v0, ""

    const/4 v15, 0x0

    const/16 v16, 0x4

    move-object/from16 v10, v17

    move v11, v14

    move-object v14, v0

    invoke-static/range {v10 .. v16}, Lcom/anythink/core/common/a;->a(Lorg/json/JSONArray;ILjava/lang/String;ILjava/lang/String;ZI)V

    .line 311
    nop

    .line 201
    :goto_37e
    add-int/lit8 v14, v21, 0x1

    move v2, v5

    move-object v4, v6

    move-object v5, v7

    move-object/from16 v3, v19

    move-object/from16 v7, v20

    move-object/from16 v6, v30

    const/4 v15, 0x0

    goto/16 :goto_7b

    :cond_38c
    move-object/from16 v30, v6

    move-object/from16 v20, v7

    move-object v6, v4

    move-object v7, v5

    move v5, v2

    goto :goto_39b

    .line 198
    :cond_394
    move-object/from16 v30, v6

    move-object/from16 v20, v7

    move-object v6, v4

    move-object v7, v5

    move v5, v2

    .line 355
    :goto_39b
    nop

    .line 356
    invoke-virtual {v7}, Lcom/anythink/core/c/c;->r()I

    move-result v0

    if-ne v0, v5, :cond_3a4

    .line 357
    move v2, v5

    goto :goto_3af

    .line 358
    :cond_3a4
    invoke-virtual {v7}, Lcom/anythink/core/c/c;->r()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3ae

    .line 359
    move/from16 v2, p4

    goto :goto_3af

    .line 358
    :cond_3ae
    const/4 v2, 0x0

    .line 363
    :goto_3af
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4b6

    if-eqz v2, :cond_4b6

    .line 364
    invoke-static {}, Lcom/anythink/core/common/m;->a()Lcom/anythink/core/common/m;

    move-result-object v0

    invoke-virtual {v0, v1, v9}, Lcom/anythink/core/common/m;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 365
    nop

    .line 367
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3e6

    .line 368
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3ca
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/core/c/c$b;

    .line 369
    iget-object v4, v3, Lcom/anythink/core/c/c$b;->f:Ljava/lang/String;

    if-eqz v4, :cond_3e5

    iget-object v4, v3, Lcom/anythink/core/c/c$b;->f:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3e5

    .line 370
    nop

    .line 371
    move-object v0, v3

    goto :goto_3e8

    .line 373
    :cond_3e5
    goto :goto_3ca

    .line 376
    :cond_3e6
    move-object/from16 v0, v18

    :goto_3e8
    if-eqz v0, :cond_4b2

    .line 377
    invoke-virtual {v7, v9, v6, v0}, Lcom/anythink/core/c/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c$b;)Ljava/util/Map;

    move-result-object v2

    .line 378
    const-string v3, "isDefaultOffer"

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    move-object/from16 v3, v30

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v10
    :try_end_3fb
    .catchall {:try_start_2fc .. :try_end_3fb} :catchall_4ee

    .line 381
    :try_start_3fb
    invoke-static {v0}, Lcom/anythink/core/common/g/i;->a(Lcom/anythink/core/c/c$b;)Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v11

    .line 382
    invoke-static {}, Lcom/anythink/core/common/o;->a()Lcom/anythink/core/common/o;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/anythink/core/common/o;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v11, v1, v2, v3}, Lcom/anythink/core/api/ATBaseAdAdapter;->initNetworkObjectByPlacementId(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)Z

    move-result v12
    :try_end_40b
    .catchall {:try_start_3fb .. :try_end_40b} :catchall_4ad

    .line 383
    if-eqz v12, :cond_41b

    .line 385
    move-object v2, v11

    move-object v3, v6

    move-object/from16 v4, p2

    move v13, v5

    move-object v5, v7

    move-object v14, v6

    move-object v6, v0

    move-object v15, v7

    move v7, v10

    :try_start_417
    invoke-static/range {v2 .. v7}, Lcom/anythink/core/common/a;->a(Lcom/anythink/core/api/ATBaseAdAdapter;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;Lcom/anythink/core/c/c$b;I)V

    goto :goto_41e

    .line 383
    :cond_41b
    move v13, v5

    move-object v14, v6

    move-object v15, v7

    .line 388
    :goto_41e
    nop

    .line 390
    invoke-virtual {v15}, Lcom/anythink/core/c/c;->y()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_43d

    .line 391
    if-eqz v12, :cond_439

    invoke-virtual {v11, v1}, Lcom/anythink/core/api/ATBaseAdAdapter;->getBaseAdObject(Landroid/content/Context;)Lcom/anythink/core/api/BaseAd;

    move-result-object v1

    if-eqz v1, :cond_43b

    move v2, v13

    goto :goto_448

    :cond_439
    move-object/from16 v1, v18

    :cond_43b
    const/4 v2, 0x0

    goto :goto_448

    .line 393
    :cond_43d
    if-eqz v12, :cond_444

    invoke-virtual {v11}, Lcom/anythink/core/api/ATBaseAdAdapter;->isAdReady()Z

    move-result v1

    goto :goto_445

    :cond_444
    const/4 v1, 0x0

    :goto_445
    move v2, v1

    move-object/from16 v1, v18

    .line 395
    :goto_448
    if-eqz v2, :cond_4aa

    .line 397
    nop

    .line 398
    if-eqz v1, :cond_45e

    .line 400
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 401
    invoke-virtual {v11}, Lcom/anythink/core/api/ATBaseAdAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/anythink/core/api/BaseAd;->setTrackingInfo(Lcom/anythink/core/common/d/d;)V

    .line 402
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v5, v2

    goto :goto_460

    .line 398
    :cond_45e
    move-object/from16 v5, v18

    .line 405
    :goto_460
    invoke-virtual {v0}, Lcom/anythink/core/c/c$b;->a()J

    move-result-wide v6

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move v3, v10

    move-object v4, v11

    invoke-virtual/range {v1 .. v7}, Lcom/anythink/core/common/a;->a(Ljava/lang/String;ILcom/anythink/core/api/ATBaseAdAdapter;Ljava/util/List;J)Lcom/anythink/core/common/d/ab;

    move-result-object v1

    .line 407
    invoke-virtual {v11}, Lcom/anythink/core/api/ATBaseAdAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object v2

    .line 409
    nop

    .line 2253
    iput v13, v2, Lcom/anythink/core/common/d/d;->v:I

    .line 410
    invoke-virtual {v2, v10}, Lcom/anythink/core/common/d/d;->j(I)V

    .line 411
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/anythink/core/common/d/d;->m(Ljava/lang/String;)V

    .line 413
    if-eqz p3, :cond_4a4

    .line 414
    const/16 v20, 0x1

    const/16 v21, -0x1

    iget-object v3, v0, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    iget v4, v0, Lcom/anythink/core/c/c$b;->b:I

    .line 415
    invoke-virtual {v11}, Lcom/anythink/core/api/ATBaseAdAdapter;->getNetworkSDKVersion()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v28, 0x1

    iget-object v0, v0, Lcom/anythink/core/c/c$b;->f:Ljava/lang/String;

    .line 414
    move-object/from16 v19, v2

    move/from16 v22, v10

    move-object/from16 v23, v3

    move/from16 v24, v4

    move-object/from16 v27, v14

    move-object/from16 v29, v0

    invoke-static/range {v19 .. v29}, Lcom/anythink/core/common/f/c;->a(Lcom/anythink/core/common/d/d;ZIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 418
    :cond_4a4
    invoke-virtual {v1}, Lcom/anythink/core/common/d/ab;->a()Lcom/anythink/core/common/d/b;

    move-result-object v0
    :try_end_4a8
    .catchall {:try_start_417 .. :try_end_4a8} :catchall_4ab

    :try_start_4a8
    monitor-exit p0

    return-object v0

    .line 422
    :cond_4aa
    goto :goto_4b9

    .line 420
    :catchall_4ab
    move-exception v0

    goto :goto_4b9

    :catchall_4ad
    move-exception v0

    move v13, v5

    move-object v14, v6

    move-object v15, v7

    goto :goto_4b9

    .line 376
    :cond_4b2
    move v13, v5

    move-object v14, v6

    move-object v15, v7

    goto :goto_4b9

    .line 363
    :cond_4b6
    move v13, v5

    move-object v14, v6

    move-object v15, v7

    .line 427
    :goto_4b9
    if-eqz p3, :cond_4ec

    .line 428
    invoke-virtual {v15}, Lcom/anythink/core/c/c;->y()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v14, v9, v15, v1}, Lcom/anythink/core/common/g/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;I)Lcom/anythink/core/common/d/d;

    move-result-object v0

    .line 429
    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, -0x1

    const-string v23, ""

    const/16 v24, -0x1

    const-string v25, ""

    .line 430
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v28, 0x0

    const-string v29, ""

    .line 429
    move-object/from16 v19, v0

    move-object/from16 v27, v14

    invoke-static/range {v19 .. v29}, Lcom/anythink/core/common/f/c;->a(Lcom/anythink/core/common/d/d;ZIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 431
    if-eqz p4, :cond_4ec

    .line 432
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v13, v1, v14}, Lcom/anythink/core/common/f/c;->a(Lcom/anythink/core/common/d/d;ILjava/lang/String;Ljava/lang/String;)V

    .line 437
    :cond_4ec
    monitor-exit p0

    return-object v18

    .line 438
    :catchall_4ee
    move-exception v0

    monitor-exit p0
    :try_end_4f0
    .catchall {:try_start_4a8 .. :try_end_4f0} :catchall_4ee

    throw v0
.end method

.method public final a(Landroid/content/Context;Lcom/anythink/core/common/d/b;)V
    .registers 11

    .line 585
    monitor-enter p0

    .line 586
    :try_start_1
    invoke-virtual {p2}, Lcom/anythink/core/common/d/b;->g()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v5

    .line 587
    if-eqz v5, :cond_c

    invoke-virtual {v5}, Lcom/anythink/core/api/ATBaseAdAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object v0

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    move-object v2, v0

    .line 589
    if-eqz v2, :cond_20

    .line 592
    invoke-static {}, Lcom/anythink/core/common/g/a/a;->a()Lcom/anythink/core/common/g/a/a;

    move-result-object v6

    new-instance v7, Lcom/anythink/core/common/a$1;

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/anythink/core/common/a$1;-><init>(Lcom/anythink/core/common/a;Lcom/anythink/core/common/d/d;Landroid/content/Context;Lcom/anythink/core/common/d/b;Lcom/anythink/core/api/ATBaseAdAdapter;)V

    invoke-virtual {v6, v7}, Lcom/anythink/core/common/g/a/a;->a(Ljava/lang/Runnable;)V

    .line 619
    :cond_20
    monitor-exit p0

    return-void

    :catchall_22
    move-exception p1

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_22

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 526
    monitor-enter p0

    .line 527
    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/common/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 528
    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_1c

    .line 529
    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/core/common/d/ab;

    .line 530
    if-eqz p1, :cond_1c

    .line 531
    invoke-virtual {p1}, Lcom/anythink/core/common/d/ab;->b()V

    .line 534
    :cond_1c
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception p1

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_1e

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/d/b;)V
    .registers 5

    .line 545
    monitor-enter p0

    .line 546
    if-nez p3, :cond_5

    .line 547
    :try_start_3
    monitor-exit p0

    return-void

    .line 549
    :cond_5
    iget-object v0, p0, Lcom/anythink/core/common/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 550
    if-eqz p1, :cond_29

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_29

    .line 551
    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/d/ab;

    .line 552
    if-eqz v0, :cond_29

    .line 553
    invoke-virtual {v0, p3}, Lcom/anythink/core/common/d/ab;->a(Lcom/anythink/core/common/d/b;)V

    .line 555
    invoke-virtual {v0}, Lcom/anythink/core/common/d/ab;->c()Z

    move-result p3

    if-nez p3, :cond_29

    .line 556
    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    :cond_29
    monitor-exit p0

    return-void

    :catchall_2b
    move-exception p1

    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method public final declared-synchronized a(Ljava/util/List;Ljava/lang/String;Lcom/anythink/core/c/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
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

    move-object v1, p0

    monitor-enter p0

    .line 647
    :try_start_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ac

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/core/c/c$b;

    .line 648
    iget-object v3, v1, Lcom/anythink/core/common/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v11, p2

    invoke-virtual {v3, v11}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap;

    .line 649
    if-eqz v3, :cond_a6

    .line 650
    iget-object v4, v2, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Lcom/anythink/core/common/d/ab;

    .line 652
    if-eqz v12, :cond_a0

    .line 656
    invoke-virtual {v12}, Lcom/anythink/core/common/d/ab;->a()Lcom/anythink/core/common/d/b;

    move-result-object v13

    .line 658
    if-eqz v13, :cond_96

    .line 659
    invoke-virtual {v13}, Lcom/anythink/core/common/d/b;->f()J

    move-result-wide v4

    invoke-virtual {v13}, Lcom/anythink/core/common/d/b;->c()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_91

    .line 661
    invoke-virtual {v13}, Lcom/anythink/core/common/d/b;->b()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v14, p4

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8d

    .line 665
    invoke-virtual {v13}, Lcom/anythink/core/common/d/b;->a()Z

    move-result v4

    if-eqz v4, :cond_8a

    invoke-virtual {v13}, Lcom/anythink/core/common/d/b;->i()Z

    move-result v4

    if-eqz v4, :cond_8a

    .line 667
    nop

    .line 668
    invoke-virtual/range {p3 .. p3}, Lcom/anythink/core/c/c;->B()I

    move-result v9

    .line 667
    move-object/from16 v4, p4

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p3

    move-object/from16 v8, p6

    move/from16 v10, p7

    invoke-static/range {v4 .. v10}, Lcom/anythink/core/common/g/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;Ljava/lang/String;IZ)Lcom/anythink/core/common/d/d;

    move-result-object v3

    .line 671
    move-object/from16 v4, p1

    invoke-interface {v4, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 672
    invoke-virtual {v13}, Lcom/anythink/core/common/d/b;->g()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v6

    invoke-static {v6, v3, v2, v5}, Lcom/anythink/core/common/g/n;->a(Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/common/d/d;Lcom/anythink/core/c/c$b;I)Lcom/anythink/core/common/d/d;

    .line 673
    nop

    .line 3405
    const/4 v2, 0x4

    iput v2, v3, Lcom/anythink/core/common/d/d;->m:I

    .line 676
    invoke-virtual {v13}, Lcom/anythink/core/common/d/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/anythink/core/common/f/c;->a(Lcom/anythink/core/common/d/d;Ljava/lang/String;)V

    .line 679
    invoke-virtual {v12, v3, v5}, Lcom/anythink/core/common/d/ab;->a(Lcom/anythink/core/common/d/d;I)V

    .line 680
    goto/16 :goto_6

    .line 665
    :cond_8a
    move-object/from16 v4, p1

    goto :goto_9a

    .line 661
    :cond_8d
    move-object/from16 v4, p1

    goto/16 :goto_6

    .line 659
    :cond_91
    move-object/from16 v4, p1

    move-object/from16 v14, p4

    goto :goto_9a

    .line 658
    :cond_96
    move-object/from16 v4, p1

    move-object/from16 v14, p4

    .line 684
    :goto_9a
    iget-object v2, v2, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9f
    .catchall {:try_start_2 .. :try_end_9f} :catchall_ae

    goto :goto_aa

    .line 652
    :cond_a0
    move-object/from16 v4, p1

    move-object/from16 v14, p4

    goto/16 :goto_6

    .line 649
    :cond_a6
    move-object/from16 v4, p1

    move-object/from16 v14, p4

    .line 687
    :goto_aa
    goto/16 :goto_6

    .line 688
    :cond_ac
    monitor-exit p0

    return-void

    .line 646
    :catchall_ae
    move-exception v0

    monitor-exit p0

    throw v0
.end method
