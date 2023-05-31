.class Lcom/tds/common/websocket/server/WebSocketServer$WebSocketWorker$1;
.super Ljava/lang/Object;
.source "WebSocketServer.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/common/websocket/server/WebSocketServer$WebSocketWorker;-><init>(Lcom/tds/common/websocket/server/WebSocketServer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tds/common/websocket/server/WebSocketServer$WebSocketWorker;

.field final synthetic val$this$0:Lcom/tds/common/websocket/server/WebSocketServer;


# direct methods
.method constructor <init>(Lcom/tds/common/websocket/server/WebSocketServer$WebSocketWorker;Lcom/tds/common/websocket/server/WebSocketServer;)V
    .registers 3
    .param p1, "this$1"    # Lcom/tds/common/websocket/server/WebSocketServer$WebSocketWorker;

    .line 1054
    iput-object p1, p0, Lcom/tds/common/websocket/server/WebSocketServer$WebSocketWorker$1;->this$1:Lcom/tds/common/websocket/server/WebSocketServer$WebSocketWorker;

    iput-object p2, p0, Lcom/tds/common/websocket/server/WebSocketServer$WebSocketWorker$1;->val$this$0:Lcom/tds/common/websocket/server/WebSocketServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 1057
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Uncaught exception in thread {}: {}"

    invoke-static {v1, v0, p2}, Lcom/tds/common/websocket/util/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1058
    return-void
.end method
