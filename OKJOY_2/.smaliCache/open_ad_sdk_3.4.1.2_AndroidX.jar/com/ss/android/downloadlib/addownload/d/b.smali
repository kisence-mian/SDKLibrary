.class public Lcom/ss/android/downloadlib/addownload/d/b;
.super Ljava/lang/Object;
.source "DownloadPercentInterceptor.java"

# interfaces
.implements Lcom/ss/android/downloadlib/addownload/d/d;


# static fields
.field private static a:Lcom/ss/android/downloadlib/addownload/a/c;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(I)I
    .registers 4

    .line 98
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p1

    const-string v0, "pause_optimise_download_percent"

    const/16 v1, 0x32

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public static a()Lcom/ss/android/downloadlib/addownload/a/c;
    .registers 1

    .line 31
    sget-object v0, Lcom/ss/android/downloadlib/addownload/d/b;->a:Lcom/ss/android/downloadlib/addownload/a/c;

    return-object v0
.end method

.method static synthetic a(Lcom/ss/android/downloadlib/addownload/a/c;)Lcom/ss/android/downloadlib/addownload/a/c;
    .registers 1

    .line 26
    sput-object p0, Lcom/ss/android/downloadlib/addownload/d/b;->a:Lcom/ss/android/downloadlib/addownload/a/c;

    return-object p0
.end method

.method private a(Lcom/ss/android/downloadad/a/b/a;)Z
    .registers 5

    .line 102
    invoke-static {p1}, Lcom/ss/android/downloadlib/h/e;->a(Lcom/ss/android/downloadad/a/b/a;)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    const-string v1, "pause_optimise_download_percent_switch"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 103
    invoke-interface {p1}, Lcom/ss/android/downloadad/a/b/a;->q()Z

    move-result p1

    if-eqz p1, :cond_16

    move v2, v1

    goto :goto_17

    :cond_16
    nop

    .line 102
    :goto_17
    return v2
.end method


# virtual methods
.method public a(Lcom/ss/android/downloadad/a/b/b;ILcom/ss/android/downloadlib/addownload/d/c;)Z
    .registers 12

    .line 36
    const/4 p2, 0x0

    if-nez p1, :cond_4

    .line 37
    return p2

    .line 40
    :cond_4
    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/b;->ac()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 41
    return p2

    .line 44
    :cond_b
    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/addownload/d/b;->a(Lcom/ss/android/downloadad/a/b/a;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 45
    return p2

    .line 48
    :cond_12
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ss/android/downloadlib/g;->a(Landroid/content/Context;)Lcom/ss/android/downloadlib/g;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/g;->a(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    .line 49
    if-nez v0, :cond_22

    .line 50
    return p2

    .line 52
    :cond_22
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v1

    .line 53
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v3

    .line 54
    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-lez v7, :cond_71

    cmp-long v5, v3, v5

    if-lez v5, :cond_71

    .line 56
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    const-wide/16 v5, 0x64

    mul-long/2addr v1, v5

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-static {v0, v1}, Lcom/ss/android/downloadlib/addownload/j;->a(II)I

    move-result v0

    .line 57
    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/b;->s()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/ss/android/downloadlib/addownload/d/b;->a(I)I

    move-result v1

    const/4 v2, 0x1

    if-le v0, v1, :cond_4e

    move v1, v2

    goto :goto_4f

    :cond_4e
    move v1, p2

    .line 58
    :goto_4f
    if-eqz v1, :cond_71

    .line 59
    new-instance v1, Lcom/ss/android/downloadlib/addownload/d/b$1;

    invoke-direct {v1, p0, p1, p3}, Lcom/ss/android/downloadlib/addownload/d/b$1;-><init>(Lcom/ss/android/downloadlib/addownload/d/b;Lcom/ss/android/downloadad/a/b/b;Lcom/ss/android/downloadlib/addownload/d/c;)V

    sput-object v1, Lcom/ss/android/downloadlib/addownload/d/b;->a:Lcom/ss/android/downloadlib/addownload/a/c;

    .line 88
    new-array p3, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, p2

    const-string p2, "\u5df2\u4e0b\u8f7d%s%%\uff0c\u5373\u5c06\u4e0b\u8f7d\u5b8c\u6210\uff0c\u662f\u5426\u7ee7\u7eed\u4e0b\u8f7d\uff1f"

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 89
    const-string p3, "\u7ee7\u7eed"

    const-string v0, "\u6682\u505c"

    invoke-static {p1, p2, p3, v0}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->b(Lcom/ss/android/downloadad/a/b/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1, v2}, Lcom/ss/android/downloadad/a/b/b;->o(Z)V

    .line 91
    return v2

    .line 94
    :cond_71
    return p2
.end method
