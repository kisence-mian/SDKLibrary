.class Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$4$1;
.super Lcom/tds/common/reactor/Subscriber;
.source "OperatorOnErrorResumeNextViaFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->onError(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tds/common/reactor/Subscriber<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$4;


# direct methods
.method constructor <init>(Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$4;)V
    .registers 2
    .param p1, "this$1"    # Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$4;

    .line 117
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$4$1;, "Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$4$1;"
    iput-object p1, p0, Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$4$1;->this$1:Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$4;

    invoke-direct {p0}, Lcom/tds/common/reactor/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .line 128
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$4$1;, "Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$4$1;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$4$1;->this$1:Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$4;

    iget-object v0, v0, Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->val$child:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {v0}, Lcom/tds/common/reactor/Subscriber;->onCompleted()V

    .line 129
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 124
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$4$1;, "Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$4$1;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$4$1;->this$1:Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$4;

    iget-object v0, v0, Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->val$child:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {v0, p1}, Lcom/tds/common/reactor/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 125
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 120
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$4$1;, "Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$4$1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$4$1;->this$1:Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$4;

    iget-object v0, v0, Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->val$child:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {v0, p1}, Lcom/tds/common/reactor/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 121
    return-void
.end method

.method public setProducer(Lcom/tds/common/reactor/Producer;)V
    .registers 3
    .param p1, "producer"    # Lcom/tds/common/reactor/Producer;

    .line 132
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$4$1;, "Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$4$1;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$4$1;->this$1:Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$4;

    iget-object v0, v0, Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->val$pa:Lcom/tds/common/reactor/internal/producers/ProducerArbiter;

    invoke-virtual {v0, p1}, Lcom/tds/common/reactor/internal/producers/ProducerArbiter;->setProducer(Lcom/tds/common/reactor/Producer;)V

    .line 133
    return-void
.end method
