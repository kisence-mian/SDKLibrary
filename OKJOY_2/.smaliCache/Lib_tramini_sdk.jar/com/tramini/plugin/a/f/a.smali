.class public Lcom/tramini/plugin/a/f/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:I = 0x0

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field private static f:Lcom/tramini/plugin/a/f/a;


# instance fields
.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    const-class v0, Lcom/tramini/plugin/a/f/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tramini/plugin/a/f/a;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static a()Lcom/tramini/plugin/a/f/a;
    .registers 1

    .line 46
    sget-object v0, Lcom/tramini/plugin/a/f/a;->f:Lcom/tramini/plugin/a/f/a;

    if-nez v0, :cond_b

    .line 47
    new-instance v0, Lcom/tramini/plugin/a/f/a;

    invoke-direct {v0}, Lcom/tramini/plugin/a/f/a;-><init>()V

    sput-object v0, Lcom/tramini/plugin/a/f/a;->f:Lcom/tramini/plugin/a/f/a;

    .line 49
    :cond_b
    sget-object v0, Lcom/tramini/plugin/a/f/a;->f:Lcom/tramini/plugin/a/f/a;

    return-object v0
.end method

.method static synthetic a(Lcom/tramini/plugin/a/f/a;)Ljava/util/Map;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/tramini/plugin/a/f/a;->g:Ljava/util/Map;

    return-object p0
.end method

.method private declared-synchronized a(ILjava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 14

    monitor-enter p0

    .line 65
    :try_start_1
    invoke-static {}, Lcom/tramini/plugin/a/a/b;->a()Lcom/tramini/plugin/a/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tramini/plugin/a/a/b;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tramini/plugin/b/b;->a(Landroid/content/Context;)Lcom/tramini/plugin/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tramini/plugin/b/b;->b()Lcom/tramini/plugin/b/a;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_50

    .line 66
    if-nez v0, :cond_15

    .line 67
    monitor-exit p0

    return-void

    .line 70
    :cond_15
    :try_start_15
    invoke-virtual {v0}, Lcom/tramini/plugin/b/a;->e()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    .line 71
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tramini/plugin/a/c/c;

    .line 73
    const/16 v1, 0x1388

    .line 74
    if-eqz v0, :cond_3a

    .line 75
    iget v1, v0, Lcom/tramini/plugin/a/c/c;->b:I

    .line 76
    iget v0, v0, Lcom/tramini/plugin/a/c/c;->c:I

    .line 78
    if-nez v1, :cond_2d

    if-nez v0, :cond_2d

    .line 79
    const/4 v1, 0x0

    goto :goto_3a

    .line 80
    :cond_2d
    if-eq v1, v0, :cond_3a

    .line 83
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    sub-int/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v1, v0

    .line 91
    :cond_3a
    :goto_3a
    nop

    .line 1154
    invoke-static {}, Lcom/tramini/plugin/a/a/b;->a()Lcom/tramini/plugin/a/a/b;

    move-result-object v0

    new-instance v8, Lcom/tramini/plugin/a/f/a$1;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/tramini/plugin/a/f/a$1;-><init>(Lcom/tramini/plugin/a/f/a;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;I)V

    int-to-long p1, v1

    invoke-virtual {v0, v8, p1, p2}, Lcom/tramini/plugin/a/a/b;->a(Ljava/lang/Runnable;J)V
    :try_end_4e
    .catchall {:try_start_15 .. :try_end_4e} :catchall_50

    .line 92
    monitor-exit p0

    return-void

    .line 64
    :catchall_50
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a(ILjava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;I)V
    .registers 14

    .line 154
    invoke-static {}, Lcom/tramini/plugin/a/a/b;->a()Lcom/tramini/plugin/a/a/b;

    move-result-object v0

    new-instance v7, Lcom/tramini/plugin/a/f/a$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/tramini/plugin/a/f/a$1;-><init>(Lcom/tramini/plugin/a/f/a;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;I)V

    int-to-long p1, p5

    invoke-virtual {v0, v7, p1, p2}, Lcom/tramini/plugin/a/a/b;->a(Ljava/lang/Runnable;J)V

    .line 185
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)V
    .registers 4

    .line 53
    iget-object v0, p0, Lcom/tramini/plugin/a/f/a;->g:Ljava/util/Map;

    if-nez v0, :cond_c

    .line 54
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/tramini/plugin/a/f/a;->g:Ljava/util/Map;

    .line 57
    :cond_c
    iget-object v0, p0, Lcom/tramini/plugin/a/f/a;->g:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 99
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 101
    :try_start_5
    const-string v1, "type"

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 102
    const-string v1, "setting_id"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_11} :catch_12

    .line 105
    goto :goto_16

    .line 104
    :catch_12
    move-exception p2

    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 110
    :goto_16
    const/4 p2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, p1, v1, v0}, Lcom/tramini/plugin/a/f/a;->a(ILjava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 111
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 9

    .line 115
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 117
    :try_start_5
    const-string v1, "sdk_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 118
    const-string v1, "type"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 119
    const-string v1, "setting_id"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    const-string p2, "it_lps"

    invoke-virtual {v0, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_20

    .line 125
    goto :goto_21

    .line 121
    :catchall_20
    move-exception p2

    .line 127
    :goto_21
    const/4 p2, 0x2

    invoke-direct {p0, p2, p1, p3, v0}, Lcom/tramini/plugin/a/f/a;->a(ILjava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 128
    return-void
.end method

.method public final declared-synchronized a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 5

    monitor-enter p0

    .line 61
    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/tramini/plugin/a/f/a;->a(ILjava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 62
    monitor-exit p0

    return-void

    .line 60
    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 8

    .line 140
    :try_start_0
    const-string v0, "sdk_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p4, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 141
    const-string v0, "type"

    const/16 v1, 0x11

    invoke-virtual {p4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 142
    const-string v0, "setting_id"

    invoke-virtual {p4, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    .line 147
    goto :goto_17

    .line 143
    :catchall_16
    move-exception p2

    .line 149
    :goto_17
    const/4 p2, 0x3

    invoke-direct {p0, p2, p1, p3, p4}, Lcom/tramini/plugin/a/f/a;->a(ILjava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 150
    return-void
.end method
