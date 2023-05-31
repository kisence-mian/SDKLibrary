.class public Lcom/tds/common/websocket/TDSWebSocketService$WebSocketConfig;
.super Ljava/lang/Object;
.source "TDSWebSocketService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/websocket/TDSWebSocketService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebSocketConfig"
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
.method private constructor <init>(ILjava/util/Map;)V
    .registers 3
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 247
    .local p2, "heads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput p1, p0, Lcom/tds/common/websocket/TDSWebSocketService$WebSocketConfig;->connectionTimeout:I

    .line 249
    iput-object p2, p0, Lcom/tds/common/websocket/TDSWebSocketService$WebSocketConfig;->heads:Ljava/util/Map;

    .line 250
    return-void
.end method

.method synthetic constructor <init>(ILjava/util/Map;Lcom/tds/common/websocket/TDSWebSocketService$1;)V
    .registers 4
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/util/Map;
    .param p3, "x2"    # Lcom/tds/common/websocket/TDSWebSocketService$1;

    .line 242
    invoke-direct {p0, p1, p2}, Lcom/tds/common/websocket/TDSWebSocketService$WebSocketConfig;-><init>(ILjava/util/Map;)V

    return-void
.end method
