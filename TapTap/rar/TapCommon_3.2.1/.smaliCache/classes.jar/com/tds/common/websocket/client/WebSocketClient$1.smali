.class Lcom/tds/common/websocket/client/WebSocketClient$1;
.super Ljava/lang/Object;
.source "WebSocketClient.java"

# interfaces
.implements Lcom/tds/common/websocket/client/DnsResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/common/websocket/client/WebSocketClient;-><init>(Ljava/net/URI;Lcom/tds/common/websocket/drafts/Draft;Ljava/util/Map;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tds/common/websocket/client/WebSocketClient;


# direct methods
.method constructor <init>(Lcom/tds/common/websocket/client/WebSocketClient;)V
    .registers 2
    .param p1, "this$0"    # Lcom/tds/common/websocket/client/WebSocketClient;

    .line 223
    iput-object p1, p0, Lcom/tds/common/websocket/client/WebSocketClient$1;->this$0:Lcom/tds/common/websocket/client/WebSocketClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resolve(Ljava/net/URI;)Ljava/net/InetAddress;
    .registers 3
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 226
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method
