.class final Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;
.super Lrx/Subscriber;
.source "OperatorWithLatestFromMany.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorWithLatestFromMany;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WithLatestMainSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final EMPTY:Ljava/lang/Object;


# instance fields
.field final actual:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TR;>;"
        }
    .end annotation
.end field

.field final combiner:Lrx/functions/FuncN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/FuncN",
            "<TR;>;"
        }
    .end annotation
.end field

.field final current:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field done:Z

.field final ready:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;->EMPTY:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lrx/Subscriber;Lrx/functions/FuncN;I)V
    .registers 8
    .param p3, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;",
            "Lrx/functions/FuncN",
            "<TR;>;I)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;, "Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber<TT;TR;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    .local p2, "combiner":Lrx/functions/FuncN;, "Lrx/functions/FuncN<TR;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 99
    iput-object p1, p0, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;->actual:Lrx/Subscriber;

    .line 100
    iput-object p2, p0, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;->combiner:Lrx/functions/FuncN;

    .line 102
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    add-int/lit8 v2, p3, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 103
    .local v0, "array":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-gt v1, p3, :cond_19

    .line 104
    sget-object v2, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;->EMPTY:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 106
    :cond_19
    iput-object v0, p0, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;->current:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 108
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;->ready:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 109
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;->request(J)V

    .line 110
    return-void
.end method


# virtual methods
.method innerComplete(I)V
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 183
    .local p0, "this":Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;, "Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber<TT;TR;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;->current:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;->EMPTY:Ljava/lang/Object;

    if-ne v0, v1, :cond_d

    .line 184
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;->onCompleted()V

    .line 186
    :cond_d
    return-void
.end method

.method innerError(ILjava/lang/Throwable;)V
    .registers 3
    .param p1, "index"    # I
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 179
    .local p0, "this":Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;, "Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber<TT;TR;>;"
    invoke-virtual {p0, p2}, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 180
    return-void
.end method

.method innerNext(ILjava/lang/Object;)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 172
    .local p0, "this":Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;, "Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber<TT;TR;>;"
    iget-object v1, p0, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;->current:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 173
    .local v0, "last":Ljava/lang/Object;
    sget-object v1, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;->EMPTY:Ljava/lang/Object;

    if-ne v0, v1, :cond_f

    .line 174
    iget-object v1, p0, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;->ready:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 176
    :cond_f
    return-void
.end method

.method public onCompleted()V
    .registers 2

    .prologue
    .line 157
    .local p0, "this":Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;, "Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber<TT;TR;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;->done:Z

    if-eqz v0, :cond_5

    .line 163
    :goto_4
    return-void

    .line 160
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;->done:Z

    .line 161
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;->unsubscribe()V

    .line 162
    iget-object v0, p0, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    goto :goto_4
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 146
    .local p0, "this":Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;, "Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber<TT;TR;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;->done:Z

    if-eqz v0, :cond_8

    .line 147
    invoke-static {p1}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 153
    :goto_7
    return-void

    .line 150
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;->done:Z

    .line 151
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;->unsubscribe()V

    .line 152
    iget-object v0, p0, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_7
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "this":Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;, "Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v6, p0, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;->done:Z

    if-eqz v6, :cond_5

    .line 142
    :goto_4
    return-void

    .line 117
    :cond_5
    iget-object v6, p0, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;->ready:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    if-nez v6, :cond_3d

    .line 119
    iget-object v0, p0, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;->current:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 120
    .local v0, "array":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    .line 121
    .local v4, "n":I
    const/4 v6, 0x0

    invoke-virtual {v0, v6, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 123
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v6

    new-array v1, v6, [Ljava/lang/Object;

    .line 124
    .local v1, "copy":[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1e
    if-ge v3, v4, :cond_29

    .line 125
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v1, v3

    .line 124
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 131
    :cond_29
    :try_start_29
    iget-object v6, p0, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;->combiner:Lrx/functions/FuncN;

    invoke-interface {v6, v1}, Lrx/functions/FuncN;->call([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_2e} :catch_35

    move-result-object v5

    .line 138
    .local v5, "result":Ljava/lang/Object;, "TR;"
    iget-object v6, p0, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v6, v5}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_4

    .line 132
    .end local v5    # "result":Ljava/lang/Object;, "TR;"
    :catch_35
    move-exception v2

    .line 133
    .local v2, "ex":Ljava/lang/Throwable;
    invoke-static {v2}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 134
    invoke-virtual {p0, v2}, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 140
    .end local v0    # "array":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    .end local v1    # "copy":[Ljava/lang/Object;
    .end local v2    # "ex":Ljava/lang/Throwable;
    .end local v3    # "i":I
    .end local v4    # "n":I
    :cond_3d
    const-wide/16 v6, 0x1

    invoke-virtual {p0, v6, v7}, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;->request(J)V

    goto :goto_4
.end method

.method public setProducer(Lrx/Producer;)V
    .registers 3
    .param p1, "p"    # Lrx/Producer;

    .prologue
    .line 167
    .local p0, "this":Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;, "Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber<TT;TR;>;"
    invoke-super {p0, p1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 168
    iget-object v0, p0, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 169
    return-void
.end method
