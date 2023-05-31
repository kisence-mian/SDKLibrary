.class public final Lcom/tds/common/reactor/internal/operators/OperatorToObservableList;
.super Ljava/lang/Object;
.source "OperatorToObservableList.java"

# interfaces
.implements Lcom/tds/common/reactor/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/reactor/internal/operators/OperatorToObservableList$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/tds/common/reactor/Observable$Operator<",
        "Ljava/util/List<",
        "TT;>;TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 27
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorToObservableList;, "Lcom/tds/common/reactor/internal/operators/OperatorToObservableList<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static instance()Lcom/tds/common/reactor/internal/operators/OperatorToObservableList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/tds/common/reactor/internal/operators/OperatorToObservableList<",
            "TT;>;"
        }
    .end annotation

    .line 25
    sget-object v0, Lcom/tds/common/reactor/internal/operators/OperatorToObservableList$Holder;->INSTANCE:Lcom/tds/common/reactor/internal/operators/OperatorToObservableList;

    return-object v0
.end method


# virtual methods
.method public call(Lcom/tds/common/reactor/Subscriber;)Lcom/tds/common/reactor/Subscriber;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Subscriber<",
            "-",
            "Ljava/util/List<",
            "TT;>;>;)",
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;"
        }
    .end annotation

    .line 33
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorToObservableList;, "Lcom/tds/common/reactor/internal/operators/OperatorToObservableList<TT;>;"
    .local p1, "o":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-Ljava/util/List<TT;>;>;"
    new-instance v0, Lcom/tds/common/reactor/internal/producers/SingleDelayedProducer;

    invoke-direct {v0, p1}, Lcom/tds/common/reactor/internal/producers/SingleDelayedProducer;-><init>(Lcom/tds/common/reactor/Subscriber;)V

    .line 34
    .local v0, "producer":Lcom/tds/common/reactor/internal/producers/SingleDelayedProducer;, "Lcom/tds/common/reactor/internal/producers/SingleDelayedProducer<Ljava/util/List<TT;>;>;"
    new-instance v1, Lcom/tds/common/reactor/internal/operators/OperatorToObservableList$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/tds/common/reactor/internal/operators/OperatorToObservableList$1;-><init>(Lcom/tds/common/reactor/internal/operators/OperatorToObservableList;Lcom/tds/common/reactor/internal/producers/SingleDelayedProducer;Lcom/tds/common/reactor/Subscriber;)V

    .line 88
    .local v1, "result":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<TT;>;"
    invoke-virtual {p1, v1}, Lcom/tds/common/reactor/Subscriber;->add(Lcom/tds/common/reactor/Subscription;)V

    .line 89
    invoke-virtual {p1, v0}, Lcom/tds/common/reactor/Subscriber;->setProducer(Lcom/tds/common/reactor/Producer;)V

    .line 90
    return-object v1
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 13
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorToObservableList;, "Lcom/tds/common/reactor/internal/operators/OperatorToObservableList<TT;>;"
    check-cast p1, Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {p0, p1}, Lcom/tds/common/reactor/internal/operators/OperatorToObservableList;->call(Lcom/tds/common/reactor/Subscriber;)Lcom/tds/common/reactor/Subscriber;

    move-result-object p1

    return-object p1
.end method
