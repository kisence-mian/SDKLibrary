.class public Lcom/bytedance/sdk/openadsdk/j/g;
.super Ljava/lang/Object;
.source "TrackRetryRepertoryImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/j/f;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/j/g;->a:Landroid/content/Context;

    .line 29
    return-void
.end method

.method public static b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE IF NOT EXISTS "

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "trackurl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (_id INTEGER PRIMARY KEY AUTOINCREMENT,"

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "id"

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT UNIQUE,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "url"

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT ,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "replaceholder"

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER default 0, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "retry"

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER default 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/j/e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    monitor-enter p0

    :try_start_1
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 35
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/g;->a:Landroid/content/Context;

    const-string v1, "trackurl"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/multipro/a/a;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_57

    move-result-object v1

    .line 36
    if-eqz v1, :cond_61

    .line 38
    :goto_16
    :try_start_16
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 39
    const-string v0, "id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 40
    const-string v0, "url"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 41
    const-string v0, "replaceholder"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_5a

    const/4 v0, 0x1

    .line 42
    :goto_3d
    const-string v4, "retry"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 43
    new-instance v5, Lcom/bytedance/sdk/openadsdk/j/e;

    invoke-direct {v5, v2, v3, v0, v4}, Lcom/bytedance/sdk/openadsdk/j/e;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4f
    .catchall {:try_start_16 .. :try_end_4f} :catchall_50

    goto :goto_16

    .line 46
    :catchall_50
    move-exception v0

    if-eqz v1, :cond_56

    .line 47
    :try_start_53
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_56
    throw v0
    :try_end_57
    .catchall {:try_start_53 .. :try_end_57} :catchall_57

    .line 34
    :catchall_57
    move-exception v0

    monitor-exit p0

    throw v0

    .line 41
    :cond_5a
    const/4 v0, 0x0

    goto :goto_3d

    .line 46
    :cond_5c
    if-eqz v1, :cond_61

    .line 47
    :try_start_5e
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_57

    .line 51
    :cond_61
    monitor-exit p0

    return-object v8
.end method

.method public declared-synchronized a(Lcom/bytedance/sdk/openadsdk/j/e;)V
    .registers 5

    .prologue
    .line 56
    monitor-enter p0

    :try_start_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 57
    const-string v0, "id"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/j/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v0, "url"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/j/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v2, "replaceholder"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/j/e;->c()Z

    move-result v0

    if-eqz v0, :cond_3e

    const/4 v0, 0x1

    :goto_21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 60
    const-string v0, "retry"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/j/e;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 61
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/g;->a:Landroid/content/Context;

    const-string v2, "trackurl"

    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/a/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_40

    .line 62
    monitor-exit p0

    return-void

    .line 59
    :cond_3e
    const/4 v0, 0x0

    goto :goto_21

    .line 56
    :catchall_40
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcom/bytedance/sdk/openadsdk/j/e;)V
    .registers 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 66
    monitor-enter p0

    :try_start_3
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 67
    const-string v3, "id"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/j/e;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v3, "url"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/j/e;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v3, "replaceholder"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/j/e;->c()Z

    move-result v4

    if-eqz v4, :cond_4b

    :goto_22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 70
    const-string v0, "retry"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/j/e;->d()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 71
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/g;->a:Landroid/content/Context;

    const-string v1, "trackurl"

    const-string v3, "id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/j/e;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/multipro/a/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_4d

    .line 72
    monitor-exit p0

    return-void

    :cond_4b
    move v0, v1

    .line 69
    goto :goto_22

    .line 66
    :catchall_4d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Lcom/bytedance/sdk/openadsdk/j/e;)V
    .registers 8

    .prologue
    .line 76
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/g;->a:Landroid/content/Context;

    const-string v1, "trackurl"

    const-string v2, "id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/j/e;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/multipro/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 77
    monitor-exit p0

    return-void

    .line 76
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method
