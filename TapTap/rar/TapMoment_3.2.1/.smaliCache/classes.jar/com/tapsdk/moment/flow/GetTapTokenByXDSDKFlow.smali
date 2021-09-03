.class public Lcom/tapsdk/moment/flow/GetTapTokenByXDSDKFlow;
.super Ljava/lang/Object;
.source "GetTapTokenByXDSDKFlow.java"

# interfaces
.implements Lcom/tds/common/reactor/transformer/FlowCall;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/tds/common/reactor/transformer/FlowCall<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final useCache:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 2
    .param p1, "useCache"    # Z

    .line 11
    .local p0, "this":Lcom/tapsdk/moment/flow/GetTapTokenByXDSDKFlow;, "Lcom/tapsdk/moment/flow/GetTapTokenByXDSDKFlow<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-boolean p1, p0, Lcom/tapsdk/moment/flow/GetTapTokenByXDSDKFlow;->useCache:Z

    .line 13
    return-void
.end method


# virtual methods
.method public clone()Lcom/tds/common/reactor/transformer/FlowCall;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tds/common/reactor/transformer/FlowCall<",
            "TT;>;"
        }
    .end annotation

    .line 32
    .local p0, "this":Lcom/tapsdk/moment/flow/GetTapTokenByXDSDKFlow;, "Lcom/tapsdk/moment/flow/GetTapTokenByXDSDKFlow<TT;>;"
    new-instance v0, Lcom/tapsdk/moment/flow/GetTapTokenByXDSDKFlow;

    iget-boolean v1, p0, Lcom/tapsdk/moment/flow/GetTapTokenByXDSDKFlow;->useCache:Z

    invoke-direct {v0, v1}, Lcom/tapsdk/moment/flow/GetTapTokenByXDSDKFlow;-><init>(Z)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 8
    .local p0, "this":Lcom/tapsdk/moment/flow/GetTapTokenByXDSDKFlow;, "Lcom/tapsdk/moment/flow/GetTapTokenByXDSDKFlow<TT;>;"
    invoke-virtual {p0}, Lcom/tapsdk/moment/flow/GetTapTokenByXDSDKFlow;->clone()Lcom/tds/common/reactor/transformer/FlowCall;

    move-result-object v0

    return-object v0
.end method

.method public enqueue(Lcom/tds/common/reactor/transformer/FlowCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/transformer/FlowCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 17
    .local p0, "this":Lcom/tapsdk/moment/flow/GetTapTokenByXDSDKFlow;, "Lcom/tapsdk/moment/flow/GetTapTokenByXDSDKFlow<TT;>;"
    .local p1, "callback":Lcom/tds/common/reactor/transformer/FlowCallback;, "Lcom/tds/common/reactor/transformer/FlowCallback<TT;>;"
    iget-boolean v0, p0, Lcom/tapsdk/moment/flow/GetTapTokenByXDSDKFlow;->useCache:Z

    new-instance v1, Lcom/tapsdk/moment/flow/GetTapTokenByXDSDKFlow$1;

    invoke-direct {v1, p0, p1}, Lcom/tapsdk/moment/flow/GetTapTokenByXDSDKFlow$1;-><init>(Lcom/tapsdk/moment/flow/GetTapTokenByXDSDKFlow;Lcom/tds/common/reactor/transformer/FlowCallback;)V

    invoke-static {v0, v1}, Lcom/tapsdk/moment/XDSDKHelper;->getCurrentTapToken(ZLcom/tapsdk/moment/XDSDKHelper$InvokeHandler;)V

    .line 28
    return-void
.end method
