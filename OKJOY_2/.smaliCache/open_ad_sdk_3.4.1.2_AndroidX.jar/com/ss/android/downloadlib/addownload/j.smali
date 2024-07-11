.class public Lcom/ss/android/downloadlib/addownload/j;
.super Ljava/lang/Object;
.source "DownloadPercentHelper.java"


# direct methods
.method public static a(II)I
    .registers 4

    .line 21
    if-lez p1, :cond_17

    const/16 v0, 0x64

    if-ge p1, v0, :cond_17

    .line 23
    invoke-static {p0}, Lcom/ss/android/downloadlib/addownload/j;->a(I)Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_17

    .line 26
    :cond_d
    int-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    mul-double/2addr p0, v0

    double-to-int p0, p0

    return p0

    .line 24
    :cond_17
    :goto_17
    return p1
.end method

.method public static a(IJJ)J
    .registers 8

    .line 33
    invoke-static {p0}, Lcom/ss/android/downloadlib/addownload/j;->a(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 34
    return-wide p1

    .line 36
    :cond_7
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_e

    .line 37
    return-wide v0

    .line 39
    :cond_e
    cmp-long v0, p3, v0

    if-gtz v0, :cond_13

    .line 40
    return-wide p1

    .line 42
    :cond_13
    const-wide/16 v0, 0x64

    mul-long/2addr p1, v0

    div-long/2addr p1, p3

    long-to-int p1, p1

    invoke-static {p0, p1}, Lcom/ss/android/downloadlib/addownload/j;->a(II)I

    move-result p0

    .line 43
    int-to-long p0, p0

    mul-long/2addr p3, p0

    div-long/2addr p3, v0

    return-wide p3
.end method

.method public static a(Lcom/ss/android/a/a/c/e;)Lcom/ss/android/a/a/c/e;
    .registers 6

    .line 47
    if-eqz p0, :cond_1a

    iget-wide v0, p0, Lcom/ss/android/a/a/c/e;->a:J

    long-to-int v0, v0

    .line 48
    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/j;->a(I)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_1a

    .line 51
    :cond_c
    iget-wide v0, p0, Lcom/ss/android/a/a/c/e;->a:J

    long-to-int v0, v0

    iget-wide v1, p0, Lcom/ss/android/a/a/c/e;->d:J

    iget-wide v3, p0, Lcom/ss/android/a/a/c/e;->c:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ss/android/downloadlib/addownload/j;->a(IJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/a/a/c/e;->d:J

    .line 52
    return-object p0

    .line 49
    :cond_1a
    :goto_1a
    return-object p0
.end method

.method private static a(I)Z
    .registers 4

    .line 57
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    const-string v1, "pause_optimise_pretend_download_percent_switch"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    .line 58
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p0

    const-string v0, "pause_optimise_switch"

    invoke-virtual {p0, v0, v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_1c

    move v2, v1

    goto :goto_1d

    :cond_1c
    nop

    .line 57
    :goto_1d
    return v2
.end method
