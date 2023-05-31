.class final Lcom/tds/common/net/TdsHttp$ResponseBody$1;
.super Lcom/tds/common/net/TdsHttp$ResponseBody;
.source "TdsHttp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/common/net/TdsHttp$ResponseBody;->create(Ljava/net/HttpURLConnection;)Lcom/tds/common/net/TdsHttp$ResponseBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$connection:Ljava/net/HttpURLConnection;


# direct methods
.method constructor <init>(Ljava/net/HttpURLConnection;)V
    .registers 2

    .line 635
    iput-object p1, p0, Lcom/tds/common/net/TdsHttp$ResponseBody$1;->val$connection:Ljava/net/HttpURLConnection;

    invoke-direct {p0}, Lcom/tds/common/net/TdsHttp$ResponseBody;-><init>()V

    return-void
.end method


# virtual methods
.method public byteStream()Ljava/io/InputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 648
    iget-object v0, p0, Lcom/tds/common/net/TdsHttp$ResponseBody$1;->val$connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    .line 649
    .local v0, "inputStream":Ljava/io/InputStream;
    if-nez v0, :cond_e

    .line 650
    iget-object v1, p0, Lcom/tds/common/net/TdsHttp$ResponseBody$1;->val$connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 652
    :cond_e
    iget-object v1, p0, Lcom/tds/common/net/TdsHttp$ResponseBody$1;->val$connection:Ljava/net/HttpURLConnection;

    const-string v2, "Content-Encoding"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 653
    .local v1, "encoding":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2e

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "gzip"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 654
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v2

    .line 656
    :cond_2e
    return-object v0
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 662
    :try_start_0
    iget-object v0, p0, Lcom/tds/common/net/TdsHttp$ResponseBody$1;->val$connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/tds/common/io/IoUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 663
    iget-object v0, p0, Lcom/tds/common/net/TdsHttp$ResponseBody$1;->val$connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/tds/common/io/IoUtil;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_12} :catch_1a
    .catchall {:try_start_0 .. :try_end_12} :catchall_13

    goto :goto_1b

    .line 667
    :catchall_13
    move-exception v0

    iget-object v1, p0, Lcom/tds/common/net/TdsHttp$ResponseBody$1;->val$connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 668
    throw v0

    .line 664
    :catch_1a
    move-exception v0

    .line 667
    :goto_1b
    iget-object v0, p0, Lcom/tds/common/net/TdsHttp$ResponseBody$1;->val$connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 668
    nop

    .line 669
    return-void
.end method

.method public contentLength()J
    .registers 3

    .line 643
    iget-object v0, p0, Lcom/tds/common/net/TdsHttp$ResponseBody$1;->val$connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public contentType()Ljava/lang/String;
    .registers 2

    .line 638
    iget-object v0, p0, Lcom/tds/common/net/TdsHttp$ResponseBody$1;->val$connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
