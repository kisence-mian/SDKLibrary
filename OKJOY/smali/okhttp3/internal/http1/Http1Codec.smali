.class public final Lokhttp3/internal/http1/Http1Codec;
.super Ljava/lang/Object;
.source "Http1Codec.java"

# interfaces
.implements Lokhttp3/internal/http/HttpCodec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http1/Http1Codec$UnknownLengthSource;,
        Lokhttp3/internal/http1/Http1Codec$ChunkedSource;,
        Lokhttp3/internal/http1/Http1Codec$FixedLengthSource;,
        Lokhttp3/internal/http1/Http1Codec$AbstractSource;,
        Lokhttp3/internal/http1/Http1Codec$ChunkedSink;,
        Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;
    }
.end annotation


# static fields
.field private static final HEADER_LIMIT:I = 0x40000

.field private static final STATE_CLOSED:I = 0x6

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_OPEN_REQUEST_BODY:I = 0x1

.field private static final STATE_OPEN_RESPONSE_BODY:I = 0x4

.field private static final STATE_READING_RESPONSE_BODY:I = 0x5

.field private static final STATE_READ_RESPONSE_HEADERS:I = 0x3

.field private static final STATE_WRITING_REQUEST_BODY:I = 0x2


# instance fields
.field final client:Lokhttp3/OkHttpClient;

.field private headerLimit:J

.field final sink:Lokio/BufferedSink;

.field final source:Lokio/BufferedSource;

.field state:I

.field final streamAllocation:Lokhttp3/internal/connection/StreamAllocation;


# direct methods
.method public constructor <init>(Lokhttp3/OkHttpClient;Lokhttp3/internal/connection/StreamAllocation;Lokio/BufferedSource;Lokio/BufferedSink;)V
    .registers 7
    .param p1, "client"    # Lokhttp3/OkHttpClient;
    .param p2, "streamAllocation"    # Lokhttp3/internal/connection/StreamAllocation;
    .param p3, "source"    # Lokio/BufferedSource;
    .param p4, "sink"    # Lokio/BufferedSink;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lokhttp3/internal/http1/Http1Codec;->state:I

    .line 87
    const-wide/32 v0, 0x40000

    iput-wide v0, p0, Lokhttp3/internal/http1/Http1Codec;->headerLimit:J

    .line 91
    iput-object p1, p0, Lokhttp3/internal/http1/Http1Codec;->client:Lokhttp3/OkHttpClient;

    .line 92
    iput-object p2, p0, Lokhttp3/internal/http1/Http1Codec;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    .line 93
    iput-object p3, p0, Lokhttp3/internal/http1/Http1Codec;->source:Lokio/BufferedSource;

    .line 94
    iput-object p4, p0, Lokhttp3/internal/http1/Http1Codec;->sink:Lokio/BufferedSink;

    .line 95
    return-void
.end method

.method private readHeaderLine()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    iget-object v1, p0, Lokhttp3/internal/http1/Http1Codec;->source:Lokio/BufferedSource;

    iget-wide v2, p0, Lokhttp3/internal/http1/Http1Codec;->headerLimit:J

    invoke-interface {v1, v2, v3}, Lokio/BufferedSource;->readUtf8LineStrict(J)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "line":Ljava/lang/String;
    iget-wide v2, p0, Lokhttp3/internal/http1/Http1Codec;->headerLimit:J

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lokhttp3/internal/http1/Http1Codec;->headerLimit:J

    .line 217
    return-object v0
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .prologue
    .line 113
    iget-object v1, p0, Lokhttp3/internal/http1/Http1Codec;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v1}, Lokhttp3/internal/connection/StreamAllocation;->connection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v0

    .line 114
    .local v0, "connection":Lokhttp3/internal/connection/RealConnection;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->cancel()V

    .line 115
    :cond_b
    return-void
.end method

.method public createRequestBody(Lokhttp3/Request;J)Lokio/Sink;
    .registers 6
    .param p1, "request"    # Lokhttp3/Request;
    .param p2, "contentLength"    # J

    .prologue
    .line 98
    const-string v0, "chunked"

    const-string v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 100
    invoke-virtual {p0}, Lokhttp3/internal/http1/Http1Codec;->newChunkedSink()Lokio/Sink;

    move-result-object v0

    .line 105
    :goto_12
    return-object v0

    .line 103
    :cond_13
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1e

    .line 105
    invoke-virtual {p0, p2, p3}, Lokhttp3/internal/http1/Http1Codec;->newFixedLengthSink(J)Lokio/Sink;

    move-result-object v0

    goto :goto_12

    .line 108
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method detachTimeout(Lokio/ForwardingTimeout;)V
    .registers 4
    .param p1, "timeout"    # Lokio/ForwardingTimeout;

    .prologue
    .line 268
    invoke-virtual {p1}, Lokio/ForwardingTimeout;->delegate()Lokio/Timeout;

    move-result-object v0

    .line 269
    .local v0, "oldDelegate":Lokio/Timeout;
    sget-object v1, Lokio/Timeout;->NONE:Lokio/Timeout;

    invoke-virtual {p1, v1}, Lokio/ForwardingTimeout;->setDelegate(Lokio/Timeout;)Lokio/ForwardingTimeout;

    .line 270
    invoke-virtual {v0}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    .line 271
    invoke-virtual {v0}, Lokio/Timeout;->clearTimeout()Lokio/Timeout;

    .line 272
    return-void
.end method

.method public finishRequest()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V

    .line 167
    return-void
.end method

.method public flushRequest()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V

    .line 163
    return-void
.end method

.method public isClosed()Z
    .registers 3

    .prologue
    .line 158
    iget v0, p0, Lokhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public newChunkedSink()Lokio/Sink;
    .registers 4

    .prologue
    .line 231
    iget v0, p0, Lokhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_20

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_20
    const/4 v0, 0x2

    iput v0, p0, Lokhttp3/internal/http1/Http1Codec;->state:I

    .line 233
    new-instance v0, Lokhttp3/internal/http1/Http1Codec$ChunkedSink;

    invoke-direct {v0, p0}, Lokhttp3/internal/http1/Http1Codec$ChunkedSink;-><init>(Lokhttp3/internal/http1/Http1Codec;)V

    return-object v0
.end method

.method public newChunkedSource(Lokhttp3/HttpUrl;)Lokio/Source;
    .registers 5
    .param p1, "url"    # Lokhttp3/HttpUrl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 249
    iget v0, p0, Lokhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_20

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_20
    const/4 v0, 0x5

    iput v0, p0, Lokhttp3/internal/http1/Http1Codec;->state:I

    .line 251
    new-instance v0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;

    invoke-direct {v0, p0, p1}, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;-><init>(Lokhttp3/internal/http1/Http1Codec;Lokhttp3/HttpUrl;)V

    return-object v0
.end method

.method public newFixedLengthSink(J)Lokio/Sink;
    .registers 6
    .param p1, "contentLength"    # J

    .prologue
    .line 237
    iget v0, p0, Lokhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_20

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_20
    const/4 v0, 0x2

    iput v0, p0, Lokhttp3/internal/http1/Http1Codec;->state:I

    .line 239
    new-instance v0, Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;

    invoke-direct {v0, p0, p1, p2}, Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;-><init>(Lokhttp3/internal/http1/Http1Codec;J)V

    return-object v0
.end method

.method public newFixedLengthSource(J)Lokio/Source;
    .registers 6
    .param p1, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    iget v0, p0, Lokhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_20

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_20
    const/4 v0, 0x5

    iput v0, p0, Lokhttp3/internal/http1/Http1Codec;->state:I

    .line 245
    new-instance v0, Lokhttp3/internal/http1/Http1Codec$FixedLengthSource;

    invoke-direct {v0, p0, p1, p2}, Lokhttp3/internal/http1/Http1Codec$FixedLengthSource;-><init>(Lokhttp3/internal/http1/Http1Codec;J)V

    return-object v0
.end method

.method public newUnknownLengthSource()Lokio/Source;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    iget v0, p0, Lokhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_20

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_20
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    if-nez v0, :cond_2c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "streamAllocation == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_2c
    const/4 v0, 0x5

    iput v0, p0, Lokhttp3/internal/http1/Http1Codec;->state:I

    .line 258
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v0}, Lokhttp3/internal/connection/StreamAllocation;->noNewStreams()V

    .line 259
    new-instance v0, Lokhttp3/internal/http1/Http1Codec$UnknownLengthSource;

    invoke-direct {v0, p0}, Lokhttp3/internal/http1/Http1Codec$UnknownLengthSource;-><init>(Lokhttp3/internal/http1/Http1Codec;)V

    return-object v0
.end method

.method public openResponseBody(Lokhttp3/Response;)Lokhttp3/ResponseBody;
    .registers 12
    .param p1, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const-wide/16 v6, -0x1

    .line 134
    iget-object v4, p0, Lokhttp3/internal/http1/Http1Codec;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    iget-object v4, v4, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;

    iget-object v5, p0, Lokhttp3/internal/http1/Http1Codec;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    iget-object v5, v5, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;

    invoke-virtual {v4, v5}, Lokhttp3/EventListener;->responseBodyStart(Lokhttp3/Call;)V

    .line 135
    const-string v4, "Content-Type"

    invoke-virtual {p1, v4}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, "contentType":Ljava/lang/String;
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->hasBody(Lokhttp3/Response;)Z

    move-result v4

    if-nez v4, :cond_29

    .line 138
    invoke-virtual {p0, v8, v9}, Lokhttp3/internal/http1/Http1Codec;->newFixedLengthSource(J)Lokio/Source;

    move-result-object v3

    .line 139
    .local v3, "source":Lokio/Source;
    new-instance v4, Lokhttp3/internal/http/RealResponseBody;

    invoke-static {v3}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v5

    invoke-direct {v4, v2, v8, v9, v5}, Lokhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLokio/BufferedSource;)V

    .line 153
    .end local v3    # "source":Lokio/Source;
    :goto_28
    return-object v4

    .line 142
    :cond_29
    const-string v4, "chunked"

    const-string v5, "Transfer-Encoding"

    invoke-virtual {p1, v5}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 143
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {p0, v4}, Lokhttp3/internal/http1/Http1Codec;->newChunkedSource(Lokhttp3/HttpUrl;)Lokio/Source;

    move-result-object v3

    .line 144
    .restart local v3    # "source":Lokio/Source;
    new-instance v4, Lokhttp3/internal/http/RealResponseBody;

    invoke-static {v3}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v5

    invoke-direct {v4, v2, v6, v7, v5}, Lokhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLokio/BufferedSource;)V

    goto :goto_28

    .line 147
    .end local v3    # "source":Lokio/Source;
    :cond_4d
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->contentLength(Lokhttp3/Response;)J

    move-result-wide v0

    .line 148
    .local v0, "contentLength":J
    cmp-long v4, v0, v6

    if-eqz v4, :cond_63

    .line 149
    invoke-virtual {p0, v0, v1}, Lokhttp3/internal/http1/Http1Codec;->newFixedLengthSource(J)Lokio/Source;

    move-result-object v3

    .line 150
    .restart local v3    # "source":Lokio/Source;
    new-instance v4, Lokhttp3/internal/http/RealResponseBody;

    invoke-static {v3}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v5

    invoke-direct {v4, v2, v0, v1, v5}, Lokhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLokio/BufferedSource;)V

    goto :goto_28

    .line 153
    .end local v3    # "source":Lokio/Source;
    :cond_63
    new-instance v4, Lokhttp3/internal/http/RealResponseBody;

    invoke-virtual {p0}, Lokhttp3/internal/http1/Http1Codec;->newUnknownLengthSource()Lokio/Source;

    move-result-object v5

    invoke-static {v5}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v5

    invoke-direct {v4, v2, v6, v7, v5}, Lokhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLokio/BufferedSource;)V

    goto :goto_28
.end method

.method public readHeaders()Lokhttp3/Headers;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    .line 224
    .local v0, "headers":Lokhttp3/Headers$Builder;
    :goto_5
    invoke-direct {p0}, Lokhttp3/internal/http1/Http1Codec;->readHeaderLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_15

    .line 225
    sget-object v2, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    invoke-virtual {v2, v0, v1}, Lokhttp3/internal/Internal;->addLenient(Lokhttp3/Headers$Builder;Ljava/lang/String;)V

    goto :goto_5

    .line 227
    :cond_15
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v2

    return-object v2
.end method

.method public readResponseHeaders(Z)Lokhttp3/Response$Builder;
    .registers 10
    .param p1, "expectContinue"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x64

    const/4 v6, 0x3

    .line 184
    iget v4, p0, Lokhttp3/internal/http1/Http1Codec;->state:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_27

    iget v4, p0, Lokhttp3/internal/http1/Http1Codec;->state:I

    if-eq v4, v6, :cond_27

    .line 185
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lokhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 189
    :cond_27
    :try_start_27
    invoke-direct {p0}, Lokhttp3/internal/http1/Http1Codec;->readHeaderLine()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lokhttp3/internal/http/StatusLine;->parse(Ljava/lang/String;)Lokhttp3/internal/http/StatusLine;

    move-result-object v3

    .line 191
    .local v3, "statusLine":Lokhttp3/internal/http/StatusLine;
    new-instance v4, Lokhttp3/Response$Builder;

    invoke-direct {v4}, Lokhttp3/Response$Builder;-><init>()V

    iget-object v5, v3, Lokhttp3/internal/http/StatusLine;->protocol:Lokhttp3/Protocol;

    .line 192
    invoke-virtual {v4, v5}, Lokhttp3/Response$Builder;->protocol(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;

    move-result-object v4

    iget v5, v3, Lokhttp3/internal/http/StatusLine;->code:I

    .line 193
    invoke-virtual {v4, v5}, Lokhttp3/Response$Builder;->code(I)Lokhttp3/Response$Builder;

    move-result-object v4

    iget-object v5, v3, Lokhttp3/internal/http/StatusLine;->message:Ljava/lang/String;

    .line 194
    invoke-virtual {v4, v5}, Lokhttp3/Response$Builder;->message(Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object v4

    .line 195
    invoke-virtual {p0}, Lokhttp3/internal/http1/Http1Codec;->readHeaders()Lokhttp3/Headers;

    move-result-object v5

    invoke-virtual {v4, v5}, Lokhttp3/Response$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Response$Builder;

    move-result-object v2

    .line 197
    .local v2, "responseBuilder":Lokhttp3/Response$Builder;
    if-eqz p1, :cond_56

    iget v4, v3, Lokhttp3/internal/http/StatusLine;->code:I

    if-ne v4, v7, :cond_56

    .line 198
    const/4 v2, 0x0

    .line 205
    .end local v2    # "responseBuilder":Lokhttp3/Response$Builder;
    :goto_55
    return-object v2

    .line 199
    .restart local v2    # "responseBuilder":Lokhttp3/Response$Builder;
    :cond_56
    iget v4, v3, Lokhttp3/internal/http/StatusLine;->code:I

    if-ne v4, v7, :cond_7d

    .line 200
    const/4 v4, 0x3

    iput v4, p0, Lokhttp3/internal/http1/Http1Codec;->state:I
    :try_end_5d
    .catch Ljava/io/EOFException; {:try_start_27 .. :try_end_5d} :catch_5e

    goto :goto_55

    .line 206
    .end local v2    # "responseBuilder":Lokhttp3/Response$Builder;
    .end local v3    # "statusLine":Lokhttp3/internal/http/StatusLine;
    :catch_5e
    move-exception v0

    .line 208
    .local v0, "e":Ljava/io/EOFException;
    new-instance v1, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unexpected end of stream on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lokhttp3/internal/http1/Http1Codec;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 209
    .local v1, "exception":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 210
    throw v1

    .line 204
    .end local v0    # "e":Ljava/io/EOFException;
    .end local v1    # "exception":Ljava/io/IOException;
    .restart local v2    # "responseBuilder":Lokhttp3/Response$Builder;
    .restart local v3    # "statusLine":Lokhttp3/internal/http/StatusLine;
    :cond_7d
    const/4 v4, 0x4

    :try_start_7e
    iput v4, p0, Lokhttp3/internal/http1/Http1Codec;->state:I
    :try_end_80
    .catch Ljava/io/EOFException; {:try_start_7e .. :try_end_80} :catch_5e

    goto :goto_55
.end method

.method public writeRequest(Lokhttp3/Headers;Ljava/lang/String;)V
    .registers 8
    .param p1, "headers"    # Lokhttp3/Headers;
    .param p2, "requestLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    iget v2, p0, Lokhttp3/internal/http1/Http1Codec;->state:I

    if-eqz v2, :cond_1f

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lokhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 172
    :cond_1f
    iget-object v2, p0, Lokhttp3/internal/http1/Http1Codec;->sink:Lokio/BufferedSink;

    invoke-interface {v2, p2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 173
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Lokhttp3/Headers;->size()I

    move-result v1

    .local v1, "size":I
    :goto_2f
    if-ge v0, v1, :cond_51

    .line 174
    iget-object v2, p0, Lokhttp3/internal/http1/Http1Codec;->sink:Lokio/BufferedSink;

    invoke-virtual {p1, v0}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v2

    const-string v3, ": "

    .line 175
    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v2

    .line 176
    invoke-virtual {p1, v0}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v2

    const-string v3, "\r\n"

    .line 177
    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 179
    :cond_51
    iget-object v2, p0, Lokhttp3/internal/http1/Http1Codec;->sink:Lokio/BufferedSink;

    const-string v3, "\r\n"

    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 180
    const/4 v2, 0x1

    iput v2, p0, Lokhttp3/internal/http1/Http1Codec;->state:I

    .line 181
    return-void
.end method

.method public writeRequestHeaders(Lokhttp3/Request;)V
    .registers 4
    .param p1, "request"    # Lokhttp3/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    iget-object v1, p0, Lokhttp3/internal/http1/Http1Codec;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    .line 129
    invoke-virtual {v1}, Lokhttp3/internal/connection/StreamAllocation;->connection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/internal/connection/RealConnection;->route()Lokhttp3/Route;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    .line 128
    invoke-static {p1, v1}, Lokhttp3/internal/http/RequestLine;->get(Lokhttp3/Request;Ljava/net/Proxy$Type;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "requestLine":Ljava/lang/String;
    invoke-virtual {p1}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lokhttp3/internal/http1/Http1Codec;->writeRequest(Lokhttp3/Headers;Ljava/lang/String;)V

    .line 131
    return-void
.end method
