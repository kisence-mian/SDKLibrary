.class public Lcom/ss/android/socialbase/downloader/exception/d;
.super Lcom/ss/android/socialbase/downloader/exception/BaseException;
.source "DownloadOutOfSpaceException.java"


# instance fields
.field private final a:J

.field private final b:J


# direct methods
.method public constructor <init>(JJ)V
    .registers 8

    .line 11
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "space is not enough required space is : %s but available space is :%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3ee

    invoke-direct {p0, v1, v0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    .line 13
    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/exception/d;->a:J

    .line 14
    iput-wide p3, p0, Lcom/ss/android/socialbase/downloader/exception/d;->b:J

    .line 16
    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    .line 19
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/exception/d;->a:J

    return-wide v0
.end method

.method public b()J
    .registers 3

    .line 23
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/exception/d;->b:J

    return-wide v0
.end method
