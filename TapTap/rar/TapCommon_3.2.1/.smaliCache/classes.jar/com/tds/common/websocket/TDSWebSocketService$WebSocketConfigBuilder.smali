.class public Lcom/tds/common/websocket/TDSWebSocketService$WebSocketConfigBuilder;
.super Ljava/lang/Object;
.source "TDSWebSocketService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/websocket/TDSWebSocketService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebSocketConfigBuilder"
.end annotation


# instance fields
.field connectionTimeout:I

.field heads:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    const/16 v0, 0x2d

    iput v0, p0, Lcom/tds/common/websocket/TDSWebSocketService$WebSocketConfigBuilder;->connectionTimeout:I

    return-void
.end method

.method public static getBuilder()Lcom/tds/common/websocket/TDSWebSocketService$WebSocketConfigBuilder;
    .registers 1

    .line 258
    new-instance v0, Lcom/tds/common/websocket/TDSWebSocketService$WebSocketConfigBuilder;

    invoke-direct {v0}, Lcom/tds/common/websocket/TDSWebSocketService$WebSocketConfigBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public build()Lcom/tds/common/websocket/TDSWebSocketService$WebSocketConfig;
    .registers 5

    .line 272
    new-instance v0, Lcom/tds/common/websocket/TDSWebSocketService$WebSocketConfig;

    iget v1, p0, Lcom/tds/common/websocket/TDSWebSocketService$WebSocketConfigBuilder;->connectionTimeout:I

    iget-object v2, p0, Lcom/tds/common/websocket/TDSWebSocketService$WebSocketConfigBuilder;->heads:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/tds/common/websocket/TDSWebSocketService$WebSocketConfig;-><init>(ILjava/util/Map;Lcom/tds/common/websocket/TDSWebSocketService$1;)V

    return-object v0
.end method

.method public connectTimeOut(I)Lcom/tds/common/websocket/TDSWebSocketService$WebSocketConfigBuilder;
    .registers 2
    .param p1, "timeout"    # I

    .line 262
    iput p1, p0, Lcom/tds/common/websocket/TDSWebSocketService$WebSocketConfigBuilder;->connectionTimeout:I

    .line 263
    return-object p0
.end method

.method public heads(Ljava/util/Map;)Lcom/tds/common/websocket/TDSWebSocketService$WebSocketConfigBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/tds/common/websocket/TDSWebSocketService$WebSocketConfigBuilder;"
        }
    .end annotation

    .line 267
    .local p1, "heads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/tds/common/websocket/TDSWebSocketService$WebSocketConfigBuilder;->heads:Ljava/util/Map;

    .line 268
    return-object p0
.end method
