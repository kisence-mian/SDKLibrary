.class public Lcom/anythink/core/common/b/g;
.super Ljava/lang/Object;


# static fields
.field private static e:Lcom/anythink/core/common/b/g;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Z

.field a:J

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:Z

.field private f:Landroid/content/Context;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Landroid/os/Handler;

.field private j:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/lang/String;

.field private n:Lorg/json/JSONObject;

.field private o:Landroid/content/BroadcastReceiver;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Lcom/anythink/core/api/IExHandler;

.field private final t:Ljava/lang/String;

.field private u:Z

.field private v:Z

.field private w:J

.field private x:J

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private z:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const-string v0, "SDK.init"

    iput-object v0, p0, Lcom/anythink/core/common/b/g;->b:Ljava/lang/String;

    .line 71
    const-string v0, "com.anythink.pd.ExHandler"

    iput-object v0, p0, Lcom/anythink/core/common/b/g;->c:Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/core/common/b/g;->d:Z

    .line 98
    iput-boolean v0, p0, Lcom/anythink/core/common/b/g;->u:Z

    .line 99
    iput-boolean v0, p0, Lcom/anythink/core/common/b/g;->v:Z

    .line 101
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/anythink/core/common/b/g;->w:J

    .line 102
    iput-wide v0, p0, Lcom/anythink/core/common/b/g;->x:J

    .line 593
    iput-wide v0, p0, Lcom/anythink/core/common/b/g;->a:J

    .line 140
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/anythink/core/common/b/g;->i:Landroid/os/Handler;

    .line 141
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/common/b/g;->k:Ljava/util/concurrent/ConcurrentHashMap;

    .line 142
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/common/b/g;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 144
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

    iput-object v0, p0, Lcom/anythink/core/common/b/g;->t:Ljava/lang/String;

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/core/common/b/g;->B:Z

    .line 147
    return-void
.end method

.method private static a(J)J
    .registers 4

    .line 1199
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 1200
    new-instance p0, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result p1

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v0

    invoke-direct {p0, p1, v1, v0}, Ljava/util/Date;-><init>(III)V

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic a(Lcom/anythink/core/common/b/g;)Landroid/content/Context;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/anythink/core/common/b/g;->f:Landroid/content/Context;

    return-object p0
.end method

.method public static declared-synchronized a()Lcom/anythink/core/common/b/g;
    .registers 2

    const-class v0, Lcom/anythink/core/common/b/g;

    monitor-enter v0

    .line 112
    :try_start_3
    sget-object v1, Lcom/anythink/core/common/b/g;->e:Lcom/anythink/core/common/b/g;

    if-nez v1, :cond_14

    .line 113
    monitor-enter v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_18

    .line 114
    :try_start_8
    new-instance v1, Lcom/anythink/core/common/b/g;

    invoke-direct {v1}, Lcom/anythink/core/common/b/g;-><init>()V

    sput-object v1, Lcom/anythink/core/common/b/g;->e:Lcom/anythink/core/common/b/g;

    .line 115
    monitor-exit v0

    goto :goto_14

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_11

    :try_start_13
    throw v1

    .line 117
    :cond_14
    :goto_14
    sget-object v1, Lcom/anythink/core/common/b/g;->e:Lcom/anythink/core/common/b/g;
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_18

    monitor-exit v0

    return-object v1

    .line 111
    :catchall_18
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic a(Lcom/anythink/core/common/b/g;Landroid/content/Context;)V
    .registers 22

    .line 69
    const-string v1, ""

    const-string v2, "playRecord"

    .line 10480
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/anythink/core/common/b/g;->a:J

    .line 10482
    const-wide/16 v5, 0x0

    :try_start_a
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    .line 11173
    iget-object v0, v0, Lcom/anythink/core/common/b/g;->f:Landroid/content/Context;

    .line 10482
    sget-object v7, Lcom/anythink/core/common/b/e;->n:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v9

    invoke-virtual {v9}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v7, v8, v1}, Lcom/anythink/core/common/g/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10484
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c1

    .line 10485
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 10486
    const-string v0, "start_time"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 10487
    const-string v0, "end_time"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 10488
    const-string v0, "psid"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 10489
    const-string v0, "launch_mode"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_52} :catch_bc

    .line 10491
    cmp-long v7, v3, v5

    const-wide/16 v18, 0x3e8

    const-string v11, "SDK.init"

    if-eqz v7, :cond_7f

    .line 10492
    const/4 v7, 0x1

    if-ne v0, v7, :cond_5f

    const/4 v0, 0x4

    goto :goto_60

    :cond_5f
    const/4 v0, 0x2

    :goto_60
    move v8, v0

    move-wide v9, v14

    move-object v0, v11

    move-wide/from16 v11, v16

    :try_start_65
    invoke-static/range {v8 .. v13}, Lcom/anythink/core/common/f/c;->a(IJJLjava/lang/String;)V

    .line 10493
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Create new psid, SDKContext.init to send playTime:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v16, v16, v14

    div-long v8, v16, v18

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_7e} :catch_bc

    goto :goto_97

    .line 10495
    :cond_7f
    move-object v0, v11

    .line 10496
    :try_start_80
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Psid is old, use pervioud statime\uff0cclose before:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v16, v16, v14

    div-long v7, v16, v18

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_96} :catch_be

    move-wide v3, v14

    .line 10498
    :goto_97
    :try_start_97
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    .line 12173
    iget-object v0, v0, Lcom/anythink/core/common/b/g;->f:Landroid/content/Context;

    .line 10498
    sget-object v7, Lcom/anythink/core/common/b/e;->n:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v9

    invoke-virtual {v9}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v7, v8, v1}, Lcom/anythink/core/common/g/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_bb} :catch_bc

    goto :goto_c1

    .line 10501
    :catch_bc
    move-exception v0

    goto :goto_c2

    :catch_be
    move-exception v0

    move-wide v3, v14

    goto :goto_c2

    .line 10503
    :cond_c1
    :goto_c1
    goto :goto_e6

    .line 10502
    :goto_c2
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    .line 13173
    iget-object v0, v0, Lcom/anythink/core/common/b/g;->f:Landroid/content/Context;

    .line 10502
    sget-object v7, Lcom/anythink/core/common/b/e;->n:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v9

    invoke-virtual {v9}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v7, v2, v1}, Lcom/anythink/core/common/g/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10505
    :goto_e6
    cmp-long v0, v3, v5

    if-nez v0, :cond_fd

    .line 10506
    sget-object v0, Lcom/anythink/core/common/b/e;->n:Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "SPU_INIT_TIME_KEY"

    move-object/from16 v7, p1

    invoke-static {v7, v0, v2, v1}, Lcom/anythink/core/common/g/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_ff

    .line 10505
    :cond_fd
    move-object/from16 v7, p1

    .line 10509
    :goto_ff
    cmp-long v0, v3, v5

    if-nez v0, :cond_107

    .line 10510
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 10514
    :cond_107
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    new-instance v1, Lcom/anythink/core/common/b/c;

    invoke-direct {v1, v3, v4}, Lcom/anythink/core/common/b/c;-><init>(J)V

    .line 10515
    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 69
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1165
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1169
    :try_start_6
    const-string v1, "{"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_19

    .line 1170
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1171
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 1172
    goto :goto_2f

    :cond_19
    const-string v1, "["

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1173
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1174
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_2a} :catch_2d

    .line 1175
    goto :goto_2f

    .line 1176
    :cond_2b
    nop

    .line 1180
    goto :goto_2f

    .line 1178
    :catch_2d
    move-exception v1

    .line 1179
    nop

    .line 1184
    :goto_2f
    nop

    .line 1186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1187
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1188
    array-length v0, p1

    const/4 v1, 0x0

    const-string v2, "\u2554\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550"

    :goto_49
    if-ge v1, v0, :cond_7a

    aget-object v3, p1, v1

    .line 1189
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1190
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\u2551 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1188
    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    .line 1192
    :cond_7a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\n\u255a\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1194
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, " \n"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    return-void
.end method

.method static a(Landroid/content/Context;Ljava/util/List;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 886
    const/4 v0, 0x1

    if-nez p1, :cond_4

    .line 887
    return v0

    .line 889
    :cond_4
    nop

    .line 890
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 891
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_51

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 893
    :try_start_1b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v6, 0x20000

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_3f

    .line 896
    nop

    .line 897
    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3e
    .catchall {:try_start_1b .. :try_end_3e} :catchall_40

    move v0, v2

    .line 902
    :cond_3f
    goto :goto_f

    .line 899
    :catchall_40
    move-exception v0

    .line 900
    nop

    .line 901
    const-string v3, ", error: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 903
    move v0, v2

    goto :goto_f

    .line 904
    :cond_51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    const/4 p1, 0x2

    if-le p0, p1, :cond_5b

    .line 905
    invoke-virtual {v1, v2, p1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 908
    :cond_5b
    if-eqz v0, :cond_65

    .line 909
    sget-object p0, Lcom/anythink/core/common/b/e;->m:Ljava/lang/String;

    const-string p1, "Activities : VERIFIED"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_83

    .line 911
    :cond_65
    sget-object p0, Lcom/anythink/core/common/b/e;->m:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Activities : Missing "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " declare in AndroidManifest"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    :goto_83
    return v0
.end method

.method static synthetic b(Lcom/anythink/core/common/b/g;)Lcom/anythink/core/api/IExHandler;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/anythink/core/common/b/g;->s:Lcom/anythink/core/api/IExHandler;

    return-object p0
.end method

.method static synthetic b(Lcom/anythink/core/common/b/g;Landroid/content/Context;)V
    .registers 23

    .line 13525
    move-object/from16 v1, p0

    const-string v0, "APP_LAUNCHER_INFO"

    const-string v2, ""

    .line 13526
    nop

    .line 13528
    const-wide/16 v3, 0x0

    :try_start_9
    invoke-static/range {p1 .. p1}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;)Lcom/anythink/core/c/b;

    move-result-object v5

    iget-object v6, v1, Lcom/anythink/core/common/b/g;->g:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/anythink/core/c/b;->b(Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object v5

    .line 13529
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v6

    .line 14173
    iget-object v6, v6, Lcom/anythink/core/common/b/g;->f:Landroid/content/Context;

    .line 13529
    sget-object v7, Lcom/anythink/core/common/b/e;->n:Ljava/lang/String;

    invoke-static {v6, v7, v0, v2}, Lcom/anythink/core/common/g/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 13531
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_e1

    .line 13532
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 13533
    const-string v6, "start_time"

    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v15
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_30} :catch_e2

    .line 13534
    :try_start_30
    const-string v6, "end_time"

    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v17

    .line 13535
    const-string v6, "psid"

    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 13536
    const-string v6, "launch_mode"

    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 13537
    const-string v8, "launcher_id"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_48} :catch_de

    .line 13539
    :try_start_48
    const-class v8, Lcom/anythink/core/common/b/d;

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "before leave time :"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long v10, v10, v17

    const-wide/16 v19, 0x3e8

    div-long v10, v10, v19

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13541
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v8, v8, v17

    invoke-virtual {v5}, Lcom/anythink/core/c/a;->x()J

    move-result-wide v10

    cmp-long v5, v8, v10

    const/4 v8, 0x1

    if-gez v5, :cond_a5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long v9, v9, v17

    cmp-long v5, v9, v3

    if-ltz v5, :cond_a5

    if-ne v6, v8, :cond_86

    goto :goto_a5

    .line 13548
    :cond_86
    const-class v0, Lcom/anythink/core/common/b/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "use pervioud statime\uff0cclose before:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v17, v17, v15

    div-long v3, v17, v19

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v7

    move-wide v3, v15

    goto :goto_e1

    .line 13542
    :cond_a5
    :goto_a5
    if-ne v6, v8, :cond_a9

    const/4 v5, 0x4

    goto :goto_aa

    :cond_a9
    const/4 v5, 0x2

    :goto_aa
    move v8, v5

    move-wide v9, v15

    move-wide/from16 v11, v17

    move-object v14, v7

    invoke-static/range {v8 .. v14}, Lcom/anythink/core/common/f/c;->a(IJJLjava/lang/String;Ljava/lang/String;)V

    .line 13543
    const-class v5, Lcom/anythink/core/common/b/d;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "SDKContext.init to send playTime:"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v17, v17, v15

    div-long v8, v17, v19

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13544
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v5

    .line 15173
    iget-object v5, v5, Lcom/anythink/core/common/b/g;->f:Landroid/content/Context;

    .line 13544
    sget-object v6, Lcom/anythink/core/common/b/e;->n:Ljava/lang/String;

    invoke-static {v5, v6, v0, v2}, Lcom/anythink/core/common/g/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_d9} :catch_db

    .line 13545
    nop

    .line 13546
    goto :goto_e3

    .line 13552
    :catch_db
    move-exception v0

    move-object v2, v7

    goto :goto_df

    :catch_de
    move-exception v0

    :goto_df
    move-wide v3, v15

    goto :goto_e3

    .line 13553
    :cond_e1
    :goto_e1
    goto :goto_e3

    .line 13552
    :catch_e2
    move-exception v0

    .line 13557
    :goto_e3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    new-instance v5, Lcom/anythink/core/common/b/d;

    iget-object v1, v1, Lcom/anythink/core/common/b/g;->f:Landroid/content/Context;

    invoke-direct {v5, v1, v3, v4, v2}, Lcom/anythink/core/common/b/d;-><init>(Landroid/content/Context;JLjava/lang/String;)V

    .line 13558
    invoke-virtual {v0, v5}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 69
    return-void
.end method

.method public static b(Ljava/lang/Runnable;)V
    .registers 2

    .line 1080
    invoke-static {}, Lcom/anythink/core/common/g/a/a;->a()Lcom/anythink/core/common/g/a/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/g/a/a;->a(Ljava/lang/Runnable;)V

    .line 1081
    return-void
.end method

.method private static b(Ljava/lang/Runnable;J)V
    .registers 4

    .line 1092
    invoke-static {}, Lcom/anythink/core/common/g/a/a;->a()Lcom/anythink/core/common/g/a/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/anythink/core/common/g/a/a;->a(Ljava/lang/Runnable;J)V

    .line 1093
    return-void
.end method

.method static b(Landroid/content/Context;Ljava/util/List;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 919
    const/4 v0, 0x1

    if-nez p1, :cond_4

    .line 920
    return v0

    .line 922
    :cond_4
    nop

    .line 923
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 924
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 925
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v3, 0x0

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_51

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 927
    :try_start_1f
    new-instance v5, Landroid/content/Intent;

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v6, 0x20000

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_3f

    .line 929
    nop

    .line 930
    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3e
    .catchall {:try_start_1f .. :try_end_3e} :catchall_40

    move v0, v3

    .line 935
    :cond_3f
    goto :goto_13

    .line 932
    :catchall_40
    move-exception v0

    .line 933
    nop

    .line 934
    const-string v4, ", error: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 936
    move v0, v3

    goto :goto_13

    .line 937
    :cond_51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    const/4 p1, 0x2

    if-le p0, p1, :cond_5b

    .line 938
    invoke-virtual {v1, v3, p1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 941
    :cond_5b
    if-eqz v0, :cond_65

    .line 942
    sget-object p0, Lcom/anythink/core/common/b/e;->m:Ljava/lang/String;

    const-string p1, "Services : VERIFIED"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_83

    .line 944
    :cond_65
    sget-object p0, Lcom/anythink/core/common/b/e;->m:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Services : Missing "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " declare in AndroidManifest"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    :goto_83
    return v0
.end method

.method static b(Ljava/util/Map;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 860
    const/4 v0, 0x1

    if-nez p0, :cond_4

    .line 861
    return v0

    .line 864
    :cond_4
    nop

    .line 865
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 866
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 867
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_36

    .line 868
    nop

    .line 869
    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v4

    .line 871
    :cond_36
    goto :goto_12

    .line 872
    :cond_37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    const/4 v2, 0x2

    if-le p0, v2, :cond_41

    .line 873
    invoke-virtual {v1, v4, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 876
    :cond_41
    if-eqz v0, :cond_4b

    .line 877
    sget-object p0, Lcom/anythink/core/common/b/e;->m:Ljava/lang/String;

    const-string v1, "Dependence Plugin: VERIFIED"

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a

    .line 879
    :cond_4b
    sget-object p0, Lcom/anythink/core/common/b/e;->m:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Dependence Plugin: Missing "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    :goto_5a
    return v0
.end method

.method private c(Landroid/content/Context;)V
    .registers 23

    .line 480
    const-string v1, ""

    const-string v2, "playRecord"

    move-object/from16 v3, p0

    iget-wide v4, v3, Lcom/anythink/core/common/b/g;->a:J

    .line 482
    const-wide/16 v6, 0x0

    :try_start_a
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    .line 6173
    iget-object v0, v0, Lcom/anythink/core/common/b/g;->f:Landroid/content/Context;

    .line 482
    sget-object v8, Lcom/anythink/core/common/b/e;->n:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v10

    invoke-virtual {v10}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v8, v9, v1}, Lcom/anythink/core/common/g/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 484
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_c1

    .line 485
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 486
    const-string v0, "start_time"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v15

    .line 487
    const-string v0, "end_time"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v17

    .line 488
    const-string v0, "psid"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 489
    const-string v0, "launch_mode"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_52} :catch_bc

    .line 491
    cmp-long v8, v4, v6

    const-wide/16 v19, 0x3e8

    const-string v12, "SDK.init"

    if-eqz v8, :cond_7f

    .line 492
    const/4 v8, 0x1

    if-ne v0, v8, :cond_5f

    const/4 v0, 0x4

    goto :goto_60

    :cond_5f
    const/4 v0, 0x2

    :goto_60
    move v9, v0

    move-wide v10, v15

    move-object v0, v12

    move-wide/from16 v12, v17

    :try_start_65
    invoke-static/range {v9 .. v14}, Lcom/anythink/core/common/f/c;->a(IJJLjava/lang/String;)V

    .line 493
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Create new psid, SDKContext.init to send playTime:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v17, v17, v15

    div-long v9, v17, v19

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_7e} :catch_bc

    goto :goto_97

    .line 495
    :cond_7f
    move-object v0, v12

    .line 496
    :try_start_80
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Psid is old, use pervioud statime\uff0cclose before:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v17, v17, v15

    div-long v8, v17, v19

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_96} :catch_be

    move-wide v4, v15

    .line 498
    :goto_97
    :try_start_97
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    .line 7173
    iget-object v0, v0, Lcom/anythink/core/common/b/g;->f:Landroid/content/Context;

    .line 498
    sget-object v8, Lcom/anythink/core/common/b/e;->n:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v10

    invoke-virtual {v10}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v8, v9, v1}, Lcom/anythink/core/common/g/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_bb} :catch_bc

    goto :goto_c1

    .line 501
    :catch_bc
    move-exception v0

    goto :goto_c2

    :catch_be
    move-exception v0

    move-wide v4, v15

    goto :goto_c2

    .line 503
    :cond_c1
    :goto_c1
    goto :goto_e6

    .line 502
    :goto_c2
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    .line 8173
    iget-object v0, v0, Lcom/anythink/core/common/b/g;->f:Landroid/content/Context;

    .line 502
    sget-object v8, Lcom/anythink/core/common/b/e;->n:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v10

    invoke-virtual {v10}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v8, v2, v1}, Lcom/anythink/core/common/g/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    :goto_e6
    cmp-long v0, v4, v6

    if-nez v0, :cond_fd

    .line 506
    sget-object v0, Lcom/anythink/core/common/b/e;->n:Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "SPU_INIT_TIME_KEY"

    move-object/from16 v8, p1

    invoke-static {v8, v0, v2, v1}, Lcom/anythink/core/common/g/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_ff

    .line 505
    :cond_fd
    move-object/from16 v8, p1

    .line 509
    :goto_ff
    cmp-long v0, v4, v6

    if-nez v0, :cond_107

    .line 510
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 514
    :cond_107
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    new-instance v1, Lcom/anythink/core/common/b/c;

    invoke-direct {v1, v4, v5}, Lcom/anythink/core/common/b/c;-><init>(J)V

    .line 515
    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 516
    return-void
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 685
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/anythink/core/common/b/g;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    invoke-static {}, Lcom/anythink/core/common/g/a/a;->a()Lcom/anythink/core/common/g/a/a;

    move-result-object p3

    new-instance v0, Lcom/anythink/core/common/b/g$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/anythink/core/common/b/g$6;-><init>(Lcom/anythink/core/common/b/g;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Lcom/anythink/core/common/g/a/a;->a(Ljava/lang/Runnable;)V

    .line 705
    return-void
.end method

.method static c(Landroid/content/Context;Ljava/util/List;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 951
    const/4 v0, 0x1

    if-nez p1, :cond_4

    .line 952
    return v0

    .line 954
    :cond_4
    nop

    .line 955
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 957
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 959
    const/4 v3, 0x0

    .line 961
    const/4 v4, 0x0

    :try_start_10
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v5, 0x8

    invoke-virtual {v2, p0, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_1c

    .line 966
    move p0, v0

    goto :goto_2c

    .line 963
    :catchall_1c
    move-exception p0

    .line 964
    nop

    .line 965
    const-string v2, ", error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p0, v4

    .line 968
    :goto_2c
    if-nez v3, :cond_2f

    .line 969
    return v4

    .line 972
    :cond_2f
    iget-object v2, v3, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 974
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_35
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_65

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 975
    nop

    .line 976
    array-length v5, v2

    move v6, v4

    :goto_44
    if-ge v6, v5, :cond_56

    aget-object v7, v2, v6

    .line 977
    iget-object v7, v7, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-static {v7, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_53

    .line 978
    nop

    .line 979
    move v5, v0

    goto :goto_57

    .line 976
    :cond_53
    add-int/lit8 v6, v6, 0x1

    goto :goto_44

    :cond_56
    move v5, v4

    .line 982
    :goto_57
    if-nez v5, :cond_64

    .line 983
    nop

    .line 984
    const-string p0, ", "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p0, v4

    .line 986
    :cond_64
    goto :goto_35

    .line 987
    :cond_65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    const/4 v0, 0x2

    if-le p1, v0, :cond_6f

    .line 988
    invoke-virtual {v1, v4, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 991
    :cond_6f
    if-eqz p0, :cond_79

    .line 992
    sget-object p1, Lcom/anythink/core/common/b/e;->m:Ljava/lang/String;

    const-string v0, "Providers : VERIFIED"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_97

    .line 994
    :cond_79
    sget-object p1, Lcom/anythink/core/common/b/e;->m:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Providers : Missing "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " declare in AndroidManifest"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    :goto_97
    return p0
.end method

.method private d(Landroid/content/Context;)V
    .registers 23

    .line 525
    move-object/from16 v1, p0

    const-string v0, "APP_LAUNCHER_INFO"

    const-string v2, ""

    .line 526
    nop

    .line 528
    const-wide/16 v3, 0x0

    :try_start_9
    invoke-static/range {p1 .. p1}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;)Lcom/anythink/core/c/b;

    move-result-object v5

    iget-object v6, v1, Lcom/anythink/core/common/b/g;->g:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/anythink/core/c/b;->b(Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object v5

    .line 529
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v6

    .line 9173
    iget-object v6, v6, Lcom/anythink/core/common/b/g;->f:Landroid/content/Context;

    .line 529
    sget-object v7, Lcom/anythink/core/common/b/e;->n:Ljava/lang/String;

    invoke-static {v6, v7, v0, v2}, Lcom/anythink/core/common/g/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 531
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_e1

    .line 532
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 533
    const-string v6, "start_time"

    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v15
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_30} :catch_e2

    .line 534
    :try_start_30
    const-string v6, "end_time"

    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v17

    .line 535
    const-string v6, "psid"

    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 536
    const-string v6, "launch_mode"

    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 537
    const-string v8, "launcher_id"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_48} :catch_de

    .line 539
    :try_start_48
    const-class v8, Lcom/anythink/core/common/b/d;

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "before leave time :"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long v10, v10, v17

    const-wide/16 v19, 0x3e8

    div-long v10, v10, v19

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v8, v8, v17

    invoke-virtual {v5}, Lcom/anythink/core/c/a;->x()J

    move-result-wide v10

    cmp-long v5, v8, v10

    const/4 v8, 0x1

    if-gez v5, :cond_a5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long v9, v9, v17

    cmp-long v5, v9, v3

    if-ltz v5, :cond_a5

    if-ne v6, v8, :cond_86

    goto :goto_a5

    .line 548
    :cond_86
    const-class v0, Lcom/anythink/core/common/b/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "use pervioud statime\uff0cclose before:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v17, v17, v15

    div-long v3, v17, v19

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v7

    move-wide v3, v15

    goto :goto_e1

    .line 542
    :cond_a5
    :goto_a5
    if-ne v6, v8, :cond_a9

    const/4 v5, 0x4

    goto :goto_aa

    :cond_a9
    const/4 v5, 0x2

    :goto_aa
    move v8, v5

    move-wide v9, v15

    move-wide/from16 v11, v17

    move-object v14, v7

    invoke-static/range {v8 .. v14}, Lcom/anythink/core/common/f/c;->a(IJJLjava/lang/String;Ljava/lang/String;)V

    .line 543
    const-class v5, Lcom/anythink/core/common/b/d;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "SDKContext.init to send playTime:"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v17, v17, v15

    div-long v8, v17, v19

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v5

    .line 10173
    iget-object v5, v5, Lcom/anythink/core/common/b/g;->f:Landroid/content/Context;

    .line 544
    sget-object v6, Lcom/anythink/core/common/b/e;->n:Ljava/lang/String;

    invoke-static {v5, v6, v0, v2}, Lcom/anythink/core/common/g/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_d9} :catch_db

    .line 545
    nop

    .line 546
    goto :goto_e3

    .line 552
    :catch_db
    move-exception v0

    move-object v2, v7

    goto :goto_df

    :catch_de
    move-exception v0

    :goto_df
    move-wide v3, v15

    goto :goto_e3

    .line 553
    :cond_e1
    :goto_e1
    goto :goto_e3

    .line 552
    :catch_e2
    move-exception v0

    .line 557
    :goto_e3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    new-instance v5, Lcom/anythink/core/common/b/d;

    iget-object v6, v1, Lcom/anythink/core/common/b/g;->f:Landroid/content/Context;

    invoke-direct {v5, v6, v3, v4, v2}, Lcom/anythink/core/common/b/d;-><init>(Landroid/content/Context;JLjava/lang/String;)V

    .line 558
    invoke-virtual {v0, v5}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 559
    return-void
.end method

.method static d(Landroid/content/Context;Ljava/util/List;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1002
    const/4 v0, 0x1

    if-eqz p1, :cond_88

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_88

    .line 1006
    :cond_b
    nop

    .line 1008
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1013
    const/4 v2, 0x0

    :try_start_12
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1014
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v4, 0x80

    .line 1013
    invoke-virtual {v3, p0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 1016
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 1018
    move v4, v2

    :goto_25
    if-ge v4, v3, :cond_4e

    .line 1020
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1021
    iget-object v6, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v6, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1023
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 1024
    nop

    .line 1026
    const-string v0, ", \""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1027
    nop

    .line 1028
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\""

    .line 1029
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v2

    .line 1018
    :cond_4b
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 1033
    :cond_4e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    const/4 p1, 0x2

    if-le p0, p1, :cond_58

    .line 1034
    invoke-virtual {v1, v2, p1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_58
    .catchall {:try_start_12 .. :try_end_58} :catchall_5a

    .line 1040
    :cond_58
    move v2, v0

    goto :goto_5f

    .line 1038
    :catchall_5a
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1039
    nop

    .line 1042
    :goto_5f
    if-eqz v2, :cond_69

    .line 1043
    sget-object p0, Lcom/anythink/core/common/b/e;->m:Ljava/lang/String;

    const-string p1, "meta-data: VERIFIED"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_87

    .line 1045
    :cond_69
    sget-object p0, Lcom/anythink/core/common/b/e;->m:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "meta-data: Missing "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " declare in AndroidManifest"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    :goto_87
    return v2

    .line 1003
    :cond_88
    :goto_88
    return v0
.end method

.method static f(Ljava/lang/String;)Z
    .registers 2

    .line 849
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 850
    sget-object p0, Lcom/anythink/core/common/b/e;->m:Ljava/lang/String;

    const-string v0, "SDK: VERIFIED"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_c

    .line 851
    const/4 p0, 0x1

    return p0

    .line 852
    :catchall_c
    move-exception p0

    .line 855
    sget-object p0, Lcom/anythink/core/common/b/e;->m:Ljava/lang/String;

    const-string v0, "SDK: NOT VERIFIED"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    const/4 p0, 0x0

    return p0
.end method

.method private j(Ljava/lang/String;)V
    .registers 5

    .line 291
    iput-object p1, p0, Lcom/anythink/core/common/b/g;->g:Ljava/lang/String;

    .line 292
    iget-object v0, p0, Lcom/anythink/core/common/b/g;->f:Landroid/content/Context;

    sget-object v1, Lcom/anythink/core/common/b/e;->n:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/e;->o:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/anythink/core/common/g/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method private k(Ljava/lang/String;)V
    .registers 5

    .line 303
    iput-object p1, p0, Lcom/anythink/core/common/b/g;->h:Ljava/lang/String;

    .line 304
    iget-object v0, p0, Lcom/anythink/core/common/b/g;->f:Landroid/content/Context;

    sget-object v1, Lcom/anythink/core/common/b/e;->n:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/e;->p:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/anythink/core/common/g/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    return-void
.end method

.method private l(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    .line 661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": sessionid is empty."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDK.init"

    invoke-static {v1, v0}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    invoke-virtual {p0}, Lcom/anythink/core/common/b/g;->m()Ljava/lang/String;

    move-result-object v0

    .line 663
    nop

    .line 664
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/anythink/core/common/b/g;->f:Landroid/content/Context;

    invoke-static {v2}, Lcom/anythink/core/common/g/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/common/g/d;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 666
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    const v4, 0x989680

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5a

    .line 664
    :cond_58
    const-string v2, ""

    .line 668
    :goto_5a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 669
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/g/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 671
    :try_start_7b
    iget-object v5, p0, Lcom/anythink/core/common/b/g;->n:Lorg/json/JSONObject;

    invoke-virtual {v5, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_80} :catch_81

    .line 673
    goto :goto_82

    .line 672
    :catch_81
    move-exception v5

    .line 675
    :goto_82
    iget-object v5, p0, Lcom/anythink/core/common/b/g;->f:Landroid/content/Context;

    sget-object v6, Lcom/anythink/core/common/b/e;->n:Ljava/lang/String;

    iget-object v7, p0, Lcom/anythink/core/common/b/g;->n:Lorg/json/JSONObject;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "SPU_SESSIONID_KEY"

    invoke-static {v5, v6, v8, v7}, Lcom/anythink/core/common/g/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "placementSessionId :"

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    invoke-virtual {p0}, Lcom/anythink/core/common/b/g;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a9

    goto :goto_aa

    :cond_a9
    const/4 v2, 0x0

    :goto_aa
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v3, "2"

    invoke-static {p1, v3, v2, v1}, Lcom/anythink/core/common/f/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    return-object v0
.end method

.method private r()V
    .registers 3

    .line 346
    invoke-static {}, Lcom/anythink/core/common/g/a/a;->a()Lcom/anythink/core/common/g/a/a;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/common/b/g$1;

    invoke-direct {v1, p0}, Lcom/anythink/core/common/b/g$1;-><init>(Lcom/anythink/core/common/b/g;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/g/a/a;->a(Ljava/lang/Runnable;)V

    .line 385
    return-void
.end method

.method private s()V
    .registers 4

    .line 566
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/b/g;->o:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_9

    .line 567
    iget-object v1, p0, Lcom/anythink/core/common/b/g;->f:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 569
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/core/common/b/g;->o:Landroid/content/BroadcastReceiver;
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    .line 572
    goto :goto_e

    .line 570
    :catchall_d
    move-exception v0

    .line 575
    :goto_e
    :try_start_e
    new-instance v0, Lcom/anythink/core/common/b/g$5;

    invoke-direct {v0, p0}, Lcom/anythink/core/common/b/g$5;-><init>(Lcom/anythink/core/common/b/g;)V

    iput-object v0, p0, Lcom/anythink/core/common/b/g;->o:Landroid/content/BroadcastReceiver;

    .line 585
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 586
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 587
    iget-object v1, p0, Lcom/anythink/core/common/b/g;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/core/common/b/g;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_26
    .catchall {:try_start_e .. :try_end_26} :catchall_27

    .line 590
    return-void

    .line 588
    :catchall_27
    move-exception v0

    .line 591
    return-void
.end method

.method private t()V
    .registers 6

    .line 1139
    nop

    .line 1140
    iget-object v0, p0, Lcom/anythink/core/common/b/g;->f:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_39

    .line 1142
    :try_start_6
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/anythink/core/common/b/g;->f:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/core/common/b/g;->t:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_31

    .line 1143
    if-nez v0, :cond_2f

    .line 1144
    :try_start_1a
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/anythink/core/common/b/g;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/core/common/b/g;->t:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_2b
    .catchall {:try_start_1a .. :try_end_2b} :catchall_2d

    move v1, v0

    goto :goto_30

    .line 1147
    :catchall_2d
    move-exception v1

    goto :goto_35

    .line 1143
    :cond_2f
    move v1, v0

    .line 1148
    :goto_30
    goto :goto_39

    .line 1147
    :catchall_31
    move-exception v0

    move v4, v1

    move-object v1, v0

    move v0, v4

    :goto_35
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move v1, v0

    .line 1151
    :cond_39
    :goto_39
    iput-boolean v1, p0, Lcom/anythink/core/common/b/g;->u:Z

    .line 1152
    return-void
.end method


# virtual methods
.method protected final declared-synchronized a(Landroid/content/Context;Ljava/lang/String;I)J
    .registers 15

    monitor-enter p0

    .line 604
    :try_start_1
    invoke-static {p1}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;)Lcom/anythink/core/c/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/anythink/core/c/b;->b(Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object v0

    .line 606
    sget-object v1, Lcom/anythink/core/common/b/e;->n:Ljava/lang/String;

    const-string v2, "SPU_PSID_KEY"

    const-string v3, ""

    invoke-static {p1, v1, v2, v3}, Lcom/anythink/core/common/g/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 607
    sget-object v2, Lcom/anythink/core/common/b/e;->n:Ljava/lang/String;

    const-string v3, "SPU_SESSIONID_KEY"

    const-string v4, ""

    invoke-static {p1, v2, v3, v4}, Lcom/anythink/core/common/g/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 608
    sget-object v3, Lcom/anythink/core/common/b/e;->n:Ljava/lang/String;

    const-string v4, "SPU_INIT_TIME_KEY"

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {p1, v3, v4, v7}, Lcom/anythink/core/common/g/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 610
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 612
    sub-long v9, v7, v3

    cmp-long v9, v9, v5

    if-gez v9, :cond_3a

    .line 613
    move-wide v3, v5

    .line 617
    :cond_3a
    sub-long v3, v7, v3

    if-nez p3, :cond_43

    .line 618
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->x()J

    move-result-wide v9

    goto :goto_48

    :cond_43
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->k()I

    move-result v9

    int-to-long v9, v9

    :goto_48
    cmp-long v3, v3, v9

    if-gtz v3, :cond_8b

    .line 619
    const-string p1, "SDK.init"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "psid updataTime<="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/anythink/core/c/a;->x()J

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    iput-object v1, p0, Lcom/anythink/core/common/b/g;->m:Ljava/lang/String;

    .line 621
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_73

    .line 622
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/anythink/core/common/b/g;->n:Lorg/json/JSONObject;

    .line 624
    :cond_73
    const-string p1, "SDK.init"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "psid :"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/anythink/core/common/b/g;->m:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_89
    .catchall {:try_start_1 .. :try_end_89} :catchall_13d

    .line 625
    monitor-exit p0

    return-wide v5

    .line 627
    :cond_8b
    :try_start_8b
    const-string v1, "SDK.init"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "psid updataTime>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/anythink/core/c/a;->x()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    invoke-virtual {p0}, Lcom/anythink/core/common/b/g;->m()Ljava/lang/String;

    move-result-object v0

    .line 629
    const-string v1, ""

    .line 630
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d8

    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/anythink/core/common/g/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/common/g/d;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 632
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const v2, 0x989680

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 635
    :cond_d8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/anythink/core/common/g/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/anythink/core/common/b/g;->m:Ljava/lang/String;

    .line 638
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    iput-object p2, p0, Lcom/anythink/core/common/b/g;->n:Lorg/json/JSONObject;

    .line 640
    sget-object p2, Lcom/anythink/core/common/b/e;->n:Ljava/lang/String;

    const-string v0, "SPU_PSID_KEY"

    iget-object v2, p0, Lcom/anythink/core/common/b/g;->m:Ljava/lang/String;

    invoke-static {p1, p2, v0, v2}, Lcom/anythink/core/common/g/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    sget-object p2, Lcom/anythink/core/common/b/e;->n:Ljava/lang/String;

    const-string v0, "SPU_SESSIONID_KEY"

    const-string v2, ""

    invoke-static {p1, p2, v0, v2}, Lcom/anythink/core/common/g/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    sget-object p2, Lcom/anythink/core/common/b/e;->n:Ljava/lang/String;

    const-string v0, "SPU_INIT_TIME_KEY"

    invoke-static {p1, p2, v0, v7, v8}, Lcom/anythink/core/common/g/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 644
    const-string p1, "SDK.init"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "psid :"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/core/common/b/g;->m:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    const/4 p1, 0x0

    const-string p2, "1"

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v1, v0}, Lcom/anythink/core/common/f/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    if-nez p3, :cond_13b

    .line 647
    iput-wide v7, p0, Lcom/anythink/core/common/b/g;->a:J
    :try_end_13b
    .catchall {:try_start_8b .. :try_end_13b} :catchall_13d

    .line 649
    :cond_13b
    monitor-exit p0

    return-wide v7

    .line 603
    :catchall_13d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Landroid/content/Context;)V
    .registers 2

    .line 169
    iput-object p1, p0, Lcom/anythink/core/common/b/g;->f:Landroid/content/Context;

    .line 170
    return-void
.end method

.method public final declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    monitor-enter p0

    .line 395
    if-nez p1, :cond_5

    .line 396
    monitor-exit p0

    return-void

    .line 400
    :cond_5
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 401
    sget-object v2, Lcom/anythink/core/common/b/e;->n:Ljava/lang/String;

    const-string v3, "AT_INIT_TIME"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {p1, v2, v3, v6}, Lcom/anythink/core/common/g/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/anythink/core/common/b/g;->w:J

    .line 402
    cmp-long v2, v2, v4

    if-nez v2, :cond_2c

    .line 404
    iput-wide v0, p0, Lcom/anythink/core/common/b/g;->w:J

    .line 405
    sget-object v2, Lcom/anythink/core/common/b/e;->n:Ljava/lang/String;

    const-string v3, "AT_INIT_TIME"

    iget-wide v6, p0, Lcom/anythink/core/common/b/g;->w:J

    invoke-static {p1, v2, v3, v6, v7}, Lcom/anythink/core/common/g/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 408
    :cond_2c
    invoke-static {v0, v1}, Lcom/anythink/core/common/b/g;->a(J)J

    move-result-wide v0

    .line 409
    iget-wide v2, p0, Lcom/anythink/core/common/b/g;->w:J

    invoke-static {v2, v3}, Lcom/anythink/core/common/b/g;->a(J)J

    move-result-wide v2

    .line 412
    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/anythink/core/common/b/g;->x:J

    .line 414
    iput-wide v4, p0, Lcom/anythink/core/common/b/g;->a:J

    .line 415
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/a/a;->a(Landroid/content/Context;)Lcom/anythink/core/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/a/a;->a()V

    .line 417
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 418
    nop

    .line 3169
    iput-object v0, p0, Lcom/anythink/core/common/b/g;->f:Landroid/content/Context;

    .line 419
    nop

    .line 3291
    iput-object p2, p0, Lcom/anythink/core/common/b/g;->g:Ljava/lang/String;

    .line 3292
    sget-object v1, Lcom/anythink/core/common/b/e;->n:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/e;->o:Ljava/lang/String;

    invoke-static {v0, v1, v2, p2}, Lcom/anythink/core/common/g/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    nop

    .line 3303
    iput-object p3, p0, Lcom/anythink/core/common/b/g;->h:Ljava/lang/String;

    .line 3304
    iget-object v1, p0, Lcom/anythink/core/common/b/g;->f:Landroid/content/Context;

    sget-object v2, Lcom/anythink/core/common/b/e;->n:Ljava/lang/String;

    sget-object v3, Lcom/anythink/core/common/b/e;->p:Ljava/lang/String;

    invoke-static {v1, v2, v3, p3}, Lcom/anythink/core/common/g/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    nop

    .line 4139
    const/4 v1, 0x0

    .line 4140
    iget-object v2, p0, Lcom/anythink/core/common/b/g;->f:Landroid/content/Context;
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_6e} :catch_10c
    .catchall {:try_start_5 .. :try_end_6e} :catchall_109

    const/4 v3, 0x0

    if-eqz v2, :cond_9a

    .line 4142
    :try_start_71
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/anythink/core/common/b/g;->f:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    iget-object v5, p0, Lcom/anythink/core/common/b/g;->t:Ljava/lang/String;

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    .line 4143
    if-nez v1, :cond_95

    .line 4144
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/anythink/core/common/b/g;->f:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    iget-object v5, p0, Lcom/anythink/core/common/b/g;->t:Ljava/lang/String;

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_95
    .catchall {:try_start_71 .. :try_end_95} :catchall_96

    .line 4148
    :cond_95
    goto :goto_9a

    .line 4147
    :catchall_96
    move-exception v2

    :try_start_97
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 4151
    :cond_9a
    :goto_9a
    iput-boolean v1, p0, Lcom/anythink/core/common/b/g;->u:Z
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_9c} :catch_10c
    .catchall {:try_start_97 .. :try_end_9c} :catchall_109

    .line 423
    nop

    .line 4566
    :try_start_9d
    iget-object v1, p0, Lcom/anythink/core/common/b/g;->o:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_a6

    .line 4567
    iget-object v2, p0, Lcom/anythink/core/common/b/g;->f:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4569
    :cond_a6
    iput-object v3, p0, Lcom/anythink/core/common/b/g;->o:Landroid/content/BroadcastReceiver;
    :try_end_a8
    .catchall {:try_start_9d .. :try_end_a8} :catchall_a9

    .line 4572
    goto :goto_aa

    .line 4570
    :catchall_a9
    move-exception v1

    .line 4575
    :goto_aa
    :try_start_aa
    new-instance v1, Lcom/anythink/core/common/b/g$5;

    invoke-direct {v1, p0}, Lcom/anythink/core/common/b/g$5;-><init>(Lcom/anythink/core/common/b/g;)V

    iput-object v1, p0, Lcom/anythink/core/common/b/g;->o:Landroid/content/BroadcastReceiver;

    .line 4585
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 4586
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4587
    iget-object v2, p0, Lcom/anythink/core/common/b/g;->f:Landroid/content/Context;

    iget-object v3, p0, Lcom/anythink/core/common/b/g;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_c2
    .catchall {:try_start_aa .. :try_end_c2} :catchall_c3

    .line 4590
    goto :goto_c4

    .line 4588
    :catchall_c3
    move-exception v1

    .line 425
    :goto_c4
    :try_start_c4
    invoke-static {}, Lcom/anythink/core/common/g/a/a;->a()Lcom/anythink/core/common/g/a/a;

    move-result-object v1

    new-instance v2, Lcom/anythink/core/common/b/g$2;

    invoke-direct {v2, p0, v0, p2, p1}, Lcom/anythink/core/common/b/g$2;-><init>(Lcom/anythink/core/common/b/g;Landroid/content/Context;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/g/a/a;->a(Ljava/lang/Runnable;)V

    .line 445
    new-instance v1, Lcom/anythink/core/common/b/g$3;

    invoke-direct {v1, p0, v0}, Lcom/anythink/core/common/b/g$3;-><init>(Lcom/anythink/core/common/b/g;Landroid/content/Context;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v1, v2, v3}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;J)V

    .line 453
    nop

    .line 5346
    invoke-static {}, Lcom/anythink/core/common/g/a/a;->a()Lcom/anythink/core/common/g/a/a;

    move-result-object v1

    new-instance v2, Lcom/anythink/core/common/b/g$1;

    invoke-direct {v2, p0}, Lcom/anythink/core/common/b/g$1;-><init>(Lcom/anythink/core/common/b/g;)V

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/g/a/a;->a(Ljava/lang/Runnable;)V

    .line 455
    invoke-static {}, Lcom/anythink/core/common/g/a/a;->a()Lcom/anythink/core/common/g/a/a;

    move-result-object v1

    new-instance v2, Lcom/anythink/core/common/b/g$4;

    invoke-direct {v2, p0, p1, v0}, Lcom/anythink/core/common/b/g$4;-><init>(Lcom/anythink/core/common/b/g;Landroid/content/Context;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/g/a/a;->a(Ljava/lang/Runnable;)V

    .line 467
    nop

    .line 5685
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/anythink/core/common/b/g;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 5687
    invoke-static {}, Lcom/anythink/core/common/g/a/a;->a()Lcom/anythink/core/common/g/a/a;

    move-result-object p3

    new-instance v0, Lcom/anythink/core/common/b/g$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/anythink/core/common/b/g$6;-><init>(Lcom/anythink/core/common/b/g;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Lcom/anythink/core/common/g/a/a;->a(Ljava/lang/Runnable;)V
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_107} :catch_10c
    .catchall {:try_start_c4 .. :try_end_107} :catchall_109

    .line 471
    monitor-exit p0

    return-void

    .line 394
    :catchall_109
    move-exception p1

    monitor-exit p0

    throw p1

    .line 469
    :catch_10c
    move-exception p1

    .line 472
    monitor-exit p0

    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 790
    invoke-virtual {p0}, Lcom/anythink/core/common/b/g;->p()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 791
    sget-object v0, Lcom/anythink/core/common/b/e;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Requesting placement("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") setting Info\uff0cplease wait a moment."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    new-instance v0, Lcom/anythink/core/common/e/h;

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->k()Ljava/lang/String;

    move-result-object v5

    const-string v7, ""

    move-object v2, v0

    move-object v3, p1

    move-object v6, p2

    move-object v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/anythink/core/common/e/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 793
    const/4 p1, 0x0

    new-instance p3, Lcom/anythink/core/common/b/g$8;

    invoke-direct {p3, p0, p2}, Lcom/anythink/core/common/b/g$8;-><init>(Lcom/anythink/core/common/b/g;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p3}, Lcom/anythink/core/common/e/h;->a(ILcom/anythink/core/common/e/g;)V

    .line 838
    return-void

    .line 839
    :cond_45
    sget-object p1, Lcom/anythink/core/common/b/e;->m:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "********************************** Get Splash Config Start("

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, ") *************************************"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    sget-object p1, Lcom/anythink/core/common/b/e;->m:Ljava/lang/String;

    const-string p3, "Only use in debug mode!"

    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    sget-object p1, Lcom/anythink/core/common/b/e;->m:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "********************************** Get Splash Config End("

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    return-void
.end method

.method public final a(Ljava/lang/Runnable;)V
    .registers 4

    .line 1072
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_e

    .line 1073
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 1075
    :cond_e
    iget-object v0, p0, Lcom/anythink/core/common/b/g;->i:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1077
    return-void
.end method

.method public final a(Ljava/lang/Runnable;J)V
    .registers 5

    .line 1084
    iget-object v0, p0, Lcom/anythink/core/common/b/g;->i:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1085
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/anythink/core/common/b/g;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 224
    iput-object p1, p0, Lcom/anythink/core/common/b/g;->y:Ljava/util/List;

    .line 225
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 186
    const/4 v0, 0x0

    const-string v1, ""

    const-string v2, "channel"

    if-eqz p1, :cond_26

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 187
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 188
    if-eqz v3, :cond_18

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_19

    :cond_18
    move-object v3, v1

    :goto_19
    iput-object v3, p0, Lcom/anythink/core/common/b/g;->z:Ljava/lang/String;

    .line 190
    invoke-static {v3}, Lcom/anythink/core/common/g/g;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 191
    iput-object v0, p0, Lcom/anythink/core/common/b/g;->z:Ljava/lang/String;

    .line 192
    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    :cond_26
    const-string v3, "sub_channel"

    if-eqz p1, :cond_47

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 197
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 198
    if-eqz v4, :cond_3a

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3a
    iput-object v1, p0, Lcom/anythink/core/common/b/g;->A:Ljava/lang/String;

    .line 200
    invoke-static {v1}, Lcom/anythink/core/common/g/g;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_47

    .line 201
    iput-object v0, p0, Lcom/anythink/core/common/b/g;->A:Ljava/lang/String;

    .line 202
    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :cond_47
    iget-object v0, p0, Lcom/anythink/core/common/b/g;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 207
    if-eqz p1, :cond_53

    .line 208
    iget-object v0, p0, Lcom/anythink/core/common/b/g;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 211
    :cond_53
    iget-object p1, p0, Lcom/anythink/core/common/b/g;->z:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_62

    .line 212
    iget-object p1, p0, Lcom/anythink/core/common/b/g;->j:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v0, p0, Lcom/anythink/core/common/b/g;->z:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    :cond_62
    iget-object p1, p0, Lcom/anythink/core/common/b/g;->A:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_71

    .line 215
    iget-object p1, p0, Lcom/anythink/core/common/b/g;->j:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v0, p0, Lcom/anythink/core/common/b/g;->A:Ljava/lang/String;

    invoke-virtual {p1, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :cond_71
    return-void
.end method

.method public final a(Z)V
    .registers 2

    .line 1135
    iput-boolean p1, p0, Lcom/anythink/core/common/b/g;->v:Z

    .line 1136
    return-void
.end method

.method public final varargs declared-synchronized a([Ljava/lang/String;)V
    .registers 7

    monitor-enter p0

    .line 150
    if-eqz p1, :cond_1c

    .line 151
    :try_start_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/common/b/g;->l:Ljava/util/Map;

    .line 152
    array-length v0, p1

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_1a

    aget-object v2, p1, v1

    .line 153
    iget-object v3, p0, Lcom/anythink/core/common/b/g;->l:Ljava/util/Map;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_21

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1a
    monitor-exit p0

    return-void

    .line 156
    :cond_1c
    const/4 p1, 0x0

    :try_start_1d
    iput-object p1, p0, Lcom/anythink/core/common/b/g;->l:Ljava/util/Map;
    :try_end_1f
    .catchall {:try_start_1d .. :try_end_1f} :catchall_21

    .line 158
    monitor-exit p0

    return-void

    .line 149
    :catchall_21
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;)Z
    .registers 3

    monitor-enter p0

    .line 161
    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/common/b/g;->l:Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_e

    if-nez v0, :cond_8

    .line 162
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    .line 165
    :cond_8
    :try_start_8
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_e

    monitor-exit p0

    return p1

    .line 160
    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b()Lcom/anythink/core/api/IExHandler;
    .registers 4

    monitor-enter p0

    .line 121
    :try_start_1
    iget-boolean v0, p0, Lcom/anythink/core/common/b/g;->d:Z

    if-eqz v0, :cond_9

    .line 122
    iget-object v0, p0, Lcom/anythink/core/common/b/g;->s:Lcom/anythink/core/api/IExHandler;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_31

    monitor-exit p0

    return-object v0

    .line 126
    :cond_9
    const/4 v0, 0x1

    :try_start_a
    const-string v1, "com.anythink.pd.ExHandler"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/anythink/core/api/IExHandler;

    .line 127
    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 128
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 129
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 130
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/core/api/IExHandler;

    iput-object v1, p0, Lcom/anythink/core/common/b/g;->s:Lcom/anythink/core/api/IExHandler;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_29} :catch_2a
    .catchall {:try_start_a .. :try_end_29} :catchall_31

    .line 133
    goto :goto_2b

    .line 131
    :catch_2a
    move-exception v1

    .line 135
    :goto_2b
    :try_start_2b
    iput-boolean v0, p0, Lcom/anythink/core/common/b/g;->d:Z

    .line 136
    iget-object v0, p0, Lcom/anythink/core/common/b/g;->s:Lcom/anythink/core/api/IExHandler;
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_31

    monitor-exit p0

    return-object v0

    .line 120
    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Ljava/lang/String;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 236
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 237
    iget-object v1, p0, Lcom/anythink/core/common/b/g;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 238
    iget-object v1, p0, Lcom/anythink/core/common/b/g;->j:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_14

    .line 239
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 241
    :cond_14
    if-eqz p1, :cond_19

    .line 242
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 246
    :cond_19
    const-string p1, "channel"

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    const-string v1, "sub_channel"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    iget-object v2, p0, Lcom/anythink/core/common/b/g;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 250
    iget-object v3, p0, Lcom/anythink/core/common/b/g;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 252
    if-eqz v2, :cond_34

    .line 253
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    :cond_34
    if-eqz v3, :cond_39

    .line 257
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :cond_39
    return-object v0
.end method

.method public final b(Landroid/content/Context;)V
    .registers 4

    .line 708
    invoke-static {}, Lcom/anythink/core/common/g/a/a;->a()Lcom/anythink/core/common/g/a/a;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/common/b/g$7;

    invoke-direct {v1, p0, p1}, Lcom/anythink/core/common/b/g$7;-><init>(Lcom/anythink/core/common/b/g;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/g/a/a;->a(Ljava/lang/Runnable;)V

    .line 787
    return-void
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1061
    invoke-static {}, Lcom/anythink/core/common/g/a/a;->a()Lcom/anythink/core/common/g/a/a;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/common/b/g$9;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/anythink/core/common/b/g$9;-><init>(Lcom/anythink/core/common/b/g;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/g/a/a;->a(Ljava/lang/Runnable;)V

    .line 1069
    return-void
.end method

.method public final b(Z)V
    .registers 2

    .line 1205
    iput-boolean p1, p0, Lcom/anythink/core/common/b/g;->B:Z

    .line 1206
    return-void
.end method

.method public final c()Landroid/content/Context;
    .registers 2

    .line 173
    iget-object v0, p0, Lcom/anythink/core/common/b/g;->f:Landroid/content/Context;

    return-object v0
.end method

.method public final c(Ljava/lang/Runnable;)V
    .registers 3

    .line 1088
    iget-object v0, p0, Lcom/anythink/core/common/b/g;->i:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1089
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 4

    .line 269
    iput-object p1, p0, Lcom/anythink/core/common/b/g;->z:Ljava/lang/String;

    .line 270
    iget-object v0, p0, Lcom/anythink/core/common/b/g;->j:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "channel"

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    return-void
.end method

.method public final d()J
    .registers 3

    .line 177
    iget-wide v0, p0, Lcom/anythink/core/common/b/g;->w:J

    return-wide v0
.end method

.method public final d(Ljava/lang/String;)V
    .registers 4

    .line 279
    iput-object p1, p0, Lcom/anythink/core/common/b/g;->A:Ljava/lang/String;

    .line 280
    iget-object v0, p0, Lcom/anythink/core/common/b/g;->j:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "sub_channel"

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    return-void
.end method

.method public final e()J
    .registers 3

    .line 181
    iget-wide v0, p0, Lcom/anythink/core/common/b/g;->x:J

    return-wide v0
.end method

.method public final declared-synchronized e(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    monitor-enter p0

    .line 327
    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/common/b/g;->n:Lorg/json/JSONObject;

    if-nez v0, :cond_c

    .line 328
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/common/b/g;->n:Lorg/json/JSONObject;

    .line 331
    :cond_c
    iget-object v0, p0, Lcom/anythink/core/common/b/g;->n:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 333
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 334
    invoke-direct {p0, p1}, Lcom/anythink/core/common/b/g;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_44

    .line 336
    :cond_1d
    const-string v1, "SDK.init"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ": sessionid exists."

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string p1, "SDK.init"

    const-string v1, "placementSessionId :"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_46

    .line 340
    :goto_44
    monitor-exit p0

    return-object v0

    .line 326
    :catchall_46
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final f()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/anythink/core/common/b/g;->y:Ljava/util/List;

    return-object v0
.end method

.method public final g()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/anythink/core/common/b/g;->j:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public final g(Ljava/lang/String;)V
    .registers 5

    .line 1119
    iput-object p1, p0, Lcom/anythink/core/common/b/g;->q:Ljava/lang/String;

    .line 1120
    iget-object v0, p0, Lcom/anythink/core/common/b/g;->f:Landroid/content/Context;

    const-string v1, "exc_log"

    const-string v2, "exc_sys"

    invoke-static {v0, v1, v2, p1}, Lcom/anythink/core/common/g/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    return-void
.end method

.method public final h()Ljava/lang/String;
    .registers 3

    .line 264
    iget-object v0, p0, Lcom/anythink/core/common/b/g;->j:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "channel"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 265
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_f
    const-string v0, ""

    return-object v0
.end method

.method public final h(Ljava/lang/String;)V
    .registers 5

    .line 1124
    iput-object p1, p0, Lcom/anythink/core/common/b/g;->r:Ljava/lang/String;

    .line 1125
    iget-object v0, p0, Lcom/anythink/core/common/b/g;->f:Landroid/content/Context;

    const-string v1, "exc_log"

    const-string v2, "exc_bk"

    invoke-static {v0, v1, v2, p1}, Lcom/anythink/core/common/g/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    return-void
.end method

.method public final i()Ljava/lang/String;
    .registers 3

    .line 274
    iget-object v0, p0, Lcom/anythink/core/common/b/g;->j:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "sub_channel"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 275
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_f
    const-string v0, ""

    return-object v0
.end method

.method public final i(Ljava/lang/String;)V
    .registers 5

    .line 1130
    iget-object v0, p0, Lcom/anythink/core/common/b/g;->f:Landroid/content/Context;

    sget-object v1, Lcom/anythink/core/common/b/e;->n:Ljava/lang/String;

    const-string v2, "UP_ID"

    invoke-static {v0, v1, v2, p1}, Lcom/anythink/core/common/g/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    iput-object p1, p0, Lcom/anythink/core/common/b/g;->p:Ljava/lang/String;

    .line 1132
    return-void
.end method

.method public final j()Ljava/lang/String;
    .registers 5

    .line 284
    iget-object v0, p0, Lcom/anythink/core/common/b/g;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 285
    iget-object v0, p0, Lcom/anythink/core/common/b/g;->f:Landroid/content/Context;

    sget-object v1, Lcom/anythink/core/common/b/e;->n:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/e;->o:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/common/g/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/b/g;->g:Ljava/lang/String;

    .line 287
    :cond_16
    iget-object v0, p0, Lcom/anythink/core/common/b/g;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .registers 5

    .line 296
    iget-object v0, p0, Lcom/anythink/core/common/b/g;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 297
    iget-object v0, p0, Lcom/anythink/core/common/b/g;->f:Landroid/content/Context;

    sget-object v1, Lcom/anythink/core/common/b/e;->n:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/e;->p:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/common/g/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/b/g;->h:Ljava/lang/String;

    .line 299
    :cond_16
    iget-object v0, p0, Lcom/anythink/core/common/b/g;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .registers 4

    .line 310
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/b/g;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 311
    nop

    .line 2173
    iget-object v0, p0, Lcom/anythink/core/common/b/g;->f:Landroid/content/Context;

    .line 311
    invoke-virtual {p0}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/anythink/core/common/b/g;->a(Landroid/content/Context;Ljava/lang/String;I)J
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    .line 315
    :cond_13
    goto :goto_15

    .line 313
    :catch_14
    move-exception v0

    .line 316
    :goto_15
    iget-object v0, p0, Lcom/anythink/core/common/b/g;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .registers 5

    .line 1097
    iget-object v0, p0, Lcom/anythink/core/common/b/g;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1098
    iget-object v0, p0, Lcom/anythink/core/common/b/g;->f:Landroid/content/Context;

    sget-object v1, Lcom/anythink/core/common/b/e;->n:Ljava/lang/String;

    const-string v2, "UP_ID"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/common/g/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/b/g;->p:Ljava/lang/String;

    .line 1100
    :cond_16
    iget-object v0, p0, Lcom/anythink/core/common/b/g;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .registers 5

    .line 1105
    iget-object v0, p0, Lcom/anythink/core/common/b/g;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1106
    iget-object v0, p0, Lcom/anythink/core/common/b/g;->f:Landroid/content/Context;

    const-string v1, "exc_log"

    const-string v2, "exc_sys"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/common/g/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/b/g;->q:Ljava/lang/String;

    .line 1108
    :cond_16
    iget-object v0, p0, Lcom/anythink/core/common/b/g;->q:Ljava/lang/String;

    return-object v0
.end method

.method public final o()Ljava/lang/String;
    .registers 5

    .line 1112
    iget-object v0, p0, Lcom/anythink/core/common/b/g;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1113
    iget-object v0, p0, Lcom/anythink/core/common/b/g;->f:Landroid/content/Context;

    const-string v1, "exc_log"

    const-string v2, "exc_bk"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/common/g/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/b/g;->r:Ljava/lang/String;

    .line 1115
    :cond_16
    iget-object v0, p0, Lcom/anythink/core/common/b/g;->r:Ljava/lang/String;

    return-object v0
.end method

.method public final p()Z
    .registers 2

    .line 1155
    iget-boolean v0, p0, Lcom/anythink/core/common/b/g;->u:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/anythink/core/common/b/g;->v:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    return v0

    :cond_b
    :goto_b
    const/4 v0, 0x1

    return v0
.end method

.method public final q()Z
    .registers 2

    .line 1209
    iget-boolean v0, p0, Lcom/anythink/core/common/b/g;->B:Z

    return v0
.end method
