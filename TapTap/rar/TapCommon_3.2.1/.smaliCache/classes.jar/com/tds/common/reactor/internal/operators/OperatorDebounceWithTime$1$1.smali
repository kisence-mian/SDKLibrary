.class Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$1$1;
.super Ljava/lang/Object;
.source "OperatorDebounceWithTime.java"

# interfaces
.implements Lcom/tds/common/reactor/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$1;->onNext(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$1;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$1;I)V
    .registers 3
    .param p1, "this$1"    # Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$1;

    .line 54
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$1$1;, "Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$1$1;"
    iput-object p1, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$1$1;->this$1:Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$1;

    iput p2, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$1$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 5

    .line 57
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$1$1;, "Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$1$1;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$1$1;->this$1:Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$1;

    iget-object v0, v0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$1;->state:Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$DebounceState;

    iget v1, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$1$1;->val$index:I

    iget-object v2, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$1$1;->this$1:Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$1;

    iget-object v2, v2, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$1;->val$s:Lcom/tds/common/reactor/observers/SerializedSubscriber;

    iget-object v3, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$1$1;->this$1:Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$1;

    iget-object v3, v3, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$1;->self:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {v0, v1, v2, v3}, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$DebounceState;->emit(ILcom/tds/common/reactor/Subscriber;Lcom/tds/common/reactor/Subscriber;)V

    .line 58
    return-void
.end method
