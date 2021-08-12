.class public final Lokhttp3/Response;
.super Ljava/lang/Object;
.source "Response.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/Response$Builder;
    }
.end annotation


# instance fields
.field final body:Lokhttp3/ResponseBody;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private volatile cacheControl:Lokhttp3/CacheControl;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final cacheResponse:Lokhttp3/Response;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final code:I

.field final handshake:Lokhttp3/Handshake;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final headers:Lokhttp3/Headers;

.field final message:Ljava/lang/String;

.field final networkResponse:Lokhttp3/Response;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final priorResponse:Lokhttp3/Response;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final protocol:Lokhttp3/Protocol;

.field final receivedResponseAtMillis:J

.field final request:Lokhttp3/Request;

.field final sentRequestAtMillis:J


# direct methods
.method constructor <init>(Lokhttp3/Response$Builder;)V
    .registers 4
    .param p1, "builder"    # Lokhttp3/Response$Builder;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iget-object v0, p1, Lokhttp3/Response$Builder;->request:Lokhttp3/Request;

    iput-object v0, p0, Lokhttp3/Response;->request:Lokhttp3/Request;

    .line 61
    iget-object v0, p1, Lokhttp3/Response$Builder;->protocol:Lokhttp3/Protocol;

    iput-object v0, p0, Lokhttp3/Response;->protocol:Lokhttp3/Protocol;

    .line 62
    iget v0, p1, Lokhttp3/Response$Builder;->code:I

    iput v0, p0, Lokhttp3/Response;->code:I

    .line 63
    iget-object v0, p1, Lokhttp3/Response$Builder;->message:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/Response;->message:Ljava/lang/String;

    .line 64
    iget-object v0, p1, Lokhttp3/Response$Builder;->handshake:Lokhttp3/Handshake;

    iput-object v0, p0, Lokhttp3/Response;->handshake:Lokhttp3/Handshake;

    .line 65
    iget-object v0, p1, Lokhttp3/Response$Builder;->headers:Lokhttp3/Headers$Builder;

    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    .line 66
    iget-object v0, p1, Lokhttp3/Response$Builder;->body:Lokhttp3/ResponseBody;

    iput-object v0, p0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    .line 67
    iget-object v0, p1, Lokhttp3/Response$Builder;->networkResponse:Lokhttp3/Response;

    iput-object v0, p0, Lokhttp3/Response;->networkResponse:Lokhttp3/Response;

    .line 68
    iget-object v0, p1, Lokhttp3/Response$Builder;->cacheResponse:Lokhttp3/Response;

    iput-object v0, p0, Lokhttp3/Response;->cacheResponse:Lokhttp3/Response;

    .line 69
    iget-object v0, p1, Lokhttp3/Response$Builder;->priorResponse:Lokhttp3/Response;

    iput-object v0, p0, Lokhttp3/Response;->priorResponse:Lokhttp3/Response;

    .line 70
    iget-wide v0, p1, Lokhttp3/Response$Builder;->sentRequestAtMillis:J

    iput-wide v0, p0, Lokhttp3/Response;->sentRequestAtMillis:J

    .line 71
    iget-wide v0, p1, Lokhttp3/Response$Builder;->receivedResponseAtMillis:J

    iput-wide v0, p0, Lokhttp3/Response;->receivedResponseAtMillis:J

    .line 72
    return-void
.end method


# virtual methods
.method public body()Lokhttp3/ResponseBody;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 177
    iget-object v0, p0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    return-object v0
.end method

.method public cacheControl()Lokhttp3/CacheControl;
    .registers 3

    .line 255
    iget-object v0, p0, Lokhttp3/Response;->cacheControl:Lokhttp3/CacheControl;

    .line 256
    .local v0, "result":Lokhttp3/CacheControl;
    if-eqz v0, :cond_6

    move-object v1, v0

    goto :goto_e

    :cond_6
    iget-object v1, p0, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    invoke-static {v1}, Lokhttp3/CacheControl;->parse(Lokhttp3/Headers;)Lokhttp3/CacheControl;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/Response;->cacheControl:Lokhttp3/CacheControl;

    :goto_e
    return-object v1
.end method

.method public cacheResponse()Lokhttp3/Response;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 214
    iget-object v0, p0, Lokhttp3/Response;->cacheResponse:Lokhttp3/Response;

    return-object v0
.end method

.method public challenges()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/Challenge;",
            ">;"
        }
    .end annotation

    .line 240
    iget v0, p0, Lokhttp3/Response;->code:I

    const/16 v1, 0x191

    if-ne v0, v1, :cond_9

    .line 241
    const-string v0, "WWW-Authenticate"

    .local v0, "responseField":Ljava/lang/String;
    goto :goto_f

    .line 242
    .end local v0    # "responseField":Ljava/lang/String;
    :cond_9
    const/16 v1, 0x197

    if-ne v0, v1, :cond_18

    .line 243
    const-string v0, "Proxy-Authenticate"

    .line 247
    .restart local v0    # "responseField":Ljava/lang/String;
    :goto_f
    invoke-virtual {p0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v1

    invoke-static {v1, v0}, Lokhttp3/internal/http/HttpHeaders;->parseChallenges(Lokhttp3/Headers;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 245
    .end local v0    # "responseField":Ljava/lang/String;
    :cond_18
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 3

    .line 285
    iget-object v0, p0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    if-eqz v0, :cond_8

    .line 288
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    .line 289
    return-void

    .line 286
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "response is not eligible for a body and must not be closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public code()I
    .registers 2

    .line 98
    iget v0, p0, Lokhttp3/Response;->code:I

    return v0
.end method

.method public handshake()Lokhttp3/Handshake;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 119
    iget-object v0, p0, Lokhttp3/Response;->handshake:Lokhttp3/Handshake;

    return-object v0
.end method

.method public header(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lokhttp3/Response;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 131
    iget-object v0, p0, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    invoke-virtual {v0, p1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_a

    move-object v1, v0

    goto :goto_b

    :cond_a
    move-object v1, p2

    :goto_b
    return-object v1
.end method

.method public headers(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    invoke-virtual {v0, p1}, Lokhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public headers()Lokhttp3/Headers;
    .registers 2

    .line 136
    iget-object v0, p0, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    return-object v0
.end method

.method public isRedirect()Z
    .registers 2

    .line 186
    iget v0, p0, Lokhttp3/Response;->code:I

    packed-switch v0, :pswitch_data_a

    .line 195
    :pswitch_5
    const/4 v0, 0x0

    return v0

    .line 193
    :pswitch_7
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x12c
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public isSuccessful()Z
    .registers 3

    .line 106
    iget v0, p0, Lokhttp3/Response;->code:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_c

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public message()Ljava/lang/String;
    .registers 2

    .line 111
    iget-object v0, p0, Lokhttp3/Response;->message:Ljava/lang/String;

    return-object v0
.end method

.method public networkResponse()Lokhttp3/Response;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 205
    iget-object v0, p0, Lokhttp3/Response;->networkResponse:Lokhttp3/Response;

    return-object v0
.end method

.method public newBuilder()Lokhttp3/Response$Builder;
    .registers 2

    .line 181
    new-instance v0, Lokhttp3/Response$Builder;

    invoke-direct {v0, p0}, Lokhttp3/Response$Builder;-><init>(Lokhttp3/Response;)V

    return-object v0
.end method

.method public peekBody(J)Lokhttp3/ResponseBody;
    .registers 9
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v0

    .line 152
    .local v0, "source":Lokio/BufferedSource;
    invoke-interface {v0, p1, p2}, Lokio/BufferedSource;->request(J)Z

    .line 153
    invoke-interface {v0}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object v1

    invoke-virtual {v1}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object v1

    .line 157
    .local v1, "copy":Lokio/Buffer;
    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_25

    .line 158
    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    .line 159
    .local v2, "result":Lokio/Buffer;
    invoke-virtual {v2, v1, p1, p2}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 160
    invoke-virtual {v1}, Lokio/Buffer;->clear()V

    goto :goto_26

    .line 162
    .end local v2    # "result":Lokio/Buffer;
    :cond_25
    move-object v2, v1

    .line 165
    .restart local v2    # "result":Lokio/Buffer;
    :goto_26
    iget-object v3, p0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v3

    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v4

    invoke-static {v3, v4, v5, v2}, Lokhttp3/ResponseBody;->create(Lokhttp3/MediaType;JLokio/BufferedSource;)Lokhttp3/ResponseBody;

    move-result-object v3

    return-object v3
.end method

.method public priorResponse()Lokhttp3/Response;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 224
    iget-object v0, p0, Lokhttp3/Response;->priorResponse:Lokhttp3/Response;

    return-object v0
.end method

.method public protocol()Lokhttp3/Protocol;
    .registers 2

    .line 93
    iget-object v0, p0, Lokhttp3/Response;->protocol:Lokhttp3/Protocol;

    return-object v0
.end method

.method public receivedResponseAtMillis()J
    .registers 3

    .line 274
    iget-wide v0, p0, Lokhttp3/Response;->receivedResponseAtMillis:J

    return-wide v0
.end method

.method public request()Lokhttp3/Request;
    .registers 2

    .line 86
    iget-object v0, p0, Lokhttp3/Response;->request:Lokhttp3/Request;

    return-object v0
.end method

.method public sentRequestAtMillis()J
    .registers 3

    .line 265
    iget-wide v0, p0, Lokhttp3/Response;->sentRequestAtMillis:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response{protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/Response;->protocol:Lokhttp3/Protocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lokhttp3/Response;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/Response;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/Response;->request:Lokhttp3/Request;

    .line 299
    invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 292
    return-object v0
.end method
