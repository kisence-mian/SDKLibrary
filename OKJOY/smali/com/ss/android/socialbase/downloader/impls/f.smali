.class public Lcom/ss/android/socialbase/downloader/impls/f;
.super Ljava/lang/Object;
.source "DefaultDownloadHeadHttpService.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/i/d;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/List;)Lcom/ss/android/socialbase/downloader/i/c;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/e;",
            ">;)",
            "Lcom/ss/android/socialbase/downloader/i/c;"
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

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->head()Lokhttp3/Request$Builder;

    move-result-object v2

    .line 34
    if-eqz p2, :cond_43

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_43

    .line 35
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

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

    goto :goto_27

    .line 39
    :cond_43
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 40
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    .line 41
    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v1

    .line 42
    if-nez v1, :cond_59

    .line 43
    new-instance v0, Ljava/io/IOException;

    const-string v1, "can\'t get response"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_59
    const/high16 v2, 0x200000

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/m/c;->a(I)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 46
    invoke-virtual {v1}, Lokhttp3/Response;->close()V

    .line 48
    :cond_64
    new-instance v2, Lcom/ss/android/socialbase/downloader/impls/f$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/ss/android/socialbase/downloader/impls/f$1;-><init>(Lcom/ss/android/socialbase/downloader/impls/f;Lokhttp3/Response;Lokhttp3/Call;)V

    return-object v2
.end method
