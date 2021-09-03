.class public Lcom/tds/common/reactor/transformer/FlowArbiter;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "FlowArbiter.java"

# interfaces
.implements Lcom/tds/common/reactor/Producer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/reactor/transformer/FlowArbiter$FlowResult;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lcom/tds/common/reactor/Producer;"
    }
.end annotation


# static fields
.field private static final STATE_HAS_RESPONSE:I = 0x2

.field private static final STATE_REQUESTED:I = 0x1

.field private static final STATE_TERMINATED:I = 0x3

.field private static final STATE_WAITING:I


# instance fields
.field private final call:Lcom/tds/common/reactor/transformer/FlowCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/transformer/FlowCall<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile flowResult:Lcom/tds/common/reactor/transformer/FlowArbiter$FlowResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/transformer/FlowArbiter$FlowResult<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final subscriber:Lcom/tds/common/reactor/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/Subscriber<",
            "-",
            "Lcom/tds/common/reactor/transformer/FlowArbiter$FlowResult<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tds/common/reactor/transformer/FlowCall;Lcom/tds/common/reactor/Subscriber;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/transformer/FlowCall<",
            "TT;>;",
            "Lcom/tds/common/reactor/Subscriber<",
            "-",
            "Lcom/tds/common/reactor/transformer/FlowArbiter$FlowResult<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 33
    .local p0, "this":Lcom/tds/common/reactor/transformer/FlowArbiter;, "Lcom/tds/common/reactor/transformer/FlowArbiter<TT;>;"
    .local p1, "call":Lcom/tds/common/reactor/transformer/FlowCall;, "Lcom/tds/common/reactor/transformer/FlowCall<TT;>;"
    .local p2, "subscriber":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-Lcom/tds/common/reactor/transformer/FlowArbiter$FlowResult<TT;>;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 34
    iput-object p2, p0, Lcom/tds/common/reactor/transformer/FlowArbiter;->subscriber:Lcom/tds/common/reactor/Subscriber;

    .line 35
    iput-object p1, p0, Lcom/tds/common/reactor/transformer/FlowArbiter;->call:Lcom/tds/common/reactor/transformer/FlowCall;

    .line 36
    return-void
.end method

.method private deliverResponse(Lcom/tds/common/reactor/transformer/FlowArbiter$FlowResult;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/transformer/FlowArbiter$FlowResult<",
            "TT;>;)V"
        }
    .end annotation

    .line 69
    .local p0, "this":Lcom/tds/common/reactor/transformer/FlowArbiter;, "Lcom/tds/common/reactor/transformer/FlowArbiter<TT;>;"
    .local p1, "flowResult":Lcom/tds/common/reactor/transformer/FlowArbiter$FlowResult;, "Lcom/tds/common/reactor/transformer/FlowArbiter$FlowResult<TT;>;"
    :try_start_0
    iget-object v0, p0, Lcom/tds/common/reactor/transformer/FlowArbiter;->subscriber:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {v0, p1}, Lcom/tds/common/reactor/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_e

    .line 72
    nop

    .line 74
    :try_start_6
    iget-object v0, p0, Lcom/tds/common/reactor/transformer/FlowArbiter;->subscriber:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {v0}, Lcom/tds/common/reactor/Subscriber;->onCompleted()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_c

    .line 77
    goto :goto_d

    .line 75
    :catch_c
    move-exception v0

    .line 78
    :goto_d
    return-void

    .line 70
    :catch_e
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    return-void
.end method


# virtual methods
.method emitError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 59
    .local p0, "this":Lcom/tds/common/reactor/transformer/FlowArbiter;, "Lcom/tds/common/reactor/transformer/FlowArbiter<TT;>;"
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/tds/common/reactor/transformer/FlowArbiter;->set(I)V

    .line 61
    :try_start_4
    iget-object v0, p0, Lcom/tds/common/reactor/transformer/FlowArbiter;->subscriber:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {v0, p1}, Lcom/tds/common/reactor/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_a

    .line 64
    goto :goto_b

    .line 62
    :catch_a
    move-exception v0

    .line 65
    :goto_b
    return-void
.end method

.method emitResponse(Lcom/tds/common/reactor/transformer/FlowArbiter$FlowResult;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/transformer/FlowArbiter$FlowResult<",
            "TT;>;)V"
        }
    .end annotation

    .line 40
    .local p0, "this":Lcom/tds/common/reactor/transformer/FlowArbiter;, "Lcom/tds/common/reactor/transformer/FlowArbiter<TT;>;"
    .local p1, "flowResult":Lcom/tds/common/reactor/transformer/FlowArbiter$FlowResult;, "Lcom/tds/common/reactor/transformer/FlowArbiter$FlowResult<TT;>;"
    :goto_0
    invoke-virtual {p0}, Lcom/tds/common/reactor/transformer/FlowArbiter;->get()I

    move-result v0

    .line 41
    .local v0, "state":I
    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_20

    :pswitch_8
    goto :goto_1e

    .line 49
    :pswitch_9
    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/tds/common/reactor/transformer/FlowArbiter;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 50
    invoke-direct {p0, p1}, Lcom/tds/common/reactor/transformer/FlowArbiter;->deliverResponse(Lcom/tds/common/reactor/transformer/FlowArbiter$FlowResult;)V

    .line 51
    return-void

    .line 43
    :pswitch_14
    iput-object p1, p0, Lcom/tds/common/reactor/transformer/FlowArbiter;->flowResult:Lcom/tds/common/reactor/transformer/FlowArbiter$FlowResult;

    .line 44
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/tds/common/reactor/transformer/FlowArbiter;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 45
    return-void

    .line 55
    .end local v0    # "state":I
    :cond_1e
    :goto_1e
    goto :goto_0

    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_14
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public request(J)V
    .registers 7
    .param p1, "amount"    # J

    .line 82
    .local p0, "this":Lcom/tds/common/reactor/transformer/FlowArbiter;, "Lcom/tds/common/reactor/transformer/FlowArbiter<TT;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    .line 83
    return-void

    .line 86
    :cond_7
    :goto_7
    invoke-virtual {p0}, Lcom/tds/common/reactor/transformer/FlowArbiter;->get()I

    move-result v0

    .line 87
    .local v0, "state":I
    packed-switch v0, :pswitch_data_40

    .line 104
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 95
    :pswitch_27
    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/tds/common/reactor/transformer/FlowArbiter;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 96
    iget-object v1, p0, Lcom/tds/common/reactor/transformer/FlowArbiter;->flowResult:Lcom/tds/common/reactor/transformer/FlowArbiter$FlowResult;

    invoke-direct {p0, v1}, Lcom/tds/common/reactor/transformer/FlowArbiter;->deliverResponse(Lcom/tds/common/reactor/transformer/FlowArbiter$FlowResult;)V

    .line 97
    return-void

    .line 102
    :pswitch_35
    return-void

    .line 89
    :pswitch_36
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/tds/common/reactor/transformer/FlowArbiter;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 90
    return-void

    .line 106
    .end local v0    # "state":I
    :cond_3f
    goto :goto_7

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_36
        :pswitch_35
        :pswitch_27
        :pswitch_35
    .end packed-switch
.end method
