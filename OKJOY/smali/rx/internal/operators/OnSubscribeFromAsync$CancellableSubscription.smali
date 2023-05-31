.class final Lrx/internal/operators/OnSubscribeFromAsync$CancellableSubscription;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "OnSubscribeFromAsync.java"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeFromAsync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CancellableSubscription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Lrx/AsyncEmitter$Cancellable;",
        ">;",
        "Lrx/Subscription;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4f5c453163a88dc2L


# direct methods
.method public constructor <init>(Lrx/AsyncEmitter$Cancellable;)V
    .registers 2
    .param p1, "cancellable"    # Lrx/AsyncEmitter$Cancellable;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 84
    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .registers 2

    .prologue
    .line 88
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromAsync$CancellableSubscription;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public unsubscribe()V
    .registers 4

    .prologue
    .line 93
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromAsync$CancellableSubscription;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 94
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lrx/internal/operators/OnSubscribeFromAsync$CancellableSubscription;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/AsyncEmitter$Cancellable;

    .line 95
    .local v0, "c":Lrx/AsyncEmitter$Cancellable;
    if-eqz v0, :cond_12

    .line 97
    :try_start_f
    invoke-interface {v0}, Lrx/AsyncEmitter$Cancellable;->cancel()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_12} :catch_13

    .line 104
    .end local v0    # "c":Lrx/AsyncEmitter$Cancellable;
    :cond_12
    :goto_12
    return-void

    .line 98
    .restart local v0    # "c":Lrx/AsyncEmitter$Cancellable;
    :catch_13
    move-exception v1

    .line 99
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 100
    invoke-static {v1}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    goto :goto_12
.end method
