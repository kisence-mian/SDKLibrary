.class public final Lcom/tds/common/reactor/operators/OnSubscribeCreate;
.super Ljava/lang/Object;
.source "OnSubscribeCreate.java"

# interfaces
.implements Lcom/tds/common/reactor/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/reactor/operators/OnSubscribeCreate$LatestEmitter;,
        Lcom/tds/common/reactor/operators/OnSubscribeCreate$BufferEmitter;,
        Lcom/tds/common/reactor/operators/OnSubscribeCreate$ErrorEmitter;,
        Lcom/tds/common/reactor/operators/OnSubscribeCreate$DropEmitter;,
        Lcom/tds/common/reactor/operators/OnSubscribeCreate$NoOverflowBaseEmitter;,
        Lcom/tds/common/reactor/operators/OnSubscribeCreate$NoneEmitter;,
        Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/tds/common/reactor/Observable$OnSubscribe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final Emitter:Lcom/tds/common/reactor/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/functions/Action1<",
            "Lcom/tds/common/reactor/Emitter<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final backpressure:Lcom/tds/common/reactor/Emitter$BackpressureMode;


# direct methods
.method public constructor <init>(Lcom/tds/common/reactor/functions/Action1;Lcom/tds/common/reactor/Emitter$BackpressureMode;)V
    .registers 3
    .param p2, "backpressure"    # Lcom/tds/common/reactor/Emitter$BackpressureMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/functions/Action1<",
            "Lcom/tds/common/reactor/Emitter<",
            "TT;>;>;",
            "Lcom/tds/common/reactor/Emitter$BackpressureMode;",
            ")V"
        }
    .end annotation

    .line 41
    .local p0, "this":Lcom/tds/common/reactor/operators/OnSubscribeCreate;, "Lcom/tds/common/reactor/operators/OnSubscribeCreate<TT;>;"
    .local p1, "Emitter":Lcom/tds/common/reactor/functions/Action1;, "Lcom/tds/common/reactor/functions/Action1<Lcom/tds/common/reactor/Emitter<TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/tds/common/reactor/operators/OnSubscribeCreate;->Emitter:Lcom/tds/common/reactor/functions/Action1;

    .line 43
    iput-object p2, p0, Lcom/tds/common/reactor/operators/OnSubscribeCreate;->backpressure:Lcom/tds/common/reactor/Emitter$BackpressureMode;

    .line 44
    return-void
.end method


# virtual methods
.method public call(Lcom/tds/common/reactor/Subscriber;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 50
    .local p0, "this":Lcom/tds/common/reactor/operators/OnSubscribeCreate;, "Lcom/tds/common/reactor/operators/OnSubscribeCreate<TT;>;"
    .local p1, "t":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    sget-object v0, Lcom/tds/common/reactor/operators/OnSubscribeCreate$1;->$SwitchMap$com$tds$common$reactor$Emitter$BackpressureMode:[I

    iget-object v1, p0, Lcom/tds/common/reactor/operators/OnSubscribeCreate;->backpressure:Lcom/tds/common/reactor/Emitter$BackpressureMode;

    invoke-virtual {v1}, Lcom/tds/common/reactor/Emitter$BackpressureMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3a

    .line 68
    new-instance v0, Lcom/tds/common/reactor/operators/OnSubscribeCreate$BufferEmitter;

    const/16 v1, 0x80

    invoke-direct {v0, p1, v1}, Lcom/tds/common/reactor/operators/OnSubscribeCreate$BufferEmitter;-><init>(Lcom/tds/common/reactor/Subscriber;I)V

    .local v0, "emitter":Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter;, "Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter<TT;>;"
    goto :goto_2d

    .line 64
    .end local v0    # "emitter":Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter;, "Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter<TT;>;"
    :pswitch_15
    new-instance v0, Lcom/tds/common/reactor/operators/OnSubscribeCreate$LatestEmitter;

    invoke-direct {v0, p1}, Lcom/tds/common/reactor/operators/OnSubscribeCreate$LatestEmitter;-><init>(Lcom/tds/common/reactor/Subscriber;)V

    .line 65
    .restart local v0    # "emitter":Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter;, "Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter<TT;>;"
    goto :goto_2d

    .line 60
    .end local v0    # "emitter":Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter;, "Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter<TT;>;"
    :pswitch_1b
    new-instance v0, Lcom/tds/common/reactor/operators/OnSubscribeCreate$DropEmitter;

    invoke-direct {v0, p1}, Lcom/tds/common/reactor/operators/OnSubscribeCreate$DropEmitter;-><init>(Lcom/tds/common/reactor/Subscriber;)V

    .line 61
    .restart local v0    # "emitter":Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter;, "Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter<TT;>;"
    goto :goto_2d

    .line 56
    .end local v0    # "emitter":Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter;, "Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter<TT;>;"
    :pswitch_21
    new-instance v0, Lcom/tds/common/reactor/operators/OnSubscribeCreate$ErrorEmitter;

    invoke-direct {v0, p1}, Lcom/tds/common/reactor/operators/OnSubscribeCreate$ErrorEmitter;-><init>(Lcom/tds/common/reactor/Subscriber;)V

    .line 57
    .restart local v0    # "emitter":Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter;, "Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter<TT;>;"
    goto :goto_2d

    .line 52
    .end local v0    # "emitter":Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter;, "Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter<TT;>;"
    :pswitch_27
    new-instance v0, Lcom/tds/common/reactor/operators/OnSubscribeCreate$NoneEmitter;

    invoke-direct {v0, p1}, Lcom/tds/common/reactor/operators/OnSubscribeCreate$NoneEmitter;-><init>(Lcom/tds/common/reactor/Subscriber;)V

    .line 53
    .restart local v0    # "emitter":Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter;, "Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter<TT;>;"
    nop

    .line 73
    :goto_2d
    invoke-virtual {p1, v0}, Lcom/tds/common/reactor/Subscriber;->add(Lcom/tds/common/reactor/Subscription;)V

    .line 74
    invoke-virtual {p1, v0}, Lcom/tds/common/reactor/Subscriber;->setProducer(Lcom/tds/common/reactor/Producer;)V

    .line 75
    iget-object v1, p0, Lcom/tds/common/reactor/operators/OnSubscribeCreate;->Emitter:Lcom/tds/common/reactor/functions/Action1;

    invoke-interface {v1, v0}, Lcom/tds/common/reactor/functions/Action1;->call(Ljava/lang/Object;)V

    .line 77
    return-void

    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_27
        :pswitch_21
        :pswitch_1b
        :pswitch_15
    .end packed-switch
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2

    .line 35
    .local p0, "this":Lcom/tds/common/reactor/operators/OnSubscribeCreate;, "Lcom/tds/common/reactor/operators/OnSubscribeCreate<TT;>;"
    check-cast p1, Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {p0, p1}, Lcom/tds/common/reactor/operators/OnSubscribeCreate;->call(Lcom/tds/common/reactor/Subscriber;)V

    return-void
.end method
