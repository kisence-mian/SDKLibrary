.class public Lcom/ss/android/downloadlib/addownload/d/a;
.super Ljava/lang/Object;
.source "ApkSizeInterceptor.java"

# interfaces
.implements Lcom/ss/android/downloadlib/addownload/d/d;


# static fields
.field private static a:Lcom/ss/android/downloadlib/addownload/a/c;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(I)I
    .registers 4

    .line 101
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p1

    const-string v0, "pause_optimise_apk_size"

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p1

    .line 102
    mul-int/lit16 p1, p1, 0x400

    mul-int/lit16 p1, p1, 0x400

    return p1
.end method

.method public static a()Lcom/ss/android/downloadlib/addownload/a/c;
    .registers 1

    .line 35
    sget-object v0, Lcom/ss/android/downloadlib/addownload/d/a;->a:Lcom/ss/android/downloadlib/addownload/a/c;

    return-object v0
.end method

.method static synthetic a(Lcom/ss/android/downloadlib/addownload/a/c;)Lcom/ss/android/downloadlib/addownload/a/c;
    .registers 1

    .line 30
    sput-object p0, Lcom/ss/android/downloadlib/addownload/d/a;->a:Lcom/ss/android/downloadlib/addownload/a/c;

    return-object p0
.end method

.method private static a(J)Ljava/lang/String;
    .registers 7

    .line 111
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 113
    const-wide/32 v1, 0x40000000

    cmp-long v3, p0, v1

    if-ltz v3, :cond_23

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr p0, v1

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "G"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_59

    .line 115
    :cond_23
    const-wide/32 v1, 0x100000

    cmp-long v3, p0, v1

    const-string v4, "M"

    if-ltz v3, :cond_3f

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr p0, v1

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_59

    .line 118
    :cond_3f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    long-to-float p0, p0

    const/high16 p1, 0x49800000    # 1048576.0f

    div-float/2addr p0, p1

    float-to-double p0, p0

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 120
    :goto_59
    return-object p0
.end method

.method private a(Lcom/ss/android/downloadad/a/b/a;)Z
    .registers 5

    .line 106
    invoke-static {p1}, Lcom/ss/android/downloadlib/h/e;->a(Lcom/ss/android/downloadad/a/b/a;)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    const-string v1, "pause_optimise_apk_size_switch"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 107
    invoke-interface {p1}, Lcom/ss/android/downloadad/a/b/a;->q()Z

    move-result p1

    if-eqz p1, :cond_16

    move v2, v1

    goto :goto_17

    :cond_16
    nop

    .line 106
    :goto_17
    return v2
.end method


# virtual methods
.method public a(Lcom/ss/android/downloadad/a/b/b;ILcom/ss/android/downloadlib/addownload/d/c;)Z
    .registers 11

    .line 40
    const/4 p2, 0x0

    if-nez p1, :cond_4

    .line 41
    return p2

    .line 44
    :cond_4
    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/b;->ab()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 45
    return p2

    .line 48
    :cond_b
    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/addownload/d/a;->a(Lcom/ss/android/downloadad/a/b/a;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 49
    return p2

    .line 52
    :cond_12
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ss/android/downloadlib/g;->a(Landroid/content/Context;)Lcom/ss/android/downloadlib/g;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/g;->a(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    .line 53
    if-nez v0, :cond_22

    .line 54
    return p2

    .line 57
    :cond_22
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v4

    invoke-static {v1, v2, v3, v4, v5}, Lcom/ss/android/downloadlib/addownload/j;->a(IJJ)J

    move-result-wide v1

    .line 58
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v3

    .line 60
    const-wide/16 v5, 0x0

    cmp-long v0, v1, v5

    if-lez v0, :cond_6f

    cmp-long v0, v3, v5

    if-lez v0, :cond_6f

    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/b;->s()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ss/android/downloadlib/addownload/d/a;->a(I)I

    move-result v0

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-gtz v0, :cond_6f

    .line 61
    new-instance v0, Lcom/ss/android/downloadlib/addownload/d/a$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/ss/android/downloadlib/addownload/d/a$1;-><init>(Lcom/ss/android/downloadlib/addownload/d/a;Lcom/ss/android/downloadad/a/b/b;Lcom/ss/android/downloadlib/addownload/d/c;)V

    sput-object v0, Lcom/ss/android/downloadlib/addownload/d/a;->a:Lcom/ss/android/downloadlib/addownload/a/c;

    .line 91
    sub-long/2addr v3, v1

    invoke-static {v3, v4}, Lcom/ss/android/downloadlib/addownload/d/a;->a(J)Ljava/lang/String;

    move-result-object p3

    .line 92
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    aput-object p3, v1, p2

    const-string p2, "\u8be5\u4e0b\u8f7d\u4efb\u52a1\u4ec5\u9700%s\uff0c\u5373\u5c06\u4e0b\u8f7d\u5b8c\u6210\uff0c\u662f\u5426\u7ee7\u7eed\u4e0b\u8f7d\uff1f"

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 93
    const-string p3, "\u7ee7\u7eed"

    const-string v1, "\u6682\u505c"

    invoke-static {p1, p2, p3, v1}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a(Lcom/ss/android/downloadad/a/b/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p1, v0}, Lcom/ss/android/downloadad/a/b/b;->n(Z)V

    .line 95
    return v0

    .line 97
    :cond_6f
    return p2
.end method
