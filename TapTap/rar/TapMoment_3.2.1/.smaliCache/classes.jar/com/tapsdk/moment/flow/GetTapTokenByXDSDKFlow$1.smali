.class Lcom/tapsdk/moment/flow/GetTapTokenByXDSDKFlow$1;
.super Lcom/tapsdk/moment/XDSDKHelper$InvokeHandler;
.source "GetTapTokenByXDSDKFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapsdk/moment/flow/GetTapTokenByXDSDKFlow;->enqueue(Lcom/tds/common/reactor/transformer/FlowCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapsdk/moment/flow/GetTapTokenByXDSDKFlow;

.field final synthetic val$callback:Lcom/tds/common/reactor/transformer/FlowCallback;


# direct methods
.method constructor <init>(Lcom/tapsdk/moment/flow/GetTapTokenByXDSDKFlow;Lcom/tds/common/reactor/transformer/FlowCallback;)V
    .registers 3
    .param p1, "this$0"    # Lcom/tapsdk/moment/flow/GetTapTokenByXDSDKFlow;

    .line 17
    .local p0, "this":Lcom/tapsdk/moment/flow/GetTapTokenByXDSDKFlow$1;, "Lcom/tapsdk/moment/flow/GetTapTokenByXDSDKFlow$1;"
    iput-object p1, p0, Lcom/tapsdk/moment/flow/GetTapTokenByXDSDKFlow$1;->this$0:Lcom/tapsdk/moment/flow/GetTapTokenByXDSDKFlow;

    iput-object p2, p0, Lcom/tapsdk/moment/flow/GetTapTokenByXDSDKFlow$1;->val$callback:Lcom/tds/common/reactor/transformer/FlowCallback;

    invoke-direct {p0}, Lcom/tapsdk/moment/XDSDKHelper$InvokeHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/lang/String;)V
    .registers 5
    .param p1, "code"    # I
    .param p2, "result"    # Ljava/lang/String;

    .line 20
    .local p0, "this":Lcom/tapsdk/moment/flow/GetTapTokenByXDSDKFlow$1;, "Lcom/tapsdk/moment/flow/GetTapTokenByXDSDKFlow$1;"
    if-nez p1, :cond_d

    .line 21
    new-instance v0, Lcom/tds/common/reactor/transformer/FlowArbiter$FlowResult;

    invoke-direct {v0, p1, p2}, Lcom/tds/common/reactor/transformer/FlowArbiter$FlowResult;-><init>(ILjava/lang/Object;)V

    .line 22
    .local v0, "flowResult":Lcom/tds/common/reactor/transformer/FlowArbiter$FlowResult;, "Lcom/tds/common/reactor/transformer/FlowArbiter$FlowResult<TT;>;"
    iget-object v1, p0, Lcom/tapsdk/moment/flow/GetTapTokenByXDSDKFlow$1;->val$callback:Lcom/tds/common/reactor/transformer/FlowCallback;

    invoke-interface {v1, v0}, Lcom/tds/common/reactor/transformer/FlowCallback;->onSuccess(Lcom/tds/common/reactor/transformer/FlowArbiter$FlowResult;)V

    .line 23
    .end local v0    # "flowResult":Lcom/tds/common/reactor/transformer/FlowArbiter$FlowResult;, "Lcom/tds/common/reactor/transformer/FlowArbiter$FlowResult<TT;>;"
    goto :goto_12

    .line 24
    :cond_d
    iget-object v0, p0, Lcom/tapsdk/moment/flow/GetTapTokenByXDSDKFlow$1;->val$callback:Lcom/tds/common/reactor/transformer/FlowCallback;

    invoke-interface {v0, p1, p2}, Lcom/tds/common/reactor/transformer/FlowCallback;->onError(ILjava/lang/String;)V

    .line 26
    :goto_12
    return-void
.end method
