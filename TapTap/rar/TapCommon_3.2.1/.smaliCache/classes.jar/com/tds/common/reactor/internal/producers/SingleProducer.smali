.class public final Lcom/tds/common/reactor/internal/producers/SingleProducer;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "SingleProducer.java"

# interfaces
.implements Lcom/tds/common/reactor/Producer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Lcom/tds/common/reactor/Producer;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2e8a53b866dafe2cL


# instance fields
.field final child:Lcom/tds/common/reactor/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tds/common/reactor/Subscriber;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;TT;)V"
        }
    .end annotation

    .line 42
    .local p0, "this":Lcom/tds/common/reactor/internal/producers/SingleProducer;, "Lcom/tds/common/reactor/internal/producers/SingleProducer<TT;>;"
    .local p1, "child":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/tds/common/reactor/internal/producers/SingleProducer;->child:Lcom/tds/common/reactor/Subscriber;

    .line 44
    iput-object p2, p0, Lcom/tds/common/reactor/internal/producers/SingleProducer;->value:Ljava/lang/Object;

    .line 45
    return-void
.end method


# virtual methods
.method public request(J)V
    .registers 6
    .param p1, "n"    # J

    .line 49
    .local p0, "this":Lcom/tds/common/reactor/internal/producers/SingleProducer;, "Lcom/tds/common/reactor/internal/producers/SingleProducer<TT;>;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_33

    .line 53
    cmp-long v0, p1, v0

    if-nez v0, :cond_b

    .line 54
    return-void

    .line 57
    :cond_b
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/tds/common/reactor/internal/producers/SingleProducer;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 59
    iget-object v0, p0, Lcom/tds/common/reactor/internal/producers/SingleProducer;->child:Lcom/tds/common/reactor/Subscriber;

    .line 61
    .local v0, "c":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    invoke-virtual {v0}, Lcom/tds/common/reactor/Subscriber;->isUnsubscribed()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 62
    return-void

    .line 64
    :cond_1c
    iget-object v1, p0, Lcom/tds/common/reactor/internal/producers/SingleProducer;->value:Ljava/lang/Object;

    .line 67
    .local v1, "v":Ljava/lang/Object;, "TT;"
    :try_start_1e
    invoke-virtual {v0, v1}, Lcom/tds/common/reactor/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_2d

    .line 71
    nop

    .line 73
    invoke-virtual {v0}, Lcom/tds/common/reactor/Subscriber;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 74
    return-void

    .line 77
    :cond_29
    invoke-virtual {v0}, Lcom/tds/common/reactor/Subscriber;->onCompleted()V

    goto :goto_32

    .line 68
    :catchall_2d
    move-exception v2

    .line 69
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {v2, v0, v1}, Lcom/tds/common/reactor/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lcom/tds/common/reactor/Observer;Ljava/lang/Object;)V

    .line 70
    return-void

    .line 79
    .end local v0    # "c":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    .end local v1    # "v":Ljava/lang/Object;, "TT;"
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_32
    :goto_32
    return-void

    .line 50
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n >= 0 required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
