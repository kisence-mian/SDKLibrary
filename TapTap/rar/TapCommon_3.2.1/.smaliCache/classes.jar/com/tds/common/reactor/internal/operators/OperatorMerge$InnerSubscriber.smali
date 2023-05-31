.class final Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;
.super Lcom/tds/common/reactor/Subscriber;
.source "OperatorMerge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/reactor/internal/operators/OperatorMerge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InnerSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/tds/common/reactor/Subscriber<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final LIMIT:I


# instance fields
.field volatile done:Z

.field final id:J

.field outstanding:I

.field final parent:Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber<",
            "TT;>;"
        }
    .end annotation
.end field

.field volatile queue:Lcom/tds/common/reactor/internal/util/RxRingBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 843
    sget v0, Lcom/tds/common/reactor/internal/util/RxRingBuffer;->SIZE:I

    div-int/lit8 v0, v0, 0x4

    sput v0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;->LIMIT:I

    return-void
.end method

.method public constructor <init>(Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;J)V
    .registers 4
    .param p2, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber<",
            "TT;>;J)V"
        }
    .end annotation

    .line 845
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    .local p1, "parent":Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    invoke-direct {p0}, Lcom/tds/common/reactor/Subscriber;-><init>()V

    .line 846
    iput-object p1, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;->parent:Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;

    .line 847
    iput-wide p2, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;->id:J

    .line 848
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .line 873
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;->done:Z

    .line 874
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;->parent:Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;

    invoke-virtual {v0}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->emit()V

    .line 875
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 866
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;->parent:Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;

    invoke-virtual {v0}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->getOrCreateErrorQueue()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 867
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;->done:Z

    .line 868
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;->parent:Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;

    invoke-virtual {v0}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->emit()V

    .line 869
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 858
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;->parent:Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;

    invoke-virtual {v0, p0, p1}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->tryEmit(Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;Ljava/lang/Object;)V

    .line 859
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 852
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    sget v0, Lcom/tds/common/reactor/internal/util/RxRingBuffer;->SIZE:I

    iput v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;->outstanding:I

    .line 853
    sget v0, Lcom/tds/common/reactor/internal/util/RxRingBuffer;->SIZE:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;->request(J)V

    .line 854
    return-void
.end method

.method public requestMore(J)V
    .registers 7
    .param p1, "n"    # J

    .line 878
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    iget v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;->outstanding:I

    long-to-int v1, p1

    sub-int/2addr v0, v1

    .line 879
    .local v0, "r":I
    sget v1, Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;->LIMIT:I

    if-le v0, v1, :cond_b

    .line 880
    iput v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;->outstanding:I

    .line 881
    return-void

    .line 883
    :cond_b
    sget v1, Lcom/tds/common/reactor/internal/util/RxRingBuffer;->SIZE:I

    iput v1, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;->outstanding:I

    .line 884
    sget v1, Lcom/tds/common/reactor/internal/util/RxRingBuffer;->SIZE:I

    sub-int/2addr v1, v0

    .line 885
    .local v1, "k":I
    if-lez v1, :cond_18

    .line 886
    int-to-long v2, v1

    invoke-virtual {p0, v2, v3}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;->request(J)V

    .line 888
    :cond_18
    return-void
.end method
