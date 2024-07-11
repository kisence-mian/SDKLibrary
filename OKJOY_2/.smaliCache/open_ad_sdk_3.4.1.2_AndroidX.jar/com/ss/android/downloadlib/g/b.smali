.class public Lcom/ss/android/downloadlib/g/b;
.super Ljava/lang/Object;
.source "AppInstallParamsInterceptor.java"

# interfaces
.implements Lcom/ss/android/socialbase/appdownloader/c/j;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/appdownloader/c/i;)V
    .registers 4

    .line 20
    if-eqz p1, :cond_13

    .line 21
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/downloadlib/addownload/b/f;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/downloadad/a/b/b;

    move-result-object v0

    .line 22
    if-eqz v0, :cond_13

    .line 24
    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/b/b;->N()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setLinkMode(I)V

    .line 27
    :cond_13
    if-eqz p2, :cond_18

    .line 28
    invoke-interface {p2}, Lcom/ss/android/socialbase/appdownloader/c/i;->a()V

    .line 30
    :cond_18
    return-void
.end method
