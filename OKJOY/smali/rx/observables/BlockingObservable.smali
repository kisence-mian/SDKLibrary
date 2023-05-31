.class public final Lrx/observables/BlockingObservable;
.super Ljava/lang/Object;
.source "BlockingObservable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final ON_START:Ljava/lang/Object;

.field static final SET_PRODUCER:Ljava/lang/Object;

.field static final UNSUBSCRIBE:Ljava/lang/Object;


# instance fields
.field private final o:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/observables/BlockingObservable;->ON_START:Ljava/lang/Object;

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/observables/BlockingObservable;->SET_PRODUCER:Ljava/lang/Object;

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/observables/BlockingObservable;->UNSUBSCRIBE:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lrx/Observable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "o":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lrx/observables/BlockingObservable;->o:Lrx/Observable;

    .line 67
    return-void
.end method

.method private blockForSingle(Lrx/Observable;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 440
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "observable":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 441
    .local v2, "returnItem":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TT;>;"
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 442
    .local v1, "returnException":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;"
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v0, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 445
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v4, Lrx/observables/BlockingObservable$3;

    invoke-direct {v4, p0, v0, v1, v2}, Lrx/observables/BlockingObservable$3;-><init>(Lrx/observables/BlockingObservable;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {p1, v4}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v3

    .line 462
    .local v3, "subscription":Lrx/Subscription;
    invoke-static {v0, v3}, Lrx/internal/util/BlockingUtils;->awaitForComplete(Ljava/util/concurrent/CountDownLatch;Lrx/Subscription;)V

    .line 464
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2b

    .line 465
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v4}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 468
    :cond_2b
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    return-object v4
.end method

.method public static from(Lrx/Observable;)Lrx/observables/BlockingObservable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/observables/BlockingObservable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "o":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    new-instance v0, Lrx/observables/BlockingObservable;

    invoke-direct {v0, p0}, Lrx/observables/BlockingObservable;-><init>(Lrx/Observable;)V

    return-object v0
.end method


# virtual methods
.method public first()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    iget-object v0, p0, Lrx/observables/BlockingObservable;->o:Lrx/Observable;

    invoke-virtual {v0}, Lrx/Observable;->first()Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/observables/BlockingObservable;->blockForSingle(Lrx/Observable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public first(Lrx/functions/Func1;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 183
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "predicate":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lrx/observables/BlockingObservable;->o:Lrx/Observable;

    invoke-virtual {v0, p1}, Lrx/Observable;->first(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/observables/BlockingObservable;->blockForSingle(Lrx/Observable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public firstOrDefault(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 197
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/observables/BlockingObservable;->o:Lrx/Observable;

    invoke-static {}, Lrx/internal/util/UtilityFunctions;->identity()Lrx/functions/Func1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/Observable;->firstOrDefault(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/observables/BlockingObservable;->blockForSingle(Lrx/Observable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public firstOrDefault(Ljava/lang/Object;Lrx/functions/Func1;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 213
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    .local p2, "predicate":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lrx/observables/BlockingObservable;->o:Lrx/Observable;

    invoke-virtual {v0, p2}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lrx/internal/util/UtilityFunctions;->identity()Lrx/functions/Func1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/Observable;->firstOrDefault(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/observables/BlockingObservable;->blockForSingle(Lrx/Observable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public forEach(Lrx/functions/Action1;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "onNext":Lrx/functions/Action1;, "Lrx/functions/Action1<-TT;>;"
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 106
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 113
    .local v0, "exceptionFromOnError":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;"
    iget-object v3, p0, Lrx/observables/BlockingObservable;->o:Lrx/Observable;

    new-instance v4, Lrx/observables/BlockingObservable$1;

    invoke-direct {v4, p0, v1, v0, p1}, Lrx/observables/BlockingObservable$1;-><init>(Lrx/observables/BlockingObservable;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;Lrx/functions/Action1;)V

    invoke-virtual {v3, v4}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v2

    .line 138
    .local v2, "subscription":Lrx/Subscription;
    invoke-static {v1, v2}, Lrx/internal/util/BlockingUtils;->awaitForComplete(Ljava/util/concurrent/CountDownLatch;Lrx/Subscription;)V

    .line 140
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_28

    .line 141
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v3}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 143
    :cond_28
    return-void
.end method

.method public getIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 155
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    iget-object v0, p0, Lrx/observables/BlockingObservable;->o:Lrx/Observable;

    invoke-static {v0}, Lrx/internal/operators/BlockingOperatorToIterator;->toIterator(Lrx/Observable;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 228
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    iget-object v0, p0, Lrx/observables/BlockingObservable;->o:Lrx/Observable;

    invoke-virtual {v0}, Lrx/Observable;->last()Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/observables/BlockingObservable;->blockForSingle(Lrx/Observable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public last(Lrx/functions/Func1;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 245
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "predicate":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lrx/observables/BlockingObservable;->o:Lrx/Observable;

    invoke-virtual {v0, p1}, Lrx/Observable;->last(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/observables/BlockingObservable;->blockForSingle(Lrx/Observable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lastOrDefault(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 261
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/observables/BlockingObservable;->o:Lrx/Observable;

    invoke-static {}, Lrx/internal/util/UtilityFunctions;->identity()Lrx/functions/Func1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/Observable;->lastOrDefault(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/observables/BlockingObservable;->blockForSingle(Lrx/Observable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lastOrDefault(Ljava/lang/Object;Lrx/functions/Func1;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 279
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    .local p2, "predicate":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lrx/observables/BlockingObservable;->o:Lrx/Observable;

    invoke-virtual {v0, p2}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lrx/internal/util/UtilityFunctions;->identity()Lrx/functions/Func1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/Observable;->lastOrDefault(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/observables/BlockingObservable;->blockForSingle(Lrx/Observable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public latest()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 329
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    iget-object v0, p0, Lrx/observables/BlockingObservable;->o:Lrx/Observable;

    invoke-static {v0}, Lrx/internal/operators/BlockingOperatorLatest;->latest(Lrx/Observable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public mostRecent(Ljava/lang/Object;)Ljava/lang/Iterable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 296
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "initialValue":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/observables/BlockingObservable;->o:Lrx/Observable;

    invoke-static {v0, p1}, Lrx/internal/operators/BlockingOperatorMostRecent;->mostRecent(Lrx/Observable;Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 311
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    iget-object v0, p0, Lrx/observables/BlockingObservable;->o:Lrx/Observable;

    invoke-static {v0}, Lrx/internal/operators/BlockingOperatorNext;->next(Lrx/Observable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public single()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 342
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    iget-object v0, p0, Lrx/observables/BlockingObservable;->o:Lrx/Observable;

    invoke-virtual {v0}, Lrx/Observable;->single()Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/observables/BlockingObservable;->blockForSingle(Lrx/Observable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public single(Lrx/functions/Func1;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 357
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "predicate":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lrx/observables/BlockingObservable;->o:Lrx/Observable;

    invoke-virtual {v0, p1}, Lrx/Observable;->single(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/observables/BlockingObservable;->blockForSingle(Lrx/Observable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public singleOrDefault(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 374
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/observables/BlockingObservable;->o:Lrx/Observable;

    invoke-static {}, Lrx/internal/util/UtilityFunctions;->identity()Lrx/functions/Func1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/Observable;->singleOrDefault(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/observables/BlockingObservable;->blockForSingle(Lrx/Observable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public singleOrDefault(Ljava/lang/Object;Lrx/functions/Func1;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 393
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    .local p2, "predicate":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lrx/observables/BlockingObservable;->o:Lrx/Observable;

    invoke-virtual {v0, p2}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lrx/internal/util/UtilityFunctions;->identity()Lrx/functions/Func1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/Observable;->singleOrDefault(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/observables/BlockingObservable;->blockForSingle(Lrx/Observable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subscribe()V
    .registers 8
    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 476
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 477
    .local v0, "cdl":Ljava/util/concurrent/CountDownLatch;
    new-array v2, v4, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object v4, v2, v6

    .line 479
    .local v2, "error":[Ljava/lang/Throwable;
    iget-object v4, p0, Lrx/observables/BlockingObservable;->o:Lrx/Observable;

    new-instance v5, Lrx/observables/BlockingObservable$4;

    invoke-direct {v5, p0, v2, v0}, Lrx/observables/BlockingObservable$4;-><init>(Lrx/observables/BlockingObservable;[Ljava/lang/Throwable;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v4, v5}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v3

    .line 496
    .local v3, "s":Lrx/Subscription;
    invoke-static {v0, v3}, Lrx/internal/util/BlockingUtils;->awaitForComplete(Ljava/util/concurrent/CountDownLatch;Lrx/Subscription;)V

    .line 497
    aget-object v1, v2, v6

    .line 498
    .local v1, "e":Ljava/lang/Throwable;
    if-eqz v1, :cond_21

    .line 499
    invoke-static {v1}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 501
    :cond_21
    return-void
.end method

.method public subscribe(Lrx/Observer;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observer",
            "<-TT;>;)V"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 509
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "observer":Lrx/Observer;, "Lrx/Observer<-TT;>;"
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v1

    .line 510
    .local v1, "nl":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TT;>;"
    new-instance v3, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 513
    .local v3, "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Object;>;"
    iget-object v5, p0, Lrx/observables/BlockingObservable;->o:Lrx/Observable;

    new-instance v6, Lrx/observables/BlockingObservable$5;

    invoke-direct {v6, p0, v3, v1}, Lrx/observables/BlockingObservable$5;-><init>(Lrx/observables/BlockingObservable;Ljava/util/concurrent/BlockingQueue;Lrx/internal/operators/NotificationLite;)V

    invoke-virtual {v5, v6}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v4

    .line 530
    .local v4, "s":Lrx/Subscription;
    :cond_14
    :try_start_14
    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    .line 531
    .local v2, "o":Ljava/lang/Object;
    if-nez v2, :cond_1e

    .line 532
    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    .line 534
    :cond_1e
    invoke-virtual {v1, p1, v2}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_21} :catch_28
    .catchall {:try_start_14 .. :try_end_21} :catchall_37

    move-result v5

    if-eqz v5, :cond_14

    .line 542
    invoke-interface {v4}, Lrx/Subscription;->unsubscribe()V

    .line 544
    .end local v2    # "o":Ljava/lang/Object;
    :goto_27
    return-void

    .line 538
    :catch_28
    move-exception v0

    .line 539
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_29
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 540
    invoke-interface {p1, v0}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V
    :try_end_33
    .catchall {:try_start_29 .. :try_end_33} :catchall_37

    .line 542
    invoke-interface {v4}, Lrx/Subscription;->unsubscribe()V

    goto :goto_27

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_37
    move-exception v5

    invoke-interface {v4}, Lrx/Subscription;->unsubscribe()V

    throw v5
.end method

.method public subscribe(Lrx/Subscriber;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    const/4 v7, 0x0

    .line 555
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v1

    .line 556
    .local v1, "nl":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TT;>;"
    new-instance v3, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 557
    .local v3, "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Object;>;"
    const/4 v6, 0x1

    new-array v5, v6, [Lrx/Producer;

    const/4 v6, 0x0

    aput-object v6, v5, v7

    .line 559
    .local v5, "theProducer":[Lrx/Producer;
    new-instance v4, Lrx/observables/BlockingObservable$6;

    invoke-direct {v4, p0, v3, v1, v5}, Lrx/observables/BlockingObservable$6;-><init>(Lrx/observables/BlockingObservable;Ljava/util/concurrent/BlockingQueue;Lrx/internal/operators/NotificationLite;[Lrx/Producer;)V

    .line 585
    .local v4, "s":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    invoke-virtual {p1, v4}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 586
    new-instance v6, Lrx/observables/BlockingObservable$7;

    invoke-direct {v6, p0, v3}, Lrx/observables/BlockingObservable$7;-><init>(Lrx/observables/BlockingObservable;Ljava/util/concurrent/BlockingQueue;)V

    invoke-static {v6}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v6

    invoke-virtual {p1, v6}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 593
    iget-object v6, p0, Lrx/observables/BlockingObservable;->o:Lrx/Observable;

    invoke-virtual {v6, v4}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 597
    :cond_29
    :goto_29
    :try_start_29
    invoke-virtual {p1}, Lrx/Subscriber;->isUnsubscribed()Z
    :try_end_2c
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_2c} :catch_4f
    .catchall {:try_start_29 .. :try_end_2c} :catchall_69

    move-result v6

    if-eqz v6, :cond_33

    .line 621
    :cond_2f
    invoke-virtual {v4}, Lrx/Subscriber;->unsubscribe()V

    .line 623
    :goto_32
    return-void

    .line 600
    :cond_33
    :try_start_33
    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    .line 601
    .local v2, "o":Ljava/lang/Object;
    if-nez v2, :cond_3d

    .line 602
    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    .line 604
    :cond_3d
    invoke-virtual {p1}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v6

    if-nez v6, :cond_2f

    sget-object v6, Lrx/observables/BlockingObservable;->UNSUBSCRIBE:Ljava/lang/Object;

    if-eq v2, v6, :cond_2f

    .line 607
    sget-object v6, Lrx/observables/BlockingObservable;->ON_START:Ljava/lang/Object;

    if-ne v2, v6, :cond_5e

    .line 608
    invoke-virtual {p1}, Lrx/Subscriber;->onStart()V
    :try_end_4e
    .catch Ljava/lang/InterruptedException; {:try_start_33 .. :try_end_4e} :catch_4f
    .catchall {:try_start_33 .. :try_end_4e} :catchall_69

    goto :goto_29

    .line 617
    .end local v2    # "o":Ljava/lang/Object;
    :catch_4f
    move-exception v0

    .line 618
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_50
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    .line 619
    invoke-virtual {p1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_5a
    .catchall {:try_start_50 .. :try_end_5a} :catchall_69

    .line 621
    invoke-virtual {v4}, Lrx/Subscriber;->unsubscribe()V

    goto :goto_32

    .line 610
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v2    # "o":Ljava/lang/Object;
    :cond_5e
    :try_start_5e
    sget-object v6, Lrx/observables/BlockingObservable;->SET_PRODUCER:Ljava/lang/Object;

    if-ne v2, v6, :cond_6e

    .line 611
    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-virtual {p1, v6}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V
    :try_end_68
    .catch Ljava/lang/InterruptedException; {:try_start_5e .. :try_end_68} :catch_4f
    .catchall {:try_start_5e .. :try_end_68} :catchall_69

    goto :goto_29

    .line 621
    .end local v2    # "o":Ljava/lang/Object;
    :catchall_69
    move-exception v6

    invoke-virtual {v4}, Lrx/Subscriber;->unsubscribe()V

    throw v6

    .line 613
    .restart local v2    # "o":Ljava/lang/Object;
    :cond_6e
    :try_start_6e
    invoke-virtual {v1, p1, v2}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z
    :try_end_71
    .catch Ljava/lang/InterruptedException; {:try_start_6e .. :try_end_71} :catch_4f
    .catchall {:try_start_6e .. :try_end_71} :catchall_69

    move-result v6

    if-eqz v6, :cond_29

    .line 621
    invoke-virtual {v4}, Lrx/Subscriber;->unsubscribe()V

    goto :goto_32
.end method

.method public subscribe(Lrx/functions/Action1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<-TT;>;)V"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 637
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "onNext":Lrx/functions/Action1;, "Lrx/functions/Action1<-TT;>;"
    new-instance v0, Lrx/observables/BlockingObservable$8;

    invoke-direct {v0, p0}, Lrx/observables/BlockingObservable$8;-><init>(Lrx/observables/BlockingObservable;)V

    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lrx/observables/BlockingObservable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;)V

    .line 643
    return-void
.end method

.method public subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<-TT;>;",
            "Lrx/functions/Action1",
            "<-",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 652
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "onNext":Lrx/functions/Action1;, "Lrx/functions/Action1<-TT;>;"
    .local p2, "onError":Lrx/functions/Action1;, "Lrx/functions/Action1<-Ljava/lang/Throwable;>;"
    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lrx/observables/BlockingObservable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;)V

    .line 653
    return-void
.end method

.method public subscribe(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;)V
    .registers 5
    .param p3, "onCompleted"    # Lrx/functions/Action0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<-TT;>;",
            "Lrx/functions/Action1",
            "<-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lrx/functions/Action0;",
            ")V"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 663
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "onNext":Lrx/functions/Action1;, "Lrx/functions/Action1<-TT;>;"
    .local p2, "onError":Lrx/functions/Action1;, "Lrx/functions/Action1<-Ljava/lang/Throwable;>;"
    new-instance v0, Lrx/observables/BlockingObservable$9;

    invoke-direct {v0, p0, p1, p2, p3}, Lrx/observables/BlockingObservable$9;-><init>(Lrx/observables/BlockingObservable;Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;)V

    invoke-virtual {p0, v0}, Lrx/observables/BlockingObservable;->subscribe(Lrx/Observer;)V

    .line 679
    return-void
.end method

.method public toFuture()Ljava/util/concurrent/Future;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 412
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    iget-object v0, p0, Lrx/observables/BlockingObservable;->o:Lrx/Observable;

    invoke-static {v0}, Lrx/internal/operators/BlockingOperatorToFuture;->toFuture(Lrx/Observable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public toIterable()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 424
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    new-instance v0, Lrx/observables/BlockingObservable$2;

    invoke-direct {v0, p0}, Lrx/observables/BlockingObservable$2;-><init>(Lrx/observables/BlockingObservable;)V

    return-object v0
.end method
