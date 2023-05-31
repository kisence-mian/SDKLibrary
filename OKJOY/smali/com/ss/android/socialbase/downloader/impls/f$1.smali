.class Lcom/ss/android/socialbase/downloader/impls/f$1;
.super Ljava/lang/Object;
.source "DefaultDownloadHeadHttpService.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/i/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/impls/f;->a(Ljava/lang/String;Ljava/util/List;)Lcom/ss/android/socialbase/downloader/i/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lokhttp3/Response;

.field final synthetic b:Lokhttp3/Call;

.field final synthetic c:Lcom/ss/android/socialbase/downloader/impls/f;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/impls/f;Lokhttp3/Response;Lokhttp3/Call;)V
    .registers 4

    .prologue
    .line 48
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/f$1;->c:Lcom/ss/android/socialbase/downloader/impls/f;

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/f$1;->a:Lokhttp3/Response;

    iput-object p3, p0, Lcom/ss/android/socialbase/downloader/impls/f$1;->b:Lokhttp3/Call;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 52
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/f$1;->a:Lokhttp3/Response;

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
    .line 57
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/f$1;->a:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v0

    return v0
.end method

.method public c()V
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/f$1;->b:Lokhttp3/Call;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/f$1;->b:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_11

    .line 63
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/f$1;->b:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    .line 64
    :cond_11
    return-void
.end method
