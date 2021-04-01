.class public Lcom/qq/gdt/action/a/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/gdt/action/a/b$a;
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;

.field private static volatile b:Lcom/qq/gdt/action/a/b;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Lcom/qq/gdt/action/a/b$a;

.field private final e:Ljava/io/File;

.field private f:Ljava/util/concurrent/atomic/AtomicInteger;

.field private g:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "create index index_group on actions ( status,session_id,action_type ) "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "create index index_status_time on actions ( status,revised_action_time ) "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "create index index_time on actions ( revised_action_time ) "

    aput-object v2, v0, v1

    sput-object v0, Lcom/qq/gdt/action/a/b;->a:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/qq/gdt/action/a/b;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/gdt/action/a/b;->c:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gdt_action_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qq/gdt/action/a/b;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/qq/gdt/action/h/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/gdt/action/h/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActionDB full name is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/qq/gdt/action/a/b$a;

    iget-object v2, p0, Lcom/qq/gdt/action/a/b;->c:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/qq/gdt/action/a/b$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/qq/gdt/action/a/b;->d:Lcom/qq/gdt/action/a/b$a;

    iget-object v1, p0, Lcom/qq/gdt/action/a/b;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/gdt/action/a/b;->e:Ljava/io/File;

    return-void
.end method

.method private a(Lcom/qq/gdt/action/a/a;)Landroid/content/ContentValues;
    .registers 6

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "session_id"

    invoke-virtual {p1}, Lcom/qq/gdt/action/a/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "unique_id"

    invoke-virtual {p1}, Lcom/qq/gdt/action/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "action_type"

    invoke-virtual {p1}, Lcom/qq/gdt/action/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "action_time"

    invoke-virtual {p1}, Lcom/qq/gdt/action/a/a;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "action_param"

    invoke-virtual {p1}, Lcom/qq/gdt/action/a/a;->d()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_52

    const-string v0, ""

    :goto_37
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "revised_action_time"

    invoke-virtual {p1}, Lcom/qq/gdt/action/a/a;->g()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "status"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v1

    :cond_52
    invoke-virtual {p1}, Lcom/qq/gdt/action/a/a;->d()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_37
.end method

.method public static a(Landroid/content/Context;)Lcom/qq/gdt/action/a/b;
    .registers 3

    sget-object v0, Lcom/qq/gdt/action/a/b;->b:Lcom/qq/gdt/action/a/b;

    if-nez v0, :cond_13

    const-class v1, Lcom/qq/gdt/action/a/b;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/qq/gdt/action/a/b;->b:Lcom/qq/gdt/action/a/b;

    if-nez v0, :cond_12

    new-instance v0, Lcom/qq/gdt/action/a/b;

    invoke-direct {v0, p0}, Lcom/qq/gdt/action/a/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qq/gdt/action/a/b;->b:Lcom/qq/gdt/action/a/b;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lcom/qq/gdt/action/a/b;->b:Lcom/qq/gdt/action/a/b;

    return-object v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Z)V
    .registers 6

    if-eqz p2, :cond_5

    :try_start_2
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_10

    :cond_5
    :goto_5
    if-eqz p1, :cond_f

    if-eqz p3, :cond_c

    :try_start_9
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_c
    invoke-direct {p0}, Lcom/qq/gdt/action/a/b;->d()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_f} :catch_17

    :cond_f
    :goto_f
    return-void

    :catch_10
    move-exception v0

    const-string v1, "Cursor close exception"

    invoke-static {v1, v0}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_17
    move-exception v0

    const-string v1, "Database close exception"

    invoke-static {v1, v0}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f
.end method

.method static synthetic b()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/qq/gdt/action/a/b;->a:[Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized c()Landroid/database/sqlite/SQLiteDatabase;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/qq/gdt/action/a/b;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1d

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    :try_start_a
    iget-object v0, p0, Lcom/qq/gdt/action/a/b;->d:Lcom/qq/gdt/action/a/b$a;

    invoke-virtual {v0}, Lcom/qq/gdt/action/a/b$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/gdt/action/a/b;->g:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_12} :catch_16
    .catchall {:try_start_a .. :try_end_12} :catchall_1d

    :cond_12
    :goto_12
    :try_start_12
    iget-object v0, p0, Lcom/qq/gdt/action/a/b;->g:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_1d

    monitor-exit p0

    return-object v0

    :catch_16
    move-exception v0

    :try_start_17
    const-string v1, "database open exception"

    invoke-static {v1, v0}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_1d

    goto :goto_12

    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/qq/gdt/action/a/b;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/qq/gdt/action/a/b;->g:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b

    if-eqz v0, :cond_12

    :try_start_d
    iget-object v0, p0, Lcom/qq/gdt/action/a/b;->g:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_12} :catch_14
    .catchall {:try_start_d .. :try_end_12} :catchall_1b

    :cond_12
    :goto_12
    monitor-exit p0

    return-void

    :catch_14
    move-exception v0

    :try_start_15
    const-string v1, "database close exception"

    invoke-static {v1, v0}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_1b

    goto :goto_12

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private e()I
    .registers 12

    const/4 v3, 0x0

    const/4 v1, 0x0

    const-string v0, "( status = 1 ) AND ( ( action_time < ? ) OR ( revised_action_time > 0 AND revised_action_time < ? ))"

    :try_start_4
    invoke-direct {p0}, Lcom/qq/gdt/action/a/b;->c()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_7} :catch_5a
    .catchall {:try_start_4 .. :try_end_7} :catchall_66

    move-result-object v2

    const/4 v4, 0x2

    :try_start_9
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/32 v8, 0x4d3f6400

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {}, Lcom/qq/gdt/action/h/u;->b()J

    move-result-wide v6

    const-wide/32 v8, 0x337f980

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Will delete actions with query:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", values:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v5, "actions"

    invoke-virtual {v2, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_55} :catch_73
    .catchall {:try_start_9 .. :try_end_55} :catchall_6c

    move-result v0

    invoke-direct {p0, v2, v3, v1}, Lcom/qq/gdt/action/a/b;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Z)V

    :goto_59
    return v0

    :catch_5a
    move-exception v0

    move-object v0, v3

    :goto_5c
    :try_start_5c
    const-string v2, "Exception while delete actions out of date"

    invoke-static {v2}, Lcom/qq/gdt/action/h/l;->c(Ljava/lang/String;)V
    :try_end_61
    .catchall {:try_start_5c .. :try_end_61} :catchall_6e

    invoke-direct {p0, v0, v3, v1}, Lcom/qq/gdt/action/a/b;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Z)V

    move v0, v1

    goto :goto_59

    :catchall_66
    move-exception v0

    move-object v2, v3

    :goto_68
    invoke-direct {p0, v2, v3, v1}, Lcom/qq/gdt/action/a/b;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Z)V

    throw v0

    :catchall_6c
    move-exception v0

    goto :goto_68

    :catchall_6e
    move-exception v2

    move-object v10, v2

    move-object v2, v0

    move-object v0, v10

    goto :goto_68

    :catch_73
    move-exception v0

    move-object v0, v2

    goto :goto_5c
.end method

.method private f()I
    .registers 8

    const/4 v3, 0x0

    const/4 v1, 0x0

    const-string v0, "( status = 1 ) AND (action_type in (\'TICKET\', \'PAGE_VIEW\'))"

    :try_start_4
    invoke-direct {p0}, Lcom/qq/gdt/action/a/b;->c()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_7} :catch_32
    .catchall {:try_start_4 .. :try_end_7} :catchall_3e

    move-result-object v2

    :try_start_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Will delete auto actions with query:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", values:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v4, "actions"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_2d} :catch_4b
    .catchall {:try_start_8 .. :try_end_2d} :catchall_44

    move-result v0

    invoke-direct {p0, v2, v3, v1}, Lcom/qq/gdt/action/a/b;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Z)V

    :goto_31
    return v0

    :catch_32
    move-exception v0

    move-object v0, v3

    :goto_34
    :try_start_34
    const-string v2, "Exception while delete actions outOfDate"

    invoke-static {v2}, Lcom/qq/gdt/action/h/l;->c(Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_34 .. :try_end_39} :catchall_46

    invoke-direct {p0, v0, v3, v1}, Lcom/qq/gdt/action/a/b;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Z)V

    move v0, v1

    goto :goto_31

    :catchall_3e
    move-exception v0

    move-object v2, v3

    :goto_40
    invoke-direct {p0, v2, v3, v1}, Lcom/qq/gdt/action/a/b;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Z)V

    throw v0

    :catchall_44
    move-exception v0

    goto :goto_40

    :catchall_46
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_40

    :catch_4b
    move-exception v0

    move-object v0, v2

    goto :goto_34
.end method

.method private g()I
    .registers 7

    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    :try_start_3
    invoke-direct {p0}, Lcom/qq/gdt/action/a/b;->c()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_6} :catch_23
    .catchall {:try_start_3 .. :try_end_6} :catchall_2e

    move-result-object v3

    :try_start_7
    const-string v1, "SELECT COUNT(*) FROM actions"

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1f

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1f

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_1a} :catch_36
    .catchall {:try_start_7 .. :try_end_1a} :catchall_34

    move-result v0

    invoke-direct {p0, v3, v2, v5}, Lcom/qq/gdt/action/a/b;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Z)V

    :goto_1e
    return v0

    :cond_1f
    invoke-direct {p0, v3, v2, v5}, Lcom/qq/gdt/action/a/b;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Z)V

    goto :goto_1e

    :catch_23
    move-exception v1

    move-object v3, v2

    :goto_25
    :try_start_25
    const-string v4, "Exception while count all actions in db"

    invoke-static {v4, v1}, Lcom/qq/gdt/action/h/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_34

    invoke-direct {p0, v3, v2, v5}, Lcom/qq/gdt/action/a/b;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Z)V

    goto :goto_1e

    :catchall_2e
    move-exception v0

    move-object v3, v2

    :goto_30
    invoke-direct {p0, v3, v2, v5}, Lcom/qq/gdt/action/a/b;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Z)V

    throw v0

    :catchall_34
    move-exception v0

    goto :goto_30

    :catch_36
    move-exception v1

    goto :goto_25
.end method


# virtual methods
.method public a(I)I
    .registers 8

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v0, -0x1

    :try_start_3
    invoke-direct {p0}, Lcom/qq/gdt/action/a/b;->c()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_2d
    .catchall {:try_start_3 .. :try_end_6} :catchall_38

    move-result-object v3

    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT COUNT(*) FROM actions WHERE status = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_29

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_28} :catch_40
    .catchall {:try_start_7 .. :try_end_28} :catchall_3e

    move-result v0

    :cond_29
    invoke-direct {p0, v3, v2, v5}, Lcom/qq/gdt/action/a/b;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Z)V

    :goto_2c
    return v0

    :catch_2d
    move-exception v1

    move-object v3, v2

    :goto_2f
    :try_start_2f
    const-string v4, "Count failed action exception"

    invoke-static {v4, v1}, Lcom/qq/gdt/action/h/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_3e

    invoke-direct {p0, v3, v2, v5}, Lcom/qq/gdt/action/a/b;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Z)V

    goto :goto_2c

    :catchall_38
    move-exception v0

    move-object v3, v2

    :goto_3a
    invoke-direct {p0, v3, v2, v5}, Lcom/qq/gdt/action/a/b;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Z)V

    throw v0

    :catchall_3e
    move-exception v0

    goto :goto_3a

    :catch_40
    move-exception v1

    goto :goto_2f
.end method

.method public declared-synchronized a(Ljava/util/List;I)I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;I)I"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x0

    monitor-enter p0

    const/4 v0, -0x3

    :try_start_4
    invoke-direct {p0}, Lcom/qq/gdt/action/a/b;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "status"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " IN "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ( "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_32
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_6b

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v1, v6, :cond_52

    const-string v6, "?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4f
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    :cond_52
    const-string v6, "?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_5d} :catch_5e
    .catchall {:try_start_4 .. :try_end_5d} :catchall_83

    goto :goto_4f

    :catch_5e
    move-exception v1

    :try_start_5f
    const-string v3, "Database update actions status exception."

    invoke-static {v3, v1}, Lcom/qq/gdt/action/h/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_64
    .catchall {:try_start_5f .. :try_end_64} :catchall_83

    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_66
    invoke-direct {p0, v2, v1, v3}, Lcom/qq/gdt/action/a/b;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Z)V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_80

    :goto_69
    monitor-exit p0

    return v0

    :cond_6b
    :try_start_6b
    const-string v1, " ) "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "actions"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v1, v3, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_79} :catch_5e
    .catchall {:try_start_6b .. :try_end_79} :catchall_83

    move-result v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_7c
    invoke-direct {p0, v2, v1, v3}, Lcom/qq/gdt/action/a/b;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Z)V
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_80

    goto :goto_69

    :catchall_80
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_83
    move-exception v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_86
    invoke-direct {p0, v2, v1, v3}, Lcom/qq/gdt/action/a/b;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Z)V

    throw v0
    :try_end_8a
    .catchall {:try_start_86 .. :try_end_8a} :catchall_80
.end method

.method public a(IJJ)Ljava/util/List;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)",
            "Ljava/util/List",
            "<",
            "Lcom/qq/gdt/action/a/a;",
            ">;"
        }
    .end annotation

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v3, 0x0

    :try_start_7
    invoke-direct/range {p0 .. p0}, Lcom/qq/gdt/action/a/b;->c()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_e6
    .catchall {:try_start_7 .. :try_end_a} :catchall_db

    move-result-object v15

    :try_start_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT * FROM actions WHERE status = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "id"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " > "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ORDER BY "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "id"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ASC LIMIT "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v15, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_54} :catch_e8
    .catchall {:try_start_b .. :try_end_54} :catchall_df

    move-result-object v14

    if-eqz v14, :cond_d4

    :goto_57
    :try_start_57
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_d4

    const-string v2, "id"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-string v2, "session_id"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v2, "unique_id"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v2, "action_type"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v2, "action_time"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-string v2, "revised_action_time"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const-string v2, "action_param"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qq/gdt/action/h/t;->a(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_c6

    const/4 v12, 0x0

    :goto_aa
    new-instance v2, Lcom/qq/gdt/action/a/a;

    move/from16 v13, p1

    invoke-direct/range {v2 .. v13}, Lcom/qq/gdt/action/a/a;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;I)V

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_b6} :catch_b7
    .catchall {:try_start_57 .. :try_end_b6} :catchall_cc

    goto :goto_57

    :catch_b7
    move-exception v2

    move-object v3, v14

    move-object v4, v15

    :goto_ba
    :try_start_ba
    const-string v5, "Find actions by status exception"

    invoke-static {v5, v2}, Lcom/qq/gdt/action/h/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_bf
    .catchall {:try_start_ba .. :try_end_bf} :catchall_e2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3, v2}, Lcom/qq/gdt/action/a/b;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Z)V

    :goto_c5
    return-object v16

    :cond_c6
    :try_start_c6
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_cb} :catch_b7
    .catchall {:try_start_c6 .. :try_end_cb} :catchall_cc

    goto :goto_aa

    :catchall_cc
    move-exception v2

    :goto_cd
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v14, v3}, Lcom/qq/gdt/action/a/b;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Z)V

    throw v2

    :cond_d4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v14, v2}, Lcom/qq/gdt/action/a/b;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Z)V

    goto :goto_c5

    :catchall_db
    move-exception v2

    move-object v14, v3

    move-object v15, v4

    goto :goto_cd

    :catchall_df
    move-exception v2

    move-object v14, v3

    goto :goto_cd

    :catchall_e2
    move-exception v2

    move-object v14, v3

    move-object v15, v4

    goto :goto_cd

    :catch_e6
    move-exception v2

    goto :goto_ba

    :catch_e8
    move-exception v2

    move-object v4, v15

    goto :goto_ba
.end method

.method public a()V
    .registers 5

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/qq/gdt/action/a/b;->e()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Success cleaned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " out of date actions."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/qq/gdt/action/a/b;->g()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Count all actions in db: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v1, 0x2710

    if-le v0, v1, :cond_65

    invoke-direct {p0}, Lcom/qq/gdt/action/a/b;->f()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Success deep-clean "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " out of date actions."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_65
    return-void
.end method

.method public a(Ljava/util/List;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/qq/gdt/action/a/a;",
            ">;)Z"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    :try_start_3
    invoke-direct {p0}, Lcom/qq/gdt/action/a/b;->c()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_65
    .catchall {:try_start_3 .. :try_end_6} :catchall_5c

    move-result-object v1

    :try_start_7
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qq/gdt/action/a/a;

    invoke-direct {p0, v0}, Lcom/qq/gdt/action/a/b;->a(Lcom/qq/gdt/action/a/a;)Landroid/content/ContentValues;

    move-result-object v6

    const-string v7, "actions"

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-gez v8, :cond_4d

    move v0, v3

    :goto_2c
    if-eqz v0, :cond_31

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_31} :catch_51
    .catchall {:try_start_7 .. :try_end_31} :catchall_63

    :cond_31
    invoke-direct {p0, v1, v2, v4}, Lcom/qq/gdt/action/a/b;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Z)V

    move v1, v0

    :goto_35
    if-nez v1, :cond_62

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qq/gdt/action/a/a;

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v4, v5}, Lcom/qq/gdt/action/a/a;->a(J)V

    goto :goto_3b

    :cond_4d
    :try_start_4d
    invoke-virtual {v0, v6, v7}, Lcom/qq/gdt/action/a/a;->a(J)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_50} :catch_51
    .catchall {:try_start_4d .. :try_end_50} :catchall_63

    goto :goto_e

    :catch_51
    move-exception v0

    :goto_52
    :try_start_52
    const-string v5, "Database add actions exception."

    invoke-static {v5, v0}, Lcom/qq/gdt/action/h/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_57
    .catchall {:try_start_52 .. :try_end_57} :catchall_63

    invoke-direct {p0, v1, v2, v4}, Lcom/qq/gdt/action/a/b;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Z)V

    move v1, v3

    goto :goto_35

    :catchall_5c
    move-exception v0

    move-object v1, v2

    :goto_5e
    invoke-direct {p0, v1, v2, v4}, Lcom/qq/gdt/action/a/b;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Z)V

    throw v0

    :cond_62
    return v1

    :catchall_63
    move-exception v0

    goto :goto_5e

    :catch_65
    move-exception v0

    move-object v1, v2

    goto :goto_52

    :cond_68
    move v0, v4

    goto :goto_2c
.end method
