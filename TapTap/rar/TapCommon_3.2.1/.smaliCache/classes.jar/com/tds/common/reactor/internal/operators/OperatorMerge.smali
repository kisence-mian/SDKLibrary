.class public final Lcom/tds/common/reactor/internal/operators/OperatorMerge;
.super Ljava/lang/Object;
.source "OperatorMerge.java"

# interfaces
.implements Lcom/tds/common/reactor/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;,
        Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;,
        Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeProducer;,
        Lcom/tds/common/reactor/internal/operators/OperatorMerge$HolderDelayErrors;,
        Lcom/tds/common/reactor/internal/operators/OperatorMerge$HolderNoDelay;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/tds/common/reactor/Observable$Operator<",
        "TT;",
        "Lcom/tds/common/reactor/Observable<",
        "+TT;>;>;"
    }
.end annotation


# instance fields
.field final delayErrors:Z

.field final maxConcurrent:I


# direct methods
.method constructor <init>(ZI)V
    .registers 3
    .param p1, "delayErrors"    # Z
    .param p2, "maxConcurrent"    # I

    .line 110
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorMerge;, "Lcom/tds/common/reactor/internal/operators/OperatorMerge<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-boolean p1, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge;->delayErrors:Z

    .line 112
    iput p2, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge;->maxConcurrent:I

    .line 113
    return-void
.end method

.method public static instance(Z)Lcom/tds/common/reactor/internal/operators/OperatorMerge;
    .registers 2
    .param p0, "delayErrors"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z)",
            "Lcom/tds/common/reactor/internal/operators/OperatorMerge<",
            "TT;>;"
        }
    .end annotation

    .line 86
    if-eqz p0, :cond_5

    .line 87
    sget-object v0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$HolderDelayErrors;->INSTANCE:Lcom/tds/common/reactor/internal/operators/OperatorMerge;

    return-object v0

    .line 89
    :cond_5
    sget-object v0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$HolderNoDelay;->INSTANCE:Lcom/tds/common/reactor/internal/operators/OperatorMerge;

    return-object v0
.end method

.method public static instance(ZI)Lcom/tds/common/reactor/internal/operators/OperatorMerge;
    .registers 5
    .param p0, "delayErrors"    # Z
    .param p1, "maxConcurrent"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ZI)",
            "Lcom/tds/common/reactor/internal/operators/OperatorMerge<",
            "TT;>;"
        }
    .end annotation

    .line 101
    if-lez p1, :cond_12

    .line 104
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_c

    .line 105
    invoke-static {p0}, Lcom/tds/common/reactor/internal/operators/OperatorMerge;->instance(Z)Lcom/tds/common/reactor/internal/operators/OperatorMerge;

    move-result-object v0

    return-object v0

    .line 107
    :cond_c
    new-instance v0, Lcom/tds/common/reactor/internal/operators/OperatorMerge;

    invoke-direct {v0, p0, p1}, Lcom/tds/common/reactor/internal/operators/OperatorMerge;-><init>(ZI)V

    return-object v0

    .line 102
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxConcurrent > 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public call(Lcom/tds/common/reactor/Subscriber;)Lcom/tds/common/reactor/Subscriber;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;)",
            "Lcom/tds/common/reactor/Subscriber<",
            "Lcom/tds/common/reactor/Observable<",
            "+TT;>;>;"
        }
    .end annotation

    .line 117
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorMerge;, "Lcom/tds/common/reactor/internal/operators/OperatorMerge<TT;>;"
    .local p1, "child":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    new-instance v0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;

    iget-boolean v1, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge;->delayErrors:Z

    iget v2, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge;->maxConcurrent:I

    invoke-direct {v0, p1, v1, v2}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;-><init>(Lcom/tds/common/reactor/Subscriber;ZI)V

    .line 118
    .local v0, "subscriber":Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    new-instance v1, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeProducer;

    invoke-direct {v1, v0}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeProducer;-><init>(Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;)V

    .line 119
    .local v1, "producer":Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeProducer;, "Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeProducer<TT;>;"
    iput-object v1, v0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->producer:Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeProducer;

    .line 121
    invoke-virtual {p1, v0}, Lcom/tds/common/reactor/Subscriber;->add(Lcom/tds/common/reactor/Subscription;)V

    .line 122
    invoke-virtual {p1, v1}, Lcom/tds/common/reactor/Subscriber;->setProducer(Lcom/tds/common/reactor/Producer;)V

    .line 124
    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 63
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorMerge;, "Lcom/tds/common/reactor/internal/operators/OperatorMerge<TT;>;"
    check-cast p1, Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {p0, p1}, Lcom/tds/common/reactor/internal/operators/OperatorMerge;->call(Lcom/tds/common/reactor/Subscriber;)Lcom/tds/common/reactor/Subscriber;

    move-result-object p1

    return-object p1
.end method
