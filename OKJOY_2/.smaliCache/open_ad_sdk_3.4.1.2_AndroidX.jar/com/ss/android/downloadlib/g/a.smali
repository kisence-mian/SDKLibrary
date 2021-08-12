.class public Lcom/ss/android/downloadlib/g/a;
.super Ljava/lang/Object;
.source "AppInstallInvokeInterceptor.java"

# interfaces
.implements Lcom/ss/android/socialbase/appdownloader/c/j;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/downloadlib/g/a;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/downloadlib/guide/install/a;)V
    .registers 3

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/ss/android/downloadlib/g/a;->b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/downloadlib/guide/install/a;)V

    return-void
.end method

.method private b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/downloadlib/guide/install/a;)V
    .registers 5

    .line 51
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/downloadlib/addownload/b/f;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/downloadad/a/b/b;

    move-result-object p1

    .line 52
    invoke-static {p1}, Lcom/ss/android/downloadlib/b/f;->a(Lcom/ss/android/downloadad/a/b/b;)Z

    move-result v0

    .line 53
    invoke-static {p1}, Lcom/ss/android/downloadlib/b/f;->b(Lcom/ss/android/downloadad/a/b/b;)Z

    move-result v1

    .line 54
    if-eqz v0, :cond_1e

    if-nez v1, :cond_15

    goto :goto_1e

    .line 60
    :cond_15
    new-instance v0, Lcom/ss/android/downloadlib/g/a$3;

    invoke-direct {v0, p0, p2}, Lcom/ss/android/downloadlib/g/a$3;-><init>(Lcom/ss/android/downloadlib/g/a;Lcom/ss/android/downloadlib/guide/install/a;)V

    invoke-static {p1, v0}, Lcom/ss/android/downloadlib/b/c;->a(Lcom/ss/android/downloadad/a/b/b;Lcom/ss/android/downloadlib/guide/install/a;)V

    .line 66
    return-void

    .line 55
    :cond_1e
    :goto_1e
    invoke-interface {p2}, Lcom/ss/android/downloadlib/guide/install/a;->a()V

    .line 56
    return-void
.end method


# virtual methods
.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/downloadlib/guide/install/a;)V
    .registers 5

    .line 36
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/downloadlib/addownload/b/f;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/downloadad/a/b/b;

    move-result-object v0

    .line 37
    if-eqz v0, :cond_19

    invoke-static {v0}, Lcom/ss/android/downloadlib/b/i;->a(Lcom/ss/android/downloadad/a/b/a;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 38
    new-instance v1, Lcom/ss/android/downloadlib/g/a$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/ss/android/downloadlib/g/a$2;-><init>(Lcom/ss/android/downloadlib/g/a;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/downloadlib/guide/install/a;)V

    invoke-static {v0, v1}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a(Lcom/ss/android/downloadad/a/b/a;Lcom/ss/android/downloadlib/guide/install/a;)V

    goto :goto_1c

    .line 45
    :cond_19
    invoke-direct {p0, p1, p2}, Lcom/ss/android/downloadlib/g/a;->b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/downloadlib/guide/install/a;)V

    .line 47
    :goto_1c
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/appdownloader/c/i;)V
    .registers 4

    .line 27
    new-instance v0, Lcom/ss/android/downloadlib/g/a$1;

    invoke-direct {v0, p0, p2}, Lcom/ss/android/downloadlib/g/a$1;-><init>(Lcom/ss/android/downloadlib/g/a;Lcom/ss/android/socialbase/appdownloader/c/i;)V

    invoke-virtual {p0, p1, v0}, Lcom/ss/android/downloadlib/g/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/downloadlib/guide/install/a;)V

    .line 33
    return-void
.end method
