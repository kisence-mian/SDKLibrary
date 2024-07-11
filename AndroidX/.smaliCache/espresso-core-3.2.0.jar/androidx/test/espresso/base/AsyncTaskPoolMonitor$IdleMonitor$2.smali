.class Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor$2;
.super Ljava/lang/Object;
.source "AsyncTaskPoolMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor;->monitorForIdle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor;

.field final synthetic val$restarter:Landroidx/test/espresso/base/AsyncTaskPoolMonitor$BarrierRestarter;


# direct methods
.method constructor <init>(Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor;Landroidx/test/espresso/base/AsyncTaskPoolMonitor$BarrierRestarter;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$restarter"
        }
    .end annotation

    .line 175
    iput-object p1, p0, Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor$2;->this$1:Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor;

    iput-object p2, p0, Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor$2;->val$restarter:Landroidx/test/espresso/base/AsyncTaskPoolMonitor$BarrierRestarter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 178
    :goto_0
    iget-object v0, p0, Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor$2;->this$1:Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor;

    # getter for: Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor;->poisoned:Z
    invoke-static {v0}, Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor;->access$500(Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor;)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 179
    iget-object v0, p0, Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor$2;->this$1:Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor;

    iget-object v0, v0, Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor;->this$0:Landroidx/test/espresso/base/AsyncTaskPoolMonitor;

    # getter for: Landroidx/test/espresso/base/AsyncTaskPoolMonitor;->activeBarrierChecks:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Landroidx/test/espresso/base/AsyncTaskPoolMonitor;->access$600(Landroidx/test/espresso/base/AsyncTaskPoolMonitor;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 180
    iget-object v0, p0, Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor$2;->this$1:Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor;

    # getter for: Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor;->barrierGeneration:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor;->access$700(Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 182
    :try_start_1d
    iget-object v1, p0, Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor$2;->this$1:Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor;

    # getter for: Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor;->barrier:Ljava/util/concurrent/CyclicBarrier;
    invoke-static {v1}, Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor;->access$800(Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor;)Ljava/util/concurrent/CyclicBarrier;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CyclicBarrier;->await()I
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_26} :catch_3b
    .catch Ljava/util/concurrent/BrokenBarrierException; {:try_start_1d .. :try_end_26} :catch_34
    .catchall {:try_start_1d .. :try_end_26} :catchall_32

    .line 190
    iget-object v0, p0, Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor$2;->this$1:Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor;

    iget-object v0, v0, Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor;->this$0:Landroidx/test/espresso/base/AsyncTaskPoolMonitor;

    # getter for: Landroidx/test/espresso/base/AsyncTaskPoolMonitor;->activeBarrierChecks:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Landroidx/test/espresso/base/AsyncTaskPoolMonitor;->access$600(Landroidx/test/espresso/base/AsyncTaskPoolMonitor;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 183
    return-void

    .line 190
    :catchall_32
    move-exception v0

    goto :goto_4e

    .line 187
    :catch_34
    move-exception v1

    .line 188
    :try_start_35
    iget-object v1, p0, Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor$2;->val$restarter:Landroidx/test/espresso/base/AsyncTaskPoolMonitor$BarrierRestarter;

    invoke-virtual {v1, v0}, Landroidx/test/espresso/base/AsyncTaskPoolMonitor$BarrierRestarter;->restart(I)V

    goto :goto_41

    .line 184
    :catch_3b
    move-exception v1

    .line 186
    iget-object v1, p0, Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor$2;->val$restarter:Landroidx/test/espresso/base/AsyncTaskPoolMonitor$BarrierRestarter;

    invoke-virtual {v1, v0}, Landroidx/test/espresso/base/AsyncTaskPoolMonitor$BarrierRestarter;->restart(I)V
    :try_end_41
    .catchall {:try_start_35 .. :try_end_41} :catchall_32

    .line 190
    :goto_41
    iget-object v0, p0, Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor$2;->this$1:Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor;

    iget-object v0, v0, Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor;->this$0:Landroidx/test/espresso/base/AsyncTaskPoolMonitor;

    # getter for: Landroidx/test/espresso/base/AsyncTaskPoolMonitor;->activeBarrierChecks:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Landroidx/test/espresso/base/AsyncTaskPoolMonitor;->access$600(Landroidx/test/espresso/base/AsyncTaskPoolMonitor;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 191
    nop

    .line 192
    goto :goto_0

    .line 190
    :goto_4e
    iget-object v1, p0, Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor$2;->this$1:Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor;

    iget-object v1, v1, Landroidx/test/espresso/base/AsyncTaskPoolMonitor$IdleMonitor;->this$0:Landroidx/test/espresso/base/AsyncTaskPoolMonitor;

    # getter for: Landroidx/test/espresso/base/AsyncTaskPoolMonitor;->activeBarrierChecks:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v1}, Landroidx/test/espresso/base/AsyncTaskPoolMonitor;->access$600(Landroidx/test/espresso/base/AsyncTaskPoolMonitor;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    throw v0

    .line 193
    :cond_5a
    return-void
.end method
