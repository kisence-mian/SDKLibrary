.class public final Lrx/observers/SafeCompletableSubscriber;
.super Ljava/lang/Object;
.source "SafeCompletableSubscriber.java"

# interfaces
.implements Lrx/Completable$CompletableSubscriber;
.implements Lrx/Subscription;


# annotations
.annotation build Lrx/annotations/Experimental;
.end annotation


# instance fields
.field final actual:Lrx/Completable$CompletableSubscriber;

.field done:Z

.field s:Lrx/Subscription;


# direct methods
.method public constructor <init>(Lrx/Completable$CompletableSubscriber;)V
    .registers 2
    .param p1, "actual"    # Lrx/Completable$CompletableSubscriber;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lrx/observers/SafeCompletableSubscriber;->actual:Lrx/Completable$CompletableSubscriber;

    .line 40
    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .registers 2

    .prologue
    .line 92
    iget-boolean v0, p0, Lrx/observers/SafeCompletableSubscriber;->done:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lrx/observers/SafeCompletableSubscriber;->s:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public onCompleted()V
    .registers 3

    .prologue
    .line 44
    iget-boolean v1, p0, Lrx/observers/SafeCompletableSubscriber;->done:Z

    if-eqz v1, :cond_5

    .line 55
    :goto_4
    return-void

    .line 47
    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/observers/SafeCompletableSubscriber;->done:Z

    .line 49
    :try_start_8
    iget-object v1, p0, Lrx/observers/SafeCompletableSubscriber;->actual:Lrx/Completable$CompletableSubscriber;

    invoke-interface {v1}, Lrx/Completable$CompletableSubscriber;->onCompleted()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_d} :catch_e

    goto :goto_4

    .line 50
    :catch_e
    move-exception v0

    .line 51
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 53
    new-instance v1, Lrx/exceptions/OnCompletedFailedException;

    invoke-direct {v1, v0}, Lrx/exceptions/OnCompletedFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 8
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    const/4 v5, 0x1

    .line 59
    invoke-static {p1}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 60
    iget-boolean v1, p0, Lrx/observers/SafeCompletableSubscriber;->done:Z

    if-eqz v1, :cond_9

    .line 71
    :goto_8
    return-void

    .line 63
    :cond_9
    iput-boolean v5, p0, Lrx/observers/SafeCompletableSubscriber;->done:Z

    .line 65
    :try_start_b
    iget-object v1, p0, Lrx/observers/SafeCompletableSubscriber;->actual:Lrx/Completable$CompletableSubscriber;

    invoke-interface {v1, p1}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_10} :catch_11

    goto :goto_8

    .line 66
    :catch_11
    move-exception v0

    .line 67
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 69
    new-instance v1, Lrx/exceptions/OnErrorFailedException;

    new-instance v2, Lrx/exceptions/CompositeException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    aput-object v0, v3, v5

    invoke-direct {v2, v3}, Lrx/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-direct {v1, v2}, Lrx/exceptions/OnErrorFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .registers 4
    .param p1, "d"    # Lrx/Subscription;

    .prologue
    .line 75
    iput-object p1, p0, Lrx/observers/SafeCompletableSubscriber;->s:Lrx/Subscription;

    .line 77
    :try_start_2
    iget-object v1, p0, Lrx/observers/SafeCompletableSubscriber;->actual:Lrx/Completable$CompletableSubscriber;

    invoke-interface {v1, p0}, Lrx/Completable$CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_7} :catch_8

    .line 83
    :goto_7
    return-void

    .line 78
    :catch_8
    move-exception v0

    .line 79
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 80
    invoke-interface {p1}, Lrx/Subscription;->unsubscribe()V

    .line 81
    invoke-virtual {p0, v0}, Lrx/observers/SafeCompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_7
.end method

.method public unsubscribe()V
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lrx/observers/SafeCompletableSubscriber;->s:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 88
    return-void
.end method
