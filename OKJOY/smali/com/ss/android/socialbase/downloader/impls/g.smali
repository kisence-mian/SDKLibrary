.class public Lcom/ss/android/socialbase/downloader/impls/g;
.super Ljava/lang/Object;
.source "DefaultDownloadHttpService.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/i/f;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/util/List;)Lcom/ss/android/socialbase/downloader/i/e;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/e;",
            ">;)",
            "Lcom/ss/android/socialbase/downloader/i/e;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->n()Lokhttp3/OkHttpClient;

    move-result-object v1

    .line 31
    if-nez v1, :cond_e

    .line 32
    new-instance v0, Ljava/io/IOException;

    const-string v1, "can\'t get httpClient"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_e
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 34
    if-eqz p3, :cond_3f

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3f

    .line 35
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/e;

    .line 36
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/e;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_23

    .line 39
    :cond_3f
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 40
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v4

    .line 41
    invoke-interface {v4}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v3

    .line 42
    if-nez v3, :cond_55

    .line 43
    new-instance v0, Ljava/io/IOException;

    const-string v1, "can\'t get response"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_55
    invoke-virtual {v3}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v5

    .line 45
    if-eqz v5, :cond_7f

    .line 46
    invoke-virtual {v5}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v0

    .line 47
    const-string v1, "Content-Encoding"

    invoke-virtual {v3, v1}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    if-eqz v1, :cond_81

    const-string v2, "gzip"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_81

    instance-of v1, v0, Ljava/util/zip/GZIPInputStream;

    if-nez v1, :cond_81

    .line 49
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 54
    :goto_78
    new-instance v0, Lcom/ss/android/socialbase/downloader/impls/g$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/impls/g$1;-><init>(Lcom/ss/android/socialbase/downloader/impls/g;Ljava/io/InputStream;Lokhttp3/Response;Lokhttp3/Call;Lokhttp3/ResponseBody;)V

    .line 93
    :goto_7e
    return-object v0

    :cond_7f
    const/4 v0, 0x0

    goto :goto_7e

    :cond_81
    move-object v2, v0

    goto :goto_78
.end method
