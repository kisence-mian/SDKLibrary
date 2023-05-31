.class public Lrx/observers/SafeSubscriber;
.super Lrx/Subscriber;
.source "SafeSubscriber.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final actual:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field done:Z


# direct methods
.method public constructor <init>(Lrx/Subscriber;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lrx/observers/SafeSubscriber;, "Lrx/observers/SafeSubscriber<TT;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0, p1}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 66
    iput-object p1, p0, Lrx/observers/SafeSubscriber;->actual:Lrx/Subscriber;

    .line 67
    return-void
.end method


# virtual methods
.method protected _onError(Ljava/lang/Throwable;)V
    .registers 11
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .local p0, "this":Lrx/observers/SafeSubscriber;, "Lrx/observers/SafeSubscriber<TT;>;"
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 150
    invoke-static {p1}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 152
    :try_start_6
    iget-object v2, p0, Lrx/observers/SafeSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v2, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_b
    .catch Lrx/exceptions/OnErrorNotImplementedException; {:try_start_6 .. :try_end_b} :catch_f
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_b} :catch_2f

    .line 190
    :try_start_b
    invoke-virtual {p0}, Lrx/observers/SafeSubscriber;->unsubscribe()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_e} :catch_6b

    .line 195
    return-void

    .line 153
    :catch_f
    move-exception v0

    .line 166
    .local v0, "e2":Lrx/exceptions/OnErrorNotImplementedException;
    :try_start_10
    invoke-virtual {p0}, Lrx/observers/SafeSubscriber;->unsubscribe()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_13} :catch_14

    .line 171
    throw v0

    .line 167
    :catch_14
    move-exception v1

    .line 168
    .local v1, "unsubscribeException":Ljava/lang/Throwable;
    invoke-static {v1}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 169
    new-instance v2, Lrx/exceptions/OnErrorNotImplementedException;

    const-string v3, "Observer.onError not implemented and error while unsubscribing."

    new-instance v4, Lrx/exceptions/CompositeException;

    new-array v5, v8, [Ljava/lang/Throwable;

    aput-object p1, v5, v6

    aput-object v1, v5, v7

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    invoke-direct {v2, v3, v4}, Lrx/exceptions/OnErrorNotImplementedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 172
    .end local v0    # "e2":Lrx/exceptions/OnErrorNotImplementedException;
    .end local v1    # "unsubscribeException":Ljava/lang/Throwable;
    :catch_2f
    move-exception v0

    .line 178
    .local v0, "e2":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 180
    :try_start_33
    invoke-virtual {p0}, Lrx/observers/SafeSubscriber;->unsubscribe()V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_36} :catch_4d

    .line 186
    new-instance v2, Lrx/exceptions/OnErrorFailedException;

    const-string v3, "Error occurred when trying to propagate error to Observer.onError"

    new-instance v4, Lrx/exceptions/CompositeException;

    new-array v5, v8, [Ljava/lang/Throwable;

    aput-object p1, v5, v6

    aput-object v0, v5, v7

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    invoke-direct {v2, v3, v4}, Lrx/exceptions/OnErrorFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 181
    :catch_4d
    move-exception v1

    .line 182
    .restart local v1    # "unsubscribeException":Ljava/lang/Throwable;
    invoke-static {v1}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 183
    new-instance v2, Lrx/exceptions/OnErrorFailedException;

    const-string v3, "Error occurred when trying to propagate error to Observer.onError and during unsubscription."

    new-instance v4, Lrx/exceptions/CompositeException;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Throwable;

    aput-object p1, v5, v6

    aput-object v0, v5, v7

    aput-object v1, v5, v8

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    invoke-direct {v2, v3, v4}, Lrx/exceptions/OnErrorFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 191
    .end local v0    # "e2":Ljava/lang/Throwable;
    .end local v1    # "unsubscribeException":Ljava/lang/Throwable;
    :catch_6b
    move-exception v1

    .line 192
    .restart local v1    # "unsubscribeException":Ljava/lang/Throwable;
    invoke-static {v1}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 193
    new-instance v2, Lrx/exceptions/OnErrorFailedException;

    invoke-direct {v2, v1}, Lrx/exceptions/OnErrorFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getActual()Lrx/Subscriber;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 203
    .local p0, "this":Lrx/observers/SafeSubscriber;, "Lrx/observers/SafeSubscriber<TT;>;"
    iget-object v0, p0, Lrx/observers/SafeSubscriber;->actual:Lrx/Subscriber;

    return-object v0
.end method

.method public onCompleted()V
    .registers 4

    .prologue
    .line 76
    .local p0, "this":Lrx/observers/SafeSubscriber;, "Lrx/observers/SafeSubscriber<TT;>;"
    iget-boolean v1, p0, Lrx/observers/SafeSubscriber;->done:Z

    if-nez v1, :cond_f

    .line 77
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/observers/SafeSubscriber;->done:Z

    .line 79
    :try_start_7
    iget-object v1, p0, Lrx/observers/SafeSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->onCompleted()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_c} :catch_1e
    .catchall {:try_start_7 .. :try_end_c} :catchall_2f

    .line 90
    :try_start_c
    invoke-virtual {p0}, Lrx/observers/SafeSubscriber;->unsubscribe()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_f} :catch_10

    .line 97
    :cond_f
    return-void

    .line 91
    :catch_10
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 93
    new-instance v1, Lrx/exceptions/UnsubscribeFailedException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lrx/exceptions/UnsubscribeFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 80
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1e
    move-exception v0

    .line 83
    .restart local v0    # "e":Ljava/lang/Throwable;
    :try_start_1f
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 84
    invoke-static {v0}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 85
    new-instance v1, Lrx/exceptions/OnCompletedFailedException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lrx/exceptions/OnCompletedFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2f
    .catchall {:try_start_1f .. :try_end_2f} :catchall_2f

    .line 87
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_2f
    move-exception v1

    .line 90
    :try_start_30
    invoke-virtual {p0}, Lrx/observers/SafeSubscriber;->unsubscribe()V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_33} :catch_34

    .line 93
    throw v1

    .line 91
    :catch_34
    move-exception v0

    .line 92
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 93
    new-instance v1, Lrx/exceptions/UnsubscribeFailedException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lrx/exceptions/UnsubscribeFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 112
    .local p0, "this":Lrx/observers/SafeSubscriber;, "Lrx/observers/SafeSubscriber<TT;>;"
    invoke-static {p1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 113
    iget-boolean v0, p0, Lrx/observers/SafeSubscriber;->done:Z

    if-nez v0, :cond_d

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/observers/SafeSubscriber;->done:Z

    .line 115
    invoke-virtual {p0, p1}, Lrx/observers/SafeSubscriber;->_onError(Ljava/lang/Throwable;)V

    .line 117
    :cond_d
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "this":Lrx/observers/SafeSubscriber;, "Lrx/observers/SafeSubscriber<TT;>;"
    .local p1, "args":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-boolean v1, p0, Lrx/observers/SafeSubscriber;->done:Z

    if-nez v1, :cond_9

    .line 134
    iget-object v1, p0, Lrx/observers/SafeSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v1, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    .line 141
    :cond_9
    :goto_9
    return-void

    .line 136
    :catch_a
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0, p0}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    goto :goto_9
.end method
