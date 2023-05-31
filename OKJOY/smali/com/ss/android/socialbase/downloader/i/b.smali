.class Lcom/ss/android/socialbase/downloader/i/b;
.super Ljava/lang/Object;
.source "ExponentialGeometricAverage.java"


# instance fields
.field private final a:D

.field private final b:I

.field private c:D

.field private d:I


# direct methods
.method public constructor <init>(D)V
    .registers 6

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/i/b;->c:D

    .line 15
    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/i/b;->a:D

    .line 16
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_15

    const v0, 0x7fffffff

    :goto_12
    iput v0, p0, Lcom/ss/android/socialbase/downloader/i/b;->b:I

    .line 17
    return-void

    .line 16
    :cond_15
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    div-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_12
.end method


# virtual methods
.method public a()D
    .registers 3

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/i/b;->c:D

    return-wide v0
.end method

.method public a(D)V
    .registers 10

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 25
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/i/b;->a:D

    sub-double v0, v4, v0

    .line 26
    iget v2, p0, Lcom/ss/android/socialbase/downloader/i/b;->d:I

    iget v3, p0, Lcom/ss/android/socialbase/downloader/i/b;->b:I

    if-le v2, v3, :cond_28

    .line 27
    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/i/b;->c:D

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/i/b;->a:D

    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/i/b;->c:D

    .line 35
    :goto_21
    iget v0, p0, Lcom/ss/android/socialbase/downloader/i/b;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/i/b;->d:I

    .line 36
    return-void

    .line 28
    :cond_28
    iget v2, p0, Lcom/ss/android/socialbase/downloader/i/b;->d:I

    if-lez v2, :cond_4b

    .line 29
    iget v2, p0, Lcom/ss/android/socialbase/downloader/i/b;->d:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    iget v2, p0, Lcom/ss/android/socialbase/downloader/i/b;->d:I

    int-to-double v2, v2

    add-double/2addr v2, v4

    div-double/2addr v0, v2

    .line 30
    sub-double v2, v4, v0

    .line 31
    iget-wide v4, p0, Lcom/ss/android/socialbase/downloader/i/b;->c:D

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    mul-double/2addr v0, v4

    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/i/b;->c:D

    goto :goto_21

    .line 33
    :cond_4b
    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/i/b;->c:D

    goto :goto_21
.end method
