.class public final Lcom/umeng/cconfig/a/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/cconfig/a/b$a;
    }
.end annotation


# static fields
.field private static c:Landroid/database/sqlite/SQLiteOpenHelper;

.field private static d:Landroid/content/Context;


# instance fields
.field public a:Landroid/database/sqlite/SQLiteDatabase;

.field private b:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/umeng/cconfig/a/b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Lcom/umeng/cconfig/a/b;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/umeng/cconfig/a/b;
    .registers 2

    sget-object v0, Lcom/umeng/cconfig/a/b;->d:Landroid/content/Context;

    if-nez v0, :cond_12

    if-eqz p0, :cond_12

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/umeng/cconfig/a/b;->d:Landroid/content/Context;

    invoke-static {p0}, Lcom/umeng/cconfig/a/a;->a(Landroid/content/Context;)Lcom/umeng/cconfig/a/a;

    move-result-object p0

    sput-object p0, Lcom/umeng/cconfig/a/b;->c:Landroid/database/sqlite/SQLiteOpenHelper;

    :cond_12
    invoke-static {}, Lcom/umeng/cconfig/a/b$a;->a()Lcom/umeng/cconfig/a/b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized a()Landroid/database/sqlite/SQLiteDatabase;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/umeng/cconfig/a/b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    sget-object v0, Lcom/umeng/cconfig/a/b;->c:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/cconfig/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    :cond_12
    iget-object v0, p0, Lcom/umeng/cconfig/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_2
    invoke-virtual {p0}, Lcom/umeng/cconfig/a/b;->a()Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/umeng/cconfig/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "update  __cc set __a=\"1\" where __ts=\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "\""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "jessie"

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "[DbManager] updateCloudConfigByTimestamp\uff1a"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/umeng/cconfig/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/umeng/cconfig/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3c
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_2 .. :try_end_3c} :catch_53
    .catchall {:try_start_2 .. :try_end_3c} :catchall_44

    :try_start_3c
    iget-object p1, p0, Lcom/umeng/cconfig/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_4e

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_4e

    :catchall_44
    move-exception p1

    iget-object p1, p0, Lcom/umeng/cconfig/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_4e

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4c
    .catchall {:try_start_3c .. :try_end_4c} :catchall_4d

    goto :goto_4e

    :catchall_4d
    move-exception p1

    :cond_4e
    :goto_4e
    invoke-virtual {p0}, Lcom/umeng/cconfig/a/b;->b()V

    const/4 v0, 0x1

    goto :goto_63

    :catch_53
    move-exception p1

    :try_start_54
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->printStackTrace()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_64

    :try_start_57
    iget-object p1, p0, Lcom/umeng/cconfig/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_60

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5e
    .catchall {:try_start_57 .. :try_end_5e} :catchall_5f

    goto :goto_60

    :catchall_5f
    move-exception p1

    :cond_60
    :goto_60
    invoke-virtual {p0}, Lcom/umeng/cconfig/a/b;->b()V

    :goto_63
    return v0

    :catchall_64
    move-exception p1

    :try_start_65
    iget-object v0, p0, Lcom/umeng/cconfig/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_70

    iget-object v0, p0, Lcom/umeng/cconfig/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6e
    .catchall {:try_start_65 .. :try_end_6e} :catchall_6f

    goto :goto_70

    :catchall_6f
    move-exception v0

    :cond_70
    :goto_70
    invoke-virtual {p0}, Lcom/umeng/cconfig/a/b;->b()V

    throw p1
.end method

.method public final declared-synchronized b()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/umeng/cconfig/a/b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/umeng/cconfig/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    :cond_e
    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    return-void
.end method

.method public final b(Ljava/lang/String;)Z
    .registers 14

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_7
    invoke-virtual {p0}, Lcom/umeng/cconfig/a/b;->a()Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, p0, Lcom/umeng/cconfig/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v3, "select *  from __cc where __a=\"1\" group by __ts"

    iget-object v4, p0, Lcom/umeng/cconfig/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_84

    :cond_1a
    :goto_1a
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_84

    const-string v4, "__ts"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "__c"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "__a"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "id"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "timeStamp = %s, content = %s, active = %s, id = %s"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v4, v10, v1

    aput-object v5, v10, v2

    const/4 v11, 0x2

    aput-object v6, v10, v11

    const/4 v11, 0x3

    aput-object v7, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Lcom/umeng/cconfig/b/d;

    invoke-direct {v7}, Lcom/umeng/cconfig/b/d;-><init>()V

    iput-object v4, v7, Lcom/umeng/cconfig/b/d;->a:Ljava/lang/String;

    iput-object v5, v7, Lcom/umeng/cconfig/b/d;->b:Ljava/lang/String;

    iput-object v6, v7, Lcom/umeng/cconfig/b/d;->c:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1a

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_84
    const-string p1, "update  __cc set __a=\"0\" where "

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const-string v4, ""

    const/4 v5, 0x0

    :goto_8d
    if-ge v5, v3, :cond_104

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/umeng/cconfig/b/d;
    :try_end_95
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_7 .. :try_end_95} :catch_11b
    .catchall {:try_start_7 .. :try_end_95} :catchall_10c

    add-int/lit8 v7, v3, -0x1

    const-string v8, "__ts=\""

    if-eq v5, v7, :cond_b9

    :try_start_9b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v6, Lcom/umeng/cconfig/b/d;->a:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\" or "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    :goto_b4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_d3

    :cond_b9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v6, Lcom/umeng/cconfig/b/d;->a:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    goto :goto_b4

    :goto_d3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "jessie"

    new-array v8, v2, [Ljava/lang/Object;

    const-string v9, "[DbManager] updateOtherCloudConfigInfo : "

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-static {v7, v8}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/umeng/cconfig/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/umeng/cconfig/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_101
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_9b .. :try_end_101} :catch_11b
    .catchall {:try_start_9b .. :try_end_101} :catchall_10c

    add-int/lit8 v5, v5, 0x1

    goto :goto_8d

    :cond_104
    :try_start_104
    iget-object p1, p0, Lcom/umeng/cconfig/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_116

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_116

    :catchall_10c
    move-exception p1

    iget-object p1, p0, Lcom/umeng/cconfig/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_116

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_114
    .catchall {:try_start_104 .. :try_end_114} :catchall_115

    goto :goto_116

    :catchall_115
    move-exception p1

    :cond_116
    :goto_116
    invoke-virtual {p0}, Lcom/umeng/cconfig/a/b;->b()V

    const/4 v1, 0x1

    goto :goto_12b

    :catch_11b
    move-exception p1

    :try_start_11c
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->printStackTrace()V
    :try_end_11f
    .catchall {:try_start_11c .. :try_end_11f} :catchall_12c

    :try_start_11f
    iget-object p1, p0, Lcom/umeng/cconfig/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_128

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_126
    .catchall {:try_start_11f .. :try_end_126} :catchall_127

    goto :goto_128

    :catchall_127
    move-exception p1

    :cond_128
    :goto_128
    invoke-virtual {p0}, Lcom/umeng/cconfig/a/b;->b()V

    :goto_12b
    return v1

    :catchall_12c
    move-exception p1

    :try_start_12d
    iget-object v0, p0, Lcom/umeng/cconfig/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_138

    iget-object v0, p0, Lcom/umeng/cconfig/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_136
    .catchall {:try_start_12d .. :try_end_136} :catchall_137

    goto :goto_138

    :catchall_137
    move-exception v0

    :cond_138
    :goto_138
    invoke-virtual {p0}, Lcom/umeng/cconfig/a/b;->b()V

    goto :goto_13d

    :goto_13c
    throw p1

    :goto_13d
    goto :goto_13c
.end method

.method public final c()Lcom/umeng/cconfig/b/d;
    .registers 12

    new-instance v0, Lcom/umeng/cconfig/b/d;

    invoke-direct {v0}, Lcom/umeng/cconfig/b/d;-><init>()V

    :try_start_5
    invoke-virtual {p0}, Lcom/umeng/cconfig/a/b;->a()Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/umeng/cconfig/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v1, "select *  from __cc where __a=\"1\" group by __ts"

    iget-object v2, p0, Lcom/umeng/cconfig/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_99

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_99

    const-string v2, "__ts"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "__c"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "__a"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "id"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "timeStamp = %s, content = %s, active = %s, id = %s"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v9, 0x1

    aput-object v3, v7, v9

    const/4 v10, 0x2

    aput-object v4, v7, v10

    const/4 v10, 0x3

    aput-object v1, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "jessie"

    new-array v6, v9, [Ljava/lang/Object;

    const-string v7, "[DbManager] selectRecentActiveOne"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v8

    invoke-static {v5, v6}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/umeng/cconfig/b/d;

    invoke-direct {v1}, Lcom/umeng/cconfig/b/d;-><init>()V

    iput-object v2, v1, Lcom/umeng/cconfig/b/d;->a:Ljava/lang/String;

    iput-object v3, v1, Lcom/umeng/cconfig/b/d;->b:Ljava/lang/String;

    iput-object v4, v1, Lcom/umeng/cconfig/b/d;->c:Ljava/lang/String;
    :try_end_8c
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_5 .. :try_end_8c} :catch_af
    .catchall {:try_start_5 .. :try_end_8c} :catchall_a6

    :try_start_8c
    iget-object v0, p0, Lcom/umeng/cconfig/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_95

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_93
    .catchall {:try_start_8c .. :try_end_93} :catchall_94

    goto :goto_95

    :catchall_94
    move-exception v0

    :cond_95
    :goto_95
    invoke-virtual {p0}, Lcom/umeng/cconfig/a/b;->b()V

    return-object v1

    :cond_99
    :try_start_99
    iget-object v1, p0, Lcom/umeng/cconfig/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_9e
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_99 .. :try_end_9e} :catch_af
    .catchall {:try_start_99 .. :try_end_9e} :catchall_a6

    :try_start_9e
    iget-object v1, p0, Lcom/umeng/cconfig/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_bc

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_bc

    :catchall_a6
    move-exception v1

    iget-object v1, p0, Lcom/umeng/cconfig/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_bc

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_ae
    .catchall {:try_start_9e .. :try_end_ae} :catchall_bb

    goto :goto_bc

    :catch_af
    move-exception v1

    :try_start_b0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->printStackTrace()V
    :try_end_b3
    .catchall {:try_start_b0 .. :try_end_b3} :catchall_c0

    :try_start_b3
    iget-object v1, p0, Lcom/umeng/cconfig/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_bc

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_ba
    .catchall {:try_start_b3 .. :try_end_ba} :catchall_bb

    goto :goto_bc

    :catchall_bb
    move-exception v1

    :cond_bc
    :goto_bc
    invoke-virtual {p0}, Lcom/umeng/cconfig/a/b;->b()V

    return-object v0

    :catchall_c0
    move-exception v0

    :try_start_c1
    iget-object v1, p0, Lcom/umeng/cconfig/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_cc

    iget-object v1, p0, Lcom/umeng/cconfig/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_ca
    .catchall {:try_start_c1 .. :try_end_ca} :catchall_cb

    goto :goto_cc

    :catchall_cb
    move-exception v1

    :cond_cc
    :goto_cc
    invoke-virtual {p0}, Lcom/umeng/cconfig/a/b;->b()V

    throw v0
.end method

.method public final d()Z
    .registers 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :try_start_6
    invoke-virtual {p0}, Lcom/umeng/cconfig/a/b;->a()Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/umeng/cconfig/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v2, "select *  from __cc where __a=\"0\" order by __ts asc"

    iget-object v3, p0, Lcom/umeng/cconfig/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_2d

    :goto_19
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    const-string v3, "__ts"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_2d
    const-string v2, "delete from __cc where "

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x5

    const-string v4, ""
    :try_end_37
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_6 .. :try_end_37} :catch_c5
    .catchall {:try_start_6 .. :try_end_37} :catchall_bc

    if-lez v3, :cond_b4

    const/4 v5, 0x0

    :goto_3a
    if-ge v5, v3, :cond_85

    add-int/lit8 v6, v3, -0x1

    const-string v7, "__ts=\""

    if-eq v5, v6, :cond_64

    :try_start_42
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\" or "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    :goto_5f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_82

    :cond_64
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    goto :goto_5f

    :goto_82
    add-int/lit8 v5, v5, 0x1

    goto :goto_3a

    :cond_85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "jessie"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "[DbManager] deleteExtraCloudConfigInfo: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/umeng/cconfig/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/umeng/cconfig/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_b4
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_42 .. :try_end_b4} :catch_c5
    .catchall {:try_start_42 .. :try_end_b4} :catchall_bc

    :cond_b4
    :try_start_b4
    iget-object v0, p0, Lcom/umeng/cconfig/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_d2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_d2

    :catchall_bc
    move-exception v0

    iget-object v0, p0, Lcom/umeng/cconfig/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_d2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_c4
    .catchall {:try_start_b4 .. :try_end_c4} :catchall_d1

    goto :goto_d2

    :catch_c5
    move-exception v0

    :try_start_c6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->printStackTrace()V
    :try_end_c9
    .catchall {:try_start_c6 .. :try_end_c9} :catchall_d6

    :try_start_c9
    iget-object v0, p0, Lcom/umeng/cconfig/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_d2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_d0
    .catchall {:try_start_c9 .. :try_end_d0} :catchall_d1

    goto :goto_d2

    :catchall_d1
    move-exception v0

    :cond_d2
    :goto_d2
    invoke-virtual {p0}, Lcom/umeng/cconfig/a/b;->b()V

    return v1

    :catchall_d6
    move-exception v0

    :try_start_d7
    iget-object v1, p0, Lcom/umeng/cconfig/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_e2

    iget-object v1, p0, Lcom/umeng/cconfig/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_e0
    .catchall {:try_start_d7 .. :try_end_e0} :catchall_e1

    goto :goto_e2

    :catchall_e1
    move-exception v1

    :cond_e2
    :goto_e2
    invoke-virtual {p0}, Lcom/umeng/cconfig/a/b;->b()V

    goto :goto_e7

    :goto_e6
    throw v0

    :goto_e7
    goto :goto_e6
.end method

.method public final e()Lcom/umeng/cconfig/b/d;
    .registers 13

    new-instance v0, Lcom/umeng/cconfig/b/d;

    invoke-direct {v0}, Lcom/umeng/cconfig/b/d;-><init>()V

    :try_start_5
    invoke-virtual {p0}, Lcom/umeng/cconfig/a/b;->a()Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/umeng/cconfig/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v1, "select *  from __cc order by __ts desc"

    iget-object v2, p0, Lcom/umeng/cconfig/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_96

    :cond_18
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_96

    const-string v2, "__ts"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "__c"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "__a"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "id"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "timeStamp = %s, content = %s, active = %s, id = %s"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    const/4 v10, 0x1

    aput-object v3, v8, v10

    const/4 v11, 0x2

    aput-object v4, v8, v11

    const/4 v11, 0x3

    aput-object v5, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "jessie"

    new-array v7, v10, [Ljava/lang/Object;

    const-string v8, "[DbManager] getLastestConfigInfo"

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v9

    invoke-static {v6, v7}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v2, v0, Lcom/umeng/cconfig/b/d;->a:Ljava/lang/String;

    iput-object v3, v0, Lcom/umeng/cconfig/b/d;->b:Ljava/lang/String;

    iput-object v4, v0, Lcom/umeng/cconfig/b/d;->c:Ljava/lang/String;
    :try_end_87
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_5 .. :try_end_87} :catch_ac
    .catchall {:try_start_5 .. :try_end_87} :catchall_a3

    if-eqz v2, :cond_18

    :try_start_89
    iget-object v1, p0, Lcom/umeng/cconfig/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_92

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_90
    .catchall {:try_start_89 .. :try_end_90} :catchall_91

    goto :goto_92

    :catchall_91
    move-exception v1

    :cond_92
    :goto_92
    invoke-virtual {p0}, Lcom/umeng/cconfig/a/b;->b()V

    return-object v0

    :cond_96
    :try_start_96
    iget-object v1, p0, Lcom/umeng/cconfig/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_9b
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_96 .. :try_end_9b} :catch_ac
    .catchall {:try_start_96 .. :try_end_9b} :catchall_a3

    :try_start_9b
    iget-object v1, p0, Lcom/umeng/cconfig/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_b9

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_b9

    :catchall_a3
    move-exception v1

    iget-object v1, p0, Lcom/umeng/cconfig/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_b9

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_ab
    .catchall {:try_start_9b .. :try_end_ab} :catchall_b8

    goto :goto_b9

    :catch_ac
    move-exception v1

    :try_start_ad
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->printStackTrace()V
    :try_end_b0
    .catchall {:try_start_ad .. :try_end_b0} :catchall_bd

    :try_start_b0
    iget-object v1, p0, Lcom/umeng/cconfig/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_b9

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_b7
    .catchall {:try_start_b0 .. :try_end_b7} :catchall_b8

    goto :goto_b9

    :catchall_b8
    move-exception v1

    :cond_b9
    :goto_b9
    invoke-virtual {p0}, Lcom/umeng/cconfig/a/b;->b()V

    return-object v0

    :catchall_bd
    move-exception v0

    :try_start_be
    iget-object v1, p0, Lcom/umeng/cconfig/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_c9

    iget-object v1, p0, Lcom/umeng/cconfig/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_c7
    .catchall {:try_start_be .. :try_end_c7} :catchall_c8

    goto :goto_c9

    :catchall_c8
    move-exception v1

    :cond_c9
    :goto_c9
    invoke-virtual {p0}, Lcom/umeng/cconfig/a/b;->b()V

    goto :goto_ce

    :goto_cd
    throw v0

    :goto_ce
    goto :goto_cd
.end method
