.class final Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;
.super Ljava/lang/Object;
.source "ReplaySubject.java"

# interfaces
.implements Lrx/subjects/ReplaySubject$ReplayBuffer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/subjects/ReplaySubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReplaySizeBoundBuffer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/subjects/ReplaySubject$ReplayBuffer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field volatile done:Z

.field error:Ljava/lang/Throwable;

.field volatile head:Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node",
            "<TT;>;"
        }
    .end annotation
.end field

.field final limit:I

.field size:I

.field tail:Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .param p1, "limit"    # I

    .prologue
    .line 766
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;, "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 767
    iput p1, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->limit:I

    .line 768
    new-instance v0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;-><init>(Ljava/lang/Object;)V

    .line 769
    .local v0, "n":Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;, "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node<TT;>;"
    iput-object v0, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->tail:Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    .line 770
    iput-object v0, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->head:Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    .line 771
    return-void
.end method


# virtual methods
.method public complete()V
    .registers 2

    .prologue
    .line 794
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;, "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->done:Z

    .line 795
    return-void
.end method

.method public drain(Lrx/subjects/ReplaySubject$ReplayProducer;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/ReplaySubject$ReplayProducer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 799
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;, "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer<TT;>;"
    .local p1, "rp":Lrx/subjects/ReplaySubject$ReplayProducer;, "Lrx/subjects/ReplaySubject$ReplayProducer<TT;>;"
    invoke-virtual {p1}, Lrx/subjects/ReplaySubject$ReplayProducer;->getAndIncrement()I

    move-result v9

    if-eqz v9, :cond_7

    .line 880
    :goto_6
    return-void

    .line 803
    :cond_7
    iget-object v0, p1, Lrx/subjects/ReplaySubject$ReplayProducer;->actual:Lrx/Subscriber;

    .line 805
    .local v0, "a":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    const/4 v6, 0x1

    .line 809
    .local v6, "missed":I
    :cond_a
    iget-object v9, p1, Lrx/subjects/ReplaySubject$ReplayProducer;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v10

    .line 810
    .local v10, "r":J
    const-wide/16 v2, 0x0

    .line 813
    .local v2, "e":J
    iget-object v8, p1, Lrx/subjects/ReplaySubject$ReplayProducer;->node:Ljava/lang/Object;

    check-cast v8, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    .line 814
    .local v8, "node":Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;, "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node<TT;>;"
    if-nez v8, :cond_1a

    .line 815
    iget-object v8, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->head:Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    .line 818
    :cond_1a
    :goto_1a
    cmp-long v9, v2, v10

    if-eqz v9, :cond_4a

    .line 819
    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v9

    if-eqz v9, :cond_28

    .line 820
    const/4 v9, 0x0

    iput-object v9, p1, Lrx/subjects/ReplaySubject$ReplayProducer;->node:Ljava/lang/Object;

    goto :goto_6

    .line 824
    :cond_28
    iget-boolean v1, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->done:Z

    .line 825
    .local v1, "d":Z
    invoke-virtual {v8}, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    .line 826
    .local v7, "next":Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;, "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node<TT;>;"
    if-nez v7, :cond_42

    const/4 v4, 0x1

    .line 828
    .local v4, "empty":Z
    :goto_33
    if-eqz v1, :cond_48

    if-eqz v4, :cond_48

    .line 829
    const/4 v9, 0x0

    iput-object v9, p1, Lrx/subjects/ReplaySubject$ReplayProducer;->node:Ljava/lang/Object;

    .line 830
    iget-object v5, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->error:Ljava/lang/Throwable;

    .line 831
    .local v5, "ex":Ljava/lang/Throwable;
    if-eqz v5, :cond_44

    .line 832
    invoke-virtual {v0, v5}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 826
    .end local v4    # "empty":Z
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_42
    const/4 v4, 0x0

    goto :goto_33

    .line 834
    .restart local v4    # "empty":Z
    .restart local v5    # "ex":Ljava/lang/Throwable;
    :cond_44
    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    goto :goto_6

    .line 839
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_48
    if-eqz v4, :cond_58

    .line 849
    .end local v1    # "d":Z
    .end local v4    # "empty":Z
    .end local v7    # "next":Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;, "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node<TT;>;"
    :cond_4a
    cmp-long v9, v2, v10

    if-nez v9, :cond_80

    .line 850
    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v9

    if-eqz v9, :cond_62

    .line 851
    const/4 v9, 0x0

    iput-object v9, p1, Lrx/subjects/ReplaySubject$ReplayProducer;->node:Ljava/lang/Object;

    goto :goto_6

    .line 843
    .restart local v1    # "d":Z
    .restart local v4    # "empty":Z
    .restart local v7    # "next":Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;, "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node<TT;>;"
    :cond_58
    iget-object v9, v7, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;->value:Ljava/lang/Object;

    invoke-virtual {v0, v9}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 845
    const-wide/16 v12, 0x1

    add-long/2addr v2, v12

    .line 846
    move-object v8, v7

    .line 847
    goto :goto_1a

    .line 855
    .end local v1    # "d":Z
    .end local v4    # "empty":Z
    .end local v7    # "next":Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;, "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node<TT;>;"
    :cond_62
    iget-boolean v1, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->done:Z

    .line 856
    .restart local v1    # "d":Z
    invoke-virtual {v8}, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;->get()Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_7a

    const/4 v4, 0x1

    .line 858
    .restart local v4    # "empty":Z
    :goto_6b
    if-eqz v1, :cond_80

    if-eqz v4, :cond_80

    .line 859
    const/4 v9, 0x0

    iput-object v9, p1, Lrx/subjects/ReplaySubject$ReplayProducer;->node:Ljava/lang/Object;

    .line 860
    iget-object v5, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->error:Ljava/lang/Throwable;

    .line 861
    .restart local v5    # "ex":Ljava/lang/Throwable;
    if-eqz v5, :cond_7c

    .line 862
    invoke-virtual {v0, v5}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 856
    .end local v4    # "empty":Z
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_7a
    const/4 v4, 0x0

    goto :goto_6b

    .line 864
    .restart local v4    # "empty":Z
    .restart local v5    # "ex":Ljava/lang/Throwable;
    :cond_7c
    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    goto :goto_6

    .line 870
    .end local v1    # "d":Z
    .end local v4    # "empty":Z
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_80
    const-wide/16 v12, 0x0

    cmp-long v9, v2, v12

    if-eqz v9, :cond_94

    .line 871
    const-wide v12, 0x7fffffffffffffffL

    cmp-long v9, v10, v12

    if-eqz v9, :cond_94

    .line 872
    iget-object v9, p1, Lrx/subjects/ReplaySubject$ReplayProducer;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v9, v2, v3}, Lrx/internal/operators/BackpressureUtils;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 876
    :cond_94
    iput-object v8, p1, Lrx/subjects/ReplaySubject$ReplayProducer;->node:Ljava/lang/Object;

    .line 878
    neg-int v9, v6

    invoke-virtual {p1, v9}, Lrx/subjects/ReplaySubject$ReplayProducer;->addAndGet(I)I

    move-result v6

    .line 879
    if-nez v6, :cond_a

    goto/16 :goto_6
.end method

.method public error()Ljava/lang/Throwable;
    .registers 2

    .prologue
    .line 903
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;, "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer<TT;>;"
    iget-object v0, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->error:Ljava/lang/Throwable;

    return-object v0
.end method

.method public error(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 788
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;, "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer<TT;>;"
    iput-object p1, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->error:Ljava/lang/Throwable;

    .line 789
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->done:Z

    .line 790
    return-void
.end method

.method public isComplete()Z
    .registers 2

    .prologue
    .line 898
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;, "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer<TT;>;"
    iget-boolean v0, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->done:Z

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 929
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;, "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer<TT;>;"
    iget-object v0, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->head:Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    invoke-virtual {v0}, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public last()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 908
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;, "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer<TT;>;"
    iget-object v0, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->head:Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    .line 910
    .local v0, "h":Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;, "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node<TT;>;"
    :goto_2
    invoke-virtual {v0}, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    .local v1, "n":Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;, "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node<TT;>;"
    if-eqz v1, :cond_c

    .line 911
    move-object v0, v1

    goto :goto_2

    .line 913
    :cond_c
    iget-object v2, v0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;->value:Ljava/lang/Object;

    return-object v2
.end method

.method public next(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 775
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;, "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    invoke-direct {v0, p1}, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;-><init>(Ljava/lang/Object;)V

    .line 776
    .local v0, "n":Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;, "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node<TT;>;"
    iget-object v2, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->tail:Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    invoke-virtual {v2, v0}, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;->set(Ljava/lang/Object;)V

    .line 777
    iput-object v0, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->tail:Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    .line 778
    iget v1, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->size:I

    .line 779
    .local v1, "s":I
    iget v2, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->limit:I

    if-ne v1, v2, :cond_1d

    .line 780
    iget-object v2, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->head:Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    invoke-virtual {v2}, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    iput-object v2, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->head:Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    .line 784
    :goto_1c
    return-void

    .line 782
    :cond_1d
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->size:I

    goto :goto_1c
.end method

.method public size()I
    .registers 4

    .prologue
    .line 918
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;, "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer<TT;>;"
    const/4 v1, 0x0

    .line 919
    .local v1, "s":I
    iget-object v2, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->head:Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    invoke-virtual {v2}, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    .line 920
    .local v0, "n":Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;, "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node<TT;>;"
    :goto_9
    if-eqz v0, :cond_19

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_19

    .line 921
    invoke-virtual {v0}, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "n":Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;, "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node<TT;>;"
    check-cast v0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    .line 922
    .restart local v0    # "n":Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;, "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node<TT;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 924
    :cond_19
    return v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 934
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;, "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer<TT;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 936
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v2, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->head:Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    invoke-virtual {v2}, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    .line 937
    .local v1, "n":Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;, "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node<TT;>;"
    :goto_d
    if-eqz v1, :cond_1b

    .line 938
    iget-object v2, v1, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;->value:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 939
    invoke-virtual {v1}, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "n":Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;, "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node<TT;>;"
    check-cast v1, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    .restart local v1    # "n":Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;, "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node<TT;>;"
    goto :goto_d

    .line 941
    :cond_1b
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method
