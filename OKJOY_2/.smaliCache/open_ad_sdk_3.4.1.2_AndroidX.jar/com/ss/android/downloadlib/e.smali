.class Lcom/ss/android/downloadlib/e;
.super Ljava/lang/Object;
.source "DownloadConfigureImpl.java"

# interfaces
.implements Lcom/ss/android/a/a/a;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ss/android/a/a/a/b;)Lcom/ss/android/a/a/a;
    .registers 4

    .line 122
    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/k;->a(Lcom/ss/android/a/a/a/b;)V

    .line 123
    invoke-static {}, Lcom/ss/android/socialbase/downloader/a/a;->a()Lcom/ss/android/socialbase/downloader/a/a;

    move-result-object v0

    new-instance v1, Lcom/ss/android/downloadlib/e$1;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/downloadlib/e$1;-><init>(Lcom/ss/android/downloadlib/e;Lcom/ss/android/a/a/a/b;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/a/a;->a(Lcom/ss/android/socialbase/downloader/a/a$c;)V

    .line 129
    return-object p0
.end method

.method public a(Lcom/ss/android/a/a/a/f;)Lcom/ss/android/a/a/a;
    .registers 2

    .line 73
    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/k;->a(Lcom/ss/android/a/a/a/f;)V

    .line 74
    return-object p0
.end method

.method public a(Lcom/ss/android/a/a/a/g;)Lcom/ss/android/a/a/a;
    .registers 2

    .line 85
    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/k;->a(Lcom/ss/android/a/a/a/g;)V

    .line 86
    return-object p0
.end method

.method public a(Lcom/ss/android/a/a/a/h;)Lcom/ss/android/a/a/a;
    .registers 2

    .line 67
    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/k;->a(Lcom/ss/android/a/a/a/h;)V

    .line 68
    return-object p0
.end method

.method public a(Lcom/ss/android/a/a/a/i;)Lcom/ss/android/a/a/a;
    .registers 2

    .line 104
    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/k;->a(Lcom/ss/android/a/a/a/i;)V

    .line 105
    return-object p0
.end method

.method public a(Lcom/ss/android/a/a/a/k;)Lcom/ss/android/a/a/a;
    .registers 2

    .line 79
    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/k;->a(Lcom/ss/android/a/a/a/k;)V

    .line 80
    return-object p0
.end method

.method public a(Lcom/ss/android/a/a/c/a;)Lcom/ss/android/a/a/a;
    .registers 2

    .line 110
    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/k;->a(Lcom/ss/android/a/a/c/a;)V

    .line 111
    return-object p0
.end method

.method public a(Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;)Lcom/ss/android/a/a/a;
    .registers 3

    .line 176
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getChunkAdjustCalculator()Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v0

    if-nez v0, :cond_d

    .line 177
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/d;->a()Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->chunkAdjustCalculator(Lcom/ss/android/socialbase/downloader/downloader/f;)Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;

    .line 179
    :cond_d
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getNotificationClickCallback()Lcom/ss/android/socialbase/downloader/depend/ah;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 180
    new-instance v0, Lcom/ss/android/downloadlib/e$2;

    invoke-direct {v0, p0}, Lcom/ss/android/downloadlib/e$2;-><init>(Lcom/ss/android/downloadlib/e;)V

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->notificationClickCallback(Lcom/ss/android/socialbase/downloader/depend/ah;)Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;

    .line 239
    :cond_1b
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getDownloadCompleteHandlers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 240
    new-instance v0, Lcom/ss/android/downloadlib/d/b;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/d/b;-><init>()V

    .line 241
    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->addDownloadCompleteHandler(Lcom/ss/android/socialbase/downloader/depend/m;)Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;

    .line 243
    :cond_2d
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->init(Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;)V

    .line 244
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/ss/android/a/a/a;
    .registers 2

    .line 116
    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/k;->a(Ljava/lang/String;)V

    .line 117
    return-object p0
.end method
