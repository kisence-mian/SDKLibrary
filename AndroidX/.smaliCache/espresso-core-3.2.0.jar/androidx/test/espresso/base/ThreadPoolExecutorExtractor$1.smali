.class Landroidx/test/espresso/base/ThreadPoolExecutorExtractor$1;
.super Ljava/lang/Object;
.source "ThreadPoolExecutorExtractor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/espresso/base/ThreadPoolExecutorExtractor;->runOnMainThread(Ljava/util/concurrent/FutureTask;)Ljava/util/concurrent/FutureTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$futureToRun:Ljava/util/concurrent/FutureTask;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Landroidx/test/espresso/base/ThreadPoolExecutorExtractor;Ljava/util/concurrent/FutureTask;Ljava/util/concurrent/CountDownLatch;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$futureToRun",
            "val$latch"
        }
    .end annotation

    .line 85
    iput-object p2, p0, Landroidx/test/espresso/base/ThreadPoolExecutorExtractor$1;->val$futureToRun:Ljava/util/concurrent/FutureTask;

    iput-object p3, p0, Landroidx/test/espresso/base/ThreadPoolExecutorExtractor$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 89
    :try_start_0
    iget-object v0, p0, Landroidx/test/espresso/base/ThreadPoolExecutorExtractor$1;->val$futureToRun:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_c

    .line 91
    iget-object v0, p0, Landroidx/test/espresso/base/ThreadPoolExecutorExtractor$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 92
    nop

    .line 93
    return-void

    .line 91
    :catchall_c
    move-exception v0

    iget-object v1, p0, Landroidx/test/espresso/base/ThreadPoolExecutorExtractor$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method
