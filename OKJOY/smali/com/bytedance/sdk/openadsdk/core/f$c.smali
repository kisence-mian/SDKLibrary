.class public Lcom/bytedance/sdk/openadsdk/core/f$c;
.super Ljava/lang/Object;
.source "DBHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/f;

.field private b:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/f;)V
    .registers 3

    .prologue
    .line 48
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f$c;->a:Lcom/bytedance/sdk/openadsdk/core/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f$c;->b:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method private declared-synchronized d()V
    .registers 5

    .prologue
    .line 53
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/f;->b()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_6} :catch_31
    .catchall {:try_start_1 .. :try_end_6} :catchall_3c

    .line 54
    :try_start_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f$c;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f$c;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 55
    :cond_12
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/f$a;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/f$c;->a:Lcom/bytedance/sdk/openadsdk/core/f;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/f$c;->a:Lcom/bytedance/sdk/openadsdk/core/f;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/f;->a(Lcom/bytedance/sdk/openadsdk/core/f;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/f$a;-><init>(Lcom/bytedance/sdk/openadsdk/core/f;Landroid/content/Context;)V

    .line 56
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f$c;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 57
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f$c;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->setLockingEnabled(Z)V

    .line 59
    :cond_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_6 .. :try_end_2c} :catchall_2e

    .line 66
    :cond_2c
    monitor-exit p0

    return-void

    .line 59
    :catchall_2e
    move-exception v0

    :try_start_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    :try_start_30
    throw v0
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_31} :catch_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_3c

    .line 60
    :catch_31
    move-exception v0

    .line 61
    :try_start_32
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 62
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/f$c;->e()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 63
    throw v0
    :try_end_3c
    .catchall {:try_start_32 .. :try_end_3c} :catchall_3c

    .line 53
    :catchall_3c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized e()Z
    .registers 2

    .prologue
    .line 192
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f$c;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 193
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_10

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_c
    monitor-exit p0

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    .line 192
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 8

    .prologue
    .line 110
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/f$c;->d()V

    .line 111
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f$c;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_c
    .catchall {:try_start_1 .. :try_end_9} :catchall_19

    move-result v0

    .line 119
    :cond_a
    monitor-exit p0

    return v0

    .line 112
    :catch_c
    move-exception v0

    move-object v1, v0

    .line 113
    :try_start_e
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 114
    const/4 v0, 0x0

    .line 115
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/f$c;->e()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 116
    throw v1
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_19

    .line 110
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7

    .prologue
    .line 142
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/f$c;->d()V

    .line 143
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f$c;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_c
    .catchall {:try_start_1 .. :try_end_9} :catchall_19

    move-result v0

    .line 151
    :cond_a
    monitor-exit p0

    return v0

    .line 144
    :catch_c
    move-exception v0

    move-object v1, v0

    .line 145
    :try_start_e
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 146
    const/4 v0, 0x0

    .line 147
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/f$c;->e()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 148
    throw v1
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_19

    .line 142
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .registers 8

    .prologue
    .line 126
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/f$c;->d()V

    .line 127
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f$c;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_c
    .catchall {:try_start_1 .. :try_end_9} :catchall_1a

    move-result-wide v0

    .line 135
    :cond_a
    monitor-exit p0

    return-wide v0

    .line 128
    :catch_c
    move-exception v0

    move-object v2, v0

    .line 129
    :try_start_e
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 130
    const-wide/16 v0, -0x1

    .line 131
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/f$c;->e()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 132
    throw v2
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_1a

    .line 126
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 16

    .prologue
    .line 93
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/f$c;->d()V

    .line 94
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f$c;->b:Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_10} :catch_13
    .catchall {:try_start_1 .. :try_end_10} :catchall_27

    move-result-object v0

    .line 102
    :cond_11
    monitor-exit p0

    return-object v0

    .line 95
    :catch_13
    move-exception v0

    move-object v1, v0

    .line 96
    :try_start_15
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 97
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/f$b;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/f$c;->a:Lcom/bytedance/sdk/openadsdk/core/f;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/f$b;-><init>(Lcom/bytedance/sdk/openadsdk/core/f;Lcom/bytedance/sdk/openadsdk/core/f$1;)V

    .line 98
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/f$c;->e()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 99
    throw v1
    :try_end_27
    .catchall {:try_start_15 .. :try_end_27} :catchall_27

    .line 93
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()V
    .registers 2

    .prologue
    .line 168
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/f$c;->d()V

    .line 169
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f$c;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_10

    if-nez v0, :cond_a

    .line 173
    :goto_8
    monitor-exit p0

    return-void

    .line 172
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f$c;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_10

    goto :goto_8

    .line 168
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 71
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/f$c;->d()V

    .line 72
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f$c;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_9} :catch_b
    .catchall {:try_start_1 .. :try_end_9} :catchall_13

    .line 78
    :cond_9
    monitor-exit p0

    return-void

    .line 73
    :catch_b
    move-exception v0

    .line 74
    :try_start_c
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/f$c;->e()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 75
    throw v0
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_13

    .line 71
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .registers 2

    .prologue
    .line 176
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/f$c;->d()V

    .line 177
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f$c;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_10

    if-nez v0, :cond_a

    .line 181
    :goto_8
    monitor-exit p0

    return-void

    .line 180
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f$c;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_10

    goto :goto_8

    .line 176
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .registers 2

    .prologue
    .line 184
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/f$c;->d()V

    .line 185
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f$c;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_10

    if-nez v0, :cond_a

    .line 189
    :goto_8
    monitor-exit p0

    return-void

    .line 188
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f$c;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_10

    goto :goto_8

    .line 184
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method
