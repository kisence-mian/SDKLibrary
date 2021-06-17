.class Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor;
.super Ljava/lang/Object;
.source "AsyncTaskPoolMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/base/AsyncTaskPoolMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleMonitor"
.end annotation


# instance fields
.field private final barrier:Ljava/util/concurrent/CyclicBarrier;

.field private final barrierGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final onIdle:Ljava/lang/Runnable;

.field private volatile poisoned:Z

.field final synthetic this$0:Landroidx/test/espresso/base/AsyncTaskPoolMonitor;


# direct methods
.method private constructor <init>(Landroidx/test/espresso/base/AsyncTaskPoolMonitor;Ljava/lang/Runnable;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x10
        }
        names = {
            "this$0",
            "onIdle"
        }
    .end annotation

    .line 127
    iput-object p1, p0, Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor;->this$0:Landroidx/test/espresso/base/AsyncTaskPoolMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor;->barrierGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 128
    invoke-static {p2}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor;->onIdle:Ljava/lang/Runnable;

    .line 129
    new-instance v0, Ljava/util/concurrent/CyclicBarrier;

    .line 131
    # getter for: Landroidx/test/espresso/base/AsyncTaskPoolMonitor;->pool:Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-static {p1}, Landroidx/test/espresso/base/AsyncTaskPoolMonitor;->access$300(Landroidx/test/espresso/base/AsyncTaskPoolMonitor;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v1

    new-instance v2, Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor$1;

    invoke-direct {v2, p0, p1, p2}, Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor$1;-><init>(Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor;Landroidx/test/espresso/base/AsyncTaskPoolMonitor;Ljava/lang/Runnable;)V

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/CyclicBarrier;-><init>(ILjava/lang/Runnable;)V

    iput-object v0, p0, Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor;->barrier:Ljava/util/concurrent/CyclicBarrier;

    .line 146
    return-void
.end method

.method synthetic constructor <init>(Landroidx/test/espresso/base/AsyncTaskPoolMonitor;Ljava/lang/Runnable;Landroidx/test/espresso/base/AsyncTaskPoolMonitor$1;)V
    .registers 4

    .line 120
    invoke-direct {p0, p1, p2}, Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor;-><init>(Landroidx/test/espresso/base/AsyncTaskPoolMonitor;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$100(Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor;)V
    .registers 1

    .line 120
    invoke-direct {p0}, Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor;->monitorForIdle()V

    return-void
.end method

.method static synthetic access$200(Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor;)V
    .registers 1

    .line 120
    invoke-direct {p0}, Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor;->poison()V

    return-void
.end method

.method static synthetic access$500(Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor;)Z
    .registers 1

    .line 120
    iget-boolean p0, p0, Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor;->poisoned:Z

    return p0
.end method

.method static synthetic access$700(Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    .line 120
    iget-object p0, p0, Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor;->barrierGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$800(Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor;)Ljava/util/concurrent/CyclicBarrier;
    .registers 1

    .line 120
    iget-object p0, p0, Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor;->barrier:Ljava/util/concurrent/CyclicBarrier;

    return-object p0
.end method

.method private monitorForIdle()V
    .registers 6

    .line 158
    iget-boolean v0, p0, Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor;->poisoned:Z

    if-eqz v0, :cond_5

    .line 159
    return-void

    .line 162
    :cond_5
    iget-object v0, p0, Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor;->this$0:Landroidx/test/espresso/base/AsyncTaskPoolMonitor;

    invoke-virtual {v0}, Landroidx/test/espresso/base/AsyncTaskPoolMonitor;->isIdleNow()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 163
    iget-object v0, p0, Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor;->this$0:Landroidx/test/espresso/base/AsyncTaskPoolMonitor;

    # getter for: Landroidx/test/espresso/base/AsyncTaskPoolMonitor;->monitor:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Landroidx/test/espresso/base/AsyncTaskPoolMonitor;->access$400(Landroidx/test/espresso/base/AsyncTaskPoolMonitor;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 164
    iget-object v0, p0, Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor;->onIdle:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_44

    .line 170
    :cond_1d
    iget-object v0, p0, Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor;->this$0:Landroidx/test/espresso/base/AsyncTaskPoolMonitor;

    # getter for: Landroidx/test/espresso/base/AsyncTaskPoolMonitor;->pool:Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-static {v0}, Landroidx/test/espresso/base/AsyncTaskPoolMonitor;->access$300(Landroidx/test/espresso/base/AsyncTaskPoolMonitor;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v0

    .line 171
    new-instance v1, Landroidx/test/espresso/base/AsyncTaskPoolMonitor$BarrierRestarter;

    iget-object v2, p0, Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor;->barrier:Ljava/util/concurrent/CyclicBarrier;

    iget-object v3, p0, Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor;->barrierGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v2, v3}, Landroidx/test/espresso/base/AsyncTaskPoolMonitor$BarrierRestarter;-><init>(Ljava/util/concurrent/CyclicBarrier;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 173
    const/4 v2, 0x0

    :goto_31
    if-ge v2, v0, :cond_44

    .line 174
    iget-object v3, p0, Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor;->this$0:Landroidx/test/espresso/base/AsyncTaskPoolMonitor;

    # getter for: Landroidx/test/espresso/base/AsyncTaskPoolMonitor;->pool:Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-static {v3}, Landroidx/test/espresso/base/AsyncTaskPoolMonitor;->access$300(Landroidx/test/espresso/base/AsyncTaskPoolMonitor;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v3

    new-instance v4, Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor$2;

    invoke-direct {v4, p0, v1}, Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor$2;-><init>(Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor;Landroidx/test/espresso/base/AsyncTaskPoolMonitor$BarrierRestarter;)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 173
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 197
    :cond_44
    :goto_44
    return-void
.end method

.method private poison()V
    .registers 2

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor;->poisoned:Z

    .line 154
    iget-object v0, p0, Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor;->barrier:Ljava/util/concurrent/CyclicBarrier;

    invoke-virtual {v0}, Ljava/util/concurrent/CyclicBarrier;->reset()V

    .line 155
    return-void
.end method
