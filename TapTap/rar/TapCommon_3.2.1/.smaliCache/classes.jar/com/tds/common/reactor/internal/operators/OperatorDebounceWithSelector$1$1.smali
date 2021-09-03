.class Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector$1$1;
.super Lcom/tds/common/reactor/Subscriber;
.source "OperatorDebounceWithSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector$1;->onNext(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tds/common/reactor/Subscriber<",
        "TU;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector$1;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector$1;I)V
    .registers 3
    .param p1, "this$1"    # Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector$1;

    .line 47
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector$1$1;, "Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector$1$1;"
    iput-object p1, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector$1$1;->this$1:Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector$1;

    iput p2, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector$1$1;->val$index:I

    invoke-direct {p0}, Lcom/tds/common/reactor/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 5

    .line 61
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector$1$1;, "Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector$1$1;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector$1$1;->this$1:Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector$1;

    iget-object v0, v0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector$1;->state:Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$DebounceState;

    iget v1, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector$1$1;->val$index:I

    iget-object v2, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector$1$1;->this$1:Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector$1;

    iget-object v2, v2, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector$1;->val$s:Lcom/tds/common/reactor/observers/SerializedSubscriber;

    iget-object v3, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector$1$1;->this$1:Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector$1;

    iget-object v3, v3, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector$1;->self:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {v0, v1, v2, v3}, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$DebounceState;->emit(ILcom/tds/common/reactor/Subscriber;Lcom/tds/common/reactor/Subscriber;)V

    .line 62
    invoke-virtual {p0}, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector$1$1;->unsubscribe()V

    .line 63
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 56
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector$1$1;, "Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector$1$1;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector$1$1;->this$1:Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector$1;

    iget-object v0, v0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector$1;->self:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {v0, p1}, Lcom/tds/common/reactor/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 57
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 51
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector$1$1;, "Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector$1$1;"
    .local p1, "t":Ljava/lang/Object;, "TU;"
    invoke-virtual {p0}, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector$1$1;->onCompleted()V

    .line 52
    return-void
.end method
