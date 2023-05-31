.class final Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber;
.super Lrx/Subscriber;
.source "OperatorOnBackpressureLatest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorOnBackpressureLatest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LatestSubscriber"
.end annotation

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
.field private final producer:Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber<TT;>;"
    .local p1, "producer":Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter<TT;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 200
    iput-object p1, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber;->producer:Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;

    .line 201
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 221
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber;->producer:Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->onCompleted()V

    .line 222
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 216
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber;->producer:Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->onError(Ljava/lang/Throwable;)V

    .line 217
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
    .line 211
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber;->producer:Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->onNext(Ljava/lang/Object;)V

    .line 212
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 206
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber<TT;>;"
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber;->request(J)V

    .line 207
    return-void
.end method

.method requestMore(J)V
    .registers 4
    .param p1, "n"    # J

    .prologue
    .line 224
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber<TT;>;"
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber;->request(J)V

    .line 225
    return-void
.end method
