.class public Lcom/tds/common/reactor/transformer/FlowEnqueueOnSubscribe;
.super Ljava/lang/Object;
.source "FlowEnqueueOnSubscribe.java"

# interfaces
.implements Lcom/tds/common/reactor/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/tds/common/reactor/Observable$OnSubscribe<",
        "Lcom/tds/common/reactor/transformer/FlowArbiter$FlowResult<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final flowCall:Lcom/tds/common/reactor/transformer/FlowCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/transformer/FlowCall<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tds/common/reactor/transformer/FlowCall;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/transformer/FlowCall<",
            "TT;>;)V"
        }
    .end annotation

    .line 11
    .local p0, "this":Lcom/tds/common/reactor/transformer/FlowEnqueueOnSubscribe;, "Lcom/tds/common/reactor/transformer/FlowEnqueueOnSubscribe<TT;>;"
    .local p1, "flowCall":Lcom/tds/common/reactor/transformer/FlowCall;, "Lcom/tds/common/reactor/transformer/FlowCall<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/tds/common/reactor/transformer/FlowEnqueueOnSubscribe;->flowCall:Lcom/tds/common/reactor/transformer/FlowCall;

    .line 13
    return-void
.end method


# virtual methods
.method public call(Lcom/tds/common/reactor/Subscriber;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Subscriber<",
            "-",
            "Lcom/tds/common/reactor/transformer/FlowArbiter$FlowResult<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 17
    .local p0, "this":Lcom/tds/common/reactor/transformer/FlowEnqueueOnSubscribe;, "Lcom/tds/common/reactor/transformer/FlowEnqueueOnSubscribe<TT;>;"
    .local p1, "subscriber":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-Lcom/tds/common/reactor/transformer/FlowArbiter$FlowResult<TT;>;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/transformer/FlowEnqueueOnSubscribe;->flowCall:Lcom/tds/common/reactor/transformer/FlowCall;

    invoke-interface {v0}, Lcom/tds/common/reactor/transformer/FlowCall;->clone()Lcom/tds/common/reactor/transformer/FlowCall;

    move-result-object v0

    .line 18
    .local v0, "call":Lcom/tds/common/reactor/transformer/FlowCall;, "Lcom/tds/common/reactor/transformer/FlowCall<TT;>;"
    new-instance v1, Lcom/tds/common/reactor/transformer/FlowArbiter;

    invoke-direct {v1, v0, p1}, Lcom/tds/common/reactor/transformer/FlowArbiter;-><init>(Lcom/tds/common/reactor/transformer/FlowCall;Lcom/tds/common/reactor/Subscriber;)V

    .line 19
    .local v1, "arbiter":Lcom/tds/common/reactor/transformer/FlowArbiter;, "Lcom/tds/common/reactor/transformer/FlowArbiter<TT;>;"
    invoke-virtual {p1, v1}, Lcom/tds/common/reactor/Subscriber;->setProducer(Lcom/tds/common/reactor/Producer;)V

    .line 21
    new-instance v2, Lcom/tds/common/reactor/transformer/FlowEnqueueOnSubscribe$1;

    invoke-direct {v2, p0, v1}, Lcom/tds/common/reactor/transformer/FlowEnqueueOnSubscribe$1;-><init>(Lcom/tds/common/reactor/transformer/FlowEnqueueOnSubscribe;Lcom/tds/common/reactor/transformer/FlowArbiter;)V

    invoke-interface {v0, v2}, Lcom/tds/common/reactor/transformer/FlowCall;->enqueue(Lcom/tds/common/reactor/transformer/FlowCallback;)V

    .line 32
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2

    .line 7
    .local p0, "this":Lcom/tds/common/reactor/transformer/FlowEnqueueOnSubscribe;, "Lcom/tds/common/reactor/transformer/FlowEnqueueOnSubscribe<TT;>;"
    check-cast p1, Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {p0, p1}, Lcom/tds/common/reactor/transformer/FlowEnqueueOnSubscribe;->call(Lcom/tds/common/reactor/Subscriber;)V

    return-void
.end method
