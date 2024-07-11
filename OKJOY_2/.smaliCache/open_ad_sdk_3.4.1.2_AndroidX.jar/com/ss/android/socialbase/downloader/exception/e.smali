.class public Lcom/ss/android/socialbase/downloader/exception/e;
.super Lcom/ss/android/socialbase/downloader/exception/f;
.source "DownloadPauseReserveWifiException.java"


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 8
    const/16 v0, 0x3f5

    const-string v1, "download reserve wifi"

    invoke-direct {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/exception/f;-><init>(ILjava/lang/String;)V

    .line 9
    return-void
.end method
