.class Landroidx/test/espresso/base/AsyncTaskPoolMonitor$BarrierRestarter;
.super Ljava/lang/Object;
.source "AsyncTaskPoolMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/base/AsyncTaskPoolMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BarrierRestarter"
.end annotation


# instance fields
.field private final barrier:Ljava/util/concurrent/CyclicBarrier;

.field private final barrierGeneration:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Ljava/util/concurrent/CyclicBarrier;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "barrier",
            "barrierGeneration"
        }
    .end annotation

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput-object p1, p0, Landroidx/test/espresso/base/AsyncTaskPoolMonitor$BarrierRestarter;->barrier:Ljava/util/concurrent/CyclicBarrier;

    .line 206
    iput-object p2, p0, Landroidx/test/espresso/base/AsyncTaskPoolMonitor$BarrierRestarter;->barrierGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 207
    return-void
.end method


# virtual methods
.method declared-synchronized restart(I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fromGeneration"
        }
    .end annotation

    monitor-enter p0

    .line 220
    add-int/lit8 v0, p1, 0x1

    .line 221
    :try_start_3
    iget-object v1, p0, Landroidx/test/espresso/base/AsyncTaskPoolMonitor$BarrierRestarter;->barrierGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 223
    iget-object p1, p0, Landroidx/test/espresso/base/AsyncTaskPoolMonitor$BarrierRestarter;->barrier:Ljava/util/concurrent/CyclicBarrier;

    invoke-virtual {p1}, Ljava/util/concurrent/CyclicBarrier;->reset()V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    .line 227
    :cond_10
    monitor-exit p0

    return-void

    .line 219
    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method
