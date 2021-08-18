.class public final Lokhttp3/internal/framed/FramedStream;
.super Ljava/lang/Object;
.source "FramedStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/framed/FramedStream$StreamTimeout;,
        Lokhttp3/internal/framed/FramedStream$FramedDataSink;,
        Lokhttp3/internal/framed/FramedStream$FramedDataSource;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field bytesLeftInWriteWindow:J

.field private final connection:Lokhttp3/internal/framed/FramedConnection;

.field private errorCode:Lokhttp3/internal/framed/ErrorCode;

.field private final id:I

.field private final readTimeout:Lokhttp3/internal/framed/FramedStream$StreamTimeout;

.field private final requestHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/internal/framed/Header;",
            ">;"
        }
    .end annotation
.end field

.field private responseHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/internal/framed/Header;",
            ">;"
        }
    .end annotation
.end field

.field final sink:Lokhttp3/internal/framed/FramedStream$FramedDataSink;

.field private final source:Lokhttp3/internal/framed/FramedStream$FramedDataSource;

.field unacknowledgedBytesRead:J

.field private final writeTimeout:Lokhttp3/internal/framed/FramedStream$StreamTimeout;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 34
    return-void
.end method

.method constructor <init>(ILokhttp3/internal/framed/FramedConnection;ZZLjava/util/List;)V
    .registers 11
    .param p1, "id"    # I
    .param p2, "connection"    # Lokhttp3/internal/framed/FramedConnection;
    .param p3, "outFinished"    # Z
    .param p4, "inFinished"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lokhttp3/internal/framed/FramedConnection;",
            "ZZ",
            "Ljava/util/List<",
            "Lokhttp3/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .line 75
    .local p5, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lokhttp3/internal/framed/FramedStream;->unacknowledgedBytesRead:J

    .line 64
    new-instance v0, Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    invoke-direct {v0, p0}, Lokhttp3/internal/framed/FramedStream$StreamTimeout;-><init>(Lokhttp3/internal/framed/FramedStream;)V

    iput-object v0, p0, Lokhttp3/internal/framed/FramedStream;->readTimeout:Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    .line 65
    new-instance v0, Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    invoke-direct {v0, p0}, Lokhttp3/internal/framed/FramedStream$StreamTimeout;-><init>(Lokhttp3/internal/framed/FramedStream;)V

    iput-object v0, p0, Lokhttp3/internal/framed/FramedStream;->writeTimeout:Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/internal/framed/FramedStream;->errorCode:Lokhttp3/internal/framed/ErrorCode;

    .line 76
    if-eqz p2, :cond_51

    .line 77
    if-eqz p5, :cond_49

    .line 78
    iput p1, p0, Lokhttp3/internal/framed/FramedStream;->id:I

    .line 79
    iput-object p2, p0, Lokhttp3/internal/framed/FramedStream;->connection:Lokhttp3/internal/framed/FramedConnection;

    .line 80
    iget-object v1, p2, Lokhttp3/internal/framed/FramedConnection;->peerSettings:Lokhttp3/internal/framed/Settings;

    .line 81
    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Lokhttp3/internal/framed/Settings;->getInitialWindowSize(I)I

    move-result v1

    int-to-long v3, v1

    iput-wide v3, p0, Lokhttp3/internal/framed/FramedStream;->bytesLeftInWriteWindow:J

    .line 82
    new-instance v1, Lokhttp3/internal/framed/FramedStream$FramedDataSource;

    iget-object v3, p2, Lokhttp3/internal/framed/FramedConnection;->okHttpSettings:Lokhttp3/internal/framed/Settings;

    .line 83
    invoke-virtual {v3, v2}, Lokhttp3/internal/framed/Settings;->getInitialWindowSize(I)I

    move-result v2

    int-to-long v2, v2

    invoke-direct {v1, p0, v2, v3, v0}, Lokhttp3/internal/framed/FramedStream$FramedDataSource;-><init>(Lokhttp3/internal/framed/FramedStream;JLokhttp3/internal/framed/FramedStream$1;)V

    iput-object v1, p0, Lokhttp3/internal/framed/FramedStream;->source:Lokhttp3/internal/framed/FramedStream$FramedDataSource;

    .line 84
    new-instance v0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;

    invoke-direct {v0, p0}, Lokhttp3/internal/framed/FramedStream$FramedDataSink;-><init>(Lokhttp3/internal/framed/FramedStream;)V

    iput-object v0, p0, Lokhttp3/internal/framed/FramedStream;->sink:Lokhttp3/internal/framed/FramedStream$FramedDataSink;

    .line 85
    # setter for: Lokhttp3/internal/framed/FramedStream$FramedDataSource;->finished:Z
    invoke-static {v1, p4}, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->access$102(Lokhttp3/internal/framed/FramedStream$FramedDataSource;Z)Z

    .line 86
    # setter for: Lokhttp3/internal/framed/FramedStream$FramedDataSink;->finished:Z
    invoke-static {v0, p3}, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->access$202(Lokhttp3/internal/framed/FramedStream$FramedDataSink;Z)Z

    .line 87
    iput-object p5, p0, Lokhttp3/internal/framed/FramedStream;->requestHeaders:Ljava/util/List;

    .line 88
    return-void

    .line 77
    :cond_49
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "requestHeaders == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_51
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "connection == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$1000(Lokhttp3/internal/framed/FramedStream;)V
    .registers 1
    .param p0, "x0"    # Lokhttp3/internal/framed/FramedStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Lokhttp3/internal/framed/FramedStream;->cancelStreamIfNecessary()V

    return-void
.end method

.method static synthetic access$1100(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedStream$StreamTimeout;
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/framed/FramedStream;

    .line 34
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->writeTimeout:Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    return-object v0
.end method

.method static synthetic access$1200(Lokhttp3/internal/framed/FramedStream;)V
    .registers 1
    .param p0, "x0"    # Lokhttp3/internal/framed/FramedStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Lokhttp3/internal/framed/FramedStream;->checkOutNotClosed()V

    return-void
.end method

.method static synthetic access$500(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedConnection;
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/framed/FramedStream;

    .line 34
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->connection:Lokhttp3/internal/framed/FramedConnection;

    return-object v0
.end method

.method static synthetic access$600(Lokhttp3/internal/framed/FramedStream;)I
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/framed/FramedStream;

    .line 34
    iget v0, p0, Lokhttp3/internal/framed/FramedStream;->id:I

    return v0
.end method

.method static synthetic access$700(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedStream$StreamTimeout;
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/framed/FramedStream;

    .line 34
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->readTimeout:Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    return-object v0
.end method

.method static synthetic access$800(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/ErrorCode;
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/framed/FramedStream;

    .line 34
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->errorCode:Lokhttp3/internal/framed/ErrorCode;

    return-object v0
.end method

.method static synthetic access$900(Lokhttp3/internal/framed/FramedStream;)V
    .registers 1
    .param p0, "x0"    # Lokhttp3/internal/framed/FramedStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Lokhttp3/internal/framed/FramedStream;->waitForIo()V

    return-void
.end method

.method private cancelStreamIfNecessary()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 447
    nop

    .line 450
    monitor-enter p0

    .line 451
    :try_start_2
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->source:Lokhttp3/internal/framed/FramedStream$FramedDataSource;

    # getter for: Lokhttp3/internal/framed/FramedStream$FramedDataSource;->finished:Z
    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->access$100(Lokhttp3/internal/framed/FramedStream$FramedDataSource;)Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->source:Lokhttp3/internal/framed/FramedStream$FramedDataSource;

    # getter for: Lokhttp3/internal/framed/FramedStream$FramedDataSource;->closed:Z
    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->access$300(Lokhttp3/internal/framed/FramedStream$FramedDataSource;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->sink:Lokhttp3/internal/framed/FramedStream$FramedDataSink;

    # getter for: Lokhttp3/internal/framed/FramedStream$FramedDataSink;->finished:Z
    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->access$200(Lokhttp3/internal/framed/FramedStream$FramedDataSink;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->sink:Lokhttp3/internal/framed/FramedStream$FramedDataSink;

    # getter for: Lokhttp3/internal/framed/FramedStream$FramedDataSink;->closed:Z
    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->access$400(Lokhttp3/internal/framed/FramedStream$FramedDataSink;)Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_22
    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    .line 452
    .local v0, "cancel":Z
    :goto_25
    invoke-virtual {p0}, Lokhttp3/internal/framed/FramedStream;->isOpen()Z

    move-result v1

    .line 453
    .local v1, "open":Z
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_2 .. :try_end_2a} :catchall_3c

    .line 454
    if-eqz v0, :cond_32

    .line 459
    sget-object v2, Lokhttp3/internal/framed/ErrorCode;->CANCEL:Lokhttp3/internal/framed/ErrorCode;

    invoke-virtual {p0, v2}, Lokhttp3/internal/framed/FramedStream;->close(Lokhttp3/internal/framed/ErrorCode;)V

    goto :goto_3b

    .line 460
    :cond_32
    if-nez v1, :cond_3b

    .line 461
    iget-object v2, p0, Lokhttp3/internal/framed/FramedStream;->connection:Lokhttp3/internal/framed/FramedConnection;

    iget v3, p0, Lokhttp3/internal/framed/FramedStream;->id:I

    invoke-virtual {v2, v3}, Lokhttp3/internal/framed/FramedConnection;->removeStream(I)Lokhttp3/internal/framed/FramedStream;

    .line 463
    :cond_3b
    :goto_3b
    return-void

    .line 453
    .end local v0    # "cancel":Z
    .end local v1    # "open":Z
    :catchall_3c
    move-exception v0

    :try_start_3d
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v0
.end method

.method private checkOutNotClosed()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 569
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->sink:Lokhttp3/internal/framed/FramedStream$FramedDataSink;

    # getter for: Lokhttp3/internal/framed/FramedStream$FramedDataSink;->closed:Z
    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->access$400(Lokhttp3/internal/framed/FramedStream$FramedDataSink;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 571
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->sink:Lokhttp3/internal/framed/FramedStream$FramedDataSink;

    # getter for: Lokhttp3/internal/framed/FramedStream$FramedDataSink;->finished:Z
    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->access$200(Lokhttp3/internal/framed/FramedStream$FramedDataSink;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 573
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->errorCode:Lokhttp3/internal/framed/ErrorCode;

    if-nez v0, :cond_15

    .line 576
    return-void

    .line 574
    :cond_15
    new-instance v0, Lokhttp3/internal/framed/StreamResetException;

    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream;->errorCode:Lokhttp3/internal/framed/ErrorCode;

    invoke-direct {v0, v1}, Lokhttp3/internal/framed/StreamResetException;-><init>(Lokhttp3/internal/framed/ErrorCode;)V

    throw v0

    .line 572
    :cond_1d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 570
    :cond_25
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private closeInternal(Lokhttp3/internal/framed/ErrorCode;)Z
    .registers 4
    .param p1, "errorCode"    # Lokhttp3/internal/framed/ErrorCode;

    .line 237
    nop

    .line 238
    monitor-enter p0

    .line 239
    :try_start_2
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->errorCode:Lokhttp3/internal/framed/ErrorCode;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 240
    monitor-exit p0

    return v1

    .line 242
    :cond_9
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->source:Lokhttp3/internal/framed/FramedStream$FramedDataSource;

    # getter for: Lokhttp3/internal/framed/FramedStream$FramedDataSource;->finished:Z
    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->access$100(Lokhttp3/internal/framed/FramedStream$FramedDataSource;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->sink:Lokhttp3/internal/framed/FramedStream$FramedDataSink;

    # getter for: Lokhttp3/internal/framed/FramedStream$FramedDataSink;->finished:Z
    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->access$200(Lokhttp3/internal/framed/FramedStream$FramedDataSink;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 243
    monitor-exit p0

    return v1

    .line 245
    :cond_1b
    iput-object p1, p0, Lokhttp3/internal/framed/FramedStream;->errorCode:Lokhttp3/internal/framed/ErrorCode;

    .line 246
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 247
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_2 .. :try_end_21} :catchall_2a

    .line 248
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->connection:Lokhttp3/internal/framed/FramedConnection;

    iget v1, p0, Lokhttp3/internal/framed/FramedStream;->id:I

    invoke-virtual {v0, v1}, Lokhttp3/internal/framed/FramedConnection;->removeStream(I)Lokhttp3/internal/framed/FramedStream;

    .line 249
    const/4 v0, 0x1

    return v0

    .line 247
    :catchall_2a
    move-exception v0

    :try_start_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v0
.end method

.method private waitForIo()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 584
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_5

    .line 587
    nop

    .line 588
    return-void

    .line 585
    :catch_5
    move-exception v0

    .line 586
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    throw v1
.end method


# virtual methods
.method addBytesToWriteWindow(J)V
    .registers 6
    .param p1, "delta"    # J

    .line 564
    iget-wide v0, p0, Lokhttp3/internal/framed/FramedStream;->bytesLeftInWriteWindow:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lokhttp3/internal/framed/FramedStream;->bytesLeftInWriteWindow:J

    .line 565
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_e

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 566
    :cond_e
    return-void
.end method

.method public close(Lokhttp3/internal/framed/ErrorCode;)V
    .registers 4
    .param p1, "rstStatusCode"    # Lokhttp3/internal/framed/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    invoke-direct {p0, p1}, Lokhttp3/internal/framed/FramedStream;->closeInternal(Lokhttp3/internal/framed/ErrorCode;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 219
    return-void

    .line 221
    :cond_7
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->connection:Lokhttp3/internal/framed/FramedConnection;

    iget v1, p0, Lokhttp3/internal/framed/FramedStream;->id:I

    invoke-virtual {v0, v1, p1}, Lokhttp3/internal/framed/FramedConnection;->writeSynReset(ILokhttp3/internal/framed/ErrorCode;)V

    .line 222
    return-void
.end method

.method public closeLater(Lokhttp3/internal/framed/ErrorCode;)V
    .registers 4
    .param p1, "errorCode"    # Lokhttp3/internal/framed/ErrorCode;

    .line 229
    invoke-direct {p0, p1}, Lokhttp3/internal/framed/FramedStream;->closeInternal(Lokhttp3/internal/framed/ErrorCode;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 230
    return-void

    .line 232
    :cond_7
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->connection:Lokhttp3/internal/framed/FramedConnection;

    iget v1, p0, Lokhttp3/internal/framed/FramedStream;->id:I

    invoke-virtual {v0, v1, p1}, Lokhttp3/internal/framed/FramedConnection;->writeSynResetLater(ILokhttp3/internal/framed/ErrorCode;)V

    .line 233
    return-void
.end method

.method public getConnection()Lokhttp3/internal/framed/FramedConnection;
    .registers 2

    .line 124
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->connection:Lokhttp3/internal/framed/FramedConnection;

    return-object v0
.end method

.method public declared-synchronized getErrorCode()Lokhttp3/internal/framed/ErrorCode;
    .registers 2

    monitor-enter p0

    .line 153
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->errorCode:Lokhttp3/internal/framed/ErrorCode;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 153
    .end local p0    # "this":Lokhttp3/internal/framed/FramedStream;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getId()I
    .registers 2

    .line 91
    iget v0, p0, Lokhttp3/internal/framed/FramedStream;->id:I

    return v0
.end method

.method public getRequestHeaders()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/internal/framed/Header;",
            ">;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->requestHeaders:Ljava/util/List;

    return-object v0
.end method

.method public declared-synchronized getResponseHeaders()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/internal/framed/Header;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 136
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->readTimeout:Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedStream$StreamTimeout;->enter()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_2f

    .line 138
    :goto_6
    :try_start_6
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_28

    if-nez v0, :cond_14

    :try_start_a
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->errorCode:Lokhttp3/internal/framed/ErrorCode;

    if-nez v0, :cond_14

    .line 139
    invoke-direct {p0}, Lokhttp3/internal/framed/FramedStream;->waitForIo()V
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_12

    goto :goto_6

    .line 142
    :catchall_12
    move-exception v0

    goto :goto_29

    :cond_14
    :try_start_14
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->readTimeout:Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedStream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 143
    nop

    .line 144
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_2f

    if-eqz v0, :cond_20

    monitor-exit p0

    return-object v0

    .line 145
    :cond_20
    :try_start_20
    new-instance v0, Lokhttp3/internal/framed/StreamResetException;

    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream;->errorCode:Lokhttp3/internal/framed/ErrorCode;

    invoke-direct {v0, v1}, Lokhttp3/internal/framed/StreamResetException;-><init>(Lokhttp3/internal/framed/ErrorCode;)V

    throw v0

    .line 142
    .end local p0    # "this":Lokhttp3/internal/framed/FramedStream;
    :catchall_28
    move-exception v0

    :goto_29
    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream;->readTimeout:Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    invoke-virtual {v1}, Lokhttp3/internal/framed/FramedStream$StreamTimeout;->exitAndThrowIfTimedOut()V

    throw v0
    :try_end_2f
    .catchall {:try_start_20 .. :try_end_2f} :catchall_2f

    .line 135
    :catchall_2f
    move-exception v0

    monitor-exit p0

    goto :goto_33

    :goto_32
    throw v0

    :goto_33
    goto :goto_32
.end method

.method public getSink()Lokio/Sink;
    .registers 3

    .line 205
    monitor-enter p0

    .line 206
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lokhttp3/internal/framed/FramedStream;->isLocallyInitiated()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_14

    .line 207
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "reply before requesting the sink"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_14
    :goto_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_18

    .line 210
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->sink:Lokhttp3/internal/framed/FramedStream$FramedDataSink;

    return-object v0

    .line 209
    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public getSource()Lokio/Source;
    .registers 2

    .line 195
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->source:Lokhttp3/internal/framed/FramedStream$FramedDataSource;

    return-object v0
.end method

.method public isLocallyInitiated()Z
    .registers 5

    .line 119
    iget v0, p0, Lokhttp3/internal/framed/FramedStream;->id:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 120
    .local v0, "streamIsClient":Z
    :goto_a
    iget-object v3, p0, Lokhttp3/internal/framed/FramedStream;->connection:Lokhttp3/internal/framed/FramedConnection;

    iget-boolean v3, v3, Lokhttp3/internal/framed/FramedConnection;->client:Z

    if-ne v3, v0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method

.method public declared-synchronized isOpen()Z
    .registers 3

    monitor-enter p0

    .line 106
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->errorCode:Lokhttp3/internal/framed/ErrorCode;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_31

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 107
    monitor-exit p0

    return v1

    .line 109
    :cond_8
    :try_start_8
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->source:Lokhttp3/internal/framed/FramedStream$FramedDataSource;

    # getter for: Lokhttp3/internal/framed/FramedStream$FramedDataSource;->finished:Z
    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->access$100(Lokhttp3/internal/framed/FramedStream$FramedDataSource;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->source:Lokhttp3/internal/framed/FramedStream$FramedDataSource;

    # getter for: Lokhttp3/internal/framed/FramedStream$FramedDataSource;->closed:Z
    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->access$300(Lokhttp3/internal/framed/FramedStream$FramedDataSource;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .end local p0    # "this":Lokhttp3/internal/framed/FramedStream;
    :cond_18
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->sink:Lokhttp3/internal/framed/FramedStream$FramedDataSink;

    .line 110
    # getter for: Lokhttp3/internal/framed/FramedStream$FramedDataSink;->finished:Z
    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->access$200(Lokhttp3/internal/framed/FramedStream$FramedDataSink;)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->sink:Lokhttp3/internal/framed/FramedStream$FramedDataSink;

    # getter for: Lokhttp3/internal/framed/FramedStream$FramedDataSink;->closed:Z
    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->access$400(Lokhttp3/internal/framed/FramedStream$FramedDataSink;)Z

    move-result v0

    if-eqz v0, :cond_2e

    :cond_28
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_31

    if-eqz v0, :cond_2e

    .line 112
    monitor-exit p0

    return v1

    .line 114
    :cond_2e
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 105
    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public readTimeout()Lokio/Timeout;
    .registers 2

    .line 186
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->readTimeout:Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    return-object v0
.end method

.method receiveData(Lokio/BufferedSource;I)V
    .registers 6
    .param p1, "in"    # Lokio/BufferedSource;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    nop

    .line 285
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->source:Lokhttp3/internal/framed/FramedStream$FramedDataSource;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->receive(Lokio/BufferedSource;J)V

    .line 286
    return-void
.end method

.method receiveFin()V
    .registers 4

    .line 289
    nop

    .line 291
    monitor-enter p0

    .line 292
    :try_start_2
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->source:Lokhttp3/internal/framed/FramedStream$FramedDataSource;

    const/4 v1, 0x1

    # setter for: Lokhttp3/internal/framed/FramedStream$FramedDataSource;->finished:Z
    invoke-static {v0, v1}, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->access$102(Lokhttp3/internal/framed/FramedStream$FramedDataSource;Z)Z

    .line 293
    invoke-virtual {p0}, Lokhttp3/internal/framed/FramedStream;->isOpen()Z

    move-result v0

    .line 294
    .local v0, "open":Z
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 295
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_1a

    .line 296
    if-nez v0, :cond_19

    .line 297
    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream;->connection:Lokhttp3/internal/framed/FramedConnection;

    iget v2, p0, Lokhttp3/internal/framed/FramedStream;->id:I

    invoke-virtual {v1, v2}, Lokhttp3/internal/framed/FramedConnection;->removeStream(I)Lokhttp3/internal/framed/FramedStream;

    .line 299
    :cond_19
    return-void

    .line 295
    .end local v0    # "open":Z
    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method receiveHeaders(Ljava/util/List;Lokhttp3/internal/framed/HeadersMode;)V
    .registers 7
    .param p2, "headersMode"    # Lokhttp3/internal/framed/HeadersMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/internal/framed/Header;",
            ">;",
            "Lokhttp3/internal/framed/HeadersMode;",
            ")V"
        }
    .end annotation

    .line 253
    .local p1, "headers":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    nop

    .line 254
    const/4 v0, 0x0

    .line 255
    .local v0, "errorCode":Lokhttp3/internal/framed/ErrorCode;
    const/4 v1, 0x1

    .line 256
    .local v1, "open":Z
    monitor-enter p0

    .line 257
    :try_start_4
    iget-object v2, p0, Lokhttp3/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;

    if-nez v2, :cond_1d

    .line 258
    invoke-virtual {p2}, Lokhttp3/internal/framed/HeadersMode;->failIfHeadersAbsent()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 259
    sget-object v2, Lokhttp3/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/framed/ErrorCode;

    move-object v0, v2

    goto :goto_36

    .line 261
    :cond_12
    iput-object p1, p0, Lokhttp3/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;

    .line 262
    invoke-virtual {p0}, Lokhttp3/internal/framed/FramedStream;->isOpen()Z

    move-result v2

    move v1, v2

    .line 263
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_36

    .line 266
    :cond_1d
    invoke-virtual {p2}, Lokhttp3/internal/framed/HeadersMode;->failIfHeadersPresent()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 267
    sget-object v2, Lokhttp3/internal/framed/ErrorCode;->STREAM_IN_USE:Lokhttp3/internal/framed/ErrorCode;

    move-object v0, v2

    goto :goto_36

    .line 269
    :cond_27
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .local v2, "newHeaders":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    iget-object v3, p0, Lokhttp3/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 271
    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 272
    iput-object v2, p0, Lokhttp3/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;

    .line 275
    .end local v2    # "newHeaders":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    :goto_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_4 .. :try_end_37} :catchall_47

    .line 276
    if-eqz v0, :cond_3d

    .line 277
    invoke-virtual {p0, v0}, Lokhttp3/internal/framed/FramedStream;->closeLater(Lokhttp3/internal/framed/ErrorCode;)V

    goto :goto_46

    .line 278
    :cond_3d
    if-nez v1, :cond_46

    .line 279
    iget-object v2, p0, Lokhttp3/internal/framed/FramedStream;->connection:Lokhttp3/internal/framed/FramedConnection;

    iget v3, p0, Lokhttp3/internal/framed/FramedStream;->id:I

    invoke-virtual {v2, v3}, Lokhttp3/internal/framed/FramedConnection;->removeStream(I)Lokhttp3/internal/framed/FramedStream;

    .line 281
    :cond_46
    :goto_46
    return-void

    .line 275
    :catchall_47
    move-exception v2

    :try_start_48
    monitor-exit p0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw v2
.end method

.method declared-synchronized receiveRstStream(Lokhttp3/internal/framed/ErrorCode;)V
    .registers 3
    .param p1, "errorCode"    # Lokhttp3/internal/framed/ErrorCode;

    monitor-enter p0

    .line 302
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->errorCode:Lokhttp3/internal/framed/ErrorCode;

    if-nez v0, :cond_a

    .line 303
    iput-object p1, p0, Lokhttp3/internal/framed/FramedStream;->errorCode:Lokhttp3/internal/framed/ErrorCode;

    .line 304
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 306
    .end local p0    # "this":Lokhttp3/internal/framed/FramedStream;
    :cond_a
    monitor-exit p0

    return-void

    .line 301
    .end local p1    # "errorCode":Lokhttp3/internal/framed/ErrorCode;
    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public reply(Ljava/util/List;Z)V
    .registers 6
    .param p2, "out"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/internal/framed/Header;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    .local p1, "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    nop

    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, "outFinished":Z
    monitor-enter p0

    .line 166
    if-eqz p1, :cond_2e

    .line 169
    :try_start_5
    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;

    if-nez v1, :cond_24

    .line 172
    iput-object p1, p0, Lokhttp3/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;

    .line 173
    if-nez p2, :cond_14

    .line 174
    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream;->sink:Lokhttp3/internal/framed/FramedStream$FramedDataSink;

    const/4 v2, 0x1

    # setter for: Lokhttp3/internal/framed/FramedStream$FramedDataSink;->finished:Z
    invoke-static {v1, v2}, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->access$202(Lokhttp3/internal/framed/FramedStream$FramedDataSink;Z)Z

    .line 175
    const/4 v0, 0x1

    .line 177
    :cond_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_2c

    .line 178
    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream;->connection:Lokhttp3/internal/framed/FramedConnection;

    iget v2, p0, Lokhttp3/internal/framed/FramedStream;->id:I

    invoke-virtual {v1, v2, v0, p1}, Lokhttp3/internal/framed/FramedConnection;->writeSynReply(IZLjava/util/List;)V

    .line 180
    if-eqz v0, :cond_23

    .line 181
    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream;->connection:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v1}, Lokhttp3/internal/framed/FramedConnection;->flush()V

    .line 183
    :cond_23
    return-void

    .line 170
    :cond_24
    :try_start_24
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "reply already sent"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "outFinished":Z
    .end local p1    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    .end local p2    # "out":Z
    throw v1

    .line 177
    .restart local v0    # "outFinished":Z
    .restart local p1    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    .restart local p2    # "out":Z
    :catchall_2c
    move-exception v1

    goto :goto_36

    .line 167
    :cond_2e
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "responseHeaders == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v0    # "outFinished":Z
    .end local p1    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    .end local p2    # "out":Z
    throw v1

    .line 177
    .restart local v0    # "outFinished":Z
    .restart local p1    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    .restart local p2    # "out":Z
    :goto_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_24 .. :try_end_37} :catchall_2c

    throw v1
.end method

.method public writeTimeout()Lokio/Timeout;
    .registers 2

    .line 190
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->writeTimeout:Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    return-object v0
.end method
