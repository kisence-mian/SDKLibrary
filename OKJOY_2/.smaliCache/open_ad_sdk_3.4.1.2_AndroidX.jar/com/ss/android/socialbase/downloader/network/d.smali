.class Lcom/ss/android/socialbase/downloader/network/d;
.super Ljava/lang/Object;
.source "ExponentialGeometricAverage.java"


# instance fields
.field private final a:D

.field private final b:I

.field private c:D

.field private d:I


# direct methods
.method public constructor <init>(D)V
    .registers 5

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/network/d;->c:D

    .line 15
    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/network/d;->a:D

    .line 16
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_13

    const p1, 0x7fffffff

    goto :goto_1b

    :cond_13
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    div-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    :goto_1b
    iput p1, p0, Lcom/ss/android/socialbase/downloader/network/d;->b:I

    .line 17
    return-void
.end method


# virtual methods
.method public a()D
    .registers 3

    .line 39
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/network/d;->c:D

    return-wide v0
.end method

.method public a(D)V
    .registers 10

    .line 25
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/network/d;->a:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v0, v2, v0

    .line 26
    iget v4, p0, Lcom/ss/android/socialbase/downloader/network/d;->d:I

    iget v5, p0, Lcom/ss/android/socialbase/downloader/network/d;->b:I

    if-le v4, v5, :cond_22

    .line 27
    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/network/d;->c:D

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/network/d;->a:D

    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide p1

    mul-double/2addr v2, p1

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/network/d;->c:D

    goto :goto_40

    .line 28
    :cond_22
    if-lez v4, :cond_3e

    .line 29
    int-to-double v5, v4

    mul-double/2addr v0, v5

    int-to-double v4, v4

    add-double/2addr v4, v2

    div-double/2addr v0, v4

    .line 30
    sub-double/2addr v2, v0

    .line 31
    iget-wide v4, p0, Lcom/ss/android/socialbase/downloader/network/d;->c:D

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    mul-double/2addr v0, v4

    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide p1

    mul-double/2addr v2, p1

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/network/d;->c:D

    .line 32
    goto :goto_40

    .line 33
    :cond_3e
    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/network/d;->c:D

    .line 35
    :goto_40
    iget p1, p0, Lcom/ss/android/socialbase/downloader/network/d;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/ss/android/socialbase/downloader/network/d;->d:I

    .line 36
    return-void
.end method
