.class public Lcom/ss/android/socialbase/downloader/e/d;
.super Lcom/ss/android/socialbase/downloader/e/f;
.source "DownloadOnlyWifiException.java"


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 7
    const/16 v0, 0x3f5

    const-string v1, "download only wifi"

    invoke-direct {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/e/f;-><init>(ILjava/lang/String;)V

    .line 8
    return-void
.end method
