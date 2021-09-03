.class Lcom/tds/common/reactor/transformer/FlowEnqueueOnSubscribe$1;
.super Ljava/lang/Object;
.source "FlowEnqueueOnSubscribe.java"

# interfaces
.implements Lcom/tds/common/reactor/transformer/FlowCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/common/reactor/transformer/FlowEnqueueOnSubscribe;->call(Lcom/tds/common/reactor/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tds/common/reactor/transformer/FlowCallback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tds/common/reactor/transformer/FlowEnqueueOnSubscribe;

.field final synthetic val$arbiter:Lcom/tds/common/reactor/transformer/FlowArbiter;


# direct methods
.method constructor <init>(Lcom/tds/common/reactor/transformer/FlowEnqueueOnSubscribe;Lcom/tds/common/reactor/transformer/FlowArbiter;)V
    .registers 3
    .param p1, "this$0"    # Lcom/tds/common/reactor/transformer/FlowEnqueueOnSubscribe;

    .line 21
    .local p0, "this":Lcom/tds/common/reactor/transformer/FlowEnqueueOnSubscribe$1;, "Lcom/tds/common/reactor/transformer/FlowEnqueueOnSubscribe$1;"
    iput-object p1, p0, Lcom/tds/common/reactor/transformer/FlowEnqueueOnSubscribe$1;->this$0:Lcom/tds/common/reactor/transformer/FlowEnqueueOnSubscribe;

    iput-object p2, p0, Lcom/tds/common/reactor/transformer/FlowEnqueueOnSubscribe$1;->val$arbiter:Lcom/tds/common/reactor/transformer/FlowArbiter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .registers 5
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 29
    .local p0, "this":Lcom/tds/common/reactor/transformer/FlowEnqueueOnSubscribe$1;, "Lcom/tds/common/reactor/transformer/FlowEnqueueOnSubscribe$1;"
    iget-object v0, p0, Lcom/tds/common/reactor/transformer/FlowEnqueueOnSubscribe$1;->val$arbiter:Lcom/tds/common/reactor/transformer/FlowArbiter;

    new-instance v1, Lcom/tds/common/reactor/exceptions/FlowException;

    invoke-direct {v1, p1, p2}, Lcom/tds/common/reactor/exceptions/FlowException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tds/common/reactor/transformer/FlowArbiter;->emitError(Ljava/lang/Throwable;)V

    .line 30
    return-void
.end method

.method public onSuccess(Lcom/tds/common/reactor/transformer/FlowArbiter$FlowResult;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/transformer/FlowArbiter$FlowResult<",
            "TT;>;)V"
        }
    .end annotation

    .line 24
    .local p0, "this":Lcom/tds/common/reactor/transformer/FlowEnqueueOnSubscribe$1;, "Lcom/tds/common/reactor/transformer/FlowEnqueueOnSubscribe$1;"
    .local p1, "result":Lcom/tds/common/reactor/transformer/FlowArbiter$FlowResult;, "Lcom/tds/common/reactor/transformer/FlowArbiter$FlowResult<TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/transformer/FlowEnqueueOnSubscribe$1;->val$arbiter:Lcom/tds/common/reactor/transformer/FlowArbiter;

    invoke-virtual {v0, p1}, Lcom/tds/common/reactor/transformer/FlowArbiter;->emitResponse(Lcom/tds/common/reactor/transformer/FlowArbiter$FlowResult;)V

    .line 25
    return-void
.end method
