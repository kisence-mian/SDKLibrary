.class Lcom/tds/common/reactor/transformer/FlowOnSubscribe$FlowOnSubscriber;
.super Lcom/tds/common/reactor/Subscriber;
.source "FlowOnSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/reactor/transformer/FlowOnSubscribe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FlowOnSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/tds/common/reactor/Subscriber<",
        "Lcom/tds/common/reactor/transformer/FlowArbiter$FlowResult<",
        "TR;>;>;"
    }
.end annotation


# instance fields
.field private final subscriber:Lcom/tds/common/reactor/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/Subscriber<",
            "-TR;>;"
        }
    .end annotation
.end field

.field private subscriberTerminated:Z


# direct methods
.method constructor <init>(Lcom/tds/common/reactor/Subscriber;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Subscriber<",
            "-TR;>;)V"
        }
    .end annotation

    .line 26
    .local p0, "this":Lcom/tds/common/reactor/transformer/FlowOnSubscribe$FlowOnSubscriber;, "Lcom/tds/common/reactor/transformer/FlowOnSubscribe$FlowOnSubscriber<TR;>;"
    .local p1, "subscriber":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TR;>;"
    invoke-direct {p0, p1}, Lcom/tds/common/reactor/Subscriber;-><init>(Lcom/tds/common/reactor/Subscriber;)V

    .line 27
    iput-object p1, p0, Lcom/tds/common/reactor/transformer/FlowOnSubscribe$FlowOnSubscriber;->subscriber:Lcom/tds/common/reactor/Subscriber;

    .line 28
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .line 32
    .local p0, "this":Lcom/tds/common/reactor/transformer/FlowOnSubscribe$FlowOnSubscriber;, "Lcom/tds/common/reactor/transformer/FlowOnSubscribe$FlowOnSubscriber<TR;>;"
    iget-boolean v0, p0, Lcom/tds/common/reactor/transformer/FlowOnSubscribe$FlowOnSubscriber;->subscriberTerminated:Z

    if-nez v0, :cond_9

    .line 33
    iget-object v0, p0, Lcom/tds/common/reactor/transformer/FlowOnSubscribe$FlowOnSubscriber;->subscriber:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {v0}, Lcom/tds/common/reactor/Subscriber;->onCompleted()V

    .line 35
    :cond_9
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 39
    .local p0, "this":Lcom/tds/common/reactor/transformer/FlowOnSubscribe$FlowOnSubscriber;, "Lcom/tds/common/reactor/transformer/FlowOnSubscribe$FlowOnSubscriber<TR;>;"
    iget-boolean v0, p0, Lcom/tds/common/reactor/transformer/FlowOnSubscribe$FlowOnSubscriber;->subscriberTerminated:Z

    if-nez v0, :cond_9

    .line 40
    iget-object v0, p0, Lcom/tds/common/reactor/transformer/FlowOnSubscribe$FlowOnSubscriber;->subscriber:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {v0, p1}, Lcom/tds/common/reactor/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 42
    :cond_9
    return-void
.end method

.method public onNext(Lcom/tds/common/reactor/transformer/FlowArbiter$FlowResult;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/transformer/FlowArbiter$FlowResult<",
            "TR;>;)V"
        }
    .end annotation

    .line 46
    .local p0, "this":Lcom/tds/common/reactor/transformer/FlowOnSubscribe$FlowOnSubscriber;, "Lcom/tds/common/reactor/transformer/FlowOnSubscribe$FlowOnSubscriber<TR;>;"
    .local p1, "flowResult":Lcom/tds/common/reactor/transformer/FlowArbiter$FlowResult;, "Lcom/tds/common/reactor/transformer/FlowArbiter$FlowResult<TR;>;"
    iget v0, p1, Lcom/tds/common/reactor/transformer/FlowArbiter$FlowResult;->code:I

    if-nez v0, :cond_c

    .line 47
    iget-object v0, p0, Lcom/tds/common/reactor/transformer/FlowOnSubscribe$FlowOnSubscriber;->subscriber:Lcom/tds/common/reactor/Subscriber;

    iget-object v1, p1, Lcom/tds/common/reactor/transformer/FlowArbiter$FlowResult;->data:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/tds/common/reactor/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_1f

    .line 49
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tds/common/reactor/transformer/FlowOnSubscribe$FlowOnSubscriber;->subscriberTerminated:Z

    .line 51
    :try_start_f
    iget-object v0, p0, Lcom/tds/common/reactor/transformer/FlowOnSubscribe$FlowOnSubscriber;->subscriber:Lcom/tds/common/reactor/Subscriber;

    new-instance v1, Lcom/tds/common/reactor/exceptions/FlowException;

    const/16 v2, 0x270f

    const-string v3, "\u672a\u77e5\u9519\u8bef"

    invoke-direct {v1, v2, v3}, Lcom/tds/common/reactor/exceptions/FlowException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tds/common/reactor/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1d} :catch_1e

    .line 54
    goto :goto_1f

    .line 52
    :catch_1e
    move-exception v0

    .line 56
    :goto_1f
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 20
    .local p0, "this":Lcom/tds/common/reactor/transformer/FlowOnSubscribe$FlowOnSubscriber;, "Lcom/tds/common/reactor/transformer/FlowOnSubscribe$FlowOnSubscriber<TR;>;"
    check-cast p1, Lcom/tds/common/reactor/transformer/FlowArbiter$FlowResult;

    invoke-virtual {p0, p1}, Lcom/tds/common/reactor/transformer/FlowOnSubscribe$FlowOnSubscriber;->onNext(Lcom/tds/common/reactor/transformer/FlowArbiter$FlowResult;)V

    return-void
.end method
