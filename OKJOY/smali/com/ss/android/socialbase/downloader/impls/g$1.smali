.class Lcom/ss/android/socialbase/downloader/impls/g$1;
.super Ljava/lang/Object;
.source "DefaultDownloadHttpService.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/i/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/impls/g;->a(ILjava/lang/String;Ljava/util/List;)Lcom/ss/android/socialbase/downloader/i/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/InputStream;

.field final synthetic b:Lokhttp3/Response;

.field final synthetic c:Lokhttp3/Call;

.field final synthetic d:Lokhttp3/ResponseBody;

.field final synthetic e:Lcom/ss/android/socialbase/downloader/impls/g;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/impls/g;Ljava/io/InputStream;Lokhttp3/Response;Lokhttp3/Call;Lokhttp3/ResponseBody;)V
    .registers 6

    .prologue
    .line 54
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/g$1;->e:Lcom/ss/android/socialbase/downloader/impls/g;

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/g$1;->a:Ljava/io/InputStream;

    iput-object p3, p0, Lcom/ss/android/socialbase/downloader/impls/g$1;->b:Lokhttp3/Response;

    iput-object p4, p0, Lcom/ss/android/socialbase/downloader/impls/g$1;->c:Lokhttp3/Call;

    iput-object p5, p0, Lcom/ss/android/socialbase/downloader/impls/g$1;->d:Lokhttp3/ResponseBody;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/g$1;->a:Ljava/io/InputStream;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/g$1;->b:Lokhttp3/Response;

    invoke-virtual {v0, p1}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/g$1;->b:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v0

    return v0
.end method

.method public c()V
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/g$1;->c:Lokhttp3/Call;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/g$1;->c:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_11

    .line 73
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/g$1;->c:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    .line 74
    :cond_11
    return-void
.end method

.method public d()V
    .registers 2

    .prologue
    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/g$1;->d:Lokhttp3/ResponseBody;

    if-eqz v0, :cond_9

    .line 81
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/g$1;->d:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    .line 83
    :cond_9
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/g$1;->c:Lokhttp3/Call;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/g$1;->c:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 84
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/g$1;->c:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 88
    :cond_1a
    :goto_1a
    return-void

    .line 85
    :catch_1b
    move-exception v0

    goto :goto_1a
.end method
