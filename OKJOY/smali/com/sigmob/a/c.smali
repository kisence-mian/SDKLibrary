.class public abstract Lcom/sigmob/a/c;
.super Ljava/io/InputStream;


# static fields
.field private static final b:I = 0xff


# instance fields
.field private a:[B

.field private c:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sigmob/a/c;->a:[B

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sigmob/a/c;->c:J

    return-void
.end method

.method private b(J)V
    .registers 6

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_b

    iget-wide v0, p0, Lcom/sigmob/a/c;->c:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sigmob/a/c;->c:J

    :cond_b
    return-void
.end method


# virtual methods
.method public abstract a()Lcom/sigmob/a/a;
.end method

.method protected a(I)V
    .registers 4

    int-to-long v0, p1

    invoke-direct {p0, v0, v1}, Lcom/sigmob/a/c;->b(J)V

    return-void
.end method

.method protected a(J)V
    .registers 6

    iget-wide v0, p0, Lcom/sigmob/a/c;->c:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sigmob/a/c;->c:J

    return-void
.end method

.method public a(Lcom/sigmob/a/a;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public b()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Lcom/sigmob/a/c;->c:J

    long-to-int v0, v0

    return v0
.end method

.method protected c()J
    .registers 3

    iget-wide v0, p0, Lcom/sigmob/a/c;->c:J

    return-wide v0
.end method

.method public read()I
    .registers 5

    const/4 v3, 0x0

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/sigmob/a/c;->a:[B

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v3, v2}, Lcom/sigmob/a/c;->read([BII)I

    move-result v1

    if-ne v1, v0, :cond_c

    :goto_b
    return v0

    :cond_c
    iget-object v0, p0, Lcom/sigmob/a/c;->a:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    goto :goto_b
.end method
