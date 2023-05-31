.class public Lcom/kwai/filedownloader/f0/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:I

.field private b:I

.field private c:J

.field private d:J

.field private e:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;)J
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kwai/filedownloader/f0/a;",
            ">;)J"
        }
    .end annotation

    const-wide/16 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwai/filedownloader/f0/a;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/f0/a;->a()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/kwai/filedownloader/f0/a;->e()J

    move-result-wide v0

    sub-long v0, v6, v0

    add-long/2addr v0, v2

    move-wide v2, v0

    goto :goto_7

    :cond_20
    return-wide v2
.end method


# virtual methods
.method public a()J
    .registers 3

    iget-wide v0, p0, Lcom/kwai/filedownloader/f0/a;->d:J

    return-wide v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/kwai/filedownloader/f0/a;->a:I

    return-void
.end method

.method public a(J)V
    .registers 4

    iput-wide p1, p0, Lcom/kwai/filedownloader/f0/a;->d:J

    return-void
.end method

.method public b()J
    .registers 3

    iget-wide v0, p0, Lcom/kwai/filedownloader/f0/a;->e:J

    return-wide v0
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lcom/kwai/filedownloader/f0/a;->b:I

    return-void
.end method

.method public b(J)V
    .registers 4

    iput-wide p1, p0, Lcom/kwai/filedownloader/f0/a;->e:J

    return-void
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/kwai/filedownloader/f0/a;->a:I

    return v0
.end method

.method public c(J)V
    .registers 4

    iput-wide p1, p0, Lcom/kwai/filedownloader/f0/a;->c:J

    return-void
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/kwai/filedownloader/f0/a;->b:I

    return v0
.end method

.method public e()J
    .registers 3

    iget-wide v0, p0, Lcom/kwai/filedownloader/f0/a;->c:J

    return-wide v0
.end method

.method public f()Landroid/content/ContentValues;
    .registers 5

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget v1, p0, Lcom/kwai/filedownloader/f0/a;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v1, p0, Lcom/kwai/filedownloader/f0/a;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "connectionIndex"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-wide v2, p0, Lcom/kwai/filedownloader/f0/a;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "startOffset"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v2, p0, Lcom/kwai/filedownloader/f0/a;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "currentOffset"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v2, p0, Lcom/kwai/filedownloader/f0/a;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "endOffset"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/kwai/filedownloader/f0/a;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/kwai/filedownloader/f0/a;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v2, p0, Lcom/kwai/filedownloader/f0/a;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v2, p0, Lcom/kwai/filedownloader/f0/a;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v2, p0, Lcom/kwai/filedownloader/f0/a;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "id[%d] index[%d] range[%d, %d) current offset(%d)"

    invoke-static {v1, v0}, Lcom/kwai/filedownloader/h0/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
