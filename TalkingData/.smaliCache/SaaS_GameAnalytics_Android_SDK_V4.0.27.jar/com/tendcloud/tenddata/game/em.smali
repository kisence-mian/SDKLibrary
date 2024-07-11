.class public Lcom/tendcloud/tenddata/game/em;
.super Ljava/lang/Object;
.source "td"


# static fields
.field private static c:Lcom/tendcloud/tenddata/game/dx;

.field private static d:Lcom/tendcloud/tenddata/game/eb;

.field private static e:Lcom/tendcloud/tenddata/game/ef;

.field private static f:Lcom/tendcloud/tenddata/game/ec;

.field private static volatile g:Lcom/tendcloud/tenddata/game/em;


# instance fields
.field public a:Lorg/json/JSONObject;

.field public b:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/tendcloud/tenddata/game/em;->c:Lcom/tendcloud/tenddata/game/dx;

    .line 32
    sput-object v0, Lcom/tendcloud/tenddata/game/em;->d:Lcom/tendcloud/tenddata/game/eb;

    .line 33
    new-instance v1, Lcom/tendcloud/tenddata/game/ef;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/game/ef;-><init>()V

    sput-object v1, Lcom/tendcloud/tenddata/game/em;->e:Lcom/tendcloud/tenddata/game/ef;

    .line 34
    sput-object v0, Lcom/tendcloud/tenddata/game/em;->f:Lcom/tendcloud/tenddata/game/ec;

    .line 177
    sput-object v0, Lcom/tendcloud/tenddata/game/em;->g:Lcom/tendcloud/tenddata/game/em;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/em;->a:Lorg/json/JSONObject;

    .line 37
    iput-object v0, p0, Lcom/tendcloud/tenddata/game/em;->b:Lorg/json/JSONObject;

    return-void
.end method

.method public static a()Lcom/tendcloud/tenddata/game/em;
    .registers 2

    .line 194
    sget-object v0, Lcom/tendcloud/tenddata/game/em;->g:Lcom/tendcloud/tenddata/game/em;

    if-nez v0, :cond_17

    .line 195
    const-class v0, Lcom/tendcloud/tenddata/game/em;

    monitor-enter v0

    .line 196
    :try_start_7
    sget-object v1, Lcom/tendcloud/tenddata/game/em;->g:Lcom/tendcloud/tenddata/game/em;

    if-nez v1, :cond_12

    .line 197
    new-instance v1, Lcom/tendcloud/tenddata/game/em;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/game/em;-><init>()V

    sput-object v1, Lcom/tendcloud/tenddata/game/em;->g:Lcom/tendcloud/tenddata/game/em;

    .line 199
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 201
    :cond_17
    :goto_17
    sget-object v0, Lcom/tendcloud/tenddata/game/em;->g:Lcom/tendcloud/tenddata/game/em;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/tendcloud/tenddata/game/dw;Z)Lorg/json/JSONObject;
    .registers 4

    monitor-enter p0

    .line 40
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, p1, p2, v0}, Lcom/tendcloud/tenddata/game/em;->a(Lcom/tendcloud/tenddata/game/dw;ZLcom/tendcloud/tenddata/game/a;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object p1

    .line 40
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/tendcloud/tenddata/game/dw;ZLcom/tendcloud/tenddata/game/a;)Lorg/json/JSONObject;
    .registers 5

    monitor-enter p0

    .line 44
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/tendcloud/tenddata/game/em;->a(Lcom/tendcloud/tenddata/game/dw;ZLcom/tendcloud/tenddata/game/a;Landroid/util/Pair;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object p1

    .line 44
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/tendcloud/tenddata/game/dw;ZLcom/tendcloud/tenddata/game/a;Landroid/util/Pair;)Lorg/json/JSONObject;
    .registers 8

    monitor-enter p0

    .line 48
    if-eqz p1, :cond_1d3

    :try_start_3
    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/dw;->a_()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b

    goto/16 :goto_1d3

    .line 52
    :cond_b
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_1d0

    .line 54
    :try_start_10
    invoke-static {}, Lcom/tendcloud/tenddata/game/cq;->a()Lcom/tendcloud/tenddata/game/cq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/cq;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/az;->getFileLock(Ljava/lang/String;)V

    .line 55
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/tendcloud/tenddata/game/em;->a:Lorg/json/JSONObject;

    .line 56
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/tendcloud/tenddata/game/em;->b:Lorg/json/JSONObject;
    :try_end_29
    .catchall {:try_start_10 .. :try_end_29} :catchall_1c1

    .line 59
    :try_start_29
    sget-object v1, Lcom/tendcloud/tenddata/game/em;->c:Lcom/tendcloud/tenddata/game/dx;

    if-nez v1, :cond_44

    .line 60
    invoke-static {}, Lcom/tendcloud/tenddata/game/dx;->a()Lcom/tendcloud/tenddata/game/dx;

    move-result-object v1

    sput-object v1, Lcom/tendcloud/tenddata/game/em;->c:Lcom/tendcloud/tenddata/game/dx;

    .line 61
    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 62
    sget-object v2, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/tendcloud/tenddata/game/el;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    sget-object v2, Lcom/tendcloud/tenddata/game/em;->c:Lcom/tendcloud/tenddata/game/dx;

    invoke-virtual {v2, v1}, Lcom/tendcloud/tenddata/game/dx;->setUniqueId(Ljava/lang/String;)V

    .line 65
    :cond_44
    sget-object v1, Lcom/tendcloud/tenddata/game/em;->c:Lcom/tendcloud/tenddata/game/dx;

    invoke-virtual {v1, p3}, Lcom/tendcloud/tenddata/game/dx;->setSubmitAppId(Lcom/tendcloud/tenddata/game/a;)V

    .line 66
    sget-object v1, Lcom/tendcloud/tenddata/game/em;->c:Lcom/tendcloud/tenddata/game/dx;

    invoke-virtual {v1, p3}, Lcom/tendcloud/tenddata/game/dx;->setSubmitChannelId(Lcom/tendcloud/tenddata/game/a;)V

    .line 68
    sget-object p3, Lcom/tendcloud/tenddata/game/em;->e:Lcom/tendcloud/tenddata/game/ef;

    if-nez p3, :cond_5a

    .line 69
    new-instance p3, Lcom/tendcloud/tenddata/game/ef;

    invoke-direct {p3}, Lcom/tendcloud/tenddata/game/ef;-><init>()V

    sput-object p3, Lcom/tendcloud/tenddata/game/em;->e:Lcom/tendcloud/tenddata/game/ef;

    goto :goto_61

    .line 71
    :cond_5a
    invoke-virtual {p3}, Lcom/tendcloud/tenddata/game/ef;->c()Lcom/tendcloud/tenddata/game/ed;

    move-result-object p3

    invoke-virtual {p3}, Lcom/tendcloud/tenddata/game/ed;->c()V

    .line 73
    :goto_61
    sget-object p3, Lcom/tendcloud/tenddata/game/ef;->a:Lcom/tendcloud/tenddata/game/ee;

    invoke-virtual {p3}, Lcom/tendcloud/tenddata/game/ee;->b()V

    .line 74
    sget-object p3, Lcom/tendcloud/tenddata/game/em;->e:Lcom/tendcloud/tenddata/game/ef;

    invoke-virtual {p3}, Lcom/tendcloud/tenddata/game/ef;->c()Lcom/tendcloud/tenddata/game/ed;

    move-result-object p3

    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/bb;->B(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p3, v1}, Lcom/tendcloud/tenddata/game/ed;->setSlots(I)V

    .line 76
    sget-object p3, Lcom/tendcloud/tenddata/game/em;->d:Lcom/tendcloud/tenddata/game/eb;

    if-nez p3, :cond_80

    .line 77
    new-instance p3, Lcom/tendcloud/tenddata/game/eb;

    invoke-direct {p3}, Lcom/tendcloud/tenddata/game/eb;-><init>()V

    sput-object p3, Lcom/tendcloud/tenddata/game/em;->d:Lcom/tendcloud/tenddata/game/eb;

    .line 80
    :cond_80
    sget-object p3, Lcom/tendcloud/tenddata/game/em;->f:Lcom/tendcloud/tenddata/game/ec;

    if-nez p3, :cond_8e

    .line 81
    new-instance p3, Lcom/tendcloud/tenddata/game/ec;

    invoke-direct {p3}, Lcom/tendcloud/tenddata/game/ec;-><init>()V

    sput-object p3, Lcom/tendcloud/tenddata/game/em;->f:Lcom/tendcloud/tenddata/game/ec;

    .line 82
    invoke-virtual {p3}, Lcom/tendcloud/tenddata/game/ec;->b()V
    :try_end_8e
    .catchall {:try_start_29 .. :try_end_8e} :catchall_8f

    .line 86
    :cond_8e
    goto :goto_90

    .line 84
    :catchall_8f
    move-exception p3

    .line 88
    :goto_90
    :try_start_90
    sget-object p3, Lcom/tendcloud/tenddata/game/em;->f:Lcom/tendcloud/tenddata/game/ec;

    invoke-virtual {p3}, Lcom/tendcloud/tenddata/game/ec;->c()V
    :try_end_95
    .catchall {:try_start_90 .. :try_end_95} :catchall_1c1

    .line 93
    :try_start_95
    const-string p3, "version"

    const-string v1, "2.0"

    invoke-virtual {v0, p3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    const-string p3, "action"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/dw;->a_()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    const-string p1, "device"

    sget-object p3, Lcom/tendcloud/tenddata/game/em;->e:Lcom/tendcloud/tenddata/game/ef;

    invoke-virtual {p3}, Lcom/tendcloud/tenddata/game/ef;->a_()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    const-string p1, "app"

    sget-object p3, Lcom/tendcloud/tenddata/game/em;->c:Lcom/tendcloud/tenddata/game/dx;

    invoke-virtual {p3}, Lcom/tendcloud/tenddata/game/dx;->a_()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    const-string p1, "sdk"

    sget-object p3, Lcom/tendcloud/tenddata/game/em;->d:Lcom/tendcloud/tenddata/game/eb;

    invoke-virtual {p3}, Lcom/tendcloud/tenddata/game/eb;->a_()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    const-string p1, "appContext"

    invoke-static {}, Lcom/tendcloud/tenddata/game/du;->a()Lcom/tendcloud/tenddata/game/du;

    move-result-object p3

    invoke-virtual {p3}, Lcom/tendcloud/tenddata/game/du;->a_()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    const-string p1, "user"

    sget-object p3, Lcom/tendcloud/tenddata/game/em;->f:Lcom/tendcloud/tenddata/game/ec;

    invoke-virtual {p3}, Lcom/tendcloud/tenddata/game/ec;->a_()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 109
    const-string p1, "ts"

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 113
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object p3, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    .line 114
    invoke-static {p3}, Lcom/tendcloud/tenddata/game/el;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object p3, Lcom/tendcloud/tenddata/game/em;->e:Lcom/tendcloud/tenddata/game/ef;

    .line 115
    invoke-virtual {p3}, Lcom/tendcloud/tenddata/game/ef;->b()Lcom/tendcloud/tenddata/game/eg;

    move-result-object p3

    invoke-virtual {p3}, Lcom/tendcloud/tenddata/game/eg;->b()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object p3, Lcom/tendcloud/tenddata/game/em;->e:Lcom/tendcloud/tenddata/game/ef;

    .line 116
    invoke-virtual {p3}, Lcom/tendcloud/tenddata/game/ef;->b()Lcom/tendcloud/tenddata/game/eg;

    move-result-object p3

    invoke-virtual {p3}, Lcom/tendcloud/tenddata/game/eg;->c()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 113
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/bq;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 118
    const-string p3, "fingerprint"

    invoke-virtual {v0, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    if-eqz p2, :cond_18a

    .line 126
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 127
    new-instance p2, Lcom/tendcloud/tenddata/game/ei;

    sget-object p3, Lcom/tendcloud/tenddata/game/ek;->a:Lcom/tendcloud/tenddata/game/ek;

    invoke-direct {p2, p3}, Lcom/tendcloud/tenddata/game/ei;-><init>(Lcom/tendcloud/tenddata/game/ek;)V

    .line 128
    invoke-virtual {p2}, Lcom/tendcloud/tenddata/game/ei;->a_()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 130
    new-instance p2, Lcom/tendcloud/tenddata/game/ei;

    sget-object p3, Lcom/tendcloud/tenddata/game/ek;->b:Lcom/tendcloud/tenddata/game/ek;

    invoke-direct {p2, p3}, Lcom/tendcloud/tenddata/game/ei;-><init>(Lcom/tendcloud/tenddata/game/ek;)V

    .line 131
    invoke-virtual {p2}, Lcom/tendcloud/tenddata/game/ei;->a_()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_146
    .catchall {:try_start_95 .. :try_end_146} :catchall_1b4

    .line 135
    :try_start_146
    sget-object p2, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string p3, "android.permission.BLUETOOTH"

    invoke-static {p2, p3}, Lcom/tendcloud/tenddata/game/bq;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_15e

    .line 137
    new-instance p2, Lcom/tendcloud/tenddata/game/ei;

    sget-object p3, Lcom/tendcloud/tenddata/game/ek;->c:Lcom/tendcloud/tenddata/game/ek;

    invoke-direct {p2, p3}, Lcom/tendcloud/tenddata/game/ei;-><init>(Lcom/tendcloud/tenddata/game/ek;)V

    .line 138
    invoke-virtual {p2}, Lcom/tendcloud/tenddata/game/ei;->a_()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_15e
    .catchall {:try_start_146 .. :try_end_15e} :catchall_15f

    .line 142
    :cond_15e
    goto :goto_160

    .line 140
    :catchall_15f
    move-exception p2

    .line 144
    :goto_160
    :try_start_160
    const-string p2, "networks"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    invoke-static {}, Lcom/tendcloud/tenddata/game/cq;->a()Lcom/tendcloud/tenddata/game/cq;

    move-result-object p1

    const-string p2, "Location"

    invoke-virtual {p1, p2}, Lcom/tendcloud/tenddata/game/cq;->a(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 147
    if-eqz p1, :cond_18a

    .line 148
    new-instance p2, Lcom/tendcloud/tenddata/game/dy;

    invoke-direct {p2}, Lcom/tendcloud/tenddata/game/dy;-><init>()V

    .line 149
    const-string p3, "locations"

    invoke-virtual {p2}, Lcom/tendcloud/tenddata/game/dy;->a_()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-lez p2, :cond_18a

    .line 151
    const-string p2, "Location"

    invoke-virtual {p0, p2, p1}, Lcom/tendcloud/tenddata/game/em;->a(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 155
    :cond_18a
    if-eqz p4, :cond_1a1

    iget-object p1, p4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONArray;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_1a1

    .line 156
    iget-object p1, p4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p2, p4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Lorg/json/JSONArray;

    invoke-virtual {p0, p1, p2}, Lcom/tendcloud/tenddata/game/em;->a(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 159
    :cond_1a1
    sget-boolean p1, Lcom/tendcloud/tenddata/game/ab;->q:Z

    if-nez p1, :cond_1ac

    .line 160
    const-string p1, "cloudcontrol"

    iget-object p2, p0, Lcom/tendcloud/tenddata/game/em;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    :cond_1ac
    invoke-static {}, Lcom/tendcloud/tenddata/game/cq;->a()Lcom/tendcloud/tenddata/game/cq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/cq;->c()V
    :try_end_1b3
    .catchall {:try_start_160 .. :try_end_1b3} :catchall_1b4

    .line 166
    goto :goto_1b8

    .line 164
    :catchall_1b4
    move-exception p1

    .line 165
    :try_start_1b5
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V
    :try_end_1b8
    .catchall {:try_start_1b5 .. :try_end_1b8} :catchall_1c1

    .line 170
    :goto_1b8
    :try_start_1b8
    invoke-static {}, Lcom/tendcloud/tenddata/game/cq;->a()Lcom/tendcloud/tenddata/game/cq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/cq;->b()Ljava/lang/String;

    move-result-object p1

    goto :goto_1ca

    .line 167
    :catchall_1c1
    move-exception p1

    .line 170
    invoke-static {}, Lcom/tendcloud/tenddata/game/cq;->a()Lcom/tendcloud/tenddata/game/cq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/cq;->b()Ljava/lang/String;

    move-result-object p1

    :goto_1ca
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/az;->releaseFileLock(Ljava/lang/String;)V
    :try_end_1cd
    .catchall {:try_start_1b8 .. :try_end_1cd} :catchall_1d0

    .line 171
    nop

    .line 173
    monitor-exit p0

    return-object v0

    .line 47
    :catchall_1d0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 50
    :cond_1d3
    :goto_1d3
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONArray;)V
    .registers 4

    .line 181
    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/game/ab;->q:Z

    if-eqz v0, :cond_5

    .line 182
    return-void

    .line 184
    :cond_5
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/em;->a:Lorg/json/JSONObject;

    if-eqz v0, :cond_14

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_14

    .line 185
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/em;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    .line 190
    :cond_14
    goto :goto_19

    .line 187
    :catchall_15
    move-exception p1

    .line 189
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 191
    :goto_19
    return-void
.end method
