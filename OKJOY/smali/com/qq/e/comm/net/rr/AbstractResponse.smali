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
    .param p1, "connection"    # Ljava/net/HttpURLConnection;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/qq/e/comm/net/rr/AbstractResponse;->b:I

    if-nez p1, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "AbstractResponse parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_10
    iput-object p1, p0, Lcom/qq/e/comm/net/rr/AbstractResponse;->a:Ljava/net/HttpURLConnection;

    :try_start_12
    iget-object v0, p0, Lcom/qq/e/comm/net/rr/AbstractResponse;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lcom/qq/e/comm/net/rr/AbstractResponse;->b:I
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1a} :catch_1b

    return-void

    :catch_1b
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
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

    const/16 v0, 0xc8

    invoke-virtual {p0}, Lcom/qq/e/comm/net/rr/AbstractResponse;->getStatusCode()I

    move-result v1

    if-eq v0, v1, :cond_a

    const/4 v0, 0x0

    :goto_9
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

    goto :goto_9
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
    .param p1, "defaultEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/qq/e/comm/net/rr/AbstractResponse;->getBytesContent()[B

    move-result-object v1

    if-nez v1, :cond_8

    .end local p1    # "defaultEncoding":Ljava/lang/String;
    :goto_7
    return-object v0

    .restart local p1    # "defaultEncoding":Ljava/lang/String;
    :cond_8
    array-length v2, v1

    if-nez v2, :cond_e

    const-string v0, ""

    goto :goto_7

    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/qq/e/comm/net/rr/AbstractResponse;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_13} :catch_1c

    move-result-object v0

    :goto_14
    if-nez v0, :cond_1e

    .end local p1    # "defaultEncoding":Ljava/lang/String;
    :goto_16
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_7

    .restart local p1    # "defaultEncoding":Ljava/lang/String;
    :catch_1c
    move-exception v2

    goto :goto_14

    :cond_1e
    move-object p1, v0

    goto :goto_16
.end method
