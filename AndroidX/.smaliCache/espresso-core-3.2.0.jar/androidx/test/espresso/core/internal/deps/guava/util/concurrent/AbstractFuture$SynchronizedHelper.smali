.class final Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$SynchronizedHelper;
.super Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$AtomicHelper;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SynchronizedHelper"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1304
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$AtomicHelper;-><init>(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$1;)V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$1;)V
    .registers 2

    .line 1304
    invoke-direct {p0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$SynchronizedHelper;-><init>()V

    return-void
.end method


# virtual methods
.method casListeners(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Listener;Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Listener;)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "future",
            "expect",
            "update"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture<",
            "*>;",
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Listener;",
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Listener;",
            ")Z"
        }
    .end annotation

    .line 1328
    monitor-enter p1

    .line 1329
    :try_start_1
    # getter for: Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->listeners:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Listener;
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->access$900(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;)Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Listener;

    move-result-object v0

    if-ne v0, p2, :cond_d

    .line 1330
    # setter for: Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->listeners:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Listener;
    invoke-static {p1, p3}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->access$902(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Listener;)Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Listener;

    .line 1331
    const/4 p2, 0x1

    monitor-exit p1

    return p2

    .line 1333
    :cond_d
    const/4 p2, 0x0

    monitor-exit p1

    return p2

    .line 1334
    :catchall_10
    move-exception p2

    monitor-exit p1
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw p2
.end method

.method casValue(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "future",
            "expect",
            "update"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 1339
    monitor-enter p1

    .line 1340
    :try_start_1
    # getter for: Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->access$400(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_d

    .line 1341
    # setter for: Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;
    invoke-static {p1, p3}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->access$402(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1342
    const/4 p2, 0x1

    monitor-exit p1

    return p2

    .line 1344
    :cond_d
    const/4 p2, 0x0

    monitor-exit p1

    return p2

    .line 1345
    :catchall_10
    move-exception p2

    monitor-exit p1
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw p2
.end method

.method casWaiters(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "future",
            "expect",
            "update"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture<",
            "*>;",
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;",
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;",
            ")Z"
        }
    .end annotation

    .line 1317
    monitor-enter p1

    .line 1318
    :try_start_1
    # getter for: Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->waiters:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->access$800(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;)Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;

    move-result-object v0

    if-ne v0, p2, :cond_d

    .line 1319
    # setter for: Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->waiters:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;
    invoke-static {p1, p3}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->access$802(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;)Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;

    .line 1320
    const/4 p2, 0x1

    monitor-exit p1

    return p2

    .line 1322
    :cond_d
    const/4 p2, 0x0

    monitor-exit p1

    return p2

    .line 1323
    :catchall_10
    move-exception p2

    monitor-exit p1
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw p2
.end method

.method putNext(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "waiter",
            "newValue"
        }
    .end annotation

    .line 1312
    iput-object p2, p1, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;->next:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;

    .line 1313
    return-void
.end method

.method putThread(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;Ljava/lang/Thread;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "waiter",
            "newValue"
        }
    .end annotation

    .line 1307
    iput-object p2, p1, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;->thread:Ljava/lang/Thread;

    .line 1308
    return-void
.end method
