.class public Lcom/tds/common/reactor/internal/observers/SafeSubscriber;
.super Lcom/tds/common/reactor/Subscriber;
.source "SafeSubscriber.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/tds/common/reactor/Subscriber<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final actual:Lcom/tds/common/reactor/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field done:Z


# direct methods
.method public constructor <init>(Lcom/tds/common/reactor/Subscriber;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 37
    .local p0, "this":Lcom/tds/common/reactor/internal/observers/SafeSubscriber;, "Lcom/tds/common/reactor/internal/observers/SafeSubscriber<TT;>;"
    .local p1, "actual":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    invoke-direct {p0, p1}, Lcom/tds/common/reactor/Subscriber;-><init>(Lcom/tds/common/reactor/Subscriber;)V

    .line 38
    iput-object p1, p0, Lcom/tds/common/reactor/internal/observers/SafeSubscriber;->actual:Lcom/tds/common/reactor/Subscriber;

    .line 39
    return-void
.end method


# virtual methods
.method protected _onError(Ljava/lang/Throwable;)V
    .registers 10
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 123
    .local p0, "this":Lcom/tds/common/reactor/internal/observers/SafeSubscriber;, "Lcom/tds/common/reactor/internal/observers/SafeSubscriber<TT;>;"
    invoke-static {}, Lcom/tds/common/reactor/plugins/RxJavaPlugins;->getInstance()Lcom/tds/common/reactor/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tds/common/reactor/plugins/RxJavaPlugins;->getErrorHandler()Lcom/tds/common/reactor/plugins/RxJavaErrorHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tds/common/reactor/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    .line 125
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    :try_start_e
    iget-object v3, p0, Lcom/tds/common/reactor/internal/observers/SafeSubscriber;->actual:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {v3, p1}, Lcom/tds/common/reactor/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_13
    .catch Lcom/tds/common/reactor/exceptions/OnErrorNotImplementedException; {:try_start_e .. :try_end_13} :catch_60
    .catchall {:try_start_e .. :try_end_13} :catchall_23

    .line 160
    nop

    .line 163
    :try_start_14
    invoke-virtual {p0}, Lcom/tds/common/reactor/internal/observers/SafeSubscriber;->unsubscribe()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_19

    .line 167
    nop

    .line 168
    return-void

    .line 164
    :catchall_19
    move-exception v0

    .line 165
    .local v0, "unsubscribeException":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 166
    new-instance v1, Lcom/tds/common/reactor/exceptions/OnErrorFailedException;

    invoke-direct {v1, v0}, Lcom/tds/common/reactor/exceptions/OnErrorFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 145
    .end local v0    # "unsubscribeException":Ljava/lang/Throwable;
    :catchall_23
    move-exception v3

    .line 151
    .local v3, "e2":Ljava/lang/Throwable;
    invoke-static {v3}, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 153
    :try_start_27
    invoke-virtual {p0}, Lcom/tds/common/reactor/internal/observers/SafeSubscriber;->unsubscribe()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_42

    .line 157
    nop

    .line 159
    new-instance v4, Lcom/tds/common/reactor/exceptions/OnErrorFailedException;

    new-instance v5, Lcom/tds/common/reactor/exceptions/CompositeException;

    new-array v2, v2, [Ljava/lang/Throwable;

    aput-object p1, v2, v1

    aput-object v3, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/tds/common/reactor/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    const-string v0, "Error occurred when trying to propagate error to Observer.onError"

    invoke-direct {v4, v0, v5}, Lcom/tds/common/reactor/exceptions/OnErrorFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 154
    :catchall_42
    move-exception v4

    .line 155
    .local v4, "unsubscribeException":Ljava/lang/Throwable;
    invoke-static {v4}, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 156
    new-instance v5, Lcom/tds/common/reactor/exceptions/OnErrorFailedException;

    new-instance v6, Lcom/tds/common/reactor/exceptions/CompositeException;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Throwable;

    aput-object p1, v7, v1

    aput-object v3, v7, v0

    aput-object v4, v7, v2

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/tds/common/reactor/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    const-string v0, "Error occurred when trying to propagate error to Observer.onError and during unsubscription."

    invoke-direct {v5, v0, v6}, Lcom/tds/common/reactor/exceptions/OnErrorFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 126
    .end local v3    # "e2":Ljava/lang/Throwable;
    .end local v4    # "unsubscribeException":Ljava/lang/Throwable;
    :catch_60
    move-exception v3

    .line 139
    .local v3, "e2":Lcom/tds/common/reactor/exceptions/OnErrorNotImplementedException;
    :try_start_61
    invoke-virtual {p0}, Lcom/tds/common/reactor/internal/observers/SafeSubscriber;->unsubscribe()V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_66

    .line 143
    nop

    .line 144
    throw v3

    .line 140
    :catchall_66
    move-exception v4

    .line 141
    .restart local v4    # "unsubscribeException":Ljava/lang/Throwable;
    invoke-static {v4}, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 142
    new-instance v5, Lcom/tds/common/reactor/exceptions/OnErrorNotImplementedException;

    new-instance v6, Lcom/tds/common/reactor/exceptions/CompositeException;

    new-array v2, v2, [Ljava/lang/Throwable;

    aput-object p1, v2, v1

    aput-object v4, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/tds/common/reactor/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    const-string v0, "Observer.onError not implemented and error while unsubscribing."

    invoke-direct {v5, v0, v6}, Lcom/tds/common/reactor/exceptions/OnErrorNotImplementedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public getActual()Lcom/tds/common/reactor/Subscriber;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;"
        }
    .end annotation

    .line 176
    .local p0, "this":Lcom/tds/common/reactor/internal/observers/SafeSubscriber;, "Lcom/tds/common/reactor/internal/observers/SafeSubscriber<TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/observers/SafeSubscriber;->actual:Lcom/tds/common/reactor/Subscriber;

    return-object v0
.end method

.method public onCompleted()V
    .registers 4

    .line 48
    .local p0, "this":Lcom/tds/common/reactor/internal/observers/SafeSubscriber;, "Lcom/tds/common/reactor/internal/observers/SafeSubscriber<TT;>;"
    iget-boolean v0, p0, Lcom/tds/common/reactor/internal/observers/SafeSubscriber;->done:Z

    if-nez v0, :cond_43

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tds/common/reactor/internal/observers/SafeSubscriber;->done:Z

    .line 51
    :try_start_7
    iget-object v0, p0, Lcom/tds/common/reactor/internal/observers/SafeSubscriber;->actual:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {v0}, Lcom/tds/common/reactor/Subscriber;->onCompleted()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_1e

    .line 62
    :try_start_c
    invoke-virtual {p0}, Lcom/tds/common/reactor/internal/observers/SafeSubscriber;->unsubscribe()V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_10

    .line 66
    goto :goto_43

    .line 63
    :catchall_10
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 65
    new-instance v1, Lcom/tds/common/reactor/exceptions/UnsubscribeFailedException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/tds/common/reactor/exceptions/UnsubscribeFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 52
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_1e
    move-exception v0

    .line 55
    .restart local v0    # "e":Ljava/lang/Throwable;
    :try_start_1f
    invoke-static {v0}, Lcom/tds/common/reactor/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 56
    invoke-static {v0}, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 57
    new-instance v1, Lcom/tds/common/reactor/exceptions/OnCompletedFailedException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/tds/common/reactor/exceptions/OnCompletedFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/tds/common/reactor/internal/observers/SafeSubscriber;, "Lcom/tds/common/reactor/internal/observers/SafeSubscriber<TT;>;"
    throw v1
    :try_end_2f
    .catchall {:try_start_1f .. :try_end_2f} :catchall_2f

    .line 59
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local p0    # "this":Lcom/tds/common/reactor/internal/observers/SafeSubscriber;, "Lcom/tds/common/reactor/internal/observers/SafeSubscriber<TT;>;"
    :catchall_2f
    move-exception v0

    .line 62
    :try_start_30
    invoke-virtual {p0}, Lcom/tds/common/reactor/internal/observers/SafeSubscriber;->unsubscribe()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_35

    .line 66
    nop

    .line 67
    throw v0

    .line 63
    :catchall_35
    move-exception v0

    .line 64
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 65
    new-instance v1, Lcom/tds/common/reactor/exceptions/UnsubscribeFailedException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/tds/common/reactor/exceptions/UnsubscribeFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 69
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_43
    :goto_43
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 84
    .local p0, "this":Lcom/tds/common/reactor/internal/observers/SafeSubscriber;, "Lcom/tds/common/reactor/internal/observers/SafeSubscriber<TT;>;"
    invoke-static {p1}, Lcom/tds/common/reactor/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 85
    iget-boolean v0, p0, Lcom/tds/common/reactor/internal/observers/SafeSubscriber;->done:Z

    if-nez v0, :cond_d

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tds/common/reactor/internal/observers/SafeSubscriber;->done:Z

    .line 87
    invoke-virtual {p0, p1}, Lcom/tds/common/reactor/internal/observers/SafeSubscriber;->_onError(Ljava/lang/Throwable;)V

    .line 89
    :cond_d
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 105
    .local p0, "this":Lcom/tds/common/reactor/internal/observers/SafeSubscriber;, "Lcom/tds/common/reactor/internal/observers/SafeSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-boolean v0, p0, Lcom/tds/common/reactor/internal/observers/SafeSubscriber;->done:Z

    if-nez v0, :cond_9

    .line 106
    iget-object v0, p0, Lcom/tds/common/reactor/internal/observers/SafeSubscriber;->actual:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {v0, p1}, Lcom/tds/common/reactor/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_a

    .line 112
    :cond_9
    goto :goto_e

    .line 108
    :catchall_a
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0, p0}, Lcom/tds/common/reactor/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lcom/tds/common/reactor/Observer;)V

    .line 113
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_e
    return-void
.end method
