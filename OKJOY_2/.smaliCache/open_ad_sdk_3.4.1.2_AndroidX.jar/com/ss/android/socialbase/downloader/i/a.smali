.class public Lcom/ss/android/socialbase/downloader/i/a;
.super Ljava/lang/Object;
.source "DownloadExpSwitchCode.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public static a(I)Z
    .registers 2

    .line 49
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->D()I

    move-result v0

    .line 50
    and-int/2addr v0, p0

    if-ne v0, p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method
