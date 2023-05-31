.class public Lcom/sigmob/sdk/base/a/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/sigmob/sdk/base/a/a;


# instance fields
.field private final b:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/sigmob/sdk/base/a/a;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/a/a;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/base/a/a;->a:Lcom/sigmob/sdk/base/a/a;

    return-void
.end method

.method private constructor <init>()V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/a/a;->c:Ljava/lang/Object;

    new-instance v7, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v0, 0xa

    invoke-direct {v7, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/sigmob/sdk/base/a/a;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public static declared-synchronized a()Lcom/sigmob/sdk/base/a/a;
    .registers 2

    const-class v0, Lcom/sigmob/sdk/base/a/a;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/sigmob/sdk/base/a/a;->a:Lcom/sigmob/sdk/base/a/a;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic a(Lcom/sigmob/sdk/base/a/a;Ljava/util/List;)Ljava/util/List;
    .registers 3

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/a/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/sdk/base/models/BaseAdUnit;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_10
    :goto_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    :try_start_1c
    const-string v1, "create_time"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    const-string v2, "request_id"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "load_id"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v6, "ad"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    if-eqz v0, :cond_10

    sget-object v6, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v6, v0}, Lcom/sigmob/wire/ProtoAdapter;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;

    if-eqz v0, :cond_10

    invoke-static {v0, v2, v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->adUnit(Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;Ljava/lang/String;Ljava/lang/String;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    if-eqz v1, :cond_57

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->setCreate_time(J)V

    :cond_57
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_5a} :catch_5b

    goto :goto_10

    :catch_5b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    goto :goto_10

    :cond_64
    return-object v4
.end method

.method private a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/a/b;)V
    .registers 21

    new-instance v0, Lcom/sigmob/sdk/base/a/d;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/sigmob/sdk/base/a/d;-><init>(Lcom/sigmob/sdk/base/a/a;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/a/b;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/a/a;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sigmob/sdk/base/a/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 14

    const/4 v10, 0x0

    const/4 v9, 0x0

    :try_start_2
    invoke-static {}, Lcom/sigmob/sdk/base/a/l;->a()Lcom/sigmob/sdk/base/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/a/l;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_15} :catch_20
    .catchall {:try_start_2 .. :try_end_15} :catchall_2c

    move-result-object v1

    :try_start_16
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_19} :catch_36
    .catchall {:try_start_16 .. :try_end_19} :catchall_33

    move-result v0

    if-eqz v1, :cond_1f

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1f
    :goto_1f
    return v0

    :catch_20
    move-exception v0

    move-object v1, v10

    :goto_22
    :try_start_22
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_33

    if-eqz v1, :cond_38

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v9

    goto :goto_1f

    :catchall_2c
    move-exception v0

    :goto_2d
    if-eqz v10, :cond_32

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_32
    throw v0

    :catchall_33
    move-exception v0

    move-object v10, v1

    goto :goto_2d

    :catch_36
    move-exception v0

    goto :goto_22

    :cond_38
    move v0, v9

    goto :goto_1f
.end method

.method public a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/sigmob/sdk/base/a/e;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    :try_start_0
    new-instance v7, Ljava/util/HashSet;

    const/4 v0, 0x1

    invoke-direct {v7, v0}, Ljava/util/HashSet;-><init>(I)V

    new-instance v8, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v8, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    const-string v5, "1"

    new-instance v6, Lcom/sigmob/sdk/base/a/a$1;

    invoke-direct {v6, p0, v7, v8}, Lcom/sigmob/sdk/base/a/a$1;-><init>(Lcom/sigmob/sdk/base/a/a;Ljava/util/HashSet;Ljava/util/concurrent/CountDownLatch;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/sigmob/sdk/base/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/a/n;)V

    const-wide/16 v0, 0x7d0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v0, v1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    invoke-virtual {v7}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_39

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2f} :catch_31

    move-result-object v0

    :goto_30
    return-object v0

    :catch_31
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    :cond_39
    const/4 v0, 0x0

    goto :goto_30
.end method

.method public a(Ljava/lang/Class;Lcom/sigmob/sdk/base/a/n;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/sigmob/sdk/base/a/e;",
            ">;",
            "Lcom/sigmob/sdk/base/a/n;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/sigmob/sdk/base/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/a/n;)V

    return-void
.end method

.method public a(Ljava/lang/Class;Ljava/lang/String;Lcom/sigmob/sdk/base/a/m;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/sigmob/sdk/base/a/e;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/sigmob/sdk/base/a/m;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/a/e;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/a/e;->tableName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;)Z

    new-instance v1, Lcom/sigmob/sdk/base/a/c;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/a/e;->tableName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0, p2, p3}, Lcom/sigmob/sdk/base/a/c;-><init>(Lcom/sigmob/sdk/base/a/a;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/a/m;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/a/a;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1b} :catch_1c

    :goto_1b
    return-void

    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-interface {p3, v0}, Lcom/sigmob/sdk/base/a/m;->onFailed(Ljava/lang/Throwable;)V

    goto :goto_1b
.end method

.method public a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/a/n;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/sigmob/sdk/base/a/e;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sigmob/sdk/base/a/n;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/base/a/e;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/a/e;->tableName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/a/e;->tableName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v10, Lcom/sigmob/sdk/base/a/a$2;

    move-object/from16 v0, p6

    invoke-direct {v10, p0, v0, v1}, Lcom/sigmob/sdk/base/a/a$2;-><init>(Lcom/sigmob/sdk/base/a/a;Lcom/sigmob/sdk/base/a/n;Lcom/sigmob/sdk/base/a/e;)V

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    move-object v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v1 .. v10}, Lcom/sigmob/sdk/base/a/a;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/a/b;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_24} :catch_25

    :cond_24
    :goto_24
    return-void

    :catch_25
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p6, :cond_24

    new-instance v2, Ljava/lang/Error;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Lcom/sigmob/sdk/base/a/n;->a(Ljava/lang/Error;)V

    goto :goto_24
.end method
