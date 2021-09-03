.class public Lcom/tds/common/websocket/exceptions/WrappedIOException;
.super Ljava/lang/Exception;
.source "WrappedIOException.java"


# instance fields
.field private final connection:Lcom/tds/common/websocket/conn/WebSocket;

.field private final ioException:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Lcom/tds/common/websocket/conn/WebSocket;Ljava/io/IOException;)V
    .registers 3
    .param p1, "connection"    # Lcom/tds/common/websocket/conn/WebSocket;
    .param p2, "ioException"    # Ljava/io/IOException;

    .line 57
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/tds/common/websocket/exceptions/WrappedIOException;->connection:Lcom/tds/common/websocket/conn/WebSocket;

    .line 59
    iput-object p2, p0, Lcom/tds/common/websocket/exceptions/WrappedIOException;->ioException:Ljava/io/IOException;

    .line 60
    return-void
.end method


# virtual methods
.method public getConnection()Lcom/tds/common/websocket/conn/WebSocket;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/tds/common/websocket/exceptions/WrappedIOException;->connection:Lcom/tds/common/websocket/conn/WebSocket;

    return-object v0
.end method

.method public getIOException()Ljava/io/IOException;
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/tds/common/websocket/exceptions/WrappedIOException;->ioException:Ljava/io/IOException;

    return-object v0
.end method
