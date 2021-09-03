.class Lcom/tds/common/reactor/internal/operators/OperatorToObservableList$1;
.super Lcom/tds/common/reactor/Subscriber;
.source "OperatorToObservableList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/common/reactor/internal/operators/OperatorToObservableList;->call(Lcom/tds/common/reactor/Subscriber;)Lcom/tds/common/reactor/Subscriber;
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
.field completed:Z

.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/tds/common/reactor/internal/operators/OperatorToObservableList;

.field final synthetic val$o:Lcom/tds/common/reactor/Subscriber;

.field final synthetic val$producer:Lcom/tds/common/reactor/internal/producers/SingleDelayedProducer;


# direct methods
.method constructor <init>(Lcom/tds/common/reactor/internal/operators/OperatorToObservableList;Lcom/tds/common/reactor/internal/producers/SingleDelayedProducer;Lcom/tds/common/reactor/Subscriber;)V
    .registers 4
    .param p1, "this$0"    # Lcom/tds/common/reactor/internal/operators/OperatorToObservableList;

    .line 34
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorToObservableList$1;, "Lcom/tds/common/reactor/internal/operators/OperatorToObservableList$1;"
    iput-object p1, p0, Lcom/tds/common/reactor/internal/operators/OperatorToObservableList$1;->this$0:Lcom/tds/common/reactor/internal/operators/OperatorToObservableList;

    iput-object p2, p0, Lcom/tds/common/reactor/internal/operators/OperatorToObservableList$1;->val$producer:Lcom/tds/common/reactor/internal/producers/SingleDelayedProducer;

    iput-object p3, p0, Lcom/tds/common/reactor/internal/operators/OperatorToObservableList$1;->val$o:Lcom/tds/common/reactor/Subscriber;

    invoke-direct {p0}, Lcom/tds/common/reactor/Subscriber;-><init>()V

    .line 37
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/tds/common/reactor/internal/operators/OperatorToObservableList$1;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .line 46
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorToObservableList$1;, "Lcom/tds/common/reactor/internal/operators/OperatorToObservableList$1;"
    iget-boolean v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorToObservableList$1;->completed:Z

    if-nez v0, :cond_1d

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorToObservableList$1;->completed:Z

    .line 65
    :try_start_7
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tds/common/reactor/internal/operators/OperatorToObservableList$1;->list:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_18

    .line 69
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    nop

    .line 70
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tds/common/reactor/internal/operators/OperatorToObservableList$1;->list:Ljava/util/List;

    .line 71
    iget-object v1, p0, Lcom/tds/common/reactor/internal/operators/OperatorToObservableList$1;->val$producer:Lcom/tds/common/reactor/internal/producers/SingleDelayedProducer;

    invoke-virtual {v1, v0}, Lcom/tds/common/reactor/internal/producers/SingleDelayedProducer;->setValue(Ljava/lang/Object;)V

    goto :goto_1d

    .line 66
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :catchall_18
    move-exception v0

    .line 67
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0, p0}, Lcom/tds/common/reactor/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lcom/tds/common/reactor/Observer;)V

    .line 68
    return-void

    .line 73
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1d
    :goto_1d
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 77
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorToObservableList$1;, "Lcom/tds/common/reactor/internal/operators/OperatorToObservableList$1;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorToObservableList$1;->val$o:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {v0, p1}, Lcom/tds/common/reactor/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 78
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 82
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorToObservableList$1;, "Lcom/tds/common/reactor/internal/operators/OperatorToObservableList$1;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorToObservableList$1;->completed:Z

    if-nez v0, :cond_9

    .line 83
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorToObservableList$1;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_9
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 41
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorToObservableList$1;, "Lcom/tds/common/reactor/internal/operators/OperatorToObservableList$1;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lcom/tds/common/reactor/internal/operators/OperatorToObservableList$1;->request(J)V

    .line 42
    return-void
.end method
