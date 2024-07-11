.class public Lcom/bytedance/sdk/openadsdk/g/c/b;
.super Ljava/lang/Object;
.source "LogStatsCache.java"


# static fields
.field private static volatile a:Lcom/bytedance/sdk/openadsdk/g/c/b;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/c/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 60
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/g/c/b;->b()V

    .line 61
    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/g/c/b;
    .registers 2

    .line 49
    sget-object v0, Lcom/bytedance/sdk/openadsdk/g/c/b;->a:Lcom/bytedance/sdk/openadsdk/g/c/b;

    if-nez v0, :cond_17

    .line 50
    const-class v0, Lcom/bytedance/sdk/openadsdk/g/c/b;

    monitor-enter v0

    .line 51
    :try_start_7
    sget-object v1, Lcom/bytedance/sdk/openadsdk/g/c/b;->a:Lcom/bytedance/sdk/openadsdk/g/c/b;

    if-nez v1, :cond_12

    .line 52
    new-instance v1, Lcom/bytedance/sdk/openadsdk/g/c/b;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/g/c/b;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/g/c/b;->a:Lcom/bytedance/sdk/openadsdk/g/c/b;

    .line 54
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 56
    :cond_17
    :goto_17
    sget-object v0, Lcom/bytedance/sdk/openadsdk/g/c/b;->a:Lcom/bytedance/sdk/openadsdk/g/c/b;

    return-object v0
.end method


# virtual methods
.method public b()V
    .registers 3

    .line 64
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/c/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 65
    return-void

    .line 68
    :cond_9
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_10

    .line 69
    return-void

    .line 72
    :cond_10
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/c/b;->b:Landroid/content/Context;

    .line 74
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/c/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 75
    return-void
.end method

.method public declared-synchronized c()V
    .registers 7

    monitor-enter p0

    .line 133
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/c/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_e

    .line 134
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/g/c/b;->b()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_26

    .line 135
    monitor-exit p0

    return-void

    .line 139
    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/c/b;->b:Landroid/content/Context;

    const-string v1, "logstats"

    const-string v2, "retry >=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/multipro/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_22
    .catchall {:try_start_e .. :try_end_22} :catchall_23

    .line 141
    goto :goto_24

    .line 140
    :catchall_23
    move-exception v0

    .line 142
    :goto_24
    monitor-exit p0

    return-void

    .line 132
    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/g/c/c$a;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 169
    :try_start_1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 170
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/g/c/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_13

    .line 171
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/g/c/b;->b()V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_71

    .line 172
    monitor-exit p0

    return-object v0

    .line 175
    :cond_13
    :try_start_13
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/g/c/b;->b:Landroid/content/Context;

    const-string v2, "logstats"

    const-string v3, "id"

    const-string v4, "value"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "retry <?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/multipro/a/a;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_33
    .catchall {:try_start_13 .. :try_end_33} :catchall_71

    .line 176
    if-eqz v1, :cond_6f

    .line 178
    :goto_35
    :try_start_35
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_39} :catch_69
    .catchall {:try_start_35 .. :try_end_39} :catchall_62

    if-eqz v2, :cond_5f

    .line 180
    :try_start_3b
    const-string v2, "id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 181
    const-string v3, "value"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 182
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 183
    new-instance v3, Lcom/bytedance/sdk/openadsdk/g/c/c$a;

    invoke-direct {v3, v2, v4}, Lcom/bytedance/sdk/openadsdk/g/c/c$a;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_5c} :catch_5d
    .catchall {:try_start_3b .. :try_end_5c} :catchall_62

    goto :goto_5e

    .line 184
    :catch_5d
    move-exception v2

    .line 185
    :goto_5e
    goto :goto_35

    .line 190
    :cond_5f
    if-eqz v1, :cond_6f

    .line 191
    goto :goto_6c

    .line 190
    :catchall_62
    move-exception v0

    if-eqz v1, :cond_68

    .line 191
    :try_start_65
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 193
    :cond_68
    throw v0

    .line 187
    :catch_69
    move-exception v2

    .line 190
    if-eqz v1, :cond_6f

    .line 191
    :goto_6c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_6f
    .catchall {:try_start_65 .. :try_end_6f} :catchall_71

    .line 195
    :cond_6f
    monitor-exit p0

    return-object v0

    .line 168
    :catchall_71
    move-exception v0

    monitor-exit p0

    throw v0
.end method
