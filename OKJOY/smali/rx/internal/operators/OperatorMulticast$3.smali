.class Lrx/internal/operators/OperatorMulticast$3;
.super Lrx/Subscriber;
.source "OperatorMulticast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorMulticast;->connect(Lrx/functions/Action1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorMulticast;

.field final synthetic val$s:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorMulticast;Lrx/Subscriber;Lrx/Subscriber;)V
    .registers 4

    .prologue
    .line 116
    .local p0, "this":Lrx/internal/operators/OperatorMulticast$3;, "Lrx/internal/operators/OperatorMulticast.3;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorMulticast$3;->this$0:Lrx/internal/operators/OperatorMulticast;

    iput-object p3, p0, Lrx/internal/operators/OperatorMulticast$3;->val$s:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 127
    .local p0, "this":Lrx/internal/operators/OperatorMulticast$3;, "Lrx/internal/operators/OperatorMulticast.3;"
    iget-object v0, p0, Lrx/internal/operators/OperatorMulticast$3;->val$s:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 128
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 123
    .local p0, "this":Lrx/internal/operators/OperatorMulticast$3;, "Lrx/internal/operators/OperatorMulticast.3;"
    iget-object v0, p0, Lrx/internal/operators/OperatorMulticast$3;->val$s:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 124
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "this":Lrx/internal/operators/OperatorMulticast$3;, "Lrx/internal/operators/OperatorMulticast.3;"
    .local p1, "t":Ljava/lang/Object;, "TR;"
    iget-object v0, p0, Lrx/internal/operators/OperatorMulticast$3;->val$s:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 120
    return-void
.end method
