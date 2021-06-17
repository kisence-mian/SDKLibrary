.class public interface abstract Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListeningExecutorService;
.super Ljava/lang/Object;
.source "ListeningExecutorService.java"

# interfaces
.implements Ljava/util/concurrent/ExecutorService;


# virtual methods
.method public abstract submit(Ljava/util/concurrent/Callable;)Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture<",
            "TT;>;"
        }
    .end annotation
.end method
