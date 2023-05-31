.class public final Lokhttp3/internal/http2/Http2Stream;
.super Ljava/lang/Object;
.source "Http2Stream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http2/Http2Stream$StreamTimeout;,
        Lokhttp3/internal/http2/Http2Stream$FramingSink;,
        Lokhttp3/internal/http2/Http2Stream$FramingSource;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field bytesLeftInWriteWindow:J

.field final connection:Lokhttp3/internal/http2/Http2Connection;

.field errorCode:Lokhttp3/internal/http2/ErrorCode;

.field private hasResponseHeaders:Z

.field private headersListener:Lokhttp3/internal/http2/Header$Listener;

.field private final headersQueue:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lokhttp3/Headers;",
            ">;"
        }
    .end annotation
.end field

.field final id:I

.field final readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

.field final sink:Lokhttp3/internal/http2/Http2Stream$FramingSink;

.field private final source:Lokhttp3/internal/http2/Http2Stream$FramingSource;

.field unacknowledgedBytesRead:J

.field final writeTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const-class v0, Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lokhttp3/internal/http2/Http2Stream;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>(ILokhttp3/internal/http2/Http2Connection;ZZLokhttp3/Headers;)V
    .registers 10
    .param p1, "id"    # I
    .param p2, "connection"    # Lokhttp3/internal/http2/Http2Connection;
    .param p3, "outFinished"    # Z
    .param p4, "inFinished"    # Z
    .param p5, "headers"    # Lokhttp3/Headers;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lokhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    .line 63
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->headersQueue:Ljava/util/Deque;

    .line 71
    new-instance v0, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-direct {v0, p0}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;-><init>(Lokhttp3/internal/http2/Http2Stream;)V

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    .line 72
    new-instance v0, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-direct {v0, p0}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;-><init>(Lokhttp3/internal/http2/Http2Stream;)V

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->writeTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    .line 83
    if-nez p2, :cond_29

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "connection == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_29
    iput p1, p0, Lokhttp3/internal/http2/Http2Stream;->id:I

    .line 86
    iput-object p2, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    .line 87
    iget-object v0, p2, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;

    .line 88
    invoke-virtual {v0}, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lokhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    .line 89
    new-instance v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;

    iget-object v1, p2, Lokhttp3/internal/http2/Http2Connection;->okHttpSettings:Lokhttp3/internal/http2/Settings;

    invoke-virtual {v1}, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v1

    int-to-long v2, v1

    invoke-direct {v0, p0, v2, v3}, Lokhttp3/internal/http2/Http2Stream$FramingSource;-><init>(Lokhttp3/internal/http2/Http2Stream;J)V

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    .line 90
    new-instance v0, Lokhttp3/internal/http2/Http2Stream$FramingSink;

    invoke-direct {v0, p0}, Lokhttp3/internal/http2/Http2Stream$FramingSink;-><init>(Lokhttp3/internal/http2/Http2Stream;)V

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    .line 91
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    iput-boolean p4, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    .line 92
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    iput-boolean p3, v0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z

    .line 93
    if-eqz p5, :cond_5a

    .line 94
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->headersQueue:Ljava/util/Deque;

    invoke-interface {v0, p5}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_5a
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream;->isLocallyInitiated()Z

    move-result v0

    if-eqz v0, :cond_6a

    if-eqz p5, :cond_6a

    .line 98
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "locally-initiated streams shouldn\'t have headers yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_6a
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream;->isLocallyInitiated()Z

    move-result v0

    if-nez v0, :cond_7a

    if-nez p5, :cond_7a

    .line 100
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remotely-initiated streams should have headers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_7a
    return-void
.end method

.method static synthetic access$000(Lokhttp3/internal/http2/Http2Stream;)Ljava/util/Deque;
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/http2/Http2Stream;

    .prologue
    .line 37
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->headersQueue:Ljava/util/Deque;

    return-object v0
.end method

.method static synthetic access$100(Lokhttp3/internal/http2/Http2Stream;)Lokhttp3/internal/http2/Header$Listener;
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/http2/Http2Stream;

    .prologue
    .line 37
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->headersListener:Lokhttp3/internal/http2/Header$Listener;

    return-object v0
.end method

.method private closeInternal(Lokhttp3/internal/http2/ErrorCode;)Z
    .registers 4
    .param p1, "errorCode"    # Lokhttp3/internal/http2/ErrorCode;

    .prologue
    const/4 v0, 0x0

    .line 259
    sget-boolean v1, Lokhttp3/internal/http2/Http2Stream;->$assertionsDisabled:Z

    if-nez v1, :cond_11

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 260
    :cond_11
    monitor-enter p0

    .line 261
    :try_start_12
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    if-eqz v1, :cond_18

    .line 262
    monitor-exit p0

    .line 271
    :goto_17
    return v0

    .line 264
    :cond_18
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    iget-boolean v1, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    if-eqz v1, :cond_29

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    iget-boolean v1, v1, Lokhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z

    if-eqz v1, :cond_29

    .line 265
    monitor-exit p0

    goto :goto_17

    .line 269
    :catchall_26
    move-exception v0

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_26

    throw v0

    .line 267
    :cond_29
    :try_start_29
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    .line 268
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 269
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_29 .. :try_end_2f} :catchall_26

    .line 270
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    iget v1, p0, Lokhttp3/internal/http2/Http2Stream;->id:I

    invoke-virtual {v0, v1}, Lokhttp3/internal/http2/Http2Connection;->removeStream(I)Lokhttp3/internal/http2/Http2Stream;

    .line 271
    const/4 v0, 0x1

    goto :goto_17
.end method


# virtual methods
.method addBytesToWriteWindow(J)V
    .registers 6
    .param p1, "delta"    # J

    .prologue
    .line 619
    iget-wide v0, p0, Lokhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lokhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    .line 620
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_e

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 621
    :cond_e
    return-void
.end method

.method cancelStreamIfNecessary()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 504
    sget-boolean v2, Lokhttp3/internal/http2/Http2Stream;->$assertionsDisabled:Z

    if-nez v2, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 507
    :cond_10
    monitor-enter p0

    .line 508
    :try_start_11
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    iget-boolean v2, v2, Lokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    if-nez v2, :cond_37

    iget-object v2, p0, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    iget-boolean v2, v2, Lokhttp3/internal/http2/Http2Stream$FramingSource;->closed:Z

    if-eqz v2, :cond_37

    iget-object v2, p0, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    iget-boolean v2, v2, Lokhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z

    if-nez v2, :cond_29

    iget-object v2, p0, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    iget-boolean v2, v2, Lokhttp3/internal/http2/Http2Stream$FramingSink;->closed:Z

    if-eqz v2, :cond_37

    :cond_29
    const/4 v0, 0x1

    .line 509
    .local v0, "cancel":Z
    :goto_2a
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream;->isOpen()Z

    move-result v1

    .line 510
    .local v1, "open":Z
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_11 .. :try_end_2f} :catchall_39

    .line 511
    if-eqz v0, :cond_3c

    .line 516
    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p0, v2}, Lokhttp3/internal/http2/Http2Stream;->close(Lokhttp3/internal/http2/ErrorCode;)V

    .line 520
    :cond_36
    :goto_36
    return-void

    .line 508
    .end local v0    # "cancel":Z
    .end local v1    # "open":Z
    :cond_37
    const/4 v0, 0x0

    goto :goto_2a

    .line 510
    :catchall_39
    move-exception v2

    :try_start_3a
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v2

    .line 517
    .restart local v0    # "cancel":Z
    .restart local v1    # "open":Z
    :cond_3c
    if-nez v1, :cond_36

    .line 518
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    iget v3, p0, Lokhttp3/internal/http2/Http2Stream;->id:I

    invoke-virtual {v2, v3}, Lokhttp3/internal/http2/Http2Connection;->removeStream(I)Lokhttp3/internal/http2/Http2Stream;

    goto :goto_36
.end method

.method checkOutNotClosed()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 624
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    iget-boolean v0, v0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->closed:Z

    if-eqz v0, :cond_e

    .line 625
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 626
    :cond_e
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    iget-boolean v0, v0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z

    if-eqz v0, :cond_1c

    .line 627
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 628
    :cond_1c
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    if-eqz v0, :cond_28

    .line 629
    new-instance v0, Lokhttp3/internal/http2/StreamResetException;

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    invoke-direct {v0, v1}, Lokhttp3/internal/http2/StreamResetException;-><init>(Lokhttp3/internal/http2/ErrorCode;)V

    throw v0

    .line 631
    :cond_28
    return-void
.end method

.method public close(Lokhttp3/internal/http2/ErrorCode;)V
    .registers 4
    .param p1, "rstStatusCode"    # Lokhttp3/internal/http2/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 240
    invoke-direct {p0, p1}, Lokhttp3/internal/http2/Http2Stream;->closeInternal(Lokhttp3/internal/http2/ErrorCode;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 244
    :goto_6
    return-void

    .line 243
    :cond_7
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    iget v1, p0, Lokhttp3/internal/http2/Http2Stream;->id:I

    invoke-virtual {v0, v1, p1}, Lokhttp3/internal/http2/Http2Connection;->writeSynReset(ILokhttp3/internal/http2/ErrorCode;)V

    goto :goto_6
.end method

.method public closeLater(Lokhttp3/internal/http2/ErrorCode;)V
    .registers 4
    .param p1, "errorCode"    # Lokhttp3/internal/http2/ErrorCode;

    .prologue
    .line 251
    invoke-direct {p0, p1}, Lokhttp3/internal/http2/Http2Stream;->closeInternal(Lokhttp3/internal/http2/ErrorCode;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 255
    :goto_6
    return-void

    .line 254
    :cond_7
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    iget v1, p0, Lokhttp3/internal/http2/Http2Stream;->id:I

    invoke-virtual {v0, v1, p1}, Lokhttp3/internal/http2/Http2Connection;->writeSynResetLater(ILokhttp3/internal/http2/ErrorCode;)V

    goto :goto_6
.end method

.method public getConnection()Lokhttp3/internal/http2/Http2Connection;
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    return-object v0
.end method

.method public declared-synchronized getErrorCode()Lokhttp3/internal/http2/ErrorCode;
    .registers 2

    .prologue
    .line 166
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getId()I
    .registers 2

    .prologue
    .line 105
    iget v0, p0, Lokhttp3/internal/http2/Http2Stream;->id:I

    return v0
.end method

.method public getSink()Lokio/Sink;
    .registers 3

    .prologue
    .line 227
    monitor-enter p0

    .line 228
    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Stream;->hasResponseHeaders:Z

    if-nez v0, :cond_16

    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream;->isLocallyInitiated()Z

    move-result v0

    if-nez v0, :cond_16

    .line 229
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "reply before requesting the sink"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v0

    :cond_16
    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_13

    .line 232
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    return-object v0
.end method

.method public getSource()Lokio/Source;
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    return-object v0
.end method

.method public isLocallyInitiated()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 133
    iget v3, p0, Lokhttp3/internal/http2/Http2Stream;->id:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v1, :cond_10

    move v0, v1

    .line 134
    .local v0, "streamIsClient":Z
    :goto_9
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    iget-boolean v3, v3, Lokhttp3/internal/http2/Http2Connection;->client:Z

    if-ne v3, v0, :cond_12

    :goto_f
    return v1

    .end local v0    # "streamIsClient":Z
    :cond_10
    move v0, v2

    .line 133
    goto :goto_9

    .restart local v0    # "streamIsClient":Z
    :cond_12
    move v1, v2

    .line 134
    goto :goto_f
.end method

.method public declared-synchronized isOpen()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 120
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_26

    if-eqz v1, :cond_8

    .line 128
    :cond_6
    :goto_6
    monitor-exit p0

    return v0

    .line 123
    :cond_8
    :try_start_8
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    iget-boolean v1, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    if-nez v1, :cond_14

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    iget-boolean v1, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->closed:Z

    if-eqz v1, :cond_24

    :cond_14
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    iget-boolean v1, v1, Lokhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z

    if-nez v1, :cond_20

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    iget-boolean v1, v1, Lokhttp3/internal/http2/Http2Stream$FramingSink;->closed:Z

    if-eqz v1, :cond_24

    :cond_20
    iget-boolean v1, p0, Lokhttp3/internal/http2/Http2Stream;->hasResponseHeaders:Z
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_26

    if-nez v1, :cond_6

    .line 128
    :cond_24
    const/4 v0, 0x1

    goto :goto_6

    .line 120
    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public readTimeout()Lokio/Timeout;
    .registers 2

    .prologue
    .line 208
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    return-object v0
.end method

.method receiveData(Lokio/BufferedSource;I)V
    .registers 7
    .param p1, "in"    # Lokio/BufferedSource;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 293
    sget-boolean v0, Lokhttp3/internal/http2/Http2Stream;->$assertionsDisabled:Z

    if-nez v0, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 294
    :cond_10
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->receive(Lokio/BufferedSource;J)V

    .line 295
    return-void
.end method

.method receiveFin()V
    .registers 4

    .prologue
    .line 298
    sget-boolean v1, Lokhttp3/internal/http2/Http2Stream;->$assertionsDisabled:Z

    if-nez v1, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 300
    :cond_10
    monitor-enter p0

    .line 301
    :try_start_11
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    .line 302
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream;->isOpen()Z

    move-result v0

    .line 303
    .local v0, "open":Z
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 304
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_28

    .line 305
    if-nez v0, :cond_27

    .line 306
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    iget v2, p0, Lokhttp3/internal/http2/Http2Stream;->id:I

    invoke-virtual {v1, v2}, Lokhttp3/internal/http2/Http2Connection;->removeStream(I)Lokhttp3/internal/http2/Http2Stream;

    .line 308
    :cond_27
    return-void

    .line 304
    .end local v0    # "open":Z
    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method receiveHeaders(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 279
    .local p1, "headers":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/http2/Header;>;"
    sget-boolean v1, Lokhttp3/internal/http2/Http2Stream;->$assertionsDisabled:Z

    if-nez v1, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 281
    :cond_10
    monitor-enter p0

    .line 282
    const/4 v1, 0x1

    :try_start_12
    iput-boolean v1, p0, Lokhttp3/internal/http2/Http2Stream;->hasResponseHeaders:Z

    .line 283
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream;->headersQueue:Ljava/util/Deque;

    invoke-static {p1}, Lokhttp3/internal/Util;->toHeaders(Ljava/util/List;)Lokhttp3/Headers;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 284
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream;->isOpen()Z

    move-result v0

    .line 285
    .local v0, "open":Z
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 286
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_2f

    .line 287
    if-nez v0, :cond_2e

    .line 288
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    iget v2, p0, Lokhttp3/internal/http2/Http2Stream;->id:I

    invoke-virtual {v1, v2}, Lokhttp3/internal/http2/Http2Connection;->removeStream(I)Lokhttp3/internal/http2/Http2Stream;

    .line 290
    :cond_2e
    return-void

    .line 286
    .end local v0    # "open":Z
    :catchall_2f
    move-exception v1

    :try_start_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method declared-synchronized receiveRstStream(Lokhttp3/internal/http2/ErrorCode;)V
    .registers 3
    .param p1, "errorCode"    # Lokhttp3/internal/http2/ErrorCode;

    .prologue
    .line 311
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    if-nez v0, :cond_a

    .line 312
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    .line 313
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 315
    :cond_a
    monitor-exit p0

    return-void

    .line 311
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setHeadersListener(Lokhttp3/internal/http2/Header$Listener;)V
    .registers 3
    .param p1, "headersListener"    # Lokhttp3/internal/http2/Header$Listener;

    .prologue
    .line 318
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream;->headersListener:Lokhttp3/internal/http2/Header$Listener;

    .line 319
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->headersQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    if-eqz p1, :cond_10

    .line 320
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 322
    :cond_10
    monitor-exit p0

    return-void

    .line 318
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized takeHeaders()Lokhttp3/Headers;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->enter()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1d

    .line 149
    :goto_6
    :try_start_6
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->headersQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    if-nez v0, :cond_20

    .line 150
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream;->waitForIo()V
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_16

    goto :goto_6

    .line 153
    :catchall_16
    move-exception v0

    :try_start_17
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v1}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    throw v0
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_1d

    .line 147
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 153
    :cond_20
    :try_start_20
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 155
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->headersQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_37

    .line 156
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->headersQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Headers;
    :try_end_35
    .catchall {:try_start_20 .. :try_end_35} :catchall_1d

    monitor-exit p0

    return-object v0

    .line 158
    :cond_37
    :try_start_37
    new-instance v0, Lokhttp3/internal/http2/StreamResetException;

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    invoke-direct {v0, v1}, Lokhttp3/internal/http2/StreamResetException;-><init>(Lokhttp3/internal/http2/ErrorCode;)V

    throw v0
    :try_end_3f
    .catchall {:try_start_37 .. :try_end_3f} :catchall_1d
.end method

.method waitForIo()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .prologue
    .line 639
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_4

    .line 644
    return-void

    .line 640
    :catch_4
    move-exception v0

    .line 641
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 642
    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    throw v1
.end method

.method public writeHeaders(Ljava/util/List;Z)V
    .registers 11
    .param p2, "out"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/Header;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/http2/Header;>;"
    const/4 v2, 0x1

    .line 176
    sget-boolean v3, Lokhttp3/internal/http2/Http2Stream;->$assertionsDisabled:Z

    if-nez v3, :cond_11

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 177
    :cond_11
    if-nez p1, :cond_1b

    .line 178
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "headers == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 180
    :cond_1b
    const/4 v1, 0x0

    .line 181
    .local v1, "outFinished":Z
    const/4 v0, 0x0

    .line 182
    .local v0, "flushHeaders":Z
    monitor-enter p0

    .line 183
    const/4 v3, 0x1

    :try_start_1f
    iput-boolean v3, p0, Lokhttp3/internal/http2/Http2Stream;->hasResponseHeaders:Z

    .line 184
    if-nez p2, :cond_2a

    .line 185
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lokhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z

    .line 186
    const/4 v0, 0x1

    .line 187
    const/4 v1, 0x1

    .line 189
    :cond_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_1f .. :try_end_2b} :catchall_4b

    .line 193
    if-nez v0, :cond_3c

    .line 194
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    monitor-enter v3

    .line 195
    :try_start_30
    iget-object v4, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    iget-wide v4, v4, Lokhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_4e

    move v0, v2

    .line 196
    :goto_3b
    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_30 .. :try_end_3c} :catchall_50

    .line 200
    :cond_3c
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    iget v3, p0, Lokhttp3/internal/http2/Http2Stream;->id:I

    invoke-virtual {v2, v3, v1, p1}, Lokhttp3/internal/http2/Http2Connection;->writeSynReply(IZLjava/util/List;)V

    .line 202
    if-eqz v0, :cond_4a

    .line 203
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v2}, Lokhttp3/internal/http2/Http2Connection;->flush()V

    .line 205
    :cond_4a
    return-void

    .line 189
    :catchall_4b
    move-exception v2

    :try_start_4c
    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v2

    .line 195
    :cond_4e
    const/4 v0, 0x0

    goto :goto_3b

    .line 196
    :catchall_50
    move-exception v2

    :try_start_51
    monitor-exit v3
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw v2
.end method

.method public writeTimeout()Lokio/Timeout;
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->writeTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    return-object v0
.end method
