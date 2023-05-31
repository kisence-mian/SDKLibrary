.class public Lcom/ss/android/socialbase/downloader/m/c;
.super Ljava/lang/Object;
.source "DownloadExpSwitchCode.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public static a(I)Z
    .registers 2

    .prologue
    .line 50
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->u()I

    move-result v0

    .line 51
    and-int/2addr v0, p0

    if-ne v0, p0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method
