.class Lokhttp3/internal/framed/FramedStream$StreamTimeout;
.super Lokio/AsyncTimeout;
.source "FramedStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/framed/FramedStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StreamTimeout"
.end annotation


# instance fields
.field final synthetic this$0:Lokhttp3/internal/framed/FramedStream;


# direct methods
.method constructor <init>(Lokhttp3/internal/framed/FramedStream;)V
    .registers 2
    .param p1, "this$0"    # Lokhttp3/internal/framed/FramedStream;

    .line 594
    iput-object p1, p0, Lokhttp3/internal/framed/FramedStream$StreamTimeout;->this$0:Lokhttp3/internal/framed/FramedStream;

    invoke-direct {p0}, Lokio/AsyncTimeout;-><init>()V

    return-void
.end method


# virtual methods
.method public exitAndThrowIfTimedOut()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 608
    invoke-virtual {p0}, Lokhttp3/internal/framed/FramedStream$StreamTimeout;->exit()Z

    move-result v0

    if-nez v0, :cond_7

    .line 609
    return-void

    .line 608
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lokhttp3/internal/framed/FramedStream$StreamTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method protected newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 4
    .param p1, "cause"    # Ljava/io/IOException;

    .line 600
    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    .line 601
    .local v0, "socketTimeoutException":Ljava/net/SocketTimeoutException;
    if-eqz p1, :cond_c

    .line 602
    invoke-virtual {v0, p1}, Ljava/net/SocketTimeoutException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 604
    :cond_c
    return-object v0
.end method

.method protected timedOut()V
    .registers 3

    .line 596
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$StreamTimeout;->this$0:Lokhttp3/internal/framed/FramedStream;

    sget-object v1, Lokhttp3/internal/framed/ErrorCode;->CANCEL:Lokhttp3/internal/framed/ErrorCode;

    invoke-virtual {v0, v1}, Lokhttp3/internal/framed/FramedStream;->closeLater(Lokhttp3/internal/framed/ErrorCode;)V

    .line 597
    return-void
.end method
