.class Lokhttp3/internal/http/Http1xStream$ChunkedSource;
.super Lokhttp3/internal/http/Http1xStream$AbstractSource;
.source "Http1xStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http/Http1xStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChunkedSource"
.end annotation


# static fields
.field private static final NO_CHUNK_YET:J = -0x1L


# instance fields
.field private bytesRemainingInChunk:J

.field private hasMoreChunks:Z

.field final synthetic this$0:Lokhttp3/internal/http/Http1xStream;

.field private final url:Lokhttp3/HttpUrl;


# direct methods
.method constructor <init>(Lokhttp3/internal/http/Http1xStream;Lokhttp3/HttpUrl;)V
    .registers 5
    .param p2, "url"    # Lokhttp3/HttpUrl;

    .line 408
    iput-object p1, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->this$0:Lokhttp3/internal/http/Http1xStream;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lokhttp3/internal/http/Http1xStream$AbstractSource;-><init>(Lokhttp3/internal/http/Http1xStream;Lokhttp3/internal/http/Http1xStream$1;)V

    .line 405
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->bytesRemainingInChunk:J

    .line 406
    const/4 p1, 0x1

    iput-boolean p1, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->hasMoreChunks:Z

    .line 409
    iput-object p2, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->url:Lokhttp3/HttpUrl;

    .line 410
    return-void
.end method

.method private readChunkSize()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 433
    iget-wide v0, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->bytesRemainingInChunk:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_11

    .line 434
    iget-object v0, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->this$0:Lokhttp3/internal/http/Http1xStream;

    # getter for: Lokhttp3/internal/http/Http1xStream;->source:Lokio/BufferedSource;
    invoke-static {v0}, Lokhttp3/internal/http/Http1xStream;->access$600(Lokhttp3/internal/http/Http1xStream;)Lokio/BufferedSource;

    move-result-object v0

    invoke-interface {v0}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    .line 437
    :cond_11
    :try_start_11
    iget-object v0, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->this$0:Lokhttp3/internal/http/Http1xStream;

    # getter for: Lokhttp3/internal/http/Http1xStream;->source:Lokio/BufferedSource;
    invoke-static {v0}, Lokhttp3/internal/http/Http1xStream;->access$600(Lokhttp3/internal/http/Http1xStream;)Lokio/BufferedSource;

    move-result-object v0

    invoke-interface {v0}, Lokio/BufferedSource;->readHexadecimalUnsignedLong()J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->bytesRemainingInChunk:J

    .line 438
    iget-object v0, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->this$0:Lokhttp3/internal/http/Http1xStream;

    # getter for: Lokhttp3/internal/http/Http1xStream;->source:Lokio/BufferedSource;
    invoke-static {v0}, Lokhttp3/internal/http/Http1xStream;->access$600(Lokhttp3/internal/http/Http1xStream;)Lokio/BufferedSource;

    move-result-object v0

    invoke-interface {v0}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 439
    .local v0, "extensions":Ljava/lang/String;
    iget-wide v1, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->bytesRemainingInChunk:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_65

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_41

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1
    :try_end_3f
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_3f} :catch_8a

    if-eqz v1, :cond_65

    .line 445
    .end local v0    # "extensions":Ljava/lang/String;
    :cond_41
    nop

    .line 446
    iget-wide v0, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->bytesRemainingInChunk:J

    cmp-long v2, v0, v3

    if-nez v2, :cond_64

    .line 447
    const/4 v0, 0x0

    iput-boolean v0, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->hasMoreChunks:Z

    .line 448
    iget-object v0, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->this$0:Lokhttp3/internal/http/Http1xStream;

    # getter for: Lokhttp3/internal/http/Http1xStream;->client:Lokhttp3/OkHttpClient;
    invoke-static {v0}, Lokhttp3/internal/http/Http1xStream;->access$900(Lokhttp3/internal/http/Http1xStream;)Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->cookieJar()Lokhttp3/CookieJar;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->url:Lokhttp3/HttpUrl;

    iget-object v2, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->this$0:Lokhttp3/internal/http/Http1xStream;

    invoke-virtual {v2}, Lokhttp3/internal/http/Http1xStream;->readHeaders()Lokhttp3/Headers;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lokhttp3/internal/http/HttpHeaders;->receiveHeaders(Lokhttp3/CookieJar;Lokhttp3/HttpUrl;Lokhttp3/Headers;)V

    .line 449
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->endOfInput(Z)V

    .line 451
    :cond_64
    return-void

    .line 440
    .restart local v0    # "extensions":Ljava/lang/String;
    :cond_65
    :try_start_65
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected chunk size and optional extensions but was \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->bytesRemainingInChunk:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_8a
    .catch Ljava/lang/NumberFormatException; {:try_start_65 .. :try_end_8a} :catch_8a

    .line 443
    .end local v0    # "extensions":Ljava/lang/String;
    :catch_8a
    move-exception v0

    .line 444
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/net/ProtocolException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 454
    iget-boolean v0, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->closed:Z

    if-eqz v0, :cond_5

    return-void

    .line 455
    :cond_5
    iget-boolean v0, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->hasMoreChunks:Z

    if-eqz v0, :cond_17

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Lokhttp3/internal/Util;->discard(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 456
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->endOfInput(Z)V

    .line 458
    :cond_17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->closed:Z

    .line 459
    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .registers 11
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 413
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_51

    .line 414
    iget-boolean v2, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->closed:Z

    if-nez v2, :cond_49

    .line 415
    iget-boolean v2, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->hasMoreChunks:Z

    const-wide/16 v3, -0x1

    if-nez v2, :cond_11

    return-wide v3

    .line 417
    :cond_11
    iget-wide v5, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->bytesRemainingInChunk:J

    cmp-long v2, v5, v0

    if-eqz v2, :cond_1b

    cmp-long v0, v5, v3

    if-nez v0, :cond_23

    .line 418
    :cond_1b
    invoke-direct {p0}, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->readChunkSize()V

    .line 419
    iget-boolean v0, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->hasMoreChunks:Z

    if-nez v0, :cond_23

    return-wide v3

    .line 422
    :cond_23
    iget-object v0, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->this$0:Lokhttp3/internal/http/Http1xStream;

    # getter for: Lokhttp3/internal/http/Http1xStream;->source:Lokio/BufferedSource;
    invoke-static {v0}, Lokhttp3/internal/http/Http1xStream;->access$600(Lokhttp3/internal/http/Http1xStream;)Lokio/BufferedSource;

    move-result-object v0

    iget-wide v1, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->bytesRemainingInChunk:J

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    move-result-wide v0

    .line 423
    .local v0, "read":J
    cmp-long v2, v0, v3

    if-eqz v2, :cond_3d

    .line 427
    iget-wide v2, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->bytesRemainingInChunk:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->bytesRemainingInChunk:J

    .line 428
    return-wide v0

    .line 424
    :cond_3d
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lokhttp3/internal/http/Http1xStream$ChunkedSource;->endOfInput(Z)V

    .line 425
    new-instance v2, Ljava/net/ProtocolException;

    const-string v3, "unexpected end of stream"

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 414
    .end local v0    # "read":J
    :cond_49
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :cond_51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
