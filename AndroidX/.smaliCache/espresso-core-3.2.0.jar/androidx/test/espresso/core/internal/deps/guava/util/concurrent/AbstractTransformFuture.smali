.class abstract Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractTransformFuture;
.super Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/FluentFuture$TrustedFuture;
.source "AbstractTransformFuture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractTransformFuture$TransformFuture;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        "F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/FluentFuture$TrustedFuture<",
        "TO;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field function:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field

.field inputFuture:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture<",
            "+TI;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputFuture",
            "function"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture<",
            "+TI;>;TF;)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/FluentFuture$TrustedFuture;-><init>()V

    .line 59
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;

    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractTransformFuture;->inputFuture:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;

    .line 60
    invoke-static {p2}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractTransformFuture;->function:Ljava/lang/Object;

    .line 61
    return-void
.end method

.method static create(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;Landroidx/test/espresso/core/internal/deps/guava/base/Function;Ljava/util/concurrent/Executor;)Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "function",
            "executor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture<",
            "TI;>;",
            "Landroidx/test/espresso/core/internal/deps/guava/base/Function<",
            "-TI;+TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture<",
            "TO;>;"
        }
    .end annotation

    .line 45
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractTransformFuture$TransformFuture;

    invoke-direct {v0, p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractTransformFuture$TransformFuture;-><init>(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;Landroidx/test/espresso/core/internal/deps/guava/base/Function;)V

    .line 47
    invoke-static {p2, v0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors;->rejectionPropagatingExecutor(Ljava/util/concurrent/Executor;Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 48
    return-object v0
.end method


# virtual methods
.method protected final afterDone()V
    .registers 2

    .line 177
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractTransformFuture;->inputFuture:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;

    invoke-virtual {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractTransformFuture;->maybePropagateCancellationTo(Ljava/util/concurrent/Future;)V

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractTransformFuture;->inputFuture:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;

    .line 179
    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractTransformFuture;->function:Ljava/lang/Object;

    .line 180
    return-void
.end method

.method abstract doTransform(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "function",
            "result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;TI;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected pendingToString()Ljava/lang/String;
    .registers 6

    .line 184
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractTransformFuture;->inputFuture:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;

    .line 185
    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractTransformFuture;->function:Ljava/lang/Object;

    .line 186
    invoke-super {p0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/FluentFuture$TrustedFuture;->pendingToString()Ljava/lang/String;

    move-result-object v2

    .line 187
    nop

    .line 188
    if-eqz v0, :cond_33

    .line 189
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "inputFuture=["

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "], "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_35

    .line 188
    :cond_33
    const-string v0, ""

    .line 191
    :goto_35
    if-eqz v1, :cond_6c

    .line 192
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xb

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "function=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 193
    :cond_6c
    if-eqz v2, :cond_88

    .line 194
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_81

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_87

    :cond_81
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_87
    return-object v0

    .line 196
    :cond_88
    const/4 v0, 0x0

    return-object v0
.end method

.method public final run()V
    .registers 7

    .line 65
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractTransformFuture;->inputFuture:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;

    .line 66
    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractTransformFuture;->function:Ljava/lang/Object;

    .line 67
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractTransformFuture;->isCancelled()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_e

    const/4 v5, 0x1

    goto :goto_f

    :cond_e
    const/4 v5, 0x0

    :goto_f
    or-int/2addr v2, v5

    if-nez v1, :cond_13

    goto :goto_14

    :cond_13
    const/4 v3, 0x0

    :goto_14
    or-int/2addr v2, v3

    if-eqz v2, :cond_18

    .line 68
    return-void

    .line 70
    :cond_18
    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractTransformFuture;->inputFuture:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;

    .line 72
    invoke-interface {v0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 74
    nop

    .line 75
    invoke-virtual {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractTransformFuture;->setFuture(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;)Z

    .line 76
    return-void

    .line 89
    :cond_26
    :try_start_26
    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/Futures;->getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2a
    .catch Ljava/util/concurrent/CancellationException; {:try_start_26 .. :try_end_2a} :catch_54
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_26 .. :try_end_2a} :catch_4b
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_2a} :catch_46
    .catch Ljava/lang/Error; {:try_start_26 .. :try_end_2a} :catch_41

    .line 114
    nop

    .line 118
    :try_start_2b
    invoke-virtual {p0, v1, v0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractTransformFuture;->doTransform(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_36

    .line 124
    iput-object v2, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractTransformFuture;->function:Ljava/lang/Object;

    .line 125
    nop

    .line 163
    invoke-virtual {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractTransformFuture;->setResult(Ljava/lang/Object;)V

    .line 164
    return-void

    .line 119
    :catchall_36
    move-exception v0

    .line 121
    :try_start_37
    invoke-virtual {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractTransformFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_3d

    .line 124
    iput-object v2, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractTransformFuture;->function:Ljava/lang/Object;

    .line 122
    return-void

    .line 124
    :catchall_3d
    move-exception v0

    iput-object v2, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractTransformFuture;->function:Ljava/lang/Object;

    throw v0

    .line 106
    :catch_41
    move-exception v0

    .line 112
    invoke-virtual {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractTransformFuture;->setException(Ljava/lang/Throwable;)Z

    .line 113
    return-void

    .line 102
    :catch_46
    move-exception v0

    .line 104
    invoke-virtual {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractTransformFuture;->setException(Ljava/lang/Throwable;)Z

    .line 105
    return-void

    .line 98
    :catch_4b
    move-exception v0

    .line 100
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractTransformFuture;->setException(Ljava/lang/Throwable;)Z

    .line 101
    return-void

    .line 90
    :catch_54
    move-exception v0

    .line 96
    invoke-virtual {p0, v4}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractTransformFuture;->cancel(Z)Z

    .line 97
    return-void
.end method

.method abstract setResult(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
