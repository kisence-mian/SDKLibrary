.class public Lcom/ss/android/a/a/c/e;
.super Ljava/lang/Object;
.source "DownloadShortInfo.java"


# instance fields
.field public a:J

.field public b:I

.field public c:J

.field public d:J

.field public e:Ljava/lang/String;

.field public f:I

.field public g:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/ss/android/a/a/c/e;->a:J

    .line 15
    const/4 v2, -0x1

    iput v2, p0, Lcom/ss/android/a/a/c/e;->b:I

    .line 16
    iput-wide v0, p0, Lcom/ss/android/a/a/c/e;->c:J

    .line 17
    iput-wide v0, p0, Lcom/ss/android/a/a/c/e;->d:J

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/ss/android/a/a/c/e;->f:I

    return-void
.end method


# virtual methods
.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 4

    .line 44
    if-nez p1, :cond_3

    .line 45
    return-void

    .line 47
    :cond_3
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/ss/android/a/a/c/e;->a:J

    .line 48
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v0

    iput v0, p0, Lcom/ss/android/a/a/c/e;->b:I

    .line 49
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/a/a/c/e;->d:J

    .line 50
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/a/a/c/e;->c:J

    .line 51
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTargetFilePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/a/a/c/e;->e:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getFailedException()Lcom/ss/android/socialbase/downloader/exception/BaseException;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_2f

    .line 54
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorCode()I

    move-result v0

    iput v0, p0, Lcom/ss/android/a/a/c/e;->f:I

    goto :goto_32

    .line 56
    :cond_2f
    const/4 v0, 0x0

    iput v0, p0, Lcom/ss/android/a/a/c/e;->f:I

    .line 58
    :goto_32
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isOnlyWifi()Z

    move-result p1

    iput-boolean p1, p0, Lcom/ss/android/a/a/c/e;->g:Z

    .line 59
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10

    .line 24
    instance-of v0, p1, Lcom/ss/android/a/a/c/e;

    if-eqz v0, :cond_61

    if-eqz p1, :cond_61

    .line 25
    check-cast p1, Lcom/ss/android/a/a/c/e;

    .line 26
    iget-wide v0, p0, Lcom/ss/android/a/a/c/e;->a:J

    iget-wide v2, p1, Lcom/ss/android/a/a/c/e;->a:J

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_14

    move v0, v1

    goto :goto_15

    :cond_14
    move v0, v2

    .line 27
    :goto_15
    iget v3, p0, Lcom/ss/android/a/a/c/e;->b:I

    iget v4, p1, Lcom/ss/android/a/a/c/e;->b:I

    if-ne v3, v4, :cond_1d

    move v3, v1

    goto :goto_1e

    :cond_1d
    move v3, v2

    .line 28
    :goto_1e
    iget-wide v4, p0, Lcom/ss/android/a/a/c/e;->c:J

    iget-wide v6, p1, Lcom/ss/android/a/a/c/e;->c:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_28

    move v4, v1

    goto :goto_29

    :cond_28
    move v4, v2

    .line 29
    :goto_29
    iget-object v5, p0, Lcom/ss/android/a/a/c/e;->e:Ljava/lang/String;

    .line 30
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_39

    iget-object v5, p1, Lcom/ss/android/a/a/c/e;->e:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_53

    :cond_39
    iget-object v5, p0, Lcom/ss/android/a/a/c/e;->e:Ljava/lang/String;

    .line 31
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_55

    iget-object v5, p1, Lcom/ss/android/a/a/c/e;->e:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_55

    iget-object v5, p0, Lcom/ss/android/a/a/c/e;->e:Ljava/lang/String;

    iget-object p1, p1, Lcom/ss/android/a/a/c/e;->e:Ljava/lang/String;

    .line 32
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_55

    :cond_53
    move p1, v1

    goto :goto_56

    :cond_55
    move p1, v2

    .line 33
    :goto_56
    if-eqz v0, :cond_5f

    if-eqz v3, :cond_5f

    if-eqz v4, :cond_5f

    if-eqz p1, :cond_5f

    goto :goto_60

    :cond_5f
    move v1, v2

    :goto_60
    return v1

    .line 35
    :cond_61
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 4

    .line 40
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lcom/ss/android/a/a/c/e;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/ss/android/a/a/c/e;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/ss/android/a/a/c/e;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/ss/android/a/a/c/e;->e:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
