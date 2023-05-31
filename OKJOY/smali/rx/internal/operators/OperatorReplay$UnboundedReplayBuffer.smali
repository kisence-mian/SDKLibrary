.class final Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;
.super Ljava/util/ArrayList;
.source "OperatorReplay.java"

# interfaces
.implements Lrx/internal/operators/OperatorReplay$ReplayBuffer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UnboundedReplayBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lrx/internal/operators/OperatorReplay$ReplayBuffer",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x62057d556fa2a2d8L


# instance fields
.field final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field volatile size:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "capacityHint"    # I

    .prologue
    .line 848
    .local p0, "this":Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer<TT;>;"
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 849
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    .line 850
    return-void
.end method


# virtual methods
.method public complete()V
    .registers 2

    .prologue
    .line 865
    .local p0, "this":Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0}, Lrx/internal/operators/NotificationLite;->completed()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->add(Ljava/lang/Object;)Z

    .line 866
    iget v0, p0, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->size:I

    .line 867
    return-void
.end method

.method public error(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 859
    .local p0, "this":Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0, p1}, Lrx/internal/operators/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->add(Ljava/lang/Object;)Z

    .line 860
    iget v0, p0, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->size:I

    .line 861
    return-void
.end method

.method public next(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 853
    .local p0, "this":Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->add(Ljava/lang/Object;)Z

    .line 854
    iget v0, p0, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->size:I

    .line 855
    return-void
.end method

.method public replay(Lrx/internal/operators/OperatorReplay$InnerProducer;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorReplay$InnerProducer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer<TT;>;"
    .local p1, "output":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    const/4 v10, 0x0

    .line 871
    monitor-enter p1

    .line 872
    :try_start_2
    iget-boolean v11, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->emitting:Z

    if-eqz v11, :cond_b

    .line 873
    const/4 v10, 0x1

    iput-boolean v10, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->missed:Z

    .line 874
    monitor-exit p1

    .line 925
    :cond_a
    :goto_a
    return-void

    .line 876
    :cond_b
    const/4 v11, 0x1

    iput-boolean v11, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->emitting:Z

    .line 877
    monitor-exit p1
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_4b

    .line 879
    :goto_f
    invoke-virtual {p1}, Lrx/internal/operators/OperatorReplay$InnerProducer;->isUnsubscribed()Z

    move-result v11

    if-nez v11, :cond_a

    .line 882
    iget v7, p0, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->size:I

    .line 884
    .local v7, "sourceIndex":I
    invoke-virtual {p1}, Lrx/internal/operators/OperatorReplay$InnerProducer;->index()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 885
    .local v2, "destIndexObject":Ljava/lang/Integer;
    if-eqz v2, :cond_4e

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 887
    .local v1, "destIndex":I
    :goto_23
    iget-object v0, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->child:Lrx/Subscriber;

    .line 888
    .local v0, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    if-eqz v0, :cond_a

    .line 892
    invoke-virtual {p1}, Lrx/internal/operators/OperatorReplay$InnerProducer;->get()J

    move-result-wide v8

    .line 893
    .local v8, "r":J
    const-wide/16 v4, 0x0

    .line 895
    .local v4, "e":J
    :goto_2d
    cmp-long v11, v4, v8

    if-eqz v11, :cond_75

    if-ge v1, v7, :cond_75

    .line 896
    invoke-virtual {p0, v1}, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 898
    .local v6, "o":Ljava/lang/Object;
    :try_start_37
    iget-object v11, p0, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v11, v0, v6}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_3c} :catch_50

    move-result v11

    if-nez v11, :cond_a

    .line 909
    invoke-virtual {p1}, Lrx/internal/operators/OperatorReplay$InnerProducer;->isUnsubscribed()Z

    move-result v11

    if-nez v11, :cond_a

    .line 912
    add-int/lit8 v1, v1, 0x1

    .line 913
    const-wide/16 v12, 0x1

    add-long/2addr v4, v12

    .line 914
    goto :goto_2d

    .line 877
    .end local v0    # "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .end local v1    # "destIndex":I
    .end local v2    # "destIndexObject":Ljava/lang/Integer;
    .end local v4    # "e":J
    .end local v6    # "o":Ljava/lang/Object;
    .end local v7    # "sourceIndex":I
    .end local v8    # "r":J
    :catchall_4b
    move-exception v10

    :try_start_4c
    monitor-exit p1
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v10

    .restart local v2    # "destIndexObject":Ljava/lang/Integer;
    .restart local v7    # "sourceIndex":I
    :cond_4e
    move v1, v10

    .line 885
    goto :goto_23

    .line 901
    .restart local v0    # "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .restart local v1    # "destIndex":I
    .restart local v4    # "e":J
    .restart local v6    # "o":Ljava/lang/Object;
    .restart local v8    # "r":J
    :catch_50
    move-exception v3

    .line 902
    .local v3, "err":Ljava/lang/Throwable;
    invoke-static {v3}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 903
    invoke-virtual {p1}, Lrx/internal/operators/OperatorReplay$InnerProducer;->unsubscribe()V

    .line 904
    iget-object v10, p0, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v10, v6}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    iget-object v10, p0, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v10, v6}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 905
    iget-object v10, p0, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v10, v6}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v3, v10}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v10

    invoke-virtual {v0, v10}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_a

    .line 915
    .end local v3    # "err":Ljava/lang/Throwable;
    .end local v6    # "o":Ljava/lang/Object;
    :cond_75
    const-wide/16 v12, 0x0

    cmp-long v11, v4, v12

    if-eqz v11, :cond_8d

    .line 916
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iput-object v11, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->index:Ljava/lang/Object;

    .line 917
    const-wide v12, 0x7fffffffffffffffL

    cmp-long v11, v8, v12

    if-eqz v11, :cond_8d

    .line 918
    invoke-virtual {p1, v4, v5}, Lrx/internal/operators/OperatorReplay$InnerProducer;->produced(J)J

    .line 922
    :cond_8d
    monitor-enter p1

    .line 923
    :try_start_8e
    iget-boolean v11, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->missed:Z

    if-nez v11, :cond_9b

    .line 924
    const/4 v10, 0x0

    iput-boolean v10, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->emitting:Z

    .line 925
    monitor-exit p1

    goto/16 :goto_a

    .line 928
    :catchall_98
    move-exception v10

    monitor-exit p1
    :try_end_9a
    .catchall {:try_start_8e .. :try_end_9a} :catchall_98

    throw v10

    .line 927
    :cond_9b
    const/4 v11, 0x0

    :try_start_9c
    iput-boolean v11, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->missed:Z

    .line 928
    monitor-exit p1
    :try_end_9f
    .catchall {:try_start_9c .. :try_end_9f} :catchall_98

    goto/16 :goto_f
.end method
