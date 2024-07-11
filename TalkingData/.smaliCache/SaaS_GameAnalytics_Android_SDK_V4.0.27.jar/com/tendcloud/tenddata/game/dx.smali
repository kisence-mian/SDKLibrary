.class public Lcom/tendcloud/tenddata/game/dx;
.super Lcom/tendcloud/tenddata/game/ea;
.source "td"


# static fields
.field private static a:Ljava/util/HashMap;

.field private static c:Ljava/util/HashMap;

.field private static volatile f:Lcom/tendcloud/tenddata/game/dx;


# instance fields
.field private final d:[Ljava/lang/String;

.field private final e:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/dx;->a:Ljava/util/HashMap;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/dx;->c:Ljava/util/HashMap;

    .line 155
    const/4 v0, 0x0

    sput-object v0, Lcom/tendcloud/tenddata/game/dx;->f:Lcom/tendcloud/tenddata/game/dx;

    return-void
.end method

.method private constructor <init>()V
    .registers 6

    .line 27
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/ea;-><init>()V

    .line 23
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "PUSH"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "EAuth"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iput-object v1, p0, Lcom/tendcloud/tenddata/game/dx;->d:[Ljava/lang/String;

    .line 24
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "APP"

    aput-object v2, v1, v3

    const-string v2, "TRACKING"

    aput-object v2, v1, v4

    const-string v2, "GAME"

    aput-object v2, v1, v0

    const/4 v0, 0x3

    const-string v2, "BG"

    aput-object v2, v1, v0

    const/4 v0, 0x4

    const-string v2, "FINTECH"

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/tendcloud/tenddata/game/dx;->e:[Ljava/lang/String;

    .line 28
    invoke-static {}, Lcom/tendcloud/tenddata/game/aq;->a()Lcom/tendcloud/tenddata/game/aq;

    move-result-object v0

    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/aq;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "displayName"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/dx;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    invoke-static {}, Lcom/tendcloud/tenddata/game/aq;->a()Lcom/tendcloud/tenddata/game/aq;

    move-result-object v0

    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/aq;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "globalId"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/dx;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    invoke-static {}, Lcom/tendcloud/tenddata/game/as;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "versionName"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/dx;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    invoke-static {}, Lcom/tendcloud/tenddata/game/as;->j()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "versionCode"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/dx;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    invoke-static {}, Lcom/tendcloud/tenddata/game/aq;->a()Lcom/tendcloud/tenddata/game/aq;

    move-result-object v0

    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/aq;->d(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "installTime"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/dx;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    invoke-static {}, Lcom/tendcloud/tenddata/game/aq;->a()Lcom/tendcloud/tenddata/game/aq;

    move-result-object v0

    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/aq;->e(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "updateTime"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/dx;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    return-void
.end method

.method public static a()Lcom/tendcloud/tenddata/game/dx;
    .registers 2

    .line 158
    sget-object v0, Lcom/tendcloud/tenddata/game/dx;->f:Lcom/tendcloud/tenddata/game/dx;

    if-nez v0, :cond_17

    .line 159
    const-class v0, Lcom/tendcloud/tenddata/game/dp;

    monitor-enter v0

    .line 160
    :try_start_7
    sget-object v1, Lcom/tendcloud/tenddata/game/dx;->f:Lcom/tendcloud/tenddata/game/dx;

    if-nez v1, :cond_12

    .line 161
    new-instance v1, Lcom/tendcloud/tenddata/game/dx;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/game/dx;-><init>()V

    sput-object v1, Lcom/tendcloud/tenddata/game/dx;->f:Lcom/tendcloud/tenddata/game/dx;

    .line 163
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 166
    :cond_17
    :goto_17
    sget-object v0, Lcom/tendcloud/tenddata/game/dx;->f:Lcom/tendcloud/tenddata/game/dx;

    return-object v0
.end method

.method private a(Lcom/tendcloud/tenddata/game/a;)Ljava/lang/Object;
    .registers 6

    .line 83
    nop

    .line 84
    nop

    .line 85
    nop

    .line 86
    const/4 v0, 0x0

    if-eqz p1, :cond_77

    .line 88
    :try_start_6
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/dx;->d:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 93
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 94
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 95
    const-string v3, "appKey"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    const-string v3, "service"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2d
    .catchall {:try_start_6 .. :try_end_2d} :catchall_76

    .line 98
    nop

    .line 100
    :try_start_2e
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bq;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 101
    invoke-virtual {p0, v1, p1}, Lcom/tendcloud/tenddata/game/dx;->a(Ljava/lang/Object;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_39

    .line 103
    :cond_37
    move-object v0, v1

    goto :goto_75

    .line 115
    :catchall_39
    move-exception p1

    move-object v0, v1

    goto :goto_77

    .line 103
    :cond_3c
    :try_start_3c
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/dx;->e:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 105
    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/tendcloud/tenddata/game/ab;->a(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)Ljava/lang/String;

    move-result-object v0

    .line 107
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/bq;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_75

    .line 108
    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/game/dx;->a(Ljava/lang/Object;Lcom/tendcloud/tenddata/game/a;)V

    goto :goto_75

    .line 112
    :cond_5f
    sget-object p1, Lcom/tendcloud/tenddata/game/dx;->a:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/dx;->b()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tendcloud/tenddata/game/a;

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/a;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_74
    .catchall {:try_start_3c .. :try_end_74} :catchall_76

    move-object v0, p1

    .line 117
    :cond_75
    :goto_75
    goto :goto_77

    .line 115
    :catchall_76
    move-exception p1

    .line 119
    :cond_77
    :goto_77
    return-object v0
.end method

.method private b()Ljava/util/ArrayList;
    .registers 4

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    :try_start_5
    sget-object v1, Lcom/tendcloud/tenddata/game/dx;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 49
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 50
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 51
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 52
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/a;->valueOf(Ljava/lang/String;)Lcom/tendcloud/tenddata/game/a;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_2c

    .line 53
    goto :goto_f

    .line 56
    :cond_2b
    goto :goto_2d

    .line 54
    :catchall_2c
    move-exception v1

    .line 57
    :goto_2d
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/tendcloud/tenddata/game/a;)V
    .registers 4

    .line 38
    sget-object v0, Lcom/tendcloud/tenddata/game/dx;->a:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/tendcloud/tenddata/game/a;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    return-void
.end method

.method public b(Ljava/lang/Object;Lcom/tendcloud/tenddata/game/a;)V
    .registers 4

    .line 42
    sget-object v0, Lcom/tendcloud/tenddata/game/dx;->c:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/tendcloud/tenddata/game/a;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    return-void
.end method

.method public setAppChannel(Ljava/lang/String;)V
    .registers 3

    .line 148
    const-string v0, "channel"

    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/game/dx;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    return-void
.end method

.method public setSubmitAppId(Lcom/tendcloud/tenddata/game/a;)V
    .registers 4

    .line 62
    if-eqz p1, :cond_21

    .line 64
    :try_start_2
    sget-object v0, Lcom/tendcloud/tenddata/game/dx;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 65
    if-nez v0, :cond_1a

    sget-object v1, Lcom/tendcloud/tenddata/game/dx;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_1a

    .line 66
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/dx;->a(Lcom/tendcloud/tenddata/game/a;)Ljava/lang/Object;

    move-result-object v0

    .line 73
    :cond_1a
    const-string p1, "appKey"

    invoke-virtual {p0, p1, v0}, Lcom/tendcloud/tenddata/game/dx;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1f
    .catchall {:try_start_2 .. :try_end_1f} :catchall_20

    .line 76
    goto :goto_21

    .line 74
    :catchall_20
    move-exception p1

    .line 81
    :cond_21
    :goto_21
    return-void
.end method

.method public setSubmitChannelId(Lcom/tendcloud/tenddata/game/a;)V
    .registers 4

    .line 122
    if-eqz p1, :cond_33

    .line 124
    :try_start_2
    sget-object v0, Lcom/tendcloud/tenddata/game/dx;->c:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 125
    if-nez p1, :cond_2b

    sget-object v0, Lcom/tendcloud/tenddata/game/dx;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_2b

    .line 126
    sget-object p1, Lcom/tendcloud/tenddata/game/dx;->c:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/dx;->b()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/a;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/a;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 133
    :cond_2b
    const-string v0, "channel"

    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/game/dx;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_30
    .catchall {:try_start_2 .. :try_end_30} :catchall_31

    goto :goto_32

    .line 134
    :catchall_31
    move-exception p1

    .line 136
    :goto_32
    goto :goto_38

    .line 142
    :cond_33
    const-string p1, "Default"

    invoke-virtual {p0, p1}, Lcom/tendcloud/tenddata/game/dx;->setAppChannel(Ljava/lang/String;)V

    .line 145
    :goto_38
    return-void
.end method

.method public setUniqueId(Ljava/lang/String;)V
    .registers 3

    .line 152
    const-string v0, "uniqueId"

    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/game/dx;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 153
    return-void
.end method
