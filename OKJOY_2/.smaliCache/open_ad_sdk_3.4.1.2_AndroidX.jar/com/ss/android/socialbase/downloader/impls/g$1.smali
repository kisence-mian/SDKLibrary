.class Lcom/ss/android/socialbase/downloader/impls/g$1;
.super Lcom/ss/android/socialbase/downloader/network/e;
.source "DefaultDownloadHttpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/impls/g;->downloadWithConnection(ILjava/lang/String;Ljava/util/List;)Lcom/ss/android/socialbase/downloader/network/i;
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

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/ss/android/socialbase/downloader/impls/g;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/impls/g;Ljava/io/InputStream;Lokhttp3/Response;Lokhttp3/Call;Lokhttp3/ResponseBody;Ljava/lang/String;)V
    .registers 7

    .line 84
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/g$1;->f:Lcom/ss/android/socialbase/downloader/impls/g;

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/g$1;->a:Ljava/io/InputStream;

    iput-object p3, p0, Lcom/ss/android/socialbase/downloader/impls/g$1;->b:Lokhttp3/Response;

    iput-object p4, p0, Lcom/ss/android/socialbase/downloader/impls/g$1;->c:Lokhttp3/Call;

    iput-object p5, p0, Lcom/ss/android/socialbase/downloader/impls/g$1;->d:Lokhttp3/ResponseBody;

    iput-object p6, p0, Lcom/ss/android/socialbase/downloader/impls/g$1;->e:Ljava/lang/String;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/network/e;-><init>()V

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

    .line 87
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/g$1;->a:Ljava/io/InputStream;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 92
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/g$1;->b:Lokhttp3/Response;

    invoke-virtual {v0, p1}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/g$1;->b:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v0

    return v0
.end method

.method public c()V
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/g$1;->c:Lokhttp3/Call;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lokhttp3/Call;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_f

    .line 103
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/g$1;->c:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    .line 104
    :cond_f
    return-void
.end method

.method public d()V
    .registers 2

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/g$1;->d:Lokhttp3/ResponseBody;

    if-eqz v0, :cond_7

    .line 111
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    .line 113
    :cond_7
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/g$1;->c:Lokhttp3/Call;

    if-eqz v0, :cond_16

    invoke-interface {v0}, Lokhttp3/Call;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_16

    .line 114
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/g$1;->c:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_17

    .line 117
    :cond_16
    goto :goto_18

    .line 115
    :catchall_17
    move-exception v0

    .line 118
    :goto_18
    return-void
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/g$1;->e:Ljava/lang/String;

    return-object v0
.end method
