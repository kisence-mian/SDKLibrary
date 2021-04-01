.class final Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;
.super Lrx/Subscriber;
.source "OperatorSampleWithTime.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorSampleWithTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SamplerSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;",
        "Lrx/functions/Action0;"
    }
.end annotation


# static fields
.field private static final EMPTY_TOKEN:Ljava/lang/Object;


# instance fields
.field private final subscriber:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final value:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;->EMPTY_TOKEN:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lrx/Subscriber;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;, "Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;->EMPTY_TOKEN:Ljava/lang/Object;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;->value:Ljava/util/concurrent/atomic/AtomicReference;

    .line 70
    iput-object p1, p0, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;->subscriber:Lrx/Subscriber;

    .line 71
    return-void
.end method

.method private emitIfNonEmpty()V
    .registers 6

    .prologue
    .line 102
    .local p0, "this":Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;, "Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber<TT;>;"
    iget-object v3, p0, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;->value:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v4, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;->EMPTY_TOKEN:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 103
    .local v1, "localValue":Ljava/lang/Object;
    sget-object v3, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;->EMPTY_TOKEN:Ljava/lang/Object;

    if-eq v1, v3, :cond_12

    .line 106
    move-object v2, v1

    .line 107
    .local v2, "v":Ljava/lang/Object;, "TT;"
    :try_start_d
    iget-object v3, p0, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;->subscriber:Lrx/Subscriber;

    invoke-virtual {v3, v2}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_12} :catch_13

    .line 112
    .end local v2    # "v":Ljava/lang/Object;, "TT;"
    :cond_12
    :goto_12
    return-void

    .line 108
    .restart local v2    # "v":Ljava/lang/Object;, "TT;"
    :catch_13
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0, p0}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    goto :goto_12
.end method


# virtual methods
.method public call()V
    .registers 1

    .prologue
    .line 98
    .local p0, "this":Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;, "Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber<TT;>;"
    invoke-direct {p0}, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;->emitIfNonEmpty()V

    .line 99
    return-void
.end method

.method public onCompleted()V
    .registers 2

    .prologue
    .line 91
    .local p0, "this":Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;, "Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber<TT;>;"
    invoke-direct {p0}, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;->emitIfNonEmpty()V

    .line 92
    iget-object v0, p0, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;->subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 93
    invoke-virtual {p0}, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;->unsubscribe()V

    .line 94
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 85
    .local p0, "this":Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;, "Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;->subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 86
    invoke-virtual {p0}, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;->unsubscribe()V

    .line 87
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;, "Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;->value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 81
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 75
    .local p0, "this":Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;, "Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber<TT;>;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;->request(J)V

    .line 76
    return-void
.end method
