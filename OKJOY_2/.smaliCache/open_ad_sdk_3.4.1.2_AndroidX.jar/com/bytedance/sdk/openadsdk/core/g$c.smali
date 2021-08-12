.class public Lcom/bytedance/sdk/openadsdk/core/g$c;
.super Ljava/lang/Object;
.source "DBHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/g;

.field private b:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/g;)V
    .registers 2

    .line 48
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/g$c;->a:Lcom/bytedance/sdk/openadsdk/core/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/g$c;->b:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method private declared-synchronized d()V
    .registers 5

    monitor-enter p0

    .line 53
    :try_start_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g;->b()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_2a

    .line 54
    :try_start_6
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/g$c;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_25

    .line 55
    :cond_10
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/g$a;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/g$c;->a:Lcom/bytedance/sdk/openadsdk/core/g;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/g;->a(Lcom/bytedance/sdk/openadsdk/core/g;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/g$a;-><init>(Lcom/bytedance/sdk/openadsdk/core/g;Landroid/content/Context;)V

    .line 56
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/g$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/g$c;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 57
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->setLockingEnabled(Z)V

    .line 59
    :cond_25
    monitor-exit v0

    .line 65
    goto :goto_34

    .line 59
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_6 .. :try_end_29} :catchall_27

    :try_start_29
    throw v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2a

    .line 60
    :catchall_2a
    move-exception v0

    .line 61
    :try_start_2b
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 62
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/g$c;->e()Z

    move-result v1
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_37

    if-nez v1, :cond_36

    .line 66
    :goto_34
    monitor-exit p0

    return-void

    .line 63
    :cond_36
    :try_start_36
    throw v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_37

    .line 52
    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized e()Z
    .registers 2

    monitor-enter p0

    .line 192
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g$c;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 193
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_10

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    monitor-exit p0

    return v0

    .line 191
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6

    monitor-enter p0

    .line 110
    :try_start_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/g$c;->d()V

    .line 111
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g$c;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_d
    .catchall {:try_start_1 .. :try_end_a} :catchall_b

    .line 118
    goto :goto_19

    .line 109
    :catchall_b
    move-exception p1

    goto :goto_1c

    .line 112
    :catch_d
    move-exception p1

    .line 113
    :try_start_e
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 114
    const/4 p2, 0x0

    .line 115
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/g$c;->e()Z

    move-result p3
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_b

    if-nez p3, :cond_1b

    move p1, p2

    .line 119
    :goto_19
    monitor-exit p0

    return p1

    .line 116
    :cond_1b
    :try_start_1b
    throw p1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_b

    .line 109
    :goto_1c
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    monitor-enter p0

    .line 142
    :try_start_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/g$c;->d()V

    .line 143
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g$c;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_d
    .catchall {:try_start_1 .. :try_end_a} :catchall_b

    .line 150
    goto :goto_19

    .line 141
    :catchall_b
    move-exception p1

    goto :goto_1c

    .line 144
    :catch_d
    move-exception p1

    .line 145
    :try_start_e
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 146
    const/4 p2, 0x0

    .line 147
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/g$c;->e()Z

    move-result p3
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_b

    if-nez p3, :cond_1b

    move p1, p2

    .line 151
    :goto_19
    monitor-exit p0

    return p1

    .line 148
    :cond_1b
    :try_start_1b
    throw p1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_b

    .line 141
    :goto_1c
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .registers 5

    monitor-enter p0

    .line 126
    :try_start_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/g$c;->d()V

    .line 127
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g$c;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_d
    .catchall {:try_start_1 .. :try_end_a} :catchall_b

    .line 134
    goto :goto_1a

    .line 125
    :catchall_b
    move-exception p1

    goto :goto_1d

    .line 128
    :catch_d
    move-exception p1

    .line 129
    :try_start_e
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 130
    const-wide/16 p2, -0x1

    .line 131
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/g$c;->e()Z

    move-result v0
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_b

    if-nez v0, :cond_1c

    move-wide p1, p2

    .line 135
    :goto_1a
    monitor-exit p0

    return-wide p1

    .line 132
    :cond_1c
    :try_start_1c
    throw p1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_b

    .line 125
    :goto_1d
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 16

    monitor-enter p0

    .line 93
    :try_start_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/g$c;->d()V

    .line 94
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g$c;->b:Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_12

    .line 101
    goto :goto_25

    .line 95
    :catchall_12
    move-exception p1

    .line 96
    :try_start_13
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 97
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/g$b;

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/g$c;->a:Lcom/bytedance/sdk/openadsdk/core/g;

    const/4 p4, 0x0

    invoke-direct {p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/g$b;-><init>(Lcom/bytedance/sdk/openadsdk/core/g;Lcom/bytedance/sdk/openadsdk/core/g$1;)V

    .line 98
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/g$c;->e()Z

    move-result p3
    :try_end_22
    .catchall {:try_start_13 .. :try_end_22} :catchall_28

    if-nez p3, :cond_27

    move-object p1, p2

    .line 102
    :goto_25
    monitor-exit p0

    return-object p1

    .line 99
    :cond_27
    :try_start_27
    throw p1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_28

    .line 92
    :catchall_28
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a()V
    .registers 2

    monitor-enter p0

    .line 168
    :try_start_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/g$c;->d()V

    .line 169
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g$c;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    if-nez v0, :cond_a

    .line 170
    monitor-exit p0

    return-void

    .line 172
    :cond_a
    :try_start_a
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_f

    .line 173
    monitor-exit p0

    return-void

    .line 167
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 71
    :try_start_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/g$c;->d()V

    .line 72
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g$c;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_a

    .line 77
    goto :goto_11

    .line 73
    :catchall_a
    move-exception p1

    .line 74
    :try_start_b
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/g$c;->e()Z

    move-result v0
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_14

    if-nez v0, :cond_13

    .line 78
    :goto_11
    monitor-exit p0

    return-void

    .line 75
    :cond_13
    :try_start_13
    throw p1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_14

    .line 70
    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()V
    .registers 2

    monitor-enter p0

    .line 176
    :try_start_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/g$c;->d()V

    .line 177
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g$c;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    if-nez v0, :cond_a

    .line 178
    monitor-exit p0

    return-void

    .line 180
    :cond_a
    :try_start_a
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_f

    .line 181
    monitor-exit p0

    return-void

    .line 175
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .registers 2

    monitor-enter p0

    .line 184
    :try_start_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/g$c;->d()V

    .line 185
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g$c;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    if-nez v0, :cond_a

    .line 186
    monitor-exit p0

    return-void

    .line 188
    :cond_a
    :try_start_a
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_f

    .line 189
    monitor-exit p0

    return-void

    .line 183
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
