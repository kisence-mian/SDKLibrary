.class public final Lcom/anythink/core/b/f;
.super Lcom/anythink/core/b/d;


# instance fields
.field a:Z

.field private b:Ljava/lang/String;

.field private c:J

.field private d:Lcom/anythink/core/b/b/a;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/d/a;)V
    .registers 2

    .line 36
    invoke-direct {p0, p1}, Lcom/anythink/core/b/d;-><init>(Lcom/anythink/core/common/d/a;)V

    .line 30
    const-string p1, "IH Bidding"

    iput-object p1, p0, Lcom/anythink/core/b/f;->b:Ljava/lang/String;

    .line 33
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/anythink/core/b/f;->a:Z

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/anythink/core/b/f;Ljava/util/List;)V
    .registers 2

    .line 29
    invoke-direct {p0, p1}, Lcom/anythink/core/b/f;->b(Ljava/util/List;)V

    return-void
.end method

.method private static a(Lcom/anythink/core/c/c$b;)V
    .registers 10

    .line 166
    new-instance v8, Lcom/anythink/core/common/d/l;

    iget-wide v2, p0, Lcom/anythink/core/c/c$b;->m:D

    iget-object v4, p0, Lcom/anythink/core/c/c$b;->o:Ljava/lang/String;

    const/4 v1, 0x1

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/anythink/core/common/d/l;-><init>(ZDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    nop

    .line 3908
    iget-wide v0, p0, Lcom/anythink/core/c/c$b;->x:J

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, v8, Lcom/anythink/core/common/d/l;->f:J

    .line 168
    nop

    .line 4908
    iget-wide v0, p0, Lcom/anythink/core/c/c$b;->x:J

    .line 168
    iput-wide v0, v8, Lcom/anythink/core/common/d/l;->e:J

    .line 171
    invoke-static {}, Lcom/anythink/core/b/e;->a()Lcom/anythink/core/b/e;

    move-result-object v0

    iget-object p0, p0, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    invoke-virtual {v0, p0, v8}, Lcom/anythink/core/b/e;->a(Ljava/lang/String;Lcom/anythink/core/common/d/l;)V

    .line 172
    return-void
.end method

.method private static a(Lcom/anythink/core/c/c$b;Ljava/lang/String;)V
    .registers 4

    .line 159
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/anythink/core/c/c$b;->m:D

    .line 160
    const/4 v0, -0x1

    iput v0, p0, Lcom/anythink/core/c/c$b;->q:I

    .line 161
    iput v0, p0, Lcom/anythink/core/c/c$b;->a:I

    .line 162
    iput-object p1, p0, Lcom/anythink/core/c/c$b;->p:Ljava/lang/String;

    .line 163
    return-void
.end method

.method private declared-synchronized b(Ljava/util/List;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/core/c/c$b;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    .line 95
    :try_start_3
    iget-boolean v0, v1, Lcom/anythink/core/b/f;->a:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_de

    if-eqz v0, :cond_9

    .line 96
    monitor-exit p0

    return-void

    .line 99
    :cond_9
    if-nez p1, :cond_12

    .line 100
    :try_start_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    goto :goto_14

    .line 99
    :cond_12
    move-object/from16 v2, p1

    .line 103
    :goto_14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, v1, Lcom/anythink/core/b/f;->c:J

    sub-long/2addr v3, v5

    .line 104
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 105
    iget-object v0, v1, Lcom/anythink/core/b/f;->l:Lcom/anythink/core/common/d/a;

    iget-object v0, v0, Lcom/anythink/core/common/d/a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_98

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/anythink/core/c/c$b;

    .line 106
    nop

    .line 107
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_84

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/anythink/core/c/c$b;

    .line 108
    iget-object v11, v6, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    iget-object v12, v9, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_83

    .line 109
    iput-wide v3, v9, Lcom/anythink/core/c/c$b;->s:J

    .line 110
    iput v10, v9, Lcom/anythink/core/c/c$b;->q:I

    .line 111
    nop

    .line 1166
    new-instance v8, Lcom/anythink/core/common/d/l;

    const/4 v13, 0x1

    iget-wide v14, v9, Lcom/anythink/core/c/c$b;->m:D

    iget-object v10, v9, Lcom/anythink/core/c/c$b;->o:Ljava/lang/String;

    const-string v17, ""

    const-string v18, ""

    const-string v19, ""

    move-object v12, v8

    move-object/from16 v16, v10

    invoke-direct/range {v12 .. v19}, Lcom/anythink/core/common/d/l;-><init>(ZDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    nop

    .line 1908
    iget-wide v10, v9, Lcom/anythink/core/c/c$b;->x:J

    .line 1167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    add-long/2addr v10, v12

    iput-wide v10, v8, Lcom/anythink/core/common/d/l;->f:J

    .line 1168
    nop

    .line 2908
    iget-wide v10, v9, Lcom/anythink/core/c/c$b;->x:J

    .line 1168
    iput-wide v10, v8, Lcom/anythink/core/common/d/l;->e:J

    .line 1171
    invoke-static {}, Lcom/anythink/core/b/e;->a()Lcom/anythink/core/b/e;

    move-result-object v10

    iget-object v9, v9, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    invoke-virtual {v10, v9, v8}, Lcom/anythink/core/b/e;->a(Ljava/lang/String;Lcom/anythink/core/common/d/l;)V

    .line 112
    nop

    .line 113
    goto :goto_85

    .line 115
    :cond_83
    goto :goto_3a

    .line 107
    :cond_84
    move v7, v10

    .line 116
    :goto_85
    if-nez v7, :cond_97

    .line 117
    const-string v7, "No Bid Info."

    .line 3159
    const-wide/16 v8, 0x0

    iput-wide v8, v6, Lcom/anythink/core/c/c$b;->m:D

    .line 3160
    const/4 v8, -0x1

    iput v8, v6, Lcom/anythink/core/c/c$b;->q:I

    .line 3161
    iput v8, v6, Lcom/anythink/core/c/c$b;->a:I

    .line 3162
    iput-object v7, v6, Lcom/anythink/core/c/c$b;->p:Ljava/lang/String;

    .line 118
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_97
    goto :goto_28

    .line 122
    :cond_98
    iget-boolean v0, v1, Lcom/anythink/core/b/f;->m:Z

    if-eqz v0, :cond_c1

    .line 123
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_a1
    .catchall {:try_start_b .. :try_end_a1} :catchall_de

    .line 126
    :try_start_a1
    const-string v0, "IH Bidding Success List"

    invoke-static {v2}, Lcom/anythink/core/b/f;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    const-string v0, "IH Bidding Fail List"

    invoke-static {v5}, Lcom/anythink/core/b/f;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_b3} :catch_b4
    .catchall {:try_start_a1 .. :try_end_b3} :catchall_de

    .line 130
    goto :goto_b5

    .line 128
    :catch_b4
    move-exception v0

    .line 132
    :goto_b5
    :try_start_b5
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    iget-object v0, v1, Lcom/anythink/core/b/f;->b:Ljava/lang/String;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_c1
    iget-object v0, v1, Lcom/anythink/core/b/f;->d:Lcom/anythink/core/b/b/a;

    if-eqz v0, :cond_da

    .line 136
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_d0

    .line 137
    iget-object v0, v1, Lcom/anythink/core/b/f;->d:Lcom/anythink/core/b/b/a;

    invoke-interface {v0, v2}, Lcom/anythink/core/b/b/a;->a(Ljava/util/List;)V

    .line 140
    :cond_d0
    iget-object v0, v1, Lcom/anythink/core/b/f;->d:Lcom/anythink/core/b/b/a;

    invoke-interface {v0, v5}, Lcom/anythink/core/b/b/a;->b(Ljava/util/List;)V

    .line 141
    iget-object v0, v1, Lcom/anythink/core/b/f;->d:Lcom/anythink/core/b/b/a;

    invoke-interface {v0}, Lcom/anythink/core/b/b/a;->a()V

    .line 144
    :cond_da
    iput-boolean v7, v1, Lcom/anythink/core/b/f;->a:Z
    :try_end_dc
    .catchall {:try_start_b5 .. :try_end_dc} :catchall_de

    .line 146
    monitor-exit p0

    return-void

    .line 94
    :catchall_de
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected final a()V
    .registers 2

    .line 155
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/anythink/core/b/f;->b(Ljava/util/List;)V

    .line 156
    return-void
.end method

.method protected final a(Lcom/anythink/core/b/b/a;)V
    .registers 11

    .line 41
    iput-object p1, p0, Lcom/anythink/core/b/f;->d:Lcom/anythink/core/b/b/a;

    .line 42
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/anythink/core/b/f;->a:Z

    .line 43
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/core/b/f;->c:J

    .line 45
    iget-object p1, p0, Lcom/anythink/core/b/f;->l:Lcom/anythink/core/common/d/a;

    iget-object v4, p1, Lcom/anythink/core/common/d/a;->g:Ljava/util/List;

    .line 47
    iget-boolean p1, p0, Lcom/anythink/core/b/f;->m:Z

    if-eqz p1, :cond_2f

    .line 48
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 50
    :try_start_18
    const-string v0, "Start IH Bidding List"

    invoke-static {v4}, Lcom/anythink/core/b/f;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_21} :catch_22

    .line 53
    goto :goto_23

    .line 51
    :catch_22
    move-exception v0

    .line 54
    :goto_23
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    iget-object v0, p0, Lcom/anythink/core/b/f;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_2f
    invoke-static {}, Lcom/anythink/core/b/e;->a()Lcom/anythink/core/b/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/b/e;->b()Lcom/anythink/core/api/MediationBidManager;

    move-result-object p1

    if-nez p1, :cond_62

    .line 58
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3d
    :goto_3d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/c/c$b;

    .line 59
    iget v1, v0, Lcom/anythink/core/c/c$b;->b:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3d

    .line 62
    invoke-static {v0}, Lcom/anythink/core/common/g/i;->a(Lcom/anythink/core/c/c$b;)Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_61

    .line 64
    invoke-virtual {v0}, Lcom/anythink/core/api/ATBaseAdAdapter;->getBidManager()Lcom/anythink/core/api/MediationBidManager;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_61

    .line 66
    invoke-static {}, Lcom/anythink/core/b/e;->a()Lcom/anythink/core/b/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/anythink/core/b/e;->a(Lcom/anythink/core/api/MediationBidManager;)V

    .line 69
    :cond_61
    goto :goto_3d

    .line 72
    :cond_62
    invoke-static {}, Lcom/anythink/core/b/e;->a()Lcom/anythink/core/b/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/b/e;->b()Lcom/anythink/core/api/MediationBidManager;

    move-result-object v0

    .line 73
    if-nez v0, :cond_78

    .line 74
    iget-object p1, p0, Lcom/anythink/core/b/f;->b:Ljava/lang/String;

    const-string v0, "No BidManager."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/anythink/core/b/f;->b(Ljava/util/List;)V

    .line 76
    return-void

    .line 79
    :cond_78
    const-string p1, "https://bidding.anythinktech.com"

    invoke-virtual {v0, p1}, Lcom/anythink/core/api/MediationBidManager;->setBidRequestUrl(Ljava/lang/String;)V

    .line 80
    iget-object p1, p0, Lcom/anythink/core/b/f;->l:Lcom/anythink/core/common/d/a;

    iget-object v1, p1, Lcom/anythink/core/common/d/a;->a:Landroid/content/Context;

    iget-object p1, p0, Lcom/anythink/core/b/f;->l:Lcom/anythink/core/common/d/a;

    iget v2, p1, Lcom/anythink/core/common/d/a;->d:I

    iget-object p1, p0, Lcom/anythink/core/b/f;->l:Lcom/anythink/core/common/d/a;

    iget-object v3, p1, Lcom/anythink/core/common/d/a;->c:Ljava/lang/String;

    iget-object p1, p0, Lcom/anythink/core/b/f;->l:Lcom/anythink/core/common/d/a;

    iget-object v5, p1, Lcom/anythink/core/common/d/a;->h:Ljava/util/List;

    new-instance v6, Lcom/anythink/core/b/f$1;

    invoke-direct {v6, p0}, Lcom/anythink/core/b/f$1;-><init>(Lcom/anythink/core/b/f;)V

    iget-object p1, p0, Lcom/anythink/core/b/f;->l:Lcom/anythink/core/common/d/a;

    iget-wide v7, p1, Lcom/anythink/core/common/d/a;->f:J

    invoke-virtual/range {v0 .. v8}, Lcom/anythink/core/api/MediationBidManager;->startBid(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/anythink/core/api/MediationBidManager$BidListener;J)V

    .line 92
    return-void
.end method

.method protected final a(Lcom/anythink/core/c/c$b;Lcom/anythink/core/common/d/k;J)V
    .registers 5

    .line 151
    return-void
.end method
