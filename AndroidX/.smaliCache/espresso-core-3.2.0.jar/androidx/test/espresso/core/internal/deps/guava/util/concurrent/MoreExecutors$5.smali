.class Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$5;
.super Ljava/lang/Object;
.source "MoreExecutors.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors;->rejectionPropagatingExecutor(Ljava/util/concurrent/Executor;Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;)Ljava/util/concurrent/Executor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field thrownFromDelegate:Z

.field final synthetic val$delegate:Ljava/util/concurrent/Executor;

.field final synthetic val$future:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$delegate",
            "val$future"
        }
    .end annotation

    .line 971
    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$5;->val$delegate:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$5;->val$future:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 972
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$5;->thrownFromDelegate:Z

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "command"
        }
    .end annotation

    .line 977
    :try_start_0
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$5;->val$delegate:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$5$1;

    invoke-direct {v1, p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$5$1;-><init>(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$5;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_a
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_a} :catch_b

    .line 992
    goto :goto_15

    .line 985
    :catch_b
    move-exception p1

    .line 986
    iget-boolean v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$5;->thrownFromDelegate:Z

    if-eqz v0, :cond_15

    .line 988
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$5;->val$future:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;

    invoke-virtual {v0, p1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->setException(Ljava/lang/Throwable;)Z

    .line 993
    :cond_15
    :goto_15
    return-void
.end method
