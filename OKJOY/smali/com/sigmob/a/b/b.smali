.class public Lcom/sigmob/a/b/b;
.super Ljava/io/FilterInputStream;


# instance fields
.field private a:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    iget-wide v0, p0, Lcom/sigmob/a/b/b;->a:J

    return-wide v0
.end method

.method protected final a(J)V
    .registers 6

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_b

    iget-wide v0, p0, Lcom/sigmob/a/b/b;->a:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sigmob/a/b/b;->a:J

    :cond_b
    return-void
.end method

.method public read()I
    .registers 5

    iget-object v0, p0, Lcom/sigmob/a/b/b;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_d

    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/sigmob/a/b/b;->a(J)V

    :cond_d
    return v0
.end method

.method public read([B)I
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sigmob/a/b/b;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 8

    iget-object v0, p0, Lcom/sigmob/a/b/b;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ltz v0, :cond_c

    int-to-long v2, v0

    invoke-virtual {p0, v2, v3}, Lcom/sigmob/a/b/b;->a(J)V

    :cond_c
    return v0
.end method
