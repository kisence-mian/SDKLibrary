.class public Lcom/kwai/filedownloader/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwai/filedownloader/s;
.implements Lcom/kwai/filedownloader/r;


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private d:J

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/kwai/filedownloader/b;->f:I

    return-void
.end method


# virtual methods
.method public a(J)V
    .registers 12

    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/kwai/filedownloader/b;->f:I

    if-gtz v2, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-wide v2, p0, Lcom/kwai/filedownloader/b;->a:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_1a

    :goto_f
    if-eqz v0, :cond_8

    iput-wide p1, p0, Lcom/kwai/filedownloader/b;->b:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwai/filedownloader/b;->a:J

    goto :goto_8

    :cond_1a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/kwai/filedownloader/b;->a:J

    sub-long/2addr v2, v4

    iget v4, p0, Lcom/kwai/filedownloader/b;->f:I

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_30

    iget v4, p0, Lcom/kwai/filedownloader/b;->e:I

    if-nez v4, :cond_42

    cmp-long v4, v2, v6

    if-lez v4, :cond_42

    :cond_30
    iget-wide v4, p0, Lcom/kwai/filedownloader/b;->b:J

    sub-long v4, p1, v4

    div-long v2, v4, v2

    long-to-int v2, v2

    iput v2, p0, Lcom/kwai/filedownloader/b;->e:I

    iget v2, p0, Lcom/kwai/filedownloader/b;->e:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/kwai/filedownloader/b;->e:I

    goto :goto_f

    :cond_42
    move v0, v1

    goto :goto_f
.end method

.method public b()V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/kwai/filedownloader/b;->e:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kwai/filedownloader/b;->a:J

    return-void
.end method

.method public b(J)V
    .registers 12

    const-wide/16 v6, 0x0

    iget-wide v0, p0, Lcom/kwai/filedownloader/b;->d:J

    cmp-long v0, v0, v6

    if-gtz v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-wide v0, p0, Lcom/kwai/filedownloader/b;->c:J

    sub-long v0, p1, v0

    iput-wide v6, p0, Lcom/kwai/filedownloader/b;->a:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/kwai/filedownloader/b;->d:J

    sub-long/2addr v2, v4

    cmp-long v4, v2, v6

    if-gtz v4, :cond_1e

    long-to-int v0, v0

    iput v0, p0, Lcom/kwai/filedownloader/b;->e:I

    goto :goto_8

    :cond_1e
    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/kwai/filedownloader/b;->e:I

    goto :goto_8
.end method

.method public c(J)V
    .registers 6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwai/filedownloader/b;->d:J

    iput-wide p1, p0, Lcom/kwai/filedownloader/b;->c:J

    return-void
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/kwai/filedownloader/b;->e:I

    return v0
.end method
