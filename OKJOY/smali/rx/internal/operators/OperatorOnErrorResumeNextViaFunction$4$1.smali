.class Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4$1;
.super Lrx/Subscriber;
.source "OperatorOnErrorResumeNextViaFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->onError(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;)V
    .registers 2

    .prologue
    .line 115
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4$1;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4$1;->this$1:Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 126
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4$1;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4$1;->this$1:Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;

    iget-object v0, v0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->val$child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 127
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 122
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4$1;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4$1;->this$1:Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;

    iget-object v0, v0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 123
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
    .line 118
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4$1;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4$1;->this$1:Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;

    iget-object v0, v0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 119
    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .registers 3
    .param p1, "producer"    # Lrx/Producer;

    .prologue
    .line 130
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4$1;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4$1;->this$1:Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;

    iget-object v0, v0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->val$pa:Lrx/internal/producers/ProducerArbiter;

    invoke-virtual {v0, p1}, Lrx/internal/producers/ProducerArbiter;->setProducer(Lrx/Producer;)V

    .line 131
    return-void
.end method
