.class public final Lokhttp3/internal/framed/FramedConnection;
.super Ljava/lang/Object;
.source "FramedConnection.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/framed/FramedConnection$Listener;,
        Lokhttp3/internal/framed/FramedConnection$Reader;,
        Lokhttp3/internal/framed/FramedConnection$Builder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final OKHTTP_CLIENT_WINDOW_SIZE:I = 0x1000000

.field private static final executor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field bytesLeftInWriteWindow:J

.field final client:Z

.field private final currentPushRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final frameWriter:Lokhttp3/internal/framed/FrameWriter;

.field private final hostname:Ljava/lang/String;

.field private lastGoodStreamId:I

.field private final listener:Lokhttp3/internal/framed/FramedConnection$Listener;

.field private nextPingId:I

.field private nextStreamId:I

.field okHttpSettings:Lokhttp3/internal/framed/Settings;

.field final peerSettings:Lokhttp3/internal/framed/Settings;

.field private pings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lokhttp3/internal/framed/Ping;",
            ">;"
        }
    .end annotation
.end field

.field final protocol:Lokhttp3/Protocol;

.field private final pushExecutor:Ljava/util/concurrent/ExecutorService;

.field private final pushObserver:Lokhttp3/internal/framed/PushObserver;

.field final readerRunnable:Lokhttp3/internal/framed/FramedConnection$Reader;

.field private receivedInitialPeerSettings:Z

.field private shutdown:Z

.field final socket:Ljava/net/Socket;

.field private final streams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lokhttp3/internal/framed/FramedStream;",
            ">;"
        }
    .end annotation
.end field

.field unacknowledgedBytesRead:J

.field final variant:Lokhttp3/internal/framed/Variant;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 55
    nop

    .line 69
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const/4 v0, 0x1

    .line 71
    const-string v7, "OkHttp FramedConnection"

    invoke-static {v7, v0}, Lokhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v8, Lokhttp3/internal/framed/FramedConnection;->executor:Ljava/util/concurrent/ExecutorService;

    .line 69
    return-void
.end method

.method private constructor <init>(Lokhttp3/internal/framed/FramedConnection$Builder;)V
    .registers 20
    .param p1, "builder"    # Lokhttp3/internal/framed/FramedConnection$Builder;

    .line 129
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lokhttp3/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    .line 104
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lokhttp3/internal/framed/FramedConnection;->unacknowledgedBytesRead:J

    .line 113
    new-instance v1, Lokhttp3/internal/framed/Settings;

    invoke-direct {v1}, Lokhttp3/internal/framed/Settings;-><init>()V

    iput-object v1, v0, Lokhttp3/internal/framed/FramedConnection;->okHttpSettings:Lokhttp3/internal/framed/Settings;

    .line 119
    new-instance v1, Lokhttp3/internal/framed/Settings;

    invoke-direct {v1}, Lokhttp3/internal/framed/Settings;-><init>()V

    iput-object v1, v0, Lokhttp3/internal/framed/FramedConnection;->peerSettings:Lokhttp3/internal/framed/Settings;

    .line 121
    const/4 v2, 0x0

    iput-boolean v2, v0, Lokhttp3/internal/framed/FramedConnection;->receivedInitialPeerSettings:Z

    .line 816
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v3, v0, Lokhttp3/internal/framed/FramedConnection;->currentPushRequests:Ljava/util/Set;

    .line 130
    # getter for: Lokhttp3/internal/framed/FramedConnection$Builder;->protocol:Lokhttp3/Protocol;
    invoke-static/range {p1 .. p1}, Lokhttp3/internal/framed/FramedConnection$Builder;->access$000(Lokhttp3/internal/framed/FramedConnection$Builder;)Lokhttp3/Protocol;

    move-result-object v3

    iput-object v3, v0, Lokhttp3/internal/framed/FramedConnection;->protocol:Lokhttp3/Protocol;

    .line 131
    # getter for: Lokhttp3/internal/framed/FramedConnection$Builder;->pushObserver:Lokhttp3/internal/framed/PushObserver;
    invoke-static/range {p1 .. p1}, Lokhttp3/internal/framed/FramedConnection$Builder;->access$100(Lokhttp3/internal/framed/FramedConnection$Builder;)Lokhttp3/internal/framed/PushObserver;

    move-result-object v4

    iput-object v4, v0, Lokhttp3/internal/framed/FramedConnection;->pushObserver:Lokhttp3/internal/framed/PushObserver;

    .line 132
    # getter for: Lokhttp3/internal/framed/FramedConnection$Builder;->client:Z
    invoke-static/range {p1 .. p1}, Lokhttp3/internal/framed/FramedConnection$Builder;->access$200(Lokhttp3/internal/framed/FramedConnection$Builder;)Z

    move-result v4

    iput-boolean v4, v0, Lokhttp3/internal/framed/FramedConnection;->client:Z

    .line 133
    # getter for: Lokhttp3/internal/framed/FramedConnection$Builder;->listener:Lokhttp3/internal/framed/FramedConnection$Listener;
    invoke-static/range {p1 .. p1}, Lokhttp3/internal/framed/FramedConnection$Builder;->access$300(Lokhttp3/internal/framed/FramedConnection$Builder;)Lokhttp3/internal/framed/FramedConnection$Listener;

    move-result-object v5

    iput-object v5, v0, Lokhttp3/internal/framed/FramedConnection;->listener:Lokhttp3/internal/framed/FramedConnection$Listener;

    .line 135
    # getter for: Lokhttp3/internal/framed/FramedConnection$Builder;->client:Z
    invoke-static/range {p1 .. p1}, Lokhttp3/internal/framed/FramedConnection$Builder;->access$200(Lokhttp3/internal/framed/FramedConnection$Builder;)Z

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v5, :cond_4a

    const/4 v5, 0x1

    goto :goto_4b

    :cond_4a
    const/4 v5, 0x2

    :goto_4b
    iput v5, v0, Lokhttp3/internal/framed/FramedConnection;->nextStreamId:I

    .line 136
    # getter for: Lokhttp3/internal/framed/FramedConnection$Builder;->client:Z
    invoke-static/range {p1 .. p1}, Lokhttp3/internal/framed/FramedConnection$Builder;->access$200(Lokhttp3/internal/framed/FramedConnection$Builder;)Z

    move-result v5

    if-eqz v5, :cond_5c

    sget-object v5, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    if-ne v3, v5, :cond_5c

    .line 137
    iget v5, v0, Lokhttp3/internal/framed/FramedConnection;->nextStreamId:I

    add-int/2addr v5, v6

    iput v5, v0, Lokhttp3/internal/framed/FramedConnection;->nextStreamId:I

    .line 140
    :cond_5c
    # getter for: Lokhttp3/internal/framed/FramedConnection$Builder;->client:Z
    invoke-static/range {p1 .. p1}, Lokhttp3/internal/framed/FramedConnection$Builder;->access$200(Lokhttp3/internal/framed/FramedConnection$Builder;)Z

    move-result v5

    if-eqz v5, :cond_63

    const/4 v6, 0x1

    :cond_63
    iput v6, v0, Lokhttp3/internal/framed/FramedConnection;->nextPingId:I

    .line 146
    # getter for: Lokhttp3/internal/framed/FramedConnection$Builder;->client:Z
    invoke-static/range {p1 .. p1}, Lokhttp3/internal/framed/FramedConnection$Builder;->access$200(Lokhttp3/internal/framed/FramedConnection$Builder;)Z

    move-result v5

    const/4 v6, 0x7

    if-eqz v5, :cond_73

    .line 147
    iget-object v5, v0, Lokhttp3/internal/framed/FramedConnection;->okHttpSettings:Lokhttp3/internal/framed/Settings;

    const/high16 v8, 0x1000000

    invoke-virtual {v5, v6, v2, v8}, Lokhttp3/internal/framed/Settings;->set(III)Lokhttp3/internal/framed/Settings;

    .line 150
    :cond_73
    # getter for: Lokhttp3/internal/framed/FramedConnection$Builder;->hostname:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lokhttp3/internal/framed/FramedConnection$Builder;->access$400(Lokhttp3/internal/framed/FramedConnection$Builder;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lokhttp3/internal/framed/FramedConnection;->hostname:Ljava/lang/String;

    .line 152
    sget-object v8, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    const/4 v9, 0x0

    if-ne v3, v8, :cond_b3

    .line 153
    new-instance v3, Lokhttp3/internal/framed/Http2;

    invoke-direct {v3}, Lokhttp3/internal/framed/Http2;-><init>()V

    iput-object v3, v0, Lokhttp3/internal/framed/FramedConnection;->variant:Lokhttp3/internal/framed/Variant;

    .line 155
    new-instance v3, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const-wide/16 v13, 0x3c

    sget-object v15, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v16, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct/range {v16 .. v16}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-array v8, v7, [Ljava/lang/Object;

    aput-object v5, v8, v2

    .line 157
    const-string v5, "OkHttp %s Push Observer"

    invoke-static {v5, v8}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Lokhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v17

    move-object v10, v3

    invoke-direct/range {v10 .. v17}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v3, v0, Lokhttp3/internal/framed/FramedConnection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    .line 159
    const v3, 0xffff

    invoke-virtual {v1, v6, v2, v3}, Lokhttp3/internal/framed/Settings;->set(III)Lokhttp3/internal/framed/Settings;

    .line 160
    const/4 v3, 0x5

    const/16 v5, 0x4000

    invoke-virtual {v1, v3, v2, v5}, Lokhttp3/internal/framed/Settings;->set(III)Lokhttp3/internal/framed/Settings;

    goto :goto_c0

    .line 161
    :cond_b3
    sget-object v2, Lokhttp3/Protocol;->SPDY_3:Lokhttp3/Protocol;

    if-ne v3, v2, :cond_ed

    .line 162
    new-instance v2, Lokhttp3/internal/framed/Spdy3;

    invoke-direct {v2}, Lokhttp3/internal/framed/Spdy3;-><init>()V

    iput-object v2, v0, Lokhttp3/internal/framed/FramedConnection;->variant:Lokhttp3/internal/framed/Variant;

    .line 163
    iput-object v9, v0, Lokhttp3/internal/framed/FramedConnection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    .line 167
    :goto_c0
    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Lokhttp3/internal/framed/Settings;->getInitialWindowSize(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, Lokhttp3/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    .line 168
    # getter for: Lokhttp3/internal/framed/FramedConnection$Builder;->socket:Ljava/net/Socket;
    invoke-static/range {p1 .. p1}, Lokhttp3/internal/framed/FramedConnection$Builder;->access$500(Lokhttp3/internal/framed/FramedConnection$Builder;)Ljava/net/Socket;

    move-result-object v1

    iput-object v1, v0, Lokhttp3/internal/framed/FramedConnection;->socket:Ljava/net/Socket;

    .line 169
    iget-object v1, v0, Lokhttp3/internal/framed/FramedConnection;->variant:Lokhttp3/internal/framed/Variant;

    # getter for: Lokhttp3/internal/framed/FramedConnection$Builder;->sink:Lokio/BufferedSink;
    invoke-static/range {p1 .. p1}, Lokhttp3/internal/framed/FramedConnection$Builder;->access$600(Lokhttp3/internal/framed/FramedConnection$Builder;)Lokio/BufferedSink;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Lokhttp3/internal/framed/Variant;->newWriter(Lokio/BufferedSink;Z)Lokhttp3/internal/framed/FrameWriter;

    move-result-object v1

    iput-object v1, v0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    .line 171
    new-instance v1, Lokhttp3/internal/framed/FramedConnection$Reader;

    iget-object v2, v0, Lokhttp3/internal/framed/FramedConnection;->variant:Lokhttp3/internal/framed/Variant;

    # getter for: Lokhttp3/internal/framed/FramedConnection$Builder;->source:Lokio/BufferedSource;
    invoke-static/range {p1 .. p1}, Lokhttp3/internal/framed/FramedConnection$Builder;->access$700(Lokhttp3/internal/framed/FramedConnection$Builder;)Lokio/BufferedSource;

    move-result-object v3

    invoke-interface {v2, v3, v4}, Lokhttp3/internal/framed/Variant;->newReader(Lokio/BufferedSource;Z)Lokhttp3/internal/framed/FrameReader;

    move-result-object v2

    invoke-direct {v1, v0, v2, v9}, Lokhttp3/internal/framed/FramedConnection$Reader;-><init>(Lokhttp3/internal/framed/FramedConnection;Lokhttp3/internal/framed/FrameReader;Lokhttp3/internal/framed/FramedConnection$1;)V

    iput-object v1, v0, Lokhttp3/internal/framed/FramedConnection;->readerRunnable:Lokhttp3/internal/framed/FramedConnection$Reader;

    .line 172
    return-void

    .line 165
    :cond_ed
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method synthetic constructor <init>(Lokhttp3/internal/framed/FramedConnection$Builder;Lokhttp3/internal/framed/FramedConnection$1;)V
    .registers 3
    .param p1, "x0"    # Lokhttp3/internal/framed/FramedConnection$Builder;
    .param p2, "x1"    # Lokhttp3/internal/framed/FramedConnection$1;

    .line 55
    invoke-direct {p0, p1}, Lokhttp3/internal/framed/FramedConnection;-><init>(Lokhttp3/internal/framed/FramedConnection$Builder;)V

    return-void
.end method

.method static synthetic access$1100(Lokhttp3/internal/framed/FramedConnection;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/framed/FramedConnection;

    .line 55
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lokhttp3/internal/framed/FramedConnection;Lokhttp3/internal/framed/ErrorCode;Lokhttp3/internal/framed/ErrorCode;)V
    .registers 3
    .param p0, "x0"    # Lokhttp3/internal/framed/FramedConnection;
    .param p1, "x1"    # Lokhttp3/internal/framed/ErrorCode;
    .param p2, "x2"    # Lokhttp3/internal/framed/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/framed/FramedConnection;->close(Lokhttp3/internal/framed/ErrorCode;Lokhttp3/internal/framed/ErrorCode;)V

    return-void
.end method

.method static synthetic access$1300(Lokhttp3/internal/framed/FramedConnection;I)Z
    .registers 3
    .param p0, "x0"    # Lokhttp3/internal/framed/FramedConnection;
    .param p1, "x1"    # I

    .line 55
    invoke-direct {p0, p1}, Lokhttp3/internal/framed/FramedConnection;->pushedStream(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lokhttp3/internal/framed/FramedConnection;ILokio/BufferedSource;IZ)V
    .registers 5
    .param p0, "x0"    # Lokhttp3/internal/framed/FramedConnection;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lokio/BufferedSource;
    .param p3, "x3"    # I
    .param p4, "x4"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lokhttp3/internal/framed/FramedConnection;->pushDataLater(ILokio/BufferedSource;IZ)V

    return-void
.end method

.method static synthetic access$1500(Lokhttp3/internal/framed/FramedConnection;ILjava/util/List;Z)V
    .registers 4
    .param p0, "x0"    # Lokhttp3/internal/framed/FramedConnection;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Z

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/internal/framed/FramedConnection;->pushHeadersLater(ILjava/util/List;Z)V

    return-void
.end method

.method static synthetic access$1600(Lokhttp3/internal/framed/FramedConnection;)Z
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/framed/FramedConnection;

    .line 55
    iget-boolean v0, p0, Lokhttp3/internal/framed/FramedConnection;->shutdown:Z

    return v0
.end method

.method static synthetic access$1602(Lokhttp3/internal/framed/FramedConnection;Z)Z
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/framed/FramedConnection;
    .param p1, "x1"    # Z

    .line 55
    iput-boolean p1, p0, Lokhttp3/internal/framed/FramedConnection;->shutdown:Z

    return p1
.end method

.method static synthetic access$1700(Lokhttp3/internal/framed/FramedConnection;)I
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/framed/FramedConnection;

    .line 55
    iget v0, p0, Lokhttp3/internal/framed/FramedConnection;->lastGoodStreamId:I

    return v0
.end method

.method static synthetic access$1702(Lokhttp3/internal/framed/FramedConnection;I)I
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/framed/FramedConnection;
    .param p1, "x1"    # I

    .line 55
    iput p1, p0, Lokhttp3/internal/framed/FramedConnection;->lastGoodStreamId:I

    return p1
.end method

.method static synthetic access$1800(Lokhttp3/internal/framed/FramedConnection;)I
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/framed/FramedConnection;

    .line 55
    iget v0, p0, Lokhttp3/internal/framed/FramedConnection;->nextStreamId:I

    return v0
.end method

.method static synthetic access$1900(Lokhttp3/internal/framed/FramedConnection;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/framed/FramedConnection;

    .line 55
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2000(Lokhttp3/internal/framed/FramedConnection;)Lokhttp3/internal/framed/FramedConnection$Listener;
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/framed/FramedConnection;

    .line 55
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->listener:Lokhttp3/internal/framed/FramedConnection$Listener;

    return-object v0
.end method

.method static synthetic access$2100()Ljava/util/concurrent/ExecutorService;
    .registers 1

    .line 55
    sget-object v0, Lokhttp3/internal/framed/FramedConnection;->executor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$2200(Lokhttp3/internal/framed/FramedConnection;ILokhttp3/internal/framed/ErrorCode;)V
    .registers 3
    .param p0, "x0"    # Lokhttp3/internal/framed/FramedConnection;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lokhttp3/internal/framed/ErrorCode;

    .line 55
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/framed/FramedConnection;->pushResetLater(ILokhttp3/internal/framed/ErrorCode;)V

    return-void
.end method

.method static synthetic access$2300(Lokhttp3/internal/framed/FramedConnection;)Z
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/framed/FramedConnection;

    .line 55
    iget-boolean v0, p0, Lokhttp3/internal/framed/FramedConnection;->receivedInitialPeerSettings:Z

    return v0
.end method

.method static synthetic access$2302(Lokhttp3/internal/framed/FramedConnection;Z)Z
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/framed/FramedConnection;
    .param p1, "x1"    # Z

    .line 55
    iput-boolean p1, p0, Lokhttp3/internal/framed/FramedConnection;->receivedInitialPeerSettings:Z

    return p1
.end method

.method static synthetic access$2400(Lokhttp3/internal/framed/FramedConnection;I)Lokhttp3/internal/framed/Ping;
    .registers 3
    .param p0, "x0"    # Lokhttp3/internal/framed/FramedConnection;
    .param p1, "x1"    # I

    .line 55
    invoke-direct {p0, p1}, Lokhttp3/internal/framed/FramedConnection;->removePing(I)Lokhttp3/internal/framed/Ping;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lokhttp3/internal/framed/FramedConnection;ZIILokhttp3/internal/framed/Ping;)V
    .registers 5
    .param p0, "x0"    # Lokhttp3/internal/framed/FramedConnection;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Lokhttp3/internal/framed/Ping;

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lokhttp3/internal/framed/FramedConnection;->writePingLater(ZIILokhttp3/internal/framed/Ping;)V

    return-void
.end method

.method static synthetic access$2600(Lokhttp3/internal/framed/FramedConnection;ILjava/util/List;)V
    .registers 3
    .param p0, "x0"    # Lokhttp3/internal/framed/FramedConnection;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/List;

    .line 55
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/framed/FramedConnection;->pushRequestLater(ILjava/util/List;)V

    return-void
.end method

.method static synthetic access$2700(Lokhttp3/internal/framed/FramedConnection;)Lokhttp3/internal/framed/PushObserver;
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/framed/FramedConnection;

    .line 55
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->pushObserver:Lokhttp3/internal/framed/PushObserver;

    return-object v0
.end method

.method static synthetic access$2800(Lokhttp3/internal/framed/FramedConnection;)Ljava/util/Set;
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/framed/FramedConnection;

    .line 55
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->currentPushRequests:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$900(Lokhttp3/internal/framed/FramedConnection;ZIILokhttp3/internal/framed/Ping;)V
    .registers 5
    .param p0, "x0"    # Lokhttp3/internal/framed/FramedConnection;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Lokhttp3/internal/framed/Ping;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lokhttp3/internal/framed/FramedConnection;->writePing(ZIILokhttp3/internal/framed/Ping;)V

    return-void
.end method

.method private close(Lokhttp3/internal/framed/ErrorCode;Lokhttp3/internal/framed/ErrorCode;)V
    .registers 11
    .param p1, "connectionCode"    # Lokhttp3/internal/framed/ErrorCode;
    .param p2, "streamCode"    # Lokhttp3/internal/framed/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 427
    nop

    .line 428
    const/4 v0, 0x0

    .line 430
    .local v0, "thrown":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {p0, p1}, Lokhttp3/internal/framed/FramedConnection;->shutdown(Lokhttp3/internal/framed/ErrorCode;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 433
    goto :goto_8

    .line 431
    :catch_6
    move-exception v1

    .line 432
    .local v1, "e":Ljava/io/IOException;
    move-object v0, v1

    .line 435
    .end local v1    # "e":Ljava/io/IOException;
    :goto_8
    const/4 v1, 0x0

    .line 436
    .local v1, "streamsToClose":[Lokhttp3/internal/framed/FramedStream;
    const/4 v2, 0x0

    .line 437
    .local v2, "pingsToCancel":[Lokhttp3/internal/framed/Ping;
    monitor-enter p0

    .line 438
    :try_start_b
    iget-object v3, p0, Lokhttp3/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2d

    .line 439
    iget-object v3, p0, Lokhttp3/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    iget-object v4, p0, Lokhttp3/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Lokhttp3/internal/framed/FramedStream;

    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lokhttp3/internal/framed/FramedStream;

    move-object v1, v3

    .line 440
    iget-object v3, p0, Lokhttp3/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 442
    :cond_2d
    iget-object v3, p0, Lokhttp3/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    if-eqz v3, :cond_47

    .line 443
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    iget-object v4, p0, Lokhttp3/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Lokhttp3/internal/framed/Ping;

    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lokhttp3/internal/framed/Ping;

    move-object v2, v3

    .line 444
    const/4 v3, 0x0

    iput-object v3, p0, Lokhttp3/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    .line 446
    :cond_47
    monitor-exit p0
    :try_end_48
    .catchall {:try_start_b .. :try_end_48} :catchall_7f

    .line 448
    const/4 v3, 0x0

    if-eqz v1, :cond_5c

    .line 449
    array-length v4, v1

    const/4 v5, 0x0

    :goto_4d
    if-ge v5, v4, :cond_5c

    aget-object v6, v1, v5

    .line 451
    .local v6, "stream":Lokhttp3/internal/framed/FramedStream;
    :try_start_51
    invoke-virtual {v6, p2}, Lokhttp3/internal/framed/FramedStream;->close(Lokhttp3/internal/framed/ErrorCode;)V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_55

    .line 454
    goto :goto_59

    .line 452
    :catch_55
    move-exception v7

    .line 453
    .local v7, "e":Ljava/io/IOException;
    if-eqz v0, :cond_59

    move-object v0, v7

    .line 449
    .end local v6    # "stream":Lokhttp3/internal/framed/FramedStream;
    .end local v7    # "e":Ljava/io/IOException;
    :cond_59
    :goto_59
    add-int/lit8 v5, v5, 0x1

    goto :goto_4d

    .line 458
    :cond_5c
    if-eqz v2, :cond_69

    .line 459
    array-length v4, v2

    :goto_5f
    if-ge v3, v4, :cond_69

    aget-object v5, v2, v3

    .line 460
    .local v5, "ping":Lokhttp3/internal/framed/Ping;
    invoke-virtual {v5}, Lokhttp3/internal/framed/Ping;->cancel()V

    .line 459
    .end local v5    # "ping":Lokhttp3/internal/framed/Ping;
    add-int/lit8 v3, v3, 0x1

    goto :goto_5f

    .line 466
    :cond_69
    :try_start_69
    iget-object v3, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    invoke-interface {v3}, Lokhttp3/internal/framed/FrameWriter;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6e} :catch_6f

    .line 469
    goto :goto_73

    .line 467
    :catch_6f
    move-exception v3

    .line 468
    .local v3, "e":Ljava/io/IOException;
    if-nez v0, :cond_73

    move-object v0, v3

    .line 473
    .end local v3    # "e":Ljava/io/IOException;
    :cond_73
    :goto_73
    :try_start_73
    iget-object v3, p0, Lokhttp3/internal/framed/FramedConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_78} :catch_79

    .line 476
    goto :goto_7b

    .line 474
    :catch_79
    move-exception v3

    .line 475
    .restart local v3    # "e":Ljava/io/IOException;
    move-object v0, v3

    .line 478
    .end local v3    # "e":Ljava/io/IOException;
    :goto_7b
    if-nez v0, :cond_7e

    .line 479
    return-void

    .line 478
    :cond_7e
    throw v0

    .line 446
    :catchall_7f
    move-exception v3

    :try_start_80
    monitor-exit p0
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7f

    goto :goto_83

    :goto_82
    throw v3

    :goto_83
    goto :goto_82
.end method

.method private newStream(ILjava/util/List;ZZ)Lokhttp3/internal/framed/FramedStream;
    .registers 21
    .param p1, "associatedStreamId"    # I
    .param p3, "out"    # Z
    .param p4, "in"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lokhttp3/internal/framed/Header;",
            ">;ZZ)",
            "Lokhttp3/internal/framed/FramedStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    .local p2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    move-object/from16 v7, p0

    move/from16 v14, p1

    xor-int/lit8 v4, p3, 0x1

    .line 230
    .local v4, "outFinished":Z
    xor-int/lit8 v5, p4, 0x1

    .line 235
    .local v5, "inFinished":Z
    iget-object v15, v7, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    monitor-enter v15

    .line 236
    :try_start_b
    monitor-enter p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_88

    .line 237
    :try_start_c
    iget-boolean v0, v7, Lokhttp3/internal/framed/FramedConnection;->shutdown:Z

    if-nez v0, :cond_77

    .line 240
    iget v0, v7, Lokhttp3/internal/framed/FramedConnection;->nextStreamId:I

    move v13, v0

    .line 241
    .local v13, "streamId":I
    add-int/lit8 v0, v0, 0x2

    iput v0, v7, Lokhttp3/internal/framed/FramedConnection;->nextStreamId:I

    .line 242
    new-instance v0, Lokhttp3/internal/framed/FramedStream;

    move-object v1, v0

    move v2, v13

    move-object/from16 v3, p0

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lokhttp3/internal/framed/FramedStream;-><init>(ILokhttp3/internal/framed/FramedConnection;ZZLjava/util/List;)V

    .line 243
    .local v0, "stream":Lokhttp3/internal/framed/FramedStream;
    if-eqz p3, :cond_35

    iget-wide v1, v7, Lokhttp3/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    const-wide/16 v8, 0x0

    cmp-long v3, v1, v8

    if-eqz v3, :cond_35

    iget-wide v1, v0, Lokhttp3/internal/framed/FramedStream;->bytesLeftInWriteWindow:J

    cmp-long v3, v1, v8

    if-nez v3, :cond_33

    goto :goto_35

    :cond_33
    const/4 v1, 0x0

    goto :goto_36

    :cond_35
    :goto_35
    const/4 v1, 0x1

    .line 244
    .local v1, "flushHeaders":Z
    :goto_36
    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedStream;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 245
    iget-object v2, v7, Lokhttp3/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    :cond_45
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_c .. :try_end_46} :catchall_81

    .line 248
    if-nez v14, :cond_58

    .line 249
    :try_start_48
    iget-object v8, v7, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    move v9, v4

    move v10, v5

    move v11, v13

    move/from16 v12, p1

    move v2, v13

    .end local v13    # "streamId":I
    .local v2, "streamId":I
    move-object/from16 v13, p2

    invoke-interface/range {v8 .. v13}, Lokhttp3/internal/framed/FrameWriter;->synStream(ZZIILjava/util/List;)V

    move-object/from16 v6, p2

    goto :goto_64

    .line 251
    .end local v2    # "streamId":I
    .restart local v13    # "streamId":I
    :cond_58
    move v2, v13

    .end local v13    # "streamId":I
    .restart local v2    # "streamId":I
    iget-boolean v3, v7, Lokhttp3/internal/framed/FramedConnection;->client:Z

    if-nez v3, :cond_6d

    .line 254
    iget-object v3, v7, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;
    :try_end_5f
    .catchall {:try_start_48 .. :try_end_5f} :catchall_88

    move-object/from16 v6, p2

    :try_start_61
    invoke-interface {v3, v14, v2, v6}, Lokhttp3/internal/framed/FrameWriter;->pushPromise(IILjava/util/List;)V

    .line 256
    :goto_64
    monitor-exit v15
    :try_end_65
    .catchall {:try_start_61 .. :try_end_65} :catchall_8d

    .line 258
    if-eqz v1, :cond_6c

    .line 259
    iget-object v3, v7, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    invoke-interface {v3}, Lokhttp3/internal/framed/FrameWriter;->flush()V

    .line 262
    :cond_6c
    return-object v0

    .line 252
    :cond_6d
    move-object/from16 v6, p2

    :try_start_6f
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v8, "client streams shouldn\'t have associated stream IDs"

    invoke-direct {v3, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v4    # "outFinished":Z
    .end local v5    # "inFinished":Z
    .end local p1    # "associatedStreamId":I
    .end local p2    # "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    .end local p3    # "out":Z
    .end local p4    # "in":Z
    throw v3
    :try_end_77
    .catchall {:try_start_6f .. :try_end_77} :catchall_8d

    .line 238
    .end local v0    # "stream":Lokhttp3/internal/framed/FramedStream;
    .end local v1    # "flushHeaders":Z
    .end local v2    # "streamId":I
    .restart local v4    # "outFinished":Z
    .restart local v5    # "inFinished":Z
    .restart local p1    # "associatedStreamId":I
    .restart local p2    # "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    .restart local p3    # "out":Z
    .restart local p4    # "in":Z
    :cond_77
    move-object/from16 v6, p2

    :try_start_79
    new-instance v0, Ljava/io/IOException;

    const-string v1, "shutdown"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v4    # "outFinished":Z
    .end local v5    # "inFinished":Z
    .end local p1    # "associatedStreamId":I
    .end local p2    # "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    .end local p3    # "out":Z
    .end local p4    # "in":Z
    throw v0

    .line 247
    .restart local v4    # "outFinished":Z
    .restart local v5    # "inFinished":Z
    .restart local p1    # "associatedStreamId":I
    .restart local p2    # "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    .restart local p3    # "out":Z
    .restart local p4    # "in":Z
    :catchall_81
    move-exception v0

    move-object/from16 v6, p2

    :goto_84
    monitor-exit p0
    :try_end_85
    .catchall {:try_start_79 .. :try_end_85} :catchall_86

    .end local v4    # "outFinished":Z
    .end local v5    # "inFinished":Z
    .end local p1    # "associatedStreamId":I
    .end local p2    # "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    .end local p3    # "out":Z
    .end local p4    # "in":Z
    :try_start_85
    throw v0

    .restart local v4    # "outFinished":Z
    .restart local v5    # "inFinished":Z
    .restart local p1    # "associatedStreamId":I
    .restart local p2    # "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    .restart local p3    # "out":Z
    .restart local p4    # "in":Z
    :catchall_86
    move-exception v0

    goto :goto_84

    .line 256
    :catchall_88
    move-exception v0

    move-object/from16 v6, p2

    :goto_8b
    monitor-exit v15
    :try_end_8c
    .catchall {:try_start_85 .. :try_end_8c} :catchall_8d

    throw v0

    :catchall_8d
    move-exception v0

    goto :goto_8b
.end method

.method private pushDataLater(ILokio/BufferedSource;IZ)V
    .registers 16
    .param p1, "streamId"    # I
    .param p2, "source"    # Lokio/BufferedSource;
    .param p3, "byteCount"    # I
    .param p4, "inFinished"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 866
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 867
    .local v0, "buffer":Lokio/Buffer;
    int-to-long v1, p3

    invoke-interface {p2, v1, v2}, Lokio/BufferedSource;->require(J)V

    .line 868
    int-to-long v1, p3

    invoke-interface {p2, v0, v1, v2}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    .line 869
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v1

    int-to-long v3, p3

    cmp-long v5, v1, v3

    if-nez v5, :cond_38

    .line 870
    iget-object v9, p0, Lokhttp3/internal/framed/FramedConnection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v10, Lokhttp3/internal/framed/FramedConnection$6;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection;->hostname:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    const-string v3, "OkHttp %s Push Data[%s]"

    move-object v1, v10

    move-object v2, p0

    move v5, p1

    move-object v6, v0

    move v7, p3

    move v8, p4

    invoke-direct/range {v1 .. v8}, Lokhttp3/internal/framed/FramedConnection$6;-><init>(Lokhttp3/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILokio/Buffer;IZ)V

    invoke-interface {v9, v10}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 884
    return-void

    .line 869
    :cond_38
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " != "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private pushHeadersLater(ILjava/util/List;Z)V
    .registers 13
    .param p1, "streamId"    # I
    .param p3, "inFinished"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lokhttp3/internal/framed/Header;",
            ">;Z)V"
        }
    .end annotation

    .line 844
    .local p2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lokhttp3/internal/framed/FramedConnection$5;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->hostname:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    const-string v3, "OkHttp %s Push Headers[%s]"

    move-object v1, v8

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lokhttp3/internal/framed/FramedConnection$5;-><init>(Lokhttp3/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 858
    return-void
.end method

.method private pushRequestLater(ILjava/util/List;)V
    .registers 11
    .param p1, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lokhttp3/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .line 819
    .local p2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    monitor-enter p0

    .line 820
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->currentPushRequests:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 821
    sget-object v0, Lokhttp3/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/framed/ErrorCode;

    invoke-virtual {p0, p1, v0}, Lokhttp3/internal/framed/FramedConnection;->writeSynResetLater(ILokhttp3/internal/framed/ErrorCode;)V

    .line 822
    monitor-exit p0

    return-void

    .line 824
    :cond_14
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->currentPushRequests:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 825
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_3e

    .line 826
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lokhttp3/internal/framed/FramedConnection$4;

    const-string v3, "OkHttp %s Push Request[%s]"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection;->hostname:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lokhttp3/internal/framed/FramedConnection$4;-><init>(Lokhttp3/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 840
    return-void

    .line 825
    :catchall_3e
    move-exception v0

    :try_start_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v0
.end method

.method private pushResetLater(ILokhttp3/internal/framed/ErrorCode;)V
    .registers 11
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lokhttp3/internal/framed/ErrorCode;

    .line 887
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lokhttp3/internal/framed/FramedConnection$7;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->hostname:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    const-string v3, "OkHttp %s Push Reset[%s]"

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lokhttp3/internal/framed/FramedConnection$7;-><init>(Lokhttp3/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILokhttp3/internal/framed/ErrorCode;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 895
    return-void
.end method

.method private pushedStream(I)Z
    .registers 4
    .param p1, "streamId"    # I

    .line 812
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->protocol:Lokhttp3/Protocol;

    sget-object v1, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    if-ne v0, v1, :cond_e

    if-eqz p1, :cond_e

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private declared-synchronized removePing(I)Lokhttp3/internal/framed/Ping;
    .registers 4
    .param p1, "id"    # I

    monitor-enter p0

    .line 391
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    if-eqz v0, :cond_10

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/framed/Ping;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_13

    goto :goto_11

    .end local p0    # "this":Lokhttp3/internal/framed/FramedConnection;
    :cond_10
    const/4 v0, 0x0

    :goto_11
    monitor-exit p0

    return-object v0

    .line 391
    .end local p1    # "id":I
    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private writePing(ZIILokhttp3/internal/framed/Ping;)V
    .registers 7
    .param p1, "reply"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I
    .param p4, "ping"    # Lokhttp3/internal/framed/Ping;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    monitor-enter v0

    .line 385
    if-eqz p4, :cond_8

    :try_start_5
    invoke-virtual {p4}, Lokhttp3/internal/framed/Ping;->send()V

    .line 386
    :cond_8
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    invoke-interface {v1, p1, p2, p3}, Lokhttp3/internal/framed/FrameWriter;->ping(ZII)V

    .line 387
    monitor-exit v0

    .line 388
    return-void

    .line 387
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw v1
.end method

.method private writePingLater(ZIILokhttp3/internal/framed/Ping;)V
    .registers 15
    .param p1, "reply"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I
    .param p4, "ping"    # Lokhttp3/internal/framed/Ping;

    .line 371
    sget-object v0, Lokhttp3/internal/framed/FramedConnection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v9, Lokhttp3/internal/framed/FramedConnection$3;

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->hostname:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    .line 372
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v4, v2

    const-string v3, "OkHttp %s ping %08x%08x"

    move-object v1, v9

    move-object v2, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lokhttp3/internal/framed/FramedConnection$3;-><init>(Lokhttp3/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ZIILokhttp3/internal/framed/Ping;)V

    .line 371
    invoke-interface {v0, v9}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 380
    return-void
.end method


# virtual methods
.method addBytesToWriteWindow(J)V
    .registers 6
    .param p1, "delta"    # J

    .line 319
    iget-wide v0, p0, Lokhttp3/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lokhttp3/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    .line 320
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_e

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 321
    :cond_e
    return-void
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 423
    sget-object v0, Lokhttp3/internal/framed/ErrorCode;->NO_ERROR:Lokhttp3/internal/framed/ErrorCode;

    sget-object v1, Lokhttp3/internal/framed/ErrorCode;->CANCEL:Lokhttp3/internal/framed/ErrorCode;

    invoke-direct {p0, v0, v1}, Lokhttp3/internal/framed/FramedConnection;->close(Lokhttp3/internal/framed/ErrorCode;Lokhttp3/internal/framed/ErrorCode;)V

    .line 424
    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 395
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    invoke-interface {v0}, Lokhttp3/internal/framed/FrameWriter;->flush()V

    .line 396
    return-void
.end method

.method public getProtocol()Lokhttp3/Protocol;
    .registers 2

    .line 176
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->protocol:Lokhttp3/Protocol;

    return-object v0
.end method

.method declared-synchronized getStream(I)Lokhttp3/internal/framed/FramedStream;
    .registers 4
    .param p1, "id"    # I

    monitor-enter p0

    .line 187
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/framed/FramedStream;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    .line 187
    .end local p0    # "this":Lokhttp3/internal/framed/FramedConnection;
    .end local p1    # "id":I
    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized maxConcurrentStreams()I
    .registers 3

    monitor-enter p0

    .line 197
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->peerSettings:Lokhttp3/internal/framed/Settings;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lokhttp3/internal/framed/Settings;->getMaxConcurrentStreams(I)I

    move-result v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return v0

    .line 197
    .end local p0    # "this":Lokhttp3/internal/framed/FramedConnection;
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public newStream(Ljava/util/List;ZZ)Lokhttp3/internal/framed/FramedStream;
    .registers 5
    .param p2, "out"    # Z
    .param p3, "in"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/internal/framed/Header;",
            ">;ZZ)",
            "Lokhttp3/internal/framed/FramedStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    .local p1, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lokhttp3/internal/framed/FramedConnection;->newStream(ILjava/util/List;ZZ)Lokhttp3/internal/framed/FramedStream;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized openStreamCount()I
    .registers 2

    monitor-enter p0

    .line 183
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .line 183
    .end local p0    # "this":Lokhttp3/internal/framed/FramedConnection;
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public ping()Lokhttp3/internal/framed/Ping;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 354
    new-instance v0, Lokhttp3/internal/framed/Ping;

    invoke-direct {v0}, Lokhttp3/internal/framed/Ping;-><init>()V

    .line 356
    .local v0, "ping":Lokhttp3/internal/framed/Ping;
    monitor-enter p0

    .line 357
    :try_start_6
    iget-boolean v1, p0, Lokhttp3/internal/framed/FramedConnection;->shutdown:Z

    if-nez v1, :cond_2e

    .line 360
    iget v1, p0, Lokhttp3/internal/framed/FramedConnection;->nextPingId:I

    move v2, v1

    .line 361
    .local v2, "pingId":I
    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lokhttp3/internal/framed/FramedConnection;->nextPingId:I

    .line 362
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    if-nez v1, :cond_1c

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    .line 363
    :cond_1c
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_6 .. :try_end_26} :catchall_36

    .line 365
    const/4 v1, 0x0

    const v3, 0x4f4b6f6b

    invoke-direct {p0, v1, v2, v3, v0}, Lokhttp3/internal/framed/FramedConnection;->writePing(ZIILokhttp3/internal/framed/Ping;)V

    .line 366
    return-object v0

    .line 358
    .end local v2    # "pingId":I
    :cond_2e
    :try_start_2e
    new-instance v1, Ljava/io/IOException;

    const-string v2, "shutdown"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "ping":Lokhttp3/internal/framed/Ping;
    throw v1

    .line 364
    .restart local v0    # "ping":Lokhttp3/internal/framed/Ping;
    :catchall_36
    move-exception v1

    monitor-exit p0
    :try_end_38
    .catchall {:try_start_2e .. :try_end_38} :catchall_36

    throw v1
.end method

.method public pushStream(ILjava/util/List;Z)Lokhttp3/internal/framed/FramedStream;
    .registers 6
    .param p1, "associatedStreamId"    # I
    .param p3, "out"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lokhttp3/internal/framed/Header;",
            ">;Z)",
            "Lokhttp3/internal/framed/FramedStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    .local p2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    iget-boolean v0, p0, Lokhttp3/internal/framed/FramedConnection;->client:Z

    if-nez v0, :cond_18

    .line 210
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->protocol:Lokhttp3/Protocol;

    sget-object v1, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    if-ne v0, v1, :cond_10

    .line 211
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lokhttp3/internal/framed/FramedConnection;->newStream(ILjava/util/List;ZZ)Lokhttp3/internal/framed/FramedStream;

    move-result-object v0

    return-object v0

    .line 210
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol != HTTP_2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Client cannot push requests."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method declared-synchronized removeStream(I)Lokhttp3/internal/framed/FramedStream;
    .registers 4
    .param p1, "streamId"    # I

    monitor-enter p0

    .line 191
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/framed/FramedStream;

    .line 192
    .local v0, "stream":Lokhttp3/internal/framed/FramedStream;
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 193
    monitor-exit p0

    return-object v0

    .line 190
    .end local v0    # "stream":Lokhttp3/internal/framed/FramedStream;
    .end local p0    # "this":Lokhttp3/internal/framed/FramedConnection;
    .end local p1    # "streamId":I
    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setSettings(Lokhttp3/internal/framed/Settings;)V
    .registers 5
    .param p1, "settings"    # Lokhttp3/internal/framed/Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 507
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    monitor-enter v0

    .line 508
    :try_start_3
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_20

    .line 509
    :try_start_4
    iget-boolean v1, p0, Lokhttp3/internal/framed/FramedConnection;->shutdown:Z

    if-nez v1, :cond_15

    .line 512
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->okHttpSettings:Lokhttp3/internal/framed/Settings;

    invoke-virtual {v1, p1}, Lokhttp3/internal/framed/Settings;->merge(Lokhttp3/internal/framed/Settings;)V

    .line 513
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    invoke-interface {v1, p1}, Lokhttp3/internal/framed/FrameWriter;->settings(Lokhttp3/internal/framed/Settings;)V

    .line 514
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_1d

    .line 515
    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_20

    .line 516
    return-void

    .line 510
    :cond_15
    :try_start_15
    new-instance v1, Ljava/io/IOException;

    const-string v2, "shutdown"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p1    # "settings":Lokhttp3/internal/framed/Settings;
    throw v1

    .line 514
    .restart local p1    # "settings":Lokhttp3/internal/framed/Settings;
    :catchall_1d
    move-exception v1

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_1d

    .end local p1    # "settings":Lokhttp3/internal/framed/Settings;
    :try_start_1f
    throw v1

    .line 515
    .restart local p1    # "settings":Lokhttp3/internal/framed/Settings;
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_20

    throw v1
.end method

.method public shutdown(Lokhttp3/internal/framed/ErrorCode;)V
    .registers 6
    .param p1, "statusCode"    # Lokhttp3/internal/framed/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 404
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    monitor-enter v0

    .line 406
    :try_start_3
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_1d

    .line 407
    :try_start_4
    iget-boolean v1, p0, Lokhttp3/internal/framed/FramedConnection;->shutdown:Z

    if-eqz v1, :cond_b

    .line 408
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_1a

    :try_start_9
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_1d

    return-void

    .line 410
    :cond_b
    const/4 v1, 0x1

    :try_start_c
    iput-boolean v1, p0, Lokhttp3/internal/framed/FramedConnection;->shutdown:Z

    .line 411
    iget v1, p0, Lokhttp3/internal/framed/FramedConnection;->lastGoodStreamId:I

    .line 412
    .local v1, "lastGoodStreamId":I
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_1a

    .line 414
    :try_start_11
    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    sget-object v3, Lokhttp3/internal/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-interface {v2, v1, p1, v3}, Lokhttp3/internal/framed/FrameWriter;->goAway(ILokhttp3/internal/framed/ErrorCode;[B)V

    .line 415
    .end local v1    # "lastGoodStreamId":I
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1d

    .line 416
    return-void

    .line 412
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    .end local p1    # "statusCode":Lokhttp3/internal/framed/ErrorCode;
    :try_start_1c
    throw v1

    .line 415
    .restart local p1    # "statusCode":Lokhttp3/internal/framed/ErrorCode;
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public start()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 486
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lokhttp3/internal/framed/FramedConnection;->start(Z)V

    .line 487
    return-void
.end method

.method start(Z)V
    .registers 8
    .param p1, "sendConnectionPreface"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 494
    if-eqz p1, :cond_21

    .line 495
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    invoke-interface {v0}, Lokhttp3/internal/framed/FrameWriter;->connectionPreface()V

    .line 496
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->okHttpSettings:Lokhttp3/internal/framed/Settings;

    invoke-interface {v0, v1}, Lokhttp3/internal/framed/FrameWriter;->settings(Lokhttp3/internal/framed/Settings;)V

    .line 497
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->okHttpSettings:Lokhttp3/internal/framed/Settings;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Lokhttp3/internal/framed/Settings;->getInitialWindowSize(I)I

    move-result v0

    .line 498
    .local v0, "windowSize":I
    if-eq v0, v1, :cond_21

    .line 499
    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    const/4 v3, 0x0

    sub-int v1, v0, v1

    int-to-long v4, v1

    invoke-interface {v2, v3, v4, v5}, Lokhttp3/internal/framed/FrameWriter;->windowUpdate(IJ)V

    .line 502
    .end local v0    # "windowSize":I
    :cond_21
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->readerRunnable:Lokhttp3/internal/framed/FramedConnection$Reader;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 503
    return-void
.end method

.method public writeData(IZLokio/Buffer;J)V
    .registers 14
    .param p1, "streamId"    # I
    .param p2, "outFinished"    # Z
    .param p3, "buffer"    # Lokio/Buffer;
    .param p4, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p4, v1

    if-nez v3, :cond_d

    .line 285
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    invoke-interface {v1, p2, p1, p3, v0}, Lokhttp3/internal/framed/FrameWriter;->data(ZILokio/Buffer;I)V

    .line 286
    return-void

    .line 289
    :cond_d
    :goto_d
    cmp-long v3, p4, v1

    if-lez v3, :cond_63

    .line 291
    monitor-enter p0

    .line 293
    :goto_12
    :try_start_12
    iget-wide v3, p0, Lokhttp3/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    cmp-long v5, v3, v1

    if-gtz v5, :cond_30

    .line 296
    iget-object v3, p0, Lokhttp3/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 299
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_12

    .line 297
    :cond_28
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p1    # "streamId":I
    .end local p2    # "outFinished":Z
    .end local p3    # "buffer":Lokio/Buffer;
    .end local p4    # "byteCount":J
    throw v0
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_30} :catch_5a
    .catchall {:try_start_12 .. :try_end_30} :catchall_58

    .line 303
    .restart local p1    # "streamId":I
    .restart local p2    # "outFinished":Z
    .restart local p3    # "buffer":Lokio/Buffer;
    .restart local p4    # "byteCount":J
    :cond_30
    nop

    .line 305
    :try_start_31
    invoke-static {p4, p5, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v4, v3

    .line 306
    .local v4, "toWrite":I
    iget-object v3, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    invoke-interface {v3}, Lokhttp3/internal/framed/FrameWriter;->maxDataLength()I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 307
    .end local v4    # "toWrite":I
    .local v3, "toWrite":I
    iget-wide v4, p0, Lokhttp3/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    int-to-long v6, v3

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lokhttp3/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    .line 308
    monitor-exit p0
    :try_end_47
    .catchall {:try_start_31 .. :try_end_47} :catchall_58

    .line 310
    int-to-long v4, v3

    sub-long/2addr p4, v4

    .line 311
    iget-object v4, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    if-eqz p2, :cond_53

    cmp-long v5, p4, v1

    if-nez v5, :cond_53

    const/4 v5, 0x1

    goto :goto_54

    :cond_53
    const/4 v5, 0x0

    :goto_54
    invoke-interface {v4, v5, p1, p3, v3}, Lokhttp3/internal/framed/FrameWriter;->data(ZILokio/Buffer;I)V

    .line 312
    .end local v3    # "toWrite":I
    goto :goto_d

    .line 308
    :catchall_58
    move-exception v0

    goto :goto_61

    .line 301
    :catch_5a
    move-exception v0

    .line 302
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_5b
    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    .end local p1    # "streamId":I
    .end local p2    # "outFinished":Z
    .end local p3    # "buffer":Lokio/Buffer;
    .end local p4    # "byteCount":J
    throw v1

    .line 308
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local p1    # "streamId":I
    .restart local p2    # "outFinished":Z
    .restart local p3    # "buffer":Lokio/Buffer;
    .restart local p4    # "byteCount":J
    :goto_61
    monitor-exit p0
    :try_end_62
    .catchall {:try_start_5b .. :try_end_62} :catchall_58

    throw v0

    .line 313
    :cond_63
    return-void
.end method

.method writeSynReply(IZLjava/util/List;)V
    .registers 5
    .param p1, "streamId"    # I
    .param p2, "outFinished"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List<",
            "Lokhttp3/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    .local p3, "alternating":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    invoke-interface {v0, p2, p1, p3}, Lokhttp3/internal/framed/FrameWriter;->synReply(ZILjava/util/List;)V

    .line 268
    return-void
.end method

.method writeSynReset(ILokhttp3/internal/framed/ErrorCode;)V
    .registers 4
    .param p1, "streamId"    # I
    .param p2, "statusCode"    # Lokhttp3/internal/framed/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 335
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    invoke-interface {v0, p1, p2}, Lokhttp3/internal/framed/FrameWriter;->rstStream(ILokhttp3/internal/framed/ErrorCode;)V

    .line 336
    return-void
.end method

.method writeSynResetLater(ILokhttp3/internal/framed/ErrorCode;)V
    .registers 11
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lokhttp3/internal/framed/ErrorCode;

    .line 324
    sget-object v0, Lokhttp3/internal/framed/FramedConnection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lokhttp3/internal/framed/FramedConnection$1;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->hostname:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    const-string v3, "OkHttp %s stream %d"

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lokhttp3/internal/framed/FramedConnection$1;-><init>(Lokhttp3/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILokhttp3/internal/framed/ErrorCode;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 332
    return-void
.end method

.method writeWindowUpdateLater(IJ)V
    .registers 13
    .param p1, "streamId"    # I
    .param p2, "unacknowledgedBytesRead"    # J

    .line 339
    sget-object v0, Lokhttp3/internal/framed/FramedConnection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lokhttp3/internal/framed/FramedConnection$2;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->hostname:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    const-string v3, "OkHttp Window Update %s stream %d"

    move-object v1, v8

    move-object v2, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lokhttp3/internal/framed/FramedConnection$2;-><init>(Lokhttp3/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 347
    return-void
.end method
