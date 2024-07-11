.class public Lcom/ss/android/socialbase/downloader/exception/c;
.super Lcom/ss/android/socialbase/downloader/exception/f;
.source "DownloadOnlyWifiException.java"


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 7
    const/16 v0, 0x3f5

    const-string v1, "download only wifi"

    invoke-direct {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/exception/f;-><init>(ILjava/lang/String;)V

    .line 8
    return-void
.end method
