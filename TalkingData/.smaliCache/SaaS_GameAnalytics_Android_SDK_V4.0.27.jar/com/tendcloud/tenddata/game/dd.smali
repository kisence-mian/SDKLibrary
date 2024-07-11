.class public Lcom/tendcloud/tenddata/game/dd;
.super Ljava/lang/Object;
.source "td"


# static fields
.field private static volatile a:Lcom/tendcloud/tenddata/game/dd;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 258
    const/4 v0, 0x0

    sput-object v0, Lcom/tendcloud/tenddata/game/dd;->a:Lcom/tendcloud/tenddata/game/dd;

    .line 263
    :try_start_3
    invoke-static {}, Lcom/tendcloud/tenddata/game/bt;->a()Lcom/tendcloud/tenddata/game/bt;

    move-result-object v0

    invoke-static {}, Lcom/tendcloud/tenddata/game/dd;->a()Lcom/tendcloud/tenddata/game/dd;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/bt;->register(Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_f

    .line 267
    goto :goto_13

    .line 264
    :catchall_f
    move-exception v0

    .line 266
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 268
    :goto_13
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    return-void
.end method

.method public static a()Lcom/tendcloud/tenddata/game/dd;
    .registers 2

    .line 245
    sget-object v0, Lcom/tendcloud/tenddata/game/dd;->a:Lcom/tendcloud/tenddata/game/dd;

    if-nez v0, :cond_17

    .line 246
    const-class v0, Lcom/tendcloud/tenddata/game/dd;

    monitor-enter v0

    .line 247
    :try_start_7
    sget-object v1, Lcom/tendcloud/tenddata/game/dd;->a:Lcom/tendcloud/tenddata/game/dd;

    if-nez v1, :cond_12

    .line 248
    new-instance v1, Lcom/tendcloud/tenddata/game/dd;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/game/dd;-><init>()V

    sput-object v1, Lcom/tendcloud/tenddata/game/dd;->a:Lcom/tendcloud/tenddata/game/dd;

    .line 250
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 252
    :cond_17
    :goto_17
    sget-object v0, Lcom/tendcloud/tenddata/game/dd;->a:Lcom/tendcloud/tenddata/game/dd;

    return-object v0
.end method

.method private a(JLcom/tendcloud/tenddata/game/a;)V
    .registers 12

    .line 134
    :try_start_0
    const-string v0, "[Session] - New session!"

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ar;->iForDeveloper(Ljava/lang/String;)V

    .line 135
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Session] - Id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/ar;->iForDeveloper(Ljava/lang/String;)V

    .line 137
    invoke-static {p3}, Lcom/tendcloud/tenddata/game/as;->f(Lcom/tendcloud/tenddata/game/a;)J

    move-result-wide v1

    .line 138
    sub-long v3, p1, v1

    .line 139
    const-wide/16 v5, 0x0

    cmp-long v7, v5, v1

    if-nez v7, :cond_30

    move-wide v3, v5

    .line 141
    :cond_30
    invoke-static {v0, p3}, Lcom/tendcloud/tenddata/game/as;->a(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V

    .line 142
    invoke-static {p1, p2, p3}, Lcom/tendcloud/tenddata/game/as;->a(JLcom/tendcloud/tenddata/game/a;)V

    .line 145
    invoke-static {v0, p3}, Lcom/tendcloud/tenddata/game/as;->b(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V

    .line 148
    invoke-static {}, Lcom/tendcloud/tenddata/game/du;->a()Lcom/tendcloud/tenddata/game/du;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tendcloud/tenddata/game/du;->setSessionId(Ljava/lang/String;)V

    .line 149
    invoke-static {}, Lcom/tendcloud/tenddata/game/du;->a()Lcom/tendcloud/tenddata/game/du;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/tendcloud/tenddata/game/du;->setSessionStartTime(J)V

    .line 151
    new-instance p1, Lcom/tendcloud/tenddata/game/dl;

    invoke-direct {p1}, Lcom/tendcloud/tenddata/game/dl;-><init>()V

    .line 152
    const-string p2, "session"

    iput-object p2, p1, Lcom/tendcloud/tenddata/game/dl;->b:Ljava/lang/String;

    .line 153
    const-string p2, "begin"

    iput-object p2, p1, Lcom/tendcloud/tenddata/game/dl;->c:Ljava/lang/String;

    .line 154
    new-instance p2, Ljava/util/TreeMap;

    invoke-direct {p2}, Ljava/util/TreeMap;-><init>()V

    .line 155
    const-string v1, "sessionId"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v0, "interval"

    const-wide/16 v1, 0x3e8

    div-long/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iput-object p2, p1, Lcom/tendcloud/tenddata/game/dl;->d:Ljava/util/Map;

    .line 159
    iput-object p3, p1, Lcom/tendcloud/tenddata/game/dl;->a:Lcom/tendcloud/tenddata/game/a;

    .line 161
    invoke-static {}, Lcom/tendcloud/tenddata/game/bt;->a()Lcom/tendcloud/tenddata/game/bt;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tendcloud/tenddata/game/bt;->post(Ljava/lang/Object;)V

    .line 173
    sget-object p1, Lcom/tendcloud/tenddata/game/ab;->N:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 174
    invoke-direct {p0, p3}, Lcom/tendcloud/tenddata/game/dd;->b(Lcom/tendcloud/tenddata/game/a;)V
    :try_end_7e
    .catchall {:try_start_0 .. :try_end_7e} :catchall_7f

    .line 178
    goto :goto_83

    .line 175
    :catchall_7f
    move-exception p1

    .line 177
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 180
    :goto_83
    return-void
.end method

.method private a(Lcom/tendcloud/tenddata/game/a;)V
    .registers 10

    .line 88
    :try_start_0
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/as;->a(Lcom/tendcloud/tenddata/game/a;)Ljava/lang/String;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_8f

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8f

    .line 90
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/as;->c(Lcom/tendcloud/tenddata/game/a;)J

    move-result-wide v1

    .line 91
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/as;->f(Lcom/tendcloud/tenddata/game/a;)J

    move-result-wide v3

    .line 92
    sub-long/2addr v3, v1

    .line 93
    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->name()Ljava/lang/String;

    move-result-object v5

    const-string v6, "APP"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_49

    .line 94
    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->name()Ljava/lang/String;

    move-result-object v5

    const-string v6, "APP_SQL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_49

    .line 95
    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->name()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TRACKING"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_49

    .line 96
    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->name()Ljava/lang/String;

    move-result-object v5

    const-string v6, "FINTECH"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 97
    :cond_49
    const-wide/16 v5, 0x1f4

    cmp-long v7, v3, v5

    if-gez v7, :cond_51

    const-wide/16 v3, -0x3e8

    .line 100
    :cond_51
    new-instance v5, Lcom/tendcloud/tenddata/game/dl;

    invoke-direct {v5}, Lcom/tendcloud/tenddata/game/dl;-><init>()V

    .line 101
    const-string v6, "session"

    iput-object v6, v5, Lcom/tendcloud/tenddata/game/dl;->b:Ljava/lang/String;

    .line 102
    const-string v6, "end"

    iput-object v6, v5, Lcom/tendcloud/tenddata/game/dl;->c:Ljava/lang/String;

    .line 103
    new-instance v6, Ljava/util/TreeMap;

    invoke-direct {v6}, Ljava/util/TreeMap;-><init>()V

    .line 104
    const-string v7, "sessionId"

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v0, "start"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v0, "duration"

    const-wide/16 v1, 0x3e8

    div-long/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iput-object v6, v5, Lcom/tendcloud/tenddata/game/dl;->d:Ljava/util/Map;

    .line 108
    iput-object p1, v5, Lcom/tendcloud/tenddata/game/dl;->a:Lcom/tendcloud/tenddata/game/a;

    .line 109
    invoke-static {}, Lcom/tendcloud/tenddata/game/bt;->a()Lcom/tendcloud/tenddata/game/bt;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/tendcloud/tenddata/game/bt;->post(Ljava/lang/Object;)V

    .line 119
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/dd;->b(Lcom/tendcloud/tenddata/game/a;)V

    .line 121
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/game/as;->a(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_8f
    .catchall {:try_start_0 .. :try_end_8f} :catchall_90

    .line 126
    :cond_8f
    goto :goto_94

    .line 123
    :catchall_90
    move-exception p1

    .line 125
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 129
    :goto_94
    return-void
.end method

.method private a(Ljava/util/HashMap;)V
    .registers 5

    .line 50
    :try_start_0
    const-string v0, "occurTime"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 51
    const-string v2, "service"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tendcloud/tenddata/game/a;

    .line 52
    invoke-static {v0, v1, p1}, Lcom/tendcloud/tenddata/game/as;->c(JLcom/tendcloud/tenddata/game/a;)V
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_1a

    .line 56
    goto :goto_1e

    .line 53
    :catchall_1a
    move-exception p1

    .line 55
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 57
    :goto_1e
    return-void
.end method

.method private b(Lcom/tendcloud/tenddata/game/a;)V
    .registers 3

    .line 210
    new-instance v0, Lcom/tendcloud/tenddata/game/dk;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/dk;-><init>()V

    .line 211
    iput-object p1, v0, Lcom/tendcloud/tenddata/game/dk;->a:Lcom/tendcloud/tenddata/game/a;

    .line 212
    sget-object p1, Lcom/tendcloud/tenddata/game/dk$a;->IMMEDIATELY:Lcom/tendcloud/tenddata/game/dk$a;

    iput-object p1, v0, Lcom/tendcloud/tenddata/game/dk;->b:Lcom/tendcloud/tenddata/game/dk$a;

    .line 213
    invoke-static {}, Lcom/tendcloud/tenddata/game/bt;->a()Lcom/tendcloud/tenddata/game/bt;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/game/bt;->post(Ljava/lang/Object;)V

    .line 214
    return-void
.end method

.method private final b(Ljava/util/HashMap;)V
    .registers 11

    .line 62
    :try_start_0
    const-string v0, "service"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/a;

    .line 63
    const-string v1, "occurTime"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 64
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/as;->c(Lcom/tendcloud/tenddata/game/a;)J

    move-result-wide v3

    .line 65
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/as;->f(Lcom/tendcloud/tenddata/game/a;)J

    move-result-wide v5

    .line 66
    cmp-long p1, v5, v3

    if-lez p1, :cond_23

    goto :goto_24

    :cond_23
    move-wide v5, v3

    .line 68
    :goto_24
    sub-long v5, v1, v5

    const-wide/16 v7, 0x7530

    cmp-long p1, v5, v7

    if-lez p1, :cond_38

    .line 69
    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/game/dd;->a(Lcom/tendcloud/tenddata/game/a;)V

    .line 70
    invoke-direct {p0, v1, v2, v0}, Lcom/tendcloud/tenddata/game/dd;->a(JLcom/tendcloud/tenddata/game/a;)V

    .line 71
    const-string p1, ""

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/as;->setLastActivity(Ljava/lang/String;)V

    goto :goto_4f

    .line 73
    :cond_38
    const-string p1, "[Session] - Same session as before!"

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->iForDeveloper(Ljava/lang/String;)V

    .line 74
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/as;->a(Lcom/tendcloud/tenddata/game/a;)Ljava/lang/String;

    move-result-object p1

    .line 75
    invoke-static {}, Lcom/tendcloud/tenddata/game/du;->a()Lcom/tendcloud/tenddata/game/du;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tendcloud/tenddata/game/du;->setSessionId(Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lcom/tendcloud/tenddata/game/du;->a()Lcom/tendcloud/tenddata/game/du;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Lcom/tendcloud/tenddata/game/du;->setSessionStartTime(J)V
    :try_end_4f
    .catchall {:try_start_0 .. :try_end_4f} :catchall_50

    .line 82
    :goto_4f
    goto :goto_54

    .line 79
    :catchall_50
    move-exception p1

    .line 81
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 84
    :goto_54
    return-void
.end method

.method private final c(Ljava/util/HashMap;)V
    .registers 7

    .line 185
    const-string v0, "pageName"

    :try_start_2
    const-string v1, "service"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tendcloud/tenddata/game/a;

    .line 186
    const-string v2, "occurTime"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 187
    const-string v4, "sessionEnd"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 188
    invoke-direct {p0, v1}, Lcom/tendcloud/tenddata/game/dd;->a(Lcom/tendcloud/tenddata/game/a;)V

    .line 189
    return-void

    .line 191
    :cond_24
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 192
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 193
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/as;->setLastActivity(Ljava/lang/String;)V

    .line 196
    :cond_35
    invoke-direct {p0, v1}, Lcom/tendcloud/tenddata/game/dd;->b(Lcom/tendcloud/tenddata/game/a;)V

    .line 197
    invoke-static {v2, v3, v1}, Lcom/tendcloud/tenddata/game/as;->c(JLcom/tendcloud/tenddata/game/a;)V

    .line 198
    const/4 p1, 0x0

    sput-object p1, Lcom/tendcloud/tenddata/game/ab;->C:Ljava/lang/String;

    .line 199
    sget-object p1, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    if-eqz p1, :cond_47

    .line 200
    sget-object p1, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->updateGameDuration()V
    :try_end_47
    .catchall {:try_start_2 .. :try_end_47} :catchall_48

    .line 205
    :cond_47
    goto :goto_4c

    .line 202
    :catchall_48
    move-exception p1

    .line 204
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 207
    :goto_4c
    return-void
.end method

.method private d(Ljava/util/HashMap;)V
    .registers 4

    .line 218
    :try_start_0
    const-string v0, "service"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tendcloud/tenddata/game/a;

    .line 219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/tendcloud/tenddata/game/dd;->a(JLcom/tendcloud/tenddata/game/a;)V

    .line 220
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/dd;->b(Lcom/tendcloud/tenddata/game/a;)V
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_13

    .line 224
    goto :goto_17

    .line 221
    :catchall_13
    move-exception p1

    .line 223
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 227
    :goto_17
    return-void
.end method

.method private e(Ljava/util/HashMap;)V
    .registers 4

    .line 231
    :try_start_0
    const-string v0, "service"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tendcloud/tenddata/game/a;

    .line 232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/tendcloud/tenddata/game/as;->c(JLcom/tendcloud/tenddata/game/a;)V

    .line 233
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/dd;->a(Lcom/tendcloud/tenddata/game/a;)V
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_13

    .line 237
    goto :goto_17

    .line 234
    :catchall_13
    move-exception p1

    .line 236
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 240
    :goto_17
    return-void
.end method


# virtual methods
.method public final onTDEBEventSession(Lcom/tendcloud/tenddata/game/zz$a;)V
    .registers 4

    .line 23
    if-eqz p1, :cond_4e

    iget-object v0, p1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    if-nez v0, :cond_7

    goto :goto_4e

    .line 27
    :cond_7
    :try_start_7
    iget-object v0, p1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v1, "apiType"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 28
    const/16 v1, 0xa

    if-ne v0, v1, :cond_21

    .line 29
    iget-object p1, p1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/dd;->b(Ljava/util/HashMap;)V

    goto :goto_48

    .line 31
    :cond_21
    const/16 v1, 0xb

    if-ne v0, v1, :cond_2b

    .line 32
    iget-object p1, p1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/dd;->c(Ljava/util/HashMap;)V

    goto :goto_48

    .line 35
    :cond_2b
    const/16 v1, 0xc

    if-ne v0, v1, :cond_35

    .line 36
    iget-object p1, p1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/dd;->d(Ljava/util/HashMap;)V

    goto :goto_48

    .line 37
    :cond_35
    const/16 v1, 0xd

    if-ne v0, v1, :cond_3f

    .line 38
    iget-object p1, p1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/dd;->a(Ljava/util/HashMap;)V

    goto :goto_48

    .line 39
    :cond_3f
    const/16 v1, 0xf

    if-ne v0, v1, :cond_48

    .line 40
    iget-object p1, p1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/dd;->e(Ljava/util/HashMap;)V
    :try_end_48
    .catchall {:try_start_7 .. :try_end_48} :catchall_49

    .line 46
    :cond_48
    :goto_48
    goto :goto_4d

    .line 43
    :catchall_49
    move-exception p1

    .line 45
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 47
    :goto_4d
    return-void

    .line 24
    :cond_4e
    :goto_4e
    return-void
.end method
