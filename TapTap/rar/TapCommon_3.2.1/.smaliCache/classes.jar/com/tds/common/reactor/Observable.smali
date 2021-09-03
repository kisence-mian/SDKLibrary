.class public Lcom/tds/common/reactor/Observable;
.super Ljava/lang/Object;
.source "Observable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/reactor/Observable$Operator;,
        Lcom/tds/common/reactor/Observable$OnSubscribe;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final onSubscribe:Lcom/tds/common/reactor/Observable$OnSubscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/Observable$OnSubscribe<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/tds/common/reactor/Observable$OnSubscribe;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Observable$OnSubscribe<",
            "TT;>;)V"
        }
    .end annotation

    .line 67
    .local p0, "this":Lcom/tds/common/reactor/Observable;, "Lcom/tds/common/reactor/Observable<TT;>;"
    .local p1, "onSubscribe":Lcom/tds/common/reactor/Observable$OnSubscribe;, "Lcom/tds/common/reactor/Observable$OnSubscribe<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/tds/common/reactor/Observable;->onSubscribe:Lcom/tds/common/reactor/Observable$OnSubscribe;

    .line 69
    return-void
.end method

.method public static create(Lcom/tds/common/reactor/Observable$OnSubscribe;)Lcom/tds/common/reactor/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tds/common/reactor/Observable$OnSubscribe<",
            "TT;>;)",
            "Lcom/tds/common/reactor/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 72
    .local p0, "onSubscribe":Lcom/tds/common/reactor/Observable$OnSubscribe;, "Lcom/tds/common/reactor/Observable$OnSubscribe<TT;>;"
    new-instance v0, Lcom/tds/common/reactor/Observable;

    invoke-direct {v0, p0}, Lcom/tds/common/reactor/Observable;-><init>(Lcom/tds/common/reactor/Observable$OnSubscribe;)V

    return-object v0
.end method

.method public static empty()Lcom/tds/common/reactor/Observable;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/tds/common/reactor/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 309
    invoke-static {}, Lcom/tds/common/reactor/internal/operators/EmptyObservableHolder;->instance()Lcom/tds/common/reactor/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static error(Ljava/lang/Throwable;)Lcom/tds/common/reactor/Observable;
    .registers 2
    .param p0, "exception"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/tds/common/reactor/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 361
    new-instance v0, Lcom/tds/common/reactor/internal/operators/OnSubscribeThrow;

    invoke-direct {v0, p0}, Lcom/tds/common/reactor/internal/operators/OnSubscribeThrow;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/tds/common/reactor/Observable;->unsafeCreate(Lcom/tds/common/reactor/Observable$OnSubscribe;)Lcom/tds/common/reactor/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static from(Ljava/lang/Iterable;)Lcom/tds/common/reactor/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;)",
            "Lcom/tds/common/reactor/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 349
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    new-instance v0, Lcom/tds/common/reactor/internal/operators/OnSubscribeFromIterable;

    invoke-direct {v0, p0}, Lcom/tds/common/reactor/internal/operators/OnSubscribeFromIterable;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lcom/tds/common/reactor/Observable;->unsafeCreate(Lcom/tds/common/reactor/Observable$OnSubscribe;)Lcom/tds/common/reactor/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static from([Ljava/lang/Object;)Lcom/tds/common/reactor/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lcom/tds/common/reactor/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 338
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    array-length v0, p0

    .line 339
    .local v0, "n":I
    if-nez v0, :cond_8

    .line 340
    invoke-static {}, Lcom/tds/common/reactor/Observable;->empty()Lcom/tds/common/reactor/Observable;

    move-result-object v1

    return-object v1

    .line 342
    :cond_8
    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 343
    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-static {v1}, Lcom/tds/common/reactor/Observable;->just(Ljava/lang/Object;)Lcom/tds/common/reactor/Observable;

    move-result-object v1

    return-object v1

    .line 345
    :cond_13
    new-instance v1, Lcom/tds/common/reactor/internal/operators/OnSubscribeFromArray;

    invoke-direct {v1, p0}, Lcom/tds/common/reactor/internal/operators/OnSubscribeFromArray;-><init>([Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/tds/common/reactor/Observable;->unsafeCreate(Lcom/tds/common/reactor/Observable$OnSubscribe;)Lcom/tds/common/reactor/Observable;

    move-result-object v1

    return-object v1
.end method

.method public static just(Ljava/lang/Object;)Lcom/tds/common/reactor/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/tds/common/reactor/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 313
    .local p0, "value":Ljava/lang/Object;, "TT;"
    invoke-static {p0}, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable;->create(Ljava/lang/Object;)Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable;

    move-result-object v0

    return-object v0
.end method

.method public static just(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tds/common/reactor/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)",
            "Lcom/tds/common/reactor/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 318
    .local p0, "t1":Ljava/lang/Object;, "TT;"
    .local p1, "t2":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/tds/common/reactor/Observable;->from([Ljava/lang/Object;)Lcom/tds/common/reactor/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/tds/common/reactor/Observable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;)",
            "Lcom/tds/common/reactor/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 323
    .local p0, "t1":Ljava/lang/Object;, "TT;"
    .local p1, "t2":Ljava/lang/Object;, "TT;"
    .local p2, "t3":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/tds/common/reactor/Observable;->from([Ljava/lang/Object;)Lcom/tds/common/reactor/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/tds/common/reactor/Observable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;)",
            "Lcom/tds/common/reactor/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 328
    .local p0, "t1":Ljava/lang/Object;, "TT;"
    .local p1, "t2":Ljava/lang/Object;, "TT;"
    .local p2, "t3":Ljava/lang/Object;, "TT;"
    .local p3, "t4":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/tds/common/reactor/Observable;->from([Ljava/lang/Object;)Lcom/tds/common/reactor/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/tds/common/reactor/Observable;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;)",
            "Lcom/tds/common/reactor/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 333
    .local p0, "t1":Ljava/lang/Object;, "TT;"
    .local p1, "t2":Ljava/lang/Object;, "TT;"
    .local p2, "t3":Ljava/lang/Object;, "TT;"
    .local p3, "t4":Ljava/lang/Object;, "TT;"
    .local p4, "t5":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/tds/common/reactor/Observable;->from([Ljava/lang/Object;)Lcom/tds/common/reactor/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Lcom/tds/common/reactor/Observable;)Lcom/tds/common/reactor/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tds/common/reactor/Observable<",
            "+",
            "Lcom/tds/common/reactor/Observable<",
            "+TT;>;>;)",
            "Lcom/tds/common/reactor/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 305
    .local p0, "source":Lcom/tds/common/reactor/Observable;, "Lcom/tds/common/reactor/Observable<+Lcom/tds/common/reactor/Observable<+TT;>;>;"
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tds/common/reactor/internal/operators/OperatorMerge;->instance(Z)Lcom/tds/common/reactor/internal/operators/OperatorMerge;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tds/common/reactor/Observable;->lift(Lcom/tds/common/reactor/Observable$Operator;)Lcom/tds/common/reactor/Observable;

    move-result-object v0

    return-object v0
.end method

.method static subscribe(Lcom/tds/common/reactor/Subscriber;Lcom/tds/common/reactor/Observable;)Lcom/tds/common/reactor/Subscription;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;",
            "Lcom/tds/common/reactor/Observable<",
            "TT;>;)",
            "Lcom/tds/common/reactor/Subscription;"
        }
    .end annotation

    .line 81
    .local p0, "subscriber":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    .local p1, "observable":Lcom/tds/common/reactor/Observable;, "Lcom/tds/common/reactor/Observable<TT;>;"
    if-eqz p0, :cond_72

    .line 84
    iget-object v0, p1, Lcom/tds/common/reactor/Observable;->onSubscribe:Lcom/tds/common/reactor/Observable$OnSubscribe;

    if-eqz v0, :cond_6a

    .line 93
    invoke-virtual {p0}, Lcom/tds/common/reactor/Subscriber;->onStart()V

    .line 100
    instance-of v0, p0, Lcom/tds/common/reactor/observers/SafeSubscriber;

    if-nez v0, :cond_13

    .line 102
    new-instance v0, Lcom/tds/common/reactor/observers/SafeSubscriber;

    invoke-direct {v0, p0}, Lcom/tds/common/reactor/observers/SafeSubscriber;-><init>(Lcom/tds/common/reactor/Subscriber;)V

    move-object p0, v0

    .line 109
    :cond_13
    :try_start_13
    iget-object v0, p1, Lcom/tds/common/reactor/Observable;->onSubscribe:Lcom/tds/common/reactor/Observable$OnSubscribe;

    invoke-static {p1, v0}, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onObservableStart(Lcom/tds/common/reactor/Observable;Lcom/tds/common/reactor/Observable$OnSubscribe;)Lcom/tds/common/reactor/Observable$OnSubscribe;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tds/common/reactor/Observable$OnSubscribe;->call(Ljava/lang/Object;)V

    .line 110
    invoke-static {p0}, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onObservableReturn(Lcom/tds/common/reactor/Subscription;)Lcom/tds/common/reactor/Subscription;

    move-result-object v0
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_21

    return-object v0

    .line 111
    :catchall_21
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/tds/common/reactor/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 115
    invoke-virtual {p0}, Lcom/tds/common/reactor/Subscriber;->isUnsubscribed()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 116
    invoke-static {v0}, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onObservableError(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1}, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    goto :goto_3b

    .line 120
    :cond_33
    :try_start_33
    invoke-static {v0}, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onObservableError(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tds/common/reactor/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_40

    .line 130
    nop

    .line 132
    :goto_3b
    invoke-static {}, Lcom/tds/common/reactor/subscriptions/Subscriptions;->unsubscribed()Lcom/tds/common/reactor/Subscription;

    move-result-object v1

    return-object v1

    .line 121
    :catchall_40
    move-exception v1

    .line 122
    .local v1, "e2":Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/tds/common/reactor/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 125
    new-instance v2, Lcom/tds/common/reactor/exceptions/OnErrorFailedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error occurred attempting to subscribe ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] and then again while trying to pass to onError."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/tds/common/reactor/exceptions/OnErrorFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    .local v2, "r":Ljava/lang/RuntimeException;
    invoke-static {v2}, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onObservableError(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 129
    throw v2

    .line 85
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "e2":Ljava/lang/Throwable;
    .end local v2    # "r":Ljava/lang/RuntimeException;
    :cond_6a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onSubscribe function can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "subscriber can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static unsafeCreate(Lcom/tds/common/reactor/Observable$OnSubscribe;)Lcom/tds/common/reactor/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tds/common/reactor/Observable$OnSubscribe<",
            "TT;>;)",
            "Lcom/tds/common/reactor/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 222
    .local p0, "f":Lcom/tds/common/reactor/Observable$OnSubscribe;, "Lcom/tds/common/reactor/Observable$OnSubscribe<TT;>;"
    new-instance v0, Lcom/tds/common/reactor/Observable;

    invoke-static {p0}, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onCreate(Lcom/tds/common/reactor/Observable$OnSubscribe;)Lcom/tds/common/reactor/Observable$OnSubscribe;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tds/common/reactor/Observable;-><init>(Lcom/tds/common/reactor/Observable$OnSubscribe;)V

    return-object v0
.end method


# virtual methods
.method public final debounce(Lcom/tds/common/reactor/functions/Func1;)Lcom/tds/common/reactor/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tds/common/reactor/functions/Func1<",
            "-TT;+",
            "Lcom/tds/common/reactor/Observable<",
            "TU;>;>;)",
            "Lcom/tds/common/reactor/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 381
    .local p0, "this":Lcom/tds/common/reactor/Observable;, "Lcom/tds/common/reactor/Observable<TT;>;"
    .local p1, "debounceSelector":Lcom/tds/common/reactor/functions/Func1;, "Lcom/tds/common/reactor/functions/Func1<-TT;+Lcom/tds/common/reactor/Observable<TU;>;>;"
    new-instance v0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector;

    invoke-direct {v0, p1}, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector;-><init>(Lcom/tds/common/reactor/functions/Func1;)V

    invoke-virtual {p0, v0}, Lcom/tds/common/reactor/Observable;->lift(Lcom/tds/common/reactor/Observable$Operator;)Lcom/tds/common/reactor/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final doOnError(Lcom/tds/common/reactor/functions/Action1;)Lcom/tds/common/reactor/Observable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/functions/Action1<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/tds/common/reactor/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 365
    .local p0, "this":Lcom/tds/common/reactor/Observable;, "Lcom/tds/common/reactor/Observable<TT;>;"
    .local p1, "onError":Lcom/tds/common/reactor/functions/Action1;, "Lcom/tds/common/reactor/functions/Action1<-Ljava/lang/Throwable;>;"
    invoke-static {}, Lcom/tds/common/reactor/functions/Actions;->empty()Lcom/tds/common/reactor/functions/Actions$EmptyAction;

    move-result-object v0

    .line 366
    .local v0, "onNext":Lcom/tds/common/reactor/functions/Action1;, "Lcom/tds/common/reactor/functions/Action1<TT;>;"
    invoke-static {}, Lcom/tds/common/reactor/functions/Actions;->empty()Lcom/tds/common/reactor/functions/Actions$EmptyAction;

    move-result-object v1

    .line 367
    .local v1, "onCompleted":Lcom/tds/common/reactor/functions/Action0;
    new-instance v2, Lcom/tds/common/reactor/internal/util/ActionObserver;

    invoke-direct {v2, v0, p1, v1}, Lcom/tds/common/reactor/internal/util/ActionObserver;-><init>(Lcom/tds/common/reactor/functions/Action1;Lcom/tds/common/reactor/functions/Action1;Lcom/tds/common/reactor/functions/Action0;)V

    .line 369
    .local v2, "observer":Lcom/tds/common/reactor/Observer;, "Lcom/tds/common/reactor/Observer<TT;>;"
    new-instance v3, Lcom/tds/common/reactor/internal/operators/OnSubscribeDoOnEach;

    invoke-direct {v3, p0, v2}, Lcom/tds/common/reactor/internal/operators/OnSubscribeDoOnEach;-><init>(Lcom/tds/common/reactor/Observable;Lcom/tds/common/reactor/Observer;)V

    invoke-static {v3}, Lcom/tds/common/reactor/Observable;->unsafeCreate(Lcom/tds/common/reactor/Observable$OnSubscribe;)Lcom/tds/common/reactor/Observable;

    move-result-object v3

    return-object v3
.end method

.method public final filter(Lcom/tds/common/reactor/functions/Func1;)Lcom/tds/common/reactor/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/functions/Func1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/tds/common/reactor/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 353
    .local p0, "this":Lcom/tds/common/reactor/Observable;, "Lcom/tds/common/reactor/Observable<TT;>;"
    .local p1, "predicate":Lcom/tds/common/reactor/functions/Func1;, "Lcom/tds/common/reactor/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/tds/common/reactor/internal/operators/OnSubscribeFilter;

    invoke-direct {v0, p0, p1}, Lcom/tds/common/reactor/internal/operators/OnSubscribeFilter;-><init>(Lcom/tds/common/reactor/Observable;Lcom/tds/common/reactor/functions/Func1;)V

    invoke-static {v0}, Lcom/tds/common/reactor/Observable;->unsafeCreate(Lcom/tds/common/reactor/Observable$OnSubscribe;)Lcom/tds/common/reactor/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final flatMap(Lcom/tds/common/reactor/functions/Func1;)Lcom/tds/common/reactor/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tds/common/reactor/functions/Func1<",
            "-TT;+",
            "Lcom/tds/common/reactor/Observable<",
            "+TR;>;>;)",
            "Lcom/tds/common/reactor/Observable<",
            "TR;>;"
        }
    .end annotation

    .line 300
    .local p0, "this":Lcom/tds/common/reactor/Observable;, "Lcom/tds/common/reactor/Observable<TT;>;"
    .local p1, "func":Lcom/tds/common/reactor/functions/Func1;, "Lcom/tds/common/reactor/functions/Func1<-TT;+Lcom/tds/common/reactor/Observable<+TR;>;>;"
    invoke-virtual {p0, p1}, Lcom/tds/common/reactor/Observable;->map(Lcom/tds/common/reactor/functions/Func1;)Lcom/tds/common/reactor/Observable;

    move-result-object v0

    invoke-static {v0}, Lcom/tds/common/reactor/Observable;->merge(Lcom/tds/common/reactor/Observable;)Lcom/tds/common/reactor/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final lift(Lcom/tds/common/reactor/Observable$Operator;)Lcom/tds/common/reactor/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tds/common/reactor/Observable$Operator<",
            "+TR;-TT;>;)",
            "Lcom/tds/common/reactor/Observable<",
            "TR;>;"
        }
    .end annotation

    .line 291
    .local p0, "this":Lcom/tds/common/reactor/Observable;, "Lcom/tds/common/reactor/Observable<TT;>;"
    .local p1, "operator":Lcom/tds/common/reactor/Observable$Operator;, "Lcom/tds/common/reactor/Observable$Operator<+TR;-TT;>;"
    new-instance v0, Lcom/tds/common/reactor/internal/operators/OnSubscribeLift;

    iget-object v1, p0, Lcom/tds/common/reactor/Observable;->onSubscribe:Lcom/tds/common/reactor/Observable$OnSubscribe;

    invoke-direct {v0, v1, p1}, Lcom/tds/common/reactor/internal/operators/OnSubscribeLift;-><init>(Lcom/tds/common/reactor/Observable$OnSubscribe;Lcom/tds/common/reactor/Observable$Operator;)V

    invoke-static {v0}, Lcom/tds/common/reactor/Observable;->unsafeCreate(Lcom/tds/common/reactor/Observable$OnSubscribe;)Lcom/tds/common/reactor/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final map(Lcom/tds/common/reactor/functions/Func1;)Lcom/tds/common/reactor/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tds/common/reactor/functions/Func1<",
            "-TT;+TR;>;)",
            "Lcom/tds/common/reactor/Observable<",
            "TR;>;"
        }
    .end annotation

    .line 295
    .local p0, "this":Lcom/tds/common/reactor/Observable;, "Lcom/tds/common/reactor/Observable<TT;>;"
    .local p1, "func":Lcom/tds/common/reactor/functions/Func1;, "Lcom/tds/common/reactor/functions/Func1<-TT;+TR;>;"
    new-instance v0, Lcom/tds/common/reactor/internal/operators/OnSubscribeMap;

    invoke-direct {v0, p0, p1}, Lcom/tds/common/reactor/internal/operators/OnSubscribeMap;-><init>(Lcom/tds/common/reactor/Observable;Lcom/tds/common/reactor/functions/Func1;)V

    invoke-static {v0}, Lcom/tds/common/reactor/Observable;->unsafeCreate(Lcom/tds/common/reactor/Observable$OnSubscribe;)Lcom/tds/common/reactor/Observable;

    move-result-object v0

    return-object v0
.end method

.method public observeOn(Lcom/tds/common/reactor/schedulers/Scheduler;)Lcom/tds/common/reactor/Observable;
    .registers 3
    .param p1, "scheduler"    # Lcom/tds/common/reactor/schedulers/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/schedulers/Scheduler;",
            ")",
            "Lcom/tds/common/reactor/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 279
    .local p0, "this":Lcom/tds/common/reactor/Observable;, "Lcom/tds/common/reactor/Observable<TT;>;"
    const/16 v0, 0x80

    invoke-virtual {p0, p1, v0}, Lcom/tds/common/reactor/Observable;->observeOn(Lcom/tds/common/reactor/schedulers/Scheduler;I)Lcom/tds/common/reactor/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final observeOn(Lcom/tds/common/reactor/schedulers/Scheduler;I)Lcom/tds/common/reactor/Observable;
    .registers 4
    .param p1, "scheduler"    # Lcom/tds/common/reactor/schedulers/Scheduler;
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/schedulers/Scheduler;",
            "I)",
            "Lcom/tds/common/reactor/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 283
    .local p0, "this":Lcom/tds/common/reactor/Observable;, "Lcom/tds/common/reactor/Observable<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/tds/common/reactor/Observable;->observeOn(Lcom/tds/common/reactor/schedulers/Scheduler;ZI)Lcom/tds/common/reactor/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final observeOn(Lcom/tds/common/reactor/schedulers/Scheduler;ZI)Lcom/tds/common/reactor/Observable;
    .registers 5
    .param p1, "scheduler"    # Lcom/tds/common/reactor/schedulers/Scheduler;
    .param p2, "delayError"    # Z
    .param p3, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/schedulers/Scheduler;",
            "ZI)",
            "Lcom/tds/common/reactor/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 287
    .local p0, "this":Lcom/tds/common/reactor/Observable;, "Lcom/tds/common/reactor/Observable<TT;>;"
    new-instance v0, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn;

    invoke-direct {v0, p1, p2, p3}, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn;-><init>(Lcom/tds/common/reactor/schedulers/Scheduler;ZI)V

    invoke-virtual {p0, v0}, Lcom/tds/common/reactor/Observable;->lift(Lcom/tds/common/reactor/Observable$Operator;)Lcom/tds/common/reactor/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final onErrorResumeNext(Lcom/tds/common/reactor/functions/Func1;)Lcom/tds/common/reactor/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/functions/Func1<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lcom/tds/common/reactor/Observable<",
            "+TT;>;>;)",
            "Lcom/tds/common/reactor/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 357
    .local p0, "this":Lcom/tds/common/reactor/Observable;, "Lcom/tds/common/reactor/Observable<TT;>;"
    .local p1, "resumeFunction":Lcom/tds/common/reactor/functions/Func1;, "Lcom/tds/common/reactor/functions/Func1<-Ljava/lang/Throwable;+Lcom/tds/common/reactor/Observable<+TT;>;>;"
    new-instance v0, Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction;

    invoke-direct {v0, p1}, Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction;-><init>(Lcom/tds/common/reactor/functions/Func1;)V

    invoke-virtual {p0, v0}, Lcom/tds/common/reactor/Observable;->lift(Lcom/tds/common/reactor/Observable$Operator;)Lcom/tds/common/reactor/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final subscribe()Lcom/tds/common/reactor/Subscription;
    .registers 5

    .line 137
    .local p0, "this":Lcom/tds/common/reactor/Observable;, "Lcom/tds/common/reactor/Observable<TT;>;"
    invoke-static {}, Lcom/tds/common/reactor/functions/Actions;->empty()Lcom/tds/common/reactor/functions/Actions$EmptyAction;

    move-result-object v0

    .line 138
    .local v0, "onNext":Lcom/tds/common/reactor/functions/Action1;, "Lcom/tds/common/reactor/functions/Action1<TT;>;"
    sget-object v1, Lcom/tds/common/reactor/util/InternalObservableUtils;->ERROR_NOT_IMPLEMENTED:Lcom/tds/common/reactor/functions/Action1;

    .line 139
    .local v1, "onError":Lcom/tds/common/reactor/functions/Action1;, "Lcom/tds/common/reactor/functions/Action1<Ljava/lang/Throwable;>;"
    invoke-static {}, Lcom/tds/common/reactor/functions/Actions;->empty()Lcom/tds/common/reactor/functions/Actions$EmptyAction;

    move-result-object v2

    .line 140
    .local v2, "onCompleted":Lcom/tds/common/reactor/functions/Action0;
    new-instance v3, Lcom/tds/common/reactor/util/ActionSubscriber;

    invoke-direct {v3, v0, v1, v2}, Lcom/tds/common/reactor/util/ActionSubscriber;-><init>(Lcom/tds/common/reactor/functions/Action1;Lcom/tds/common/reactor/functions/Action1;Lcom/tds/common/reactor/functions/Action0;)V

    invoke-virtual {p0, v3}, Lcom/tds/common/reactor/Observable;->subscribe(Lcom/tds/common/reactor/Subscriber;)Lcom/tds/common/reactor/Subscription;

    move-result-object v3

    return-object v3
.end method

.method public final subscribe(Lcom/tds/common/reactor/Observer;)Lcom/tds/common/reactor/Subscription;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Observer<",
            "-TT;>;)",
            "Lcom/tds/common/reactor/Subscription;"
        }
    .end annotation

    .line 180
    .local p0, "this":Lcom/tds/common/reactor/Observable;, "Lcom/tds/common/reactor/Observable<TT;>;"
    .local p1, "observer":Lcom/tds/common/reactor/Observer;, "Lcom/tds/common/reactor/Observer<-TT;>;"
    instance-of v0, p1, Lcom/tds/common/reactor/Subscriber;

    if-eqz v0, :cond_c

    .line 181
    move-object v0, p1

    check-cast v0, Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {p0, v0}, Lcom/tds/common/reactor/Observable;->subscribe(Lcom/tds/common/reactor/Subscriber;)Lcom/tds/common/reactor/Subscription;

    move-result-object v0

    return-object v0

    .line 183
    :cond_c
    if-eqz p1, :cond_18

    .line 186
    new-instance v0, Lcom/tds/common/reactor/internal/util/ObserverSubscriber;

    invoke-direct {v0, p1}, Lcom/tds/common/reactor/internal/util/ObserverSubscriber;-><init>(Lcom/tds/common/reactor/Observer;)V

    invoke-virtual {p0, v0}, Lcom/tds/common/reactor/Observable;->subscribe(Lcom/tds/common/reactor/Subscriber;)Lcom/tds/common/reactor/Subscription;

    move-result-object v0

    return-object v0

    .line 184
    :cond_18
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "observer is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final subscribe(Lcom/tds/common/reactor/Subscriber;)Lcom/tds/common/reactor/Subscription;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;)",
            "Lcom/tds/common/reactor/Subscription;"
        }
    .end annotation

    .line 76
    .local p0, "this":Lcom/tds/common/reactor/Observable;, "Lcom/tds/common/reactor/Observable<TT;>;"
    .local p1, "subscriber":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    invoke-static {p1, p0}, Lcom/tds/common/reactor/Observable;->subscribe(Lcom/tds/common/reactor/Subscriber;Lcom/tds/common/reactor/Observable;)Lcom/tds/common/reactor/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public final subscribe(Lcom/tds/common/reactor/functions/Action1;)Lcom/tds/common/reactor/Subscription;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/functions/Action1<",
            "-TT;>;)",
            "Lcom/tds/common/reactor/Subscription;"
        }
    .end annotation

    .line 144
    .local p0, "this":Lcom/tds/common/reactor/Observable;, "Lcom/tds/common/reactor/Observable<TT;>;"
    .local p1, "onNext":Lcom/tds/common/reactor/functions/Action1;, "Lcom/tds/common/reactor/functions/Action1<-TT;>;"
    if-eqz p1, :cond_12

    .line 148
    sget-object v0, Lcom/tds/common/reactor/util/InternalObservableUtils;->ERROR_NOT_IMPLEMENTED:Lcom/tds/common/reactor/functions/Action1;

    .line 149
    .local v0, "onError":Lcom/tds/common/reactor/functions/Action1;, "Lcom/tds/common/reactor/functions/Action1<Ljava/lang/Throwable;>;"
    invoke-static {}, Lcom/tds/common/reactor/functions/Actions;->empty()Lcom/tds/common/reactor/functions/Actions$EmptyAction;

    move-result-object v1

    .line 150
    .local v1, "onCompleted":Lcom/tds/common/reactor/functions/Action0;
    new-instance v2, Lcom/tds/common/reactor/util/ActionSubscriber;

    invoke-direct {v2, p1, v0, v1}, Lcom/tds/common/reactor/util/ActionSubscriber;-><init>(Lcom/tds/common/reactor/functions/Action1;Lcom/tds/common/reactor/functions/Action1;Lcom/tds/common/reactor/functions/Action0;)V

    invoke-virtual {p0, v2}, Lcom/tds/common/reactor/Observable;->subscribe(Lcom/tds/common/reactor/Subscriber;)Lcom/tds/common/reactor/Subscription;

    move-result-object v2

    return-object v2

    .line 145
    .end local v0    # "onError":Lcom/tds/common/reactor/functions/Action1;, "Lcom/tds/common/reactor/functions/Action1<Ljava/lang/Throwable;>;"
    .end local v1    # "onCompleted":Lcom/tds/common/reactor/functions/Action0;
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onNext can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final subscribe(Lcom/tds/common/reactor/functions/Action1;Lcom/tds/common/reactor/functions/Action1;)Lcom/tds/common/reactor/Subscription;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/functions/Action1<",
            "-TT;>;",
            "Lcom/tds/common/reactor/functions/Action1<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/tds/common/reactor/Subscription;"
        }
    .end annotation

    .line 154
    .local p0, "this":Lcom/tds/common/reactor/Observable;, "Lcom/tds/common/reactor/Observable<TT;>;"
    .local p1, "onNext":Lcom/tds/common/reactor/functions/Action1;, "Lcom/tds/common/reactor/functions/Action1<-TT;>;"
    .local p2, "onError":Lcom/tds/common/reactor/functions/Action1;, "Lcom/tds/common/reactor/functions/Action1<Ljava/lang/Throwable;>;"
    if-eqz p1, :cond_1a

    .line 157
    if-eqz p2, :cond_12

    .line 161
    invoke-static {}, Lcom/tds/common/reactor/functions/Actions;->empty()Lcom/tds/common/reactor/functions/Actions$EmptyAction;

    move-result-object v0

    .line 162
    .local v0, "onCompleted":Lcom/tds/common/reactor/functions/Action0;
    new-instance v1, Lcom/tds/common/reactor/util/ActionSubscriber;

    invoke-direct {v1, p1, p2, v0}, Lcom/tds/common/reactor/util/ActionSubscriber;-><init>(Lcom/tds/common/reactor/functions/Action1;Lcom/tds/common/reactor/functions/Action1;Lcom/tds/common/reactor/functions/Action0;)V

    invoke-virtual {p0, v1}, Lcom/tds/common/reactor/Observable;->subscribe(Lcom/tds/common/reactor/Subscriber;)Lcom/tds/common/reactor/Subscription;

    move-result-object v1

    return-object v1

    .line 158
    .end local v0    # "onCompleted":Lcom/tds/common/reactor/functions/Action0;
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onError can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onNext can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final subscribe(Lcom/tds/common/reactor/functions/Action1;Lcom/tds/common/reactor/functions/Action1;Lcom/tds/common/reactor/functions/Action0;)Lcom/tds/common/reactor/Subscription;
    .registers 6
    .param p3, "onCompleted"    # Lcom/tds/common/reactor/functions/Action0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/functions/Action1<",
            "-TT;>;",
            "Lcom/tds/common/reactor/functions/Action1<",
            "Ljava/lang/Throwable;",
            ">;",
            "Lcom/tds/common/reactor/functions/Action0;",
            ")",
            "Lcom/tds/common/reactor/Subscription;"
        }
    .end annotation

    .line 166
    .local p0, "this":Lcom/tds/common/reactor/Observable;, "Lcom/tds/common/reactor/Observable<TT;>;"
    .local p1, "onNext":Lcom/tds/common/reactor/functions/Action1;, "Lcom/tds/common/reactor/functions/Action1<-TT;>;"
    .local p2, "onError":Lcom/tds/common/reactor/functions/Action1;, "Lcom/tds/common/reactor/functions/Action1<Ljava/lang/Throwable;>;"
    if-eqz p1, :cond_20

    .line 169
    if-eqz p2, :cond_18

    .line 172
    if-eqz p3, :cond_10

    .line 176
    new-instance v0, Lcom/tds/common/reactor/util/ActionSubscriber;

    invoke-direct {v0, p1, p2, p3}, Lcom/tds/common/reactor/util/ActionSubscriber;-><init>(Lcom/tds/common/reactor/functions/Action1;Lcom/tds/common/reactor/functions/Action1;Lcom/tds/common/reactor/functions/Action0;)V

    invoke-virtual {p0, v0}, Lcom/tds/common/reactor/Observable;->subscribe(Lcom/tds/common/reactor/Subscriber;)Lcom/tds/common/reactor/Subscription;

    move-result-object v0

    return-object v0

    .line 173
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onComplete can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onError can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onNext can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final subscribeOn(Lcom/tds/common/reactor/schedulers/Scheduler;)Lcom/tds/common/reactor/Observable;
    .registers 3
    .param p1, "scheduler"    # Lcom/tds/common/reactor/schedulers/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/schedulers/Scheduler;",
            ")",
            "Lcom/tds/common/reactor/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 213
    .local p0, "this":Lcom/tds/common/reactor/Observable;, "Lcom/tds/common/reactor/Observable<TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/Observable;->onSubscribe:Lcom/tds/common/reactor/Observable$OnSubscribe;

    instance-of v0, v0, Lcom/tds/common/reactor/operators/OnSubscribeCreate;

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/tds/common/reactor/Observable;->subscribeOn(Lcom/tds/common/reactor/schedulers/Scheduler;Z)Lcom/tds/common/reactor/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final subscribeOn(Lcom/tds/common/reactor/schedulers/Scheduler;Z)Lcom/tds/common/reactor/Observable;
    .registers 4
    .param p1, "scheduler"    # Lcom/tds/common/reactor/schedulers/Scheduler;
    .param p2, "requestOn"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/schedulers/Scheduler;",
            "Z)",
            "Lcom/tds/common/reactor/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 218
    .local p0, "this":Lcom/tds/common/reactor/Observable;, "Lcom/tds/common/reactor/Observable<TT;>;"
    new-instance v0, Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn;

    invoke-direct {v0, p0, p1, p2}, Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn;-><init>(Lcom/tds/common/reactor/Observable;Lcom/tds/common/reactor/schedulers/Scheduler;Z)V

    invoke-static {v0}, Lcom/tds/common/reactor/Observable;->unsafeCreate(Lcom/tds/common/reactor/Observable$OnSubscribe;)Lcom/tds/common/reactor/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;)Lcom/tds/common/reactor/Observable;
    .registers 10
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lcom/tds/common/reactor/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 373
    .local p0, "this":Lcom/tds/common/reactor/Observable;, "Lcom/tds/common/reactor/Observable<TT;>;"
    invoke-static {}, Lcom/tds/common/reactor/schedulers/Schedulers;->computation()Lcom/tds/common/reactor/schedulers/Scheduler;

    move-result-object v5

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/tds/common/reactor/Observable;->timeout(JLjava/util/concurrent/TimeUnit;Lcom/tds/common/reactor/Observable;Lcom/tds/common/reactor/schedulers/Scheduler;)Lcom/tds/common/reactor/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;Lcom/tds/common/reactor/Observable;Lcom/tds/common/reactor/schedulers/Scheduler;)Lcom/tds/common/reactor/Observable;
    .registers 14
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lcom/tds/common/reactor/schedulers/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lcom/tds/common/reactor/Observable<",
            "+TT;>;",
            "Lcom/tds/common/reactor/schedulers/Scheduler;",
            ")",
            "Lcom/tds/common/reactor/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 377
    .local p0, "this":Lcom/tds/common/reactor/Observable;, "Lcom/tds/common/reactor/Observable<TT;>;"
    .local p4, "other":Lcom/tds/common/reactor/Observable;, "Lcom/tds/common/reactor/Observable<+TT;>;"
    new-instance v7, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback;

    move-object v0, v7

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p5

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback;-><init>(Lcom/tds/common/reactor/Observable;JLjava/util/concurrent/TimeUnit;Lcom/tds/common/reactor/schedulers/Scheduler;Lcom/tds/common/reactor/Observable;)V

    invoke-static {v7}, Lcom/tds/common/reactor/Observable;->unsafeCreate(Lcom/tds/common/reactor/Observable$OnSubscribe;)Lcom/tds/common/reactor/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final toList()Lcom/tds/common/reactor/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tds/common/reactor/Observable<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 385
    .local p0, "this":Lcom/tds/common/reactor/Observable;, "Lcom/tds/common/reactor/Observable<TT;>;"
    invoke-static {}, Lcom/tds/common/reactor/internal/operators/OperatorToObservableList;->instance()Lcom/tds/common/reactor/internal/operators/OperatorToObservableList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tds/common/reactor/Observable;->lift(Lcom/tds/common/reactor/Observable$Operator;)Lcom/tds/common/reactor/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final unsafeSubscribe(Lcom/tds/common/reactor/Subscriber;)Lcom/tds/common/reactor/Subscription;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;)",
            "Lcom/tds/common/reactor/Subscription;"
        }
    .end annotation

    .line 228
    .local p0, "this":Lcom/tds/common/reactor/Observable;, "Lcom/tds/common/reactor/Observable<TT;>;"
    .local p1, "subscriber":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    :try_start_0
    invoke-virtual {p1}, Lcom/tds/common/reactor/Subscriber;->onStart()V

    .line 230
    iget-object v0, p0, Lcom/tds/common/reactor/Observable;->onSubscribe:Lcom/tds/common/reactor/Observable$OnSubscribe;

    invoke-static {p0, v0}, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onObservableStart(Lcom/tds/common/reactor/Observable;Lcom/tds/common/reactor/Observable$OnSubscribe;)Lcom/tds/common/reactor/Observable$OnSubscribe;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tds/common/reactor/Observable$OnSubscribe;->call(Ljava/lang/Object;)V

    .line 231
    invoke-static {p1}, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onObservableReturn(Lcom/tds/common/reactor/Subscription;)Lcom/tds/common/reactor/Subscription;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    return-object v0

    .line 232
    :catchall_11
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/tds/common/reactor/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 237
    :try_start_15
    invoke-static {v0}, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onObservableError(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/tds/common/reactor/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_22

    .line 247
    nop

    .line 248
    invoke-static {}, Lcom/tds/common/reactor/subscriptions/Subscriptions;->unsubscribed()Lcom/tds/common/reactor/Subscription;

    move-result-object v1

    return-object v1

    .line 238
    :catchall_22
    move-exception v1

    .line 239
    .local v1, "e2":Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/tds/common/reactor/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 242
    new-instance v2, Lcom/tds/common/reactor/exceptions/OnErrorFailedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error occurred attempting to subscribe ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] and then again while trying to pass to onError."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/tds/common/reactor/exceptions/OnErrorFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 244
    .local v2, "r":Ljava/lang/RuntimeException;
    invoke-static {v2}, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onObservableError(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 246
    throw v2
.end method
