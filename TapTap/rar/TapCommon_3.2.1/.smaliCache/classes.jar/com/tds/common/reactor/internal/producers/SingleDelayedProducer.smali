.class public Lcom/tds/common/reactor/internal/producers/SingleDelayedProducer;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SingleDelayedProducer.java"

# interfaces
.implements Lcom/tds/common/reactor/Producer;


# annotations
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
.field static final HAS_REQUEST_HAS_VALUE:I = 0x3

.field static final HAS_REQUEST_NO_VALUE:I = 0x2

.field static final NO_REQUEST_HAS_VALUE:I = 0x1

.field static final NO_REQUEST_NO_VALUE:I = 0x0

.field private static final serialVersionUID:J = -0x27e09bdfa51658b2L


# instance fields
.field final child:Lcom/tds/common/reactor/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tds/common/reactor/Subscriber;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 27
    .local p0, "this":Lcom/tds/common/reactor/internal/producers/SingleDelayedProducer;, "Lcom/tds/common/reactor/internal/producers/SingleDelayedProducer<TT;>;"
    .local p1, "child":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/tds/common/reactor/internal/producers/SingleDelayedProducer;->child:Lcom/tds/common/reactor/Subscriber;

    .line 29
    return-void
.end method

.method private static emit(Lcom/tds/common/reactor/Subscriber;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;TT;)V"
        }
    .end annotation

    .line 79
    .local p0, "c":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    .local p1, "v":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lcom/tds/common/reactor/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 80
    return-void

    .line 83
    :cond_7
    :try_start_7
    invoke-virtual {p0, p1}, Lcom/tds/common/reactor/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_16

    .line 87
    nop

    .line 88
    invoke-virtual {p0}, Lcom/tds/common/reactor/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 89
    return-void

    .line 91
    :cond_12
    invoke-virtual {p0}, Lcom/tds/common/reactor/Subscriber;->onCompleted()V

    .line 92
    return-void

    .line 84
    :catchall_16
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0, p0, p1}, Lcom/tds/common/reactor/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lcom/tds/common/reactor/Observer;Ljava/lang/Object;)V

    .line 86
    return-void
.end method


# virtual methods
.method public request(J)V
    .registers 6
    .param p1, "n"    # J

    .line 33
    .local p0, "this":Lcom/tds/common/reactor/internal/producers/SingleDelayedProducer;, "Lcom/tds/common/reactor/internal/producers/SingleDelayedProducer<TT;>;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2c

    .line 36
    cmp-long v0, p1, v0

    if-nez v0, :cond_b

    .line 37
    return-void

    .line 40
    :cond_b
    :goto_b
    invoke-virtual {p0}, Lcom/tds/common/reactor/internal/producers/SingleDelayedProducer;->get()I

    move-result v0

    .line 41
    .local v0, "s":I
    if-nez v0, :cond_1a

    .line 42
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/tds/common/reactor/internal/producers/SingleDelayedProducer;->compareAndSet(II)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 43
    goto :goto_b

    .line 46
    :cond_1a
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2b

    .line 47
    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/tds/common/reactor/internal/producers/SingleDelayedProducer;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 48
    iget-object v1, p0, Lcom/tds/common/reactor/internal/producers/SingleDelayedProducer;->child:Lcom/tds/common/reactor/Subscriber;

    iget-object v2, p0, Lcom/tds/common/reactor/internal/producers/SingleDelayedProducer;->value:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tds/common/reactor/internal/producers/SingleDelayedProducer;->emit(Lcom/tds/common/reactor/Subscriber;Ljava/lang/Object;)V

    .line 51
    :cond_2b
    return-void

    .line 34
    .end local v0    # "s":I
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n >= 0 required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 57
    .local p0, "this":Lcom/tds/common/reactor/internal/producers/SingleDelayedProducer;, "Lcom/tds/common/reactor/internal/producers/SingleDelayedProducer<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    :goto_0
    invoke-virtual {p0}, Lcom/tds/common/reactor/internal/producers/SingleDelayedProducer;->get()I

    move-result v0

    .line 58
    .local v0, "s":I
    if-nez v0, :cond_11

    .line 59
    iput-object p1, p0, Lcom/tds/common/reactor/internal/producers/SingleDelayedProducer;->value:Ljava/lang/Object;

    .line 60
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/tds/common/reactor/internal/producers/SingleDelayedProducer;->compareAndSet(II)Z

    move-result v1

    if-nez v1, :cond_20

    .line 61
    goto :goto_0

    .line 64
    :cond_11
    const/4 v1, 0x2

    if-ne v0, v1, :cond_20

    .line 65
    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/tds/common/reactor/internal/producers/SingleDelayedProducer;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 66
    iget-object v1, p0, Lcom/tds/common/reactor/internal/producers/SingleDelayedProducer;->child:Lcom/tds/common/reactor/Subscriber;

    invoke-static {v1, p1}, Lcom/tds/common/reactor/internal/producers/SingleDelayedProducer;->emit(Lcom/tds/common/reactor/Subscriber;Ljava/lang/Object;)V

    .line 69
    :cond_20
    return-void
.end method
