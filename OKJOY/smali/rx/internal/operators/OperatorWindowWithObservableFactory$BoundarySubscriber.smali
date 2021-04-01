.class final Lrx/internal/operators/OperatorWindowWithObservableFactory$BoundarySubscriber;
.super Lrx/Subscriber;
.source "OperatorWindowWithObservableFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorWindowWithObservableFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BoundarySubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TU;>;"
    }
.end annotation


# instance fields
.field done:Z

.field final sub:Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber",
            "<TT;TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber",
            "<TT;TU;>;)V"
        }
    .end annotation

    .prologue
    .line 292
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithObservableFactory$BoundarySubscriber;, "Lrx/internal/operators/OperatorWindowWithObservableFactory$BoundarySubscriber<TT;TU;>;"
    .local p1, "sub":Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;, "Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber<TT;TU;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 293
    iput-object p1, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$BoundarySubscriber;->sub:Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;

    .line 294
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 316
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithObservableFactory$BoundarySubscriber;, "Lrx/internal/operators/OperatorWindowWithObservableFactory$BoundarySubscriber<TT;TU;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$BoundarySubscriber;->done:Z

    if-nez v0, :cond_c

    .line 317
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$BoundarySubscriber;->done:Z

    .line 318
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$BoundarySubscriber;->sub:Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->onCompleted()V

    .line 320
    :cond_c
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 311
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithObservableFactory$BoundarySubscriber;, "Lrx/internal/operators/OperatorWindowWithObservableFactory$BoundarySubscriber<TT;TU;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$BoundarySubscriber;->sub:Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 312
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .prologue
    .line 303
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithObservableFactory$BoundarySubscriber;, "Lrx/internal/operators/OperatorWindowWithObservableFactory$BoundarySubscriber<TT;TU;>;"
    .local p1, "t":Ljava/lang/Object;, "TU;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$BoundarySubscriber;->done:Z

    if-nez v0, :cond_c

    .line 304
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$BoundarySubscriber;->done:Z

    .line 305
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory$BoundarySubscriber;->sub:Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->replaceWindow()V

    .line 307
    :cond_c
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 298
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithObservableFactory$BoundarySubscriber;, "Lrx/internal/operators/OperatorWindowWithObservableFactory$BoundarySubscriber<TT;TU;>;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorWindowWithObservableFactory$BoundarySubscriber;->request(J)V

    .line 299
    return-void
.end method
