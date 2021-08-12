.class Lcom/sigmob/a/a/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/io/InputStream;

.field private b:Ljava/io/OutputStream;

.field private c:[B

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/a/a/d;->a:Ljava/io/InputStream;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sigmob/a/a/d;->b:Ljava/io/OutputStream;

    invoke-direct {p0, p2, p3}, Lcom/sigmob/a/a/d;->a(II)V

    return-void
.end method

.method private a(II)V
    .registers 3

    iput p1, p0, Lcom/sigmob/a/a/d;->f:I

    iput p2, p0, Lcom/sigmob/a/a/d;->g:I

    div-int p2, p1, p2

    iput p2, p0, Lcom/sigmob/a/a/d;->h:I

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/sigmob/a/a/d;->c:[B

    iget-object p1, p0, Lcom/sigmob/a/a/d;->a:Ljava/io/InputStream;

    if-eqz p1, :cond_16

    const/4 p1, -0x1

    iput p1, p0, Lcom/sigmob/a/a/d;->d:I

    iput p2, p0, Lcom/sigmob/a/a/d;->e:I

    goto :goto_1b

    :cond_16
    const/4 p1, 0x0

    iput p1, p0, Lcom/sigmob/a/a/d;->d:I

    iput p1, p0, Lcom/sigmob/a/a/d;->e:I

    :goto_1b
    return-void
.end method

.method private e()Z
    .registers 8

    iget-object v0, p0, Lcom/sigmob/a/a/d;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_33

    const/4 v0, 0x0

    iput v0, p0, Lcom/sigmob/a/a/d;->e:I

    iget v1, p0, Lcom/sigmob/a/a/d;->f:I

    move v2, v0

    :goto_a
    if-lez v1, :cond_2c

    iget-object v3, p0, Lcom/sigmob/a/a/d;->a:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/sigmob/a/a/d;->c:[B

    invoke-virtual {v3, v4, v2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-nez v5, :cond_25

    if-nez v2, :cond_1e

    return v0

    :cond_1e
    iget-object v3, p0, Lcom/sigmob/a/a/d;->c:[B

    add-int/2addr v1, v2

    invoke-static {v3, v2, v1, v0}, Ljava/util/Arrays;->fill([BIIB)V

    goto :goto_2c

    :cond_25
    int-to-long v5, v2

    add-long/2addr v5, v3

    long-to-int v2, v5

    int-to-long v5, v1

    sub-long/2addr v5, v3

    long-to-int v1, v5

    goto :goto_a

    :cond_2c
    :goto_2c
    iget v0, p0, Lcom/sigmob/a/a/d;->d:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sigmob/a/a/d;->d:I

    return v1

    :cond_33
    new-instance v0, Ljava/io/IOException;

    const-string v1, "reading from an output buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private f()V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/a/a/d;->b:Ljava/io/OutputStream;

    if-eqz v0, :cond_1f

    iget-object v1, p0, Lcom/sigmob/a/a/d;->c:[B

    iget v2, p0, Lcom/sigmob/a/a/d;->f:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    iget-object v0, p0, Lcom/sigmob/a/a/d;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    iput v3, p0, Lcom/sigmob/a/a/d;->e:I

    iget v0, p0, Lcom/sigmob/a/a/d;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sigmob/a/a/d;->d:I

    iget-object v0, p0, Lcom/sigmob/a/a/d;->c:[B

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([BB)V

    return-void

    :cond_1f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "writing to an input buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/sigmob/a/a/d;->g:I

    return v0
.end method

.method public a([B)Z
    .registers 6

    invoke-virtual {p0}, Lcom/sigmob/a/a/d;->a()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_10

    aget-byte v3, p1, v2

    if-eqz v3, :cond_d

    return v1

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_10
    const/4 p1, 0x1

    return p1
.end method

.method public b()[B
    .registers 6

    iget-object v0, p0, Lcom/sigmob/a/a/d;->a:Ljava/io/InputStream;

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/sigmob/a/a/d;->b:Ljava/io/OutputStream;

    if-nez v0, :cond_10

    new-instance v0, Ljava/io/IOException;

    const-string v1, "input buffer is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v0, Ljava/io/IOException;

    const-string v1, "reading from an output buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    iget v0, p0, Lcom/sigmob/a/a/d;->e:I

    iget v1, p0, Lcom/sigmob/a/a/d;->h:I

    if-lt v0, v1, :cond_26

    invoke-direct {p0}, Lcom/sigmob/a/a/d;->e()Z

    move-result v0

    if-nez v0, :cond_26

    const/4 v0, 0x0

    return-object v0

    :cond_26
    iget v0, p0, Lcom/sigmob/a/a/d;->g:I

    new-array v1, v0, [B

    iget-object v2, p0, Lcom/sigmob/a/a/d;->c:[B

    iget v3, p0, Lcom/sigmob/a/a/d;->e:I

    mul-int/2addr v3, v0

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/sigmob/a/a/d;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sigmob/a/a/d;->e:I

    return-object v1
.end method

.method c()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/a/a/d;->b:Ljava/io/OutputStream;

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/sigmob/a/a/d;->e:I

    if-lez v0, :cond_b

    invoke-direct {p0}, Lcom/sigmob/a/a/d;->f()V

    :cond_b
    return-void

    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "writing to an input buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/a/a/d;->b:Ljava/io/OutputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/sigmob/a/a/d;->c()V

    iget-object v0, p0, Lcom/sigmob/a/a/d;->b:Ljava/io/OutputStream;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    if-eq v0, v2, :cond_2b

    iget-object v0, p0, Lcom/sigmob/a/a/d;->b:Ljava/io/OutputStream;

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-eq v0, v2, :cond_2b

    iget-object v0, p0, Lcom/sigmob/a/a/d;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iput-object v1, p0, Lcom/sigmob/a/a/d;->b:Ljava/io/OutputStream;

    goto :goto_2b

    :cond_1c
    iget-object v0, p0, Lcom/sigmob/a/a/d;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_2b

    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    if-eq v0, v2, :cond_29

    iget-object v0, p0, Lcom/sigmob/a/a/d;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_29
    iput-object v1, p0, Lcom/sigmob/a/a/d;->a:Ljava/io/InputStream;

    :cond_2b
    :goto_2b
    return-void
.end method
