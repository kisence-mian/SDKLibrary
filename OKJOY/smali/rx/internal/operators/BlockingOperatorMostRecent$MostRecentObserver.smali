.class final Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;
.super Lrx/Subscriber;
.source "BlockingOperatorMostRecent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/BlockingOperatorMostRecent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MostRecentObserver"
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
.field final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field volatile value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;, "Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 65
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;->nl:Lrx/internal/operators/NotificationLite;

    .line 69
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;->value:Ljava/lang/Object;

    .line 70
    return-void
.end method


# virtual methods
.method public getIterable()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;, "Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver<TT;>;"
    new-instance v0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver$1;

    invoke-direct {v0, p0}, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver$1;-><init>(Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;)V

    return-object v0
.end method

.method public onCompleted()V
    .registers 2

    .prologue
    .line 74
    .local p0, "this":Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;, "Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0}, Lrx/internal/operators/NotificationLite;->completed()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;->value:Ljava/lang/Object;

    .line 75
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 79
    .local p0, "this":Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;, "Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0, p1}, Lrx/internal/operators/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;->value:Ljava/lang/Object;

    .line 80
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
    .line 84
    .local p0, "this":Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;, "Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver<TT;>;"
    .local p1, "args":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;->value:Ljava/lang/Object;

    .line 85
    return-void
.end method
