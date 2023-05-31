.class Lcom/tds/common/websocket/conn/AbstractWebSocket$1;
.super Ljava/lang/Object;
.source "AbstractWebSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/common/websocket/conn/AbstractWebSocket;->restartConnectionLostTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private connections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tds/common/websocket/conn/WebSocket;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/tds/common/websocket/conn/AbstractWebSocket;


# direct methods
.method constructor <init>(Lcom/tds/common/websocket/conn/AbstractWebSocket;)V
    .registers 3
    .param p1, "this$0"    # Lcom/tds/common/websocket/conn/AbstractWebSocket;

    .line 179
    iput-object p1, p0, Lcom/tds/common/websocket/conn/AbstractWebSocket$1;->this$0:Lcom/tds/common/websocket/conn/AbstractWebSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tds/common/websocket/conn/AbstractWebSocket$1;->connections:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 188
    iget-object v0, p0, Lcom/tds/common/websocket/conn/AbstractWebSocket$1;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 190
    :try_start_5
    iget-object v0, p0, Lcom/tds/common/websocket/conn/AbstractWebSocket$1;->connections:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tds/common/websocket/conn/AbstractWebSocket$1;->this$0:Lcom/tds/common/websocket/conn/AbstractWebSocket;

    invoke-virtual {v1}, Lcom/tds/common/websocket/conn/AbstractWebSocket;->getConnections()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 191
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-double v0, v0

    iget-object v2, p0, Lcom/tds/common/websocket/conn/AbstractWebSocket$1;->this$0:Lcom/tds/common/websocket/conn/AbstractWebSocket;

    # getter for: Lcom/tds/common/websocket/conn/AbstractWebSocket;->connectionLostTimeout:J
    invoke-static {v2}, Lcom/tds/common/websocket/conn/AbstractWebSocket;->access$000(Lcom/tds/common/websocket/conn/AbstractWebSocket;)J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-long v0, v0

    .line 192
    .local v0, "minimumPongTime":J
    iget-object v2, p0, Lcom/tds/common/websocket/conn/AbstractWebSocket$1;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tds/common/websocket/conn/WebSocket;

    .line 193
    .local v3, "conn":Lcom/tds/common/websocket/conn/WebSocket;
    iget-object v4, p0, Lcom/tds/common/websocket/conn/AbstractWebSocket$1;->this$0:Lcom/tds/common/websocket/conn/AbstractWebSocket;

    # invokes: Lcom/tds/common/websocket/conn/AbstractWebSocket;->executeConnectionLostDetection(Lcom/tds/common/websocket/conn/WebSocket;J)V
    invoke-static {v4, v3, v0, v1}, Lcom/tds/common/websocket/conn/AbstractWebSocket;->access$100(Lcom/tds/common/websocket/conn/AbstractWebSocket;Lcom/tds/common/websocket/conn/WebSocket;J)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_38} :catch_3a

    .line 194
    .end local v3    # "conn":Lcom/tds/common/websocket/conn/WebSocket;
    goto :goto_27

    .line 197
    .end local v0    # "minimumPongTime":J
    :cond_39
    goto :goto_3b

    .line 195
    :catch_3a
    move-exception v0

    .line 198
    :goto_3b
    iget-object v0, p0, Lcom/tds/common/websocket/conn/AbstractWebSocket$1;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 199
    return-void
.end method
