.class public abstract Lcom/tds/common/net/TdsHttp$ResponseBody;
.super Ljava/lang/Object;
.source "TdsHttp.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/net/TdsHttp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ResponseBody"
.end annotation


# instance fields
.field private cacheResponse:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/net/HttpURLConnection;)Lcom/tds/common/net/TdsHttp$ResponseBody;
    .registers 2
    .param p0, "connection"    # Ljava/net/HttpURLConnection;

    .line 634
    # invokes: Lcom/tds/common/net/TdsHttp;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {p0}, Lcom/tds/common/net/TdsHttp;->access$000(Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    new-instance v0, Lcom/tds/common/net/TdsHttp$ResponseBody$1;

    invoke-direct {v0, p0}, Lcom/tds/common/net/TdsHttp$ResponseBody$1;-><init>(Ljava/net/HttpURLConnection;)V

    return-object v0
.end method


# virtual methods
.method public abstract byteStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 630
    invoke-virtual {p0}, Lcom/tds/common/net/TdsHttp$ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/tds/common/io/IoUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 631
    return-void
.end method

.method public contentLength()J
    .registers 3

    .line 611
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public abstract contentType()Ljava/lang/String;
.end method

.method public final string()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 618
    :try_start_0
    iget-object v0, p0, Lcom/tds/common/net/TdsHttp$ResponseBody;->cacheResponse:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 619
    iget-object v0, p0, Lcom/tds/common/net/TdsHttp$ResponseBody;->cacheResponse:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_1d

    .line 624
    invoke-virtual {p0}, Lcom/tds/common/net/TdsHttp$ResponseBody;->close()V

    .line 619
    return-object v0

    .line 621
    :cond_e
    :try_start_e
    invoke-virtual {p0}, Lcom/tds/common/net/TdsHttp$ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/tds/common/io/IoUtil;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/net/TdsHttp$ResponseBody;->cacheResponse:Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_1d

    .line 622
    nop

    .line 624
    invoke-virtual {p0}, Lcom/tds/common/net/TdsHttp$ResponseBody;->close()V

    .line 622
    return-object v0

    .line 624
    :catchall_1d
    move-exception v0

    invoke-virtual {p0}, Lcom/tds/common/net/TdsHttp$ResponseBody;->close()V

    .line 625
    throw v0
.end method
