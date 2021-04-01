.class public Lcom/bytedance/sdk/openadsdk/f/b/b;
.super Ljava/lang/Object;
.source "LogStatsCache.java"


# static fields
.field private static volatile a:Lcom/bytedance/sdk/openadsdk/f/b/b;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/b/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 60
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/b/b;->b()V

    .line 61
    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/f/b/b;
    .registers 2

    .prologue
    .line 49
    sget-object v0, Lcom/bytedance/sdk/openadsdk/f/b/b;->a:Lcom/bytedance/sdk/openadsdk/f/b/b;

    if-nez v0, :cond_13

    .line 50
    const-class v1, Lcom/bytedance/sdk/openadsdk/f/b/b;

    monitor-enter v1

    .line 51
    :try_start_7
    sget-object v0, Lcom/bytedance/sdk/openadsdk/f/b/b;->a:Lcom/bytedance/sdk/openadsdk/f/b/b;

    if-nez v0, :cond_12

    .line 52
    new-instance v0, Lcom/bytedance/sdk/openadsdk/f/b/b;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/f/b/b;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/f/b/b;->a:Lcom/bytedance/sdk/openadsdk/f/b/b;

    .line 54
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 56
    :cond_13
    sget-object v0, Lcom/bytedance/sdk/openadsdk/f/b/b;->a:Lcom/bytedance/sdk/openadsdk/f/b/b;

    return-object v0

    .line 54
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public b()V
    .registers 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/b/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 75
    :cond_8
    :goto_8
    return-void

    .line 68
    :cond_9
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 72
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/b/b;->b:Landroid/content/Context;

    .line 74
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/b/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_8
.end method

.method public declared-synchronized c()V
    .registers 7

    .prologue
    .line 133
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/b/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_e

    .line 134
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/b/b;->b()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_25

    .line 142
    :goto_c
    monitor-exit p0

    return-void

    .line 139
    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/b/b;->b:Landroid/content/Context;

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
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_22} :catch_23
    .catchall {:try_start_e .. :try_end_22} :catchall_25

    goto :goto_c

    .line 140
    :catch_23
    move-exception v0

    goto :goto_c

    .line 133
    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/f/b/c$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    monitor-enter p0

    :try_start_1
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 170
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/b/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_14

    .line 171
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/b/b;->b()V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_73

    move-object v0, v8

    .line 193
    :goto_12
    monitor-exit p0

    return-object v0

    .line 175
    :cond_14
    :try_start_14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/b/b;->b:Landroid/content/Context;

    const-string v1, "logstats"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "value"

    aput-object v4, v2, v3

    const-string v3, "retry <?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/multipro/a/a;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_38
    .catchall {:try_start_14 .. :try_end_38} :catchall_73

    move-result-object v1

    .line 176
    if-eqz v1, :cond_6a

    .line 178
    :goto_3b
    :try_start_3b
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 179
    const-string v0, "id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 180
    const-string v2, "value"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_54
    .catchall {:try_start_3b .. :try_end_54} :catchall_6c

    move-result-object v2

    .line 182
    :try_start_55
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 183
    new-instance v2, Lcom/bytedance/sdk/openadsdk/f/b/c$a;

    invoke-direct {v2, v0, v3}, Lcom/bytedance/sdk/openadsdk/f/b/c$a;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_62} :catch_63
    .catchall {:try_start_55 .. :try_end_62} :catchall_6c

    goto :goto_3b

    .line 184
    :catch_63
    move-exception v0

    goto :goto_3b

    .line 188
    :cond_65
    if-eqz v1, :cond_6a

    .line 189
    :try_start_67
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6a
    move-object v0, v8

    .line 193
    goto :goto_12

    .line 188
    :catchall_6c
    move-exception v0

    if-eqz v1, :cond_72

    .line 189
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_72
    throw v0
    :try_end_73
    .catchall {:try_start_67 .. :try_end_73} :catchall_73

    .line 169
    :catchall_73
    move-exception v0

    monitor-exit p0

    throw v0
.end method
