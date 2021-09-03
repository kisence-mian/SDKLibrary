.class Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber$1;
.super Ljava/lang/Object;
.source "OperatorObserveOn.java"

# interfaces
.implements Lcom/tds/common/reactor/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;


# direct methods
.method constructor <init>(Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;)V
    .registers 2
    .param p1, "this$0"    # Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;

    .line 120
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber$1;, "Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber$1;"
    iput-object p1, p0, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber$1;->this$0:Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .registers 5
    .param p1, "n"    # J

    .line 124
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber$1;, "Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber$1;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_12

    .line 125
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber$1;->this$0:Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;

    iget-object v0, v0, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lcom/tds/common/reactor/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 126
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber$1;->this$0:Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;

    invoke-virtual {v0}, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->schedule()V

    .line 128
    :cond_12
    return-void
.end method
