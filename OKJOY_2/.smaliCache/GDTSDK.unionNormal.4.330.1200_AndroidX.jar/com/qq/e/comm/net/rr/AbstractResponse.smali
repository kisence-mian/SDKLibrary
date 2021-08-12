.class public abstract Lcom/qq/e/comm/net/rr/AbstractResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/e/comm/net/rr/Response;


# instance fields
.field private final a:Ljava/net/HttpURLConnection;

.field private b:I


# direct methods
.method public constructor <init>(Ljava/net/HttpURLConnection;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/qq/e/comm/net/rr/AbstractResponse;->b:I

    if-eqz p1, :cond_18

    iput-object p1, p0, Lcom/qq/e/comm/net/rr/AbstractResponse;->a:Ljava/net/HttpURLConnection;

    :try_start_a
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    iput p1, p0, Lcom/qq/e/comm/net/rr/AbstractResponse;->b:I
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception p1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_18
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "AbstractResponse parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/qq/e/comm/net/rr/AbstractResponse;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void
.end method

.method public getBytesContent()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/qq/e/comm/net/rr/AbstractResponse;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v1, v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    invoke-virtual {p0}, Lcom/qq/e/comm/net/rr/AbstractResponse;->getStreamContent()Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x400

    new-array v2, v2, [B

    :goto_17
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_22

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_17

    :cond_22
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getStatusCode()I
    .registers 2

    iget v0, p0, Lcom/qq/e/comm/net/rr/AbstractResponse;->b:I

    return v0
.end method

.method public getStreamContent()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/qq/e/comm/net/rr/AbstractResponse;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getStringContent()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Lcom/qq/e/comm/net/rr/AbstractResponse;->getStringContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringContent(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/qq/e/comm/net/rr/AbstractResponse;->getBytesContent()[B

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    array-length v2, v0

    if-nez v2, :cond_e

    const-string v0, ""

    return-object v0

    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/qq/e/comm/net/rr/AbstractResponse;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v1
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_15

    goto :goto_16

    :catchall_15
    move-exception v2

    :goto_16
    if-nez v1, :cond_19

    goto :goto_1a

    :cond_19
    move-object p1, v1

    :goto_1a
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method
