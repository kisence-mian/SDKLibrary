.class public final Lrx/internal/operators/OnSubscribeFromAsync;
.super Ljava/lang/Object;
.source "OnSubscribeFromAsync.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeFromAsync$1;,
        Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;,
        Lrx/internal/operators/OnSubscribeFromAsync$BufferAsyncEmitter;,
        Lrx/internal/operators/OnSubscribeFromAsync$ErrorAsyncEmitter;,
        Lrx/internal/operators/OnSubscribeFromAsync$DropAsyncEmitter;,
        Lrx/internal/operators/OnSubscribeFromAsync$NoOverflowBaseAsyncEmitter;,
        Lrx/internal/operators/OnSubscribeFromAsync$NoneAsyncEmitter;,
        Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;,
        Lrx/internal/operators/OnSubscribeFromAsync$CancellableSubscription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final asyncEmitter:Lrx/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action1",
            "<",
            "Lrx/AsyncEmitter",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final backpressure:Lrx/AsyncEmitter$BackpressureMode;


# direct methods
.method public constructor <init>(Lrx/functions/Action1;Lrx/AsyncEmitter$BackpressureMode;)V
    .registers 3
    .param p2, "backpressure"    # Lrx/AsyncEmitter$BackpressureMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<",
            "Lrx/AsyncEmitter",
            "<TT;>;>;",
            "Lrx/AsyncEmitter$BackpressureMode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromAsync;, "Lrx/internal/operators/OnSubscribeFromAsync<TT;>;"
    .local p1, "asyncEmitter":Lrx/functions/Action1;, "Lrx/functions/Action1<Lrx/AsyncEmitter<TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeFromAsync;->asyncEmitter:Lrx/functions/Action1;

    .line 39
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeFromAsync;->backpressure:Lrx/AsyncEmitter$BackpressureMode;

    .line 40
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 31
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromAsync;, "Lrx/internal/operators/OnSubscribeFromAsync<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeFromAsync;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromAsync;, "Lrx/internal/operators/OnSubscribeFromAsync<TT;>;"
    .local p1, "t":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    sget-object v1, Lrx/internal/operators/OnSubscribeFromAsync$1;->$SwitchMap$rx$AsyncEmitter$BackpressureMode:[I

    iget-object v2, p0, Lrx/internal/operators/OnSubscribeFromAsync;->backpressure:Lrx/AsyncEmitter$BackpressureMode;

    invoke-virtual {v2}, Lrx/AsyncEmitter$BackpressureMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_38

    .line 64
    new-instance v0, Lrx/internal/operators/OnSubscribeFromAsync$BufferAsyncEmitter;

    sget v1, Lrx/internal/util/RxRingBuffer;->SIZE:I

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/OnSubscribeFromAsync$BufferAsyncEmitter;-><init>(Lrx/Subscriber;I)V

    .line 69
    .local v0, "emitter":Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter<TT;>;"
    :goto_14
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 70
    invoke-virtual {p1, v0}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 71
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeFromAsync;->asyncEmitter:Lrx/functions/Action1;

    invoke-interface {v1, v0}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 73
    return-void

    .line 48
    .end local v0    # "emitter":Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter<TT;>;"
    :pswitch_20
    new-instance v0, Lrx/internal/operators/OnSubscribeFromAsync$NoneAsyncEmitter;

    invoke-direct {v0, p1}, Lrx/internal/operators/OnSubscribeFromAsync$NoneAsyncEmitter;-><init>(Lrx/Subscriber;)V

    .line 49
    .restart local v0    # "emitter":Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter<TT;>;"
    goto :goto_14

    .line 52
    .end local v0    # "emitter":Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter<TT;>;"
    :pswitch_26
    new-instance v0, Lrx/internal/operators/OnSubscribeFromAsync$ErrorAsyncEmitter;

    invoke-direct {v0, p1}, Lrx/internal/operators/OnSubscribeFromAsync$ErrorAsyncEmitter;-><init>(Lrx/Subscriber;)V

    .line 53
    .restart local v0    # "emitter":Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter<TT;>;"
    goto :goto_14

    .line 56
    .end local v0    # "emitter":Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter<TT;>;"
    :pswitch_2c
    new-instance v0, Lrx/internal/operators/OnSubscribeFromAsync$DropAsyncEmitter;

    invoke-direct {v0, p1}, Lrx/internal/operators/OnSubscribeFromAsync$DropAsyncEmitter;-><init>(Lrx/Subscriber;)V

    .line 57
    .restart local v0    # "emitter":Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter<TT;>;"
    goto :goto_14

    .line 60
    .end local v0    # "emitter":Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter<TT;>;"
    :pswitch_32
    new-instance v0, Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;

    invoke-direct {v0, p1}, Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;-><init>(Lrx/Subscriber;)V

    .line 61
    .restart local v0    # "emitter":Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter<TT;>;"
    goto :goto_14

    .line 46
    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_20
        :pswitch_26
        :pswitch_2c
        :pswitch_32
    .end packed-switch
.end method
