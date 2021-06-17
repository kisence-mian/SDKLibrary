.class Landroidx/test/espresso/InteractionResultsHandler$1;
.super Ljava/lang/Object;
.source "InteractionResultsHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/espresso/InteractionResultsHandler;->gatherAnyResult(Ljava/util/List;Ljava/util/concurrent/Executor;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$myTask:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;

.field final synthetic val$resultQ:Ljava/util/concurrent/LinkedBlockingQueue;


# direct methods
.method constructor <init>(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;Ljava/util/concurrent/LinkedBlockingQueue;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$myTask",
            "val$resultQ"
        }
    .end annotation

    .line 65
    iput-object p1, p0, Landroidx/test/espresso/InteractionResultsHandler$1;->val$myTask:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;

    iput-object p2, p0, Landroidx/test/espresso/InteractionResultsHandler$1;->val$resultQ:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 68
    iget-object v0, p0, Landroidx/test/espresso/InteractionResultsHandler$1;->val$myTask:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 69
    return-void

    .line 71
    :cond_9
    iget-object v0, p0, Landroidx/test/espresso/InteractionResultsHandler$1;->val$resultQ:Ljava/util/concurrent/LinkedBlockingQueue;

    iget-object v1, p0, Landroidx/test/espresso/InteractionResultsHandler$1;->val$myTask:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;

    # invokes: Landroidx/test/espresso/InteractionResultsHandler;->adaptResult(Ljava/util/concurrent/Future;)Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;
    invoke-static {v1}, Landroidx/test/espresso/InteractionResultsHandler;->access$000(Ljava/util/concurrent/Future;)Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method
