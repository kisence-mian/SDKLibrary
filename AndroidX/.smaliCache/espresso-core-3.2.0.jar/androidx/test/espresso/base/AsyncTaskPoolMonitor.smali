.class Landroidx/test/espresso/base/AsyncTaskPoolMonitor;
.super Ljava/lang/Object;
.source "AsyncTaskPoolMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/base/AsyncTaskPoolMonitor$BarrierRestarter;,
        Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor;
    }
.end annotation


# instance fields
.field private final activeBarrierChecks:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final monitor:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private final pool:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pool"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/test/espresso/base/AsyncTaskPoolMonitor;->monitor:Ljava/util/concurrent/atomic/AtomicReference;

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroidx/test/espresso/base/AsyncTaskPoolMonitor;->activeBarrierChecks:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 43
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object p1, p0, Landroidx/test/espresso/base/AsyncTaskPoolMonitor;->pool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 44
    return-void
.end method

.method static synthetic access$300(Landroidx/test/espresso/base/AsyncTaskPoolMonitor;)Ljava/util/concurrent/ThreadPoolExecutor;
    .registers 1

    .line 37
    iget-object p0, p0, Landroidx/test/espresso/base/AsyncTaskPoolMonitor;->pool:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object p0
.end method

.method static synthetic access$400(Landroidx/test/espresso/base/AsyncTaskPoolMonitor;)Ljava/util/concurrent/atomic/AtomicReference;
    .registers 1

    .line 37
    iget-object p0, p0, Landroidx/test/espresso/base/AsyncTaskPoolMonitor;->monitor:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static synthetic access$600(Landroidx/test/espresso/base/AsyncTaskPoolMonitor;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    .line 37
    iget-object p0, p0, Landroidx/test/espresso/base/AsyncTaskPoolMonitor;->activeBarrierChecks:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method


# virtual methods
.method asIdleNotifier()Landroidx/test/espresso/base/IdleNotifier;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/espresso/base/IdleNotifier<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 47
    new-instance v0, Landroidx/test/espresso/base/AsyncTaskPoolMonitor$1;

    invoke-direct {v0, p0}, Landroidx/test/espresso/base/AsyncTaskPoolMonitor$1;-><init>(Landroidx/test/espresso/base/AsyncTaskPoolMonitor;)V

    return-object v0
.end method

.method cancelIdleMonitor()V
    .registers 3

    .line 114
    iget-object v0, p0, Landroidx/test/espresso/base/AsyncTaskPoolMonitor;->monitor:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor;

    .line 115
    if-eqz v0, :cond_e

    .line 116
    # invokes: Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor;->poison()V
    invoke-static {v0}, Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor;->access$200(Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor;)V

    .line 118
    :cond_e
    return-void
.end method

.method isIdleNow()Z
    .registers 4

    .line 71
    iget-object v0, p0, Landroidx/test/espresso/base/AsyncTaskPoolMonitor;->pool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 72
    return v1

    .line 74
    :cond_e
    iget-object v0, p0, Landroidx/test/espresso/base/AsyncTaskPoolMonitor;->pool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v0

    .line 75
    if-eqz v0, :cond_25

    .line 76
    iget-object v2, p0, Landroidx/test/espresso/base/AsyncTaskPoolMonitor;->monitor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_25

    .line 79
    iget-object v2, p0, Landroidx/test/espresso/base/AsyncTaskPoolMonitor;->activeBarrierChecks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    sub-int/2addr v0, v2

    .line 82
    :cond_25
    if-nez v0, :cond_28

    const/4 v1, 0x1

    :cond_28
    return v1
.end method

.method notifyWhenIdle(Ljava/lang/Runnable;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "idleCallback"
        }
    .end annotation

    .line 100
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance v0, Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor;-><init>(Landroidx/test/espresso/base/AsyncTaskPoolMonitor;Ljava/lang/Runnable;Landroidx/test/espresso/base/AsyncTaskPoolMonitor$1;)V

    .line 102
    iget-object p1, p0, Landroidx/test/espresso/base/AsyncTaskPoolMonitor;->monitor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const-string v1, "cannot monitor for idle recursively!"

    invoke-static {p1, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 103
    # invokes: Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor;->monitorForIdle()V
    invoke-static {v0}, Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor;->access$100(Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor;)V

    .line 104
    return-void
.end method
