.class public Lcom/sigmob/sdk/common/a/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/common/a/a$c;,
        Lcom/sigmob/sdk/common/a/a$b;,
        Lcom/sigmob/sdk/common/a/a$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/sigmob/sdk/common/a/a;


# instance fields
.field private final b:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/sigmob/sdk/common/a/a;

    invoke-direct {v0}, Lcom/sigmob/sdk/common/a/a;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/common/a/a;->a:Lcom/sigmob/sdk/common/a/a;

    return-void
.end method

.method private constructor <init>()V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/common/a/a;->c:Ljava/lang/Object;

    new-instance v7, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v0, 0xa

    invoke-direct {v7, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const-wide/16 v4, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/sigmob/sdk/common/a/a;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public static declared-synchronized a()Lcom/sigmob/sdk/common/a/a;
    .registers 2

    const-class v0, Lcom/sigmob/sdk/common/a/a;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/sigmob/sdk/common/a/a;->a:Lcom/sigmob/sdk/common/a/a;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sigmob/sdk/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 14

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/sigmob/sdk/common/a/c;->a()Lcom/sigmob/sdk/common/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/a/c;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result p1
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1f

    if-eqz v0, :cond_2d

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2d

    :catchall_1f
    move-exception p1

    :try_start_20
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_2e

    if-eqz v0, :cond_2c

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2c
    const/4 p1, 0x0

    :cond_2d
    :goto_2d
    return p1

    :catchall_2e
    move-exception p1

    if-eqz v0, :cond_34

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_34
    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/common/a/c$a;)V
    .registers 5

    :try_start_0
    new-instance v0, Lcom/sigmob/sdk/common/a/a$b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sigmob/sdk/common/a/a$b;-><init>(Lcom/sigmob/sdk/common/a/a;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/common/a/c$a;)V

    iget-object p1, p0, Lcom/sigmob/sdk/common/a/a;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    goto :goto_16

    :catchall_b
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    invoke-interface {p3, p1}, Lcom/sigmob/sdk/common/a/c$a;->onFailed(Ljava/lang/Throwable;)V

    :goto_16
    return-void
.end method

.method public a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/common/a/a$a;)V
    .registers 22

    new-instance v11, Lcom/sigmob/sdk/common/a/a$c;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/sigmob/sdk/common/a/a$c;-><init>(Lcom/sigmob/sdk/common/a/a;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/common/a/a$a;)V

    move-object v0, p0

    iget-object v1, v0, Lcom/sigmob/sdk/common/a/a;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v11}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
