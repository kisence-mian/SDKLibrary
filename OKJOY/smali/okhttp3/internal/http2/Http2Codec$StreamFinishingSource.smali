.class Lokhttp3/internal/http2/Http2Codec$StreamFinishingSource;
.super Lokio/ForwardingSource;
.source "Http2Codec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/Http2Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StreamFinishingSource"
.end annotation


# instance fields
.field bytesRead:J

.field completed:Z

.field final synthetic this$0:Lokhttp3/internal/http2/Http2Codec;


# direct methods
.method constructor <init>(Lokhttp3/internal/http2/Http2Codec;Lokio/Source;)V
    .registers 5
    .param p1, "this$0"    # Lokhttp3/internal/http2/Http2Codec;
    .param p2, "delegate"    # Lokio/Source;

    .prologue
    .line 199
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Codec$StreamFinishingSource;->this$0:Lokhttp3/internal/http2/Http2Codec;

    .line 200
    invoke-direct {p0, p2}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lokhttp3/internal/http2/Http2Codec$StreamFinishingSource;->completed:Z

    .line 197
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lokhttp3/internal/http2/Http2Codec$StreamFinishingSource;->bytesRead:J

    .line 201
    return-void
.end method

.method private endOfInput(Ljava/io/IOException;)V
    .registers 9
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    .line 222
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Codec$StreamFinishingSource;->completed:Z

    if-eqz v0, :cond_5

    .line 225
    :goto_4
    return-void

    .line 223
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/http2/Http2Codec$StreamFinishingSource;->completed:Z

    .line 224
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Codec$StreamFinishingSource;->this$0:Lokhttp3/internal/http2/Http2Codec;

    iget-object v1, v0, Lokhttp3/internal/http2/Http2Codec;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    const/4 v2, 0x0

    iget-object v3, p0, Lokhttp3/internal/http2/Http2Codec$StreamFinishingSource;->this$0:Lokhttp3/internal/http2/Http2Codec;

    iget-wide v4, p0, Lokhttp3/internal/http2/Http2Codec$StreamFinishingSource;->bytesRead:J

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lokhttp3/internal/connection/StreamAllocation;->streamFinished(ZLokhttp3/internal/http/HttpCodec;JLjava/io/IOException;)V

    goto :goto_4
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    invoke-super {p0}, Lokio/ForwardingSource;->close()V

    .line 218
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lokhttp3/internal/http2/Http2Codec$StreamFinishingSource;->endOfInput(Ljava/io/IOException;)V

    .line 219
    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .registers 10
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    :try_start_0
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Codec$StreamFinishingSource;->delegate()Lokio/Source;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v2

    .line 206
    .local v2, "read":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_13

    .line 207
    iget-wide v4, p0, Lokhttp3/internal/http2/Http2Codec$StreamFinishingSource;->bytesRead:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lokhttp3/internal/http2/Http2Codec$StreamFinishingSource;->bytesRead:J
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_14

    .line 209
    :cond_13
    return-wide v2

    .line 210
    .end local v2    # "read":J
    :catch_14
    move-exception v0

    .line 211
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v0}, Lokhttp3/internal/http2/Http2Codec$StreamFinishingSource;->endOfInput(Ljava/io/IOException;)V

    .line 212
    throw v0
.end method
