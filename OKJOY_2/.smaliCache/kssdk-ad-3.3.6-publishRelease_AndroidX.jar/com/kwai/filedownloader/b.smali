.class public Lcom/kwai/filedownloader/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwai/filedownloader/r$a;
.implements Lcom/kwai/filedownloader/r$b;


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
.method public a()V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/kwai/filedownloader/b;->e:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kwai/filedownloader/b;->a:J

    return-void
.end method

.method public a(J)V
    .registers 5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwai/filedownloader/b;->d:J

    iput-wide p1, p0, Lcom/kwai/filedownloader/b;->c:J

    return-void
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/kwai/filedownloader/b;->e:I

    return v0
.end method

.method public b(J)V
    .registers 9

    iget-wide v0, p0, Lcom/kwai/filedownloader/b;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_9

    return-void

    :cond_9
    iget-wide v0, p0, Lcom/kwai/filedownloader/b;->c:J

    sub-long/2addr p1, v0

    iput-wide v2, p0, Lcom/kwai/filedownloader/b;->a:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/kwai/filedownloader/b;->d:J

    sub-long/2addr v0, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1a

    goto :goto_1b

    :cond_1a
    div-long/2addr p1, v0

    :goto_1b
    long-to-int p1, p1

    iput p1, p0, Lcom/kwai/filedownloader/b;->e:I

    return-void
.end method

.method public c(J)V
    .registers 12

    iget v0, p0, Lcom/kwai/filedownloader/b;->f:I

    if-gtz v0, :cond_5

    return-void

    :cond_5
    iget-wide v0, p0, Lcom/kwai/filedownloader/b;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_10

    goto :goto_37

    :cond_10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/kwai/filedownloader/b;->a:J

    sub-long/2addr v5, v7

    iget v0, p0, Lcom/kwai/filedownloader/b;->f:I

    int-to-long v7, v0

    cmp-long v0, v5, v7

    if-gez v0, :cond_29

    iget v0, p0, Lcom/kwai/filedownloader/b;->e:I

    if-nez v0, :cond_27

    cmp-long v0, v5, v2

    if-lez v0, :cond_27

    goto :goto_29

    :cond_27
    move v1, v4

    goto :goto_37

    :cond_29
    :goto_29
    iget-wide v2, p0, Lcom/kwai/filedownloader/b;->b:J

    sub-long v2, p1, v2

    div-long/2addr v2, v5

    long-to-int v0, v2

    iput v0, p0, Lcom/kwai/filedownloader/b;->e:I

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/kwai/filedownloader/b;->e:I

    :goto_37
    if-eqz v1, :cond_41

    iput-wide p1, p0, Lcom/kwai/filedownloader/b;->b:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/kwai/filedownloader/b;->a:J

    :cond_41
    return-void
.end method
