.class public Lcom/ss/android/socialbase/downloader/e/e;
.super Lcom/ss/android/socialbase/downloader/e/a;
.source "DownloadOutOfSpaceException.java"


# instance fields
.field private final a:J

.field private final b:J


# direct methods
.method public constructor <init>(JJ)V
    .registers 10

    .prologue
    .line 11
    const/16 v0, 0x3ee

    const-string v1, "space is not enough required space is : %s but available space is :%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    .line 13
    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/e/e;->a:J

    .line 14
    iput-wide p3, p0, Lcom/ss/android/socialbase/downloader/e/e;->b:J

    .line 16
    return-void
.end method


# virtual methods
.method public c()J
    .registers 3

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/e/e;->a:J

    return-wide v0
.end method

.method public d()J
    .registers 3

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/e/e;->b:J

    return-wide v0
.end method
