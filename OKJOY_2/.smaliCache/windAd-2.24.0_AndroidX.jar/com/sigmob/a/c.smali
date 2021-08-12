.class public abstract Lcom/sigmob/a/c;
.super Ljava/io/InputStream;


# instance fields
.field private a:[B

.field private b:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sigmob/a/c;->a:[B

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sigmob/a/c;->b:J

    return-void
.end method

.method private a(J)V
    .registers 5

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_b

    iget-wide v0, p0, Lcom/sigmob/a/c;->b:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sigmob/a/c;->b:J

    :cond_b
    return-void
.end method


# virtual methods
.method protected a()J
    .registers 3

    iget-wide v0, p0, Lcom/sigmob/a/c;->b:J

    return-wide v0
.end method

.method protected a(I)V
    .registers 4

    int-to-long v0, p1

    invoke-direct {p0, v0, v1}, Lcom/sigmob/a/c;->a(J)V

    return-void
.end method

.method public read()I
    .registers 4

    iget-object v0, p0, Lcom/sigmob/a/c;->a:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/sigmob/a/c;->read([BII)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_c

    goto :goto_12

    :cond_c
    iget-object v0, p0, Lcom/sigmob/a/c;->a:[B

    aget-byte v0, v0, v1

    and-int/lit16 v2, v0, 0xff

    :goto_12
    return v2
.end method
