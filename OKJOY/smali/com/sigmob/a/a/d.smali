.class Lcom/sigmob/a/a/d;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x200

.field public static final b:I = 0x2800


# instance fields
.field private c:Ljava/io/InputStream;

.field private d:Ljava/io/OutputStream;

.field private e:[B

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    const/16 v0, 0x2800

    invoke-direct {p0, p1, v0}, Lcom/sigmob/a/a/d;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 4

    const/16 v0, 0x200

    invoke-direct {p0, p1, p2, v0}, Lcom/sigmob/a/a/d;-><init>(Ljava/io/InputStream;II)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;II)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/a/a/d;->c:Ljava/io/InputStream;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/a/a/d;->d:Ljava/io/OutputStream;

    invoke-direct {p0, p2, p3}, Lcom/sigmob/a/a/d;->a(II)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3

    const/16 v0, 0x2800

    invoke-direct {p0, p1, v0}, Lcom/sigmob/a/a/d;-><init>(Ljava/io/OutputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .registers 4

    const/16 v0, 0x200

    invoke-direct {p0, p1, p2, v0}, Lcom/sigmob/a/a/d;-><init>(Ljava/io/OutputStream;II)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;II)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/a/a/d;->c:Ljava/io/InputStream;

    iput-object p1, p0, Lcom/sigmob/a/a/d;->d:Ljava/io/OutputStream;

    invoke-direct {p0, p2, p3}, Lcom/sigmob/a/a/d;->a(II)V

    return-void
.end method

.method private a(II)V
    .registers 6

    const/4 v2, 0x0

    iput p1, p0, Lcom/sigmob/a/a/d;->h:I

    iput p2, p0, Lcom/sigmob/a/a/d;->i:I

    iget v0, p0, Lcom/sigmob/a/a/d;->h:I

    iget v1, p0, Lcom/sigmob/a/a/d;->i:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/sigmob/a/a/d;->j:I

    iget v0, p0, Lcom/sigmob/a/a/d;->h:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sigmob/a/a/d;->e:[B

    iget-object v0, p0, Lcom/sigmob/a/a/d;->c:Ljava/io/InputStream;

    if-eqz v0, :cond_1e

    const/4 v0, -0x1

    iput v0, p0, Lcom/sigmob/a/a/d;->f:I

    iget v0, p0, Lcom/sigmob/a/a/d;->j:I

    iput v0, p0, Lcom/sigmob/a/a/d;->g:I

    :goto_1d
    return-void

    :cond_1e
    iput v2, p0, Lcom/sigmob/a/a/d;->f:I

    iput v2, p0, Lcom/sigmob/a/a/d;->g:I

    goto :goto_1d
.end method

.method private i()Z
    .registers 9

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sigmob/a/a/d;->c:Ljava/io/InputStream;

    if-nez v1, :cond_d

    new-instance v0, Ljava/io/IOException;

    const-string v1, "reading from an output buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput v0, p0, Lcom/sigmob/a/a/d;->g:I

    iget v1, p0, Lcom/sigmob/a/a/d;->h:I

    move v2, v0

    :cond_12
    :goto_12
    if-lez v1, :cond_2c

    iget-object v3, p0, Lcom/sigmob/a/a/d;->c:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/sigmob/a/a/d;->e:[B

    invoke-virtual {v3, v4, v2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    int-to-long v4, v3

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_34

    if-nez v2, :cond_26

    :goto_25
    return v0

    :cond_26
    iget-object v3, p0, Lcom/sigmob/a/a/d;->e:[B

    add-int/2addr v1, v2

    invoke-static {v3, v2, v1, v0}, Ljava/util/Arrays;->fill([BIIB)V

    :cond_2c
    iget v0, p0, Lcom/sigmob/a/a/d;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sigmob/a/a/d;->f:I

    const/4 v0, 0x1

    goto :goto_25

    :cond_34
    int-to-long v2, v2

    add-long/2addr v2, v4

    long-to-int v2, v2

    int-to-long v6, v1

    sub-long/2addr v6, v4

    long-to-int v1, v6

    iget v3, p0, Lcom/sigmob/a/a/d;->h:I

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-eqz v3, :cond_12

    goto :goto_12
.end method

.method private j()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sigmob/a/a/d;->d:Ljava/io/OutputStream;

    if-nez v0, :cond_d

    new-instance v0, Ljava/io/IOException;

    const-string v1, "writing to an input buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget-object v0, p0, Lcom/sigmob/a/a/d;->d:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/sigmob/a/a/d;->e:[B

    iget v2, p0, Lcom/sigmob/a/a/d;->h:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    iget-object v0, p0, Lcom/sigmob/a/a/d;->d:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    iput v3, p0, Lcom/sigmob/a/a/d;->g:I

    iget v0, p0, Lcom/sigmob/a/a/d;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sigmob/a/a/d;->f:I

    iget-object v0, p0, Lcom/sigmob/a/a/d;->e:[B

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([BB)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/sigmob/a/a/d;->h:I

    return v0
.end method

.method public a([BI)V
    .registers 6

    iget-object v0, p0, Lcom/sigmob/a/a/d;->d:Ljava/io/OutputStream;

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/sigmob/a/a/d;->c:Ljava/io/InputStream;

    if-nez v0, :cond_10

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Output buffer is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v0, Ljava/io/IOException;

    const-string v1, "writing to an input buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    iget v0, p0, Lcom/sigmob/a/a/d;->i:I

    add-int/2addr v0, p2

    array-length v1, p1

    if-le v0, v1, :cond_54

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "record has length \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' with offset \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' which is less than the record size of \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sigmob/a/a/d;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_54
    iget v0, p0, Lcom/sigmob/a/a/d;->g:I

    iget v1, p0, Lcom/sigmob/a/a/d;->j:I

    if-lt v0, v1, :cond_5d

    invoke-direct {p0}, Lcom/sigmob/a/a/d;->j()V

    :cond_5d
    iget-object v0, p0, Lcom/sigmob/a/a/d;->e:[B

    iget v1, p0, Lcom/sigmob/a/a/d;->g:I

    iget v2, p0, Lcom/sigmob/a/a/d;->i:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/sigmob/a/a/d;->i:I

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/sigmob/a/a/d;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sigmob/a/a/d;->g:I

    return-void
.end method

.method public a([B)Z
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sigmob/a/a/d;->b()I

    move-result v2

    move v1, v0

    :goto_6
    if-ge v1, v2, :cond_10

    aget-byte v3, p1, v1

    if-eqz v3, :cond_d

    :goto_c
    return v0

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_10
    const/4 v0, 0x1

    goto :goto_c
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/sigmob/a/a/d;->i:I

    return v0
.end method

.method public b([B)V
    .registers 6

    iget-object v0, p0, Lcom/sigmob/a/a/d;->d:Ljava/io/OutputStream;

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/sigmob/a/a/d;->c:Ljava/io/InputStream;

    if-nez v0, :cond_10

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Output buffer is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v0, Ljava/io/IOException;

    const-string v1, "writing to an input buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    array-length v0, p1

    iget v1, p0, Lcom/sigmob/a/a/d;->i:I

    if-eq v0, v1, :cond_49

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "record to write has length \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' which is not the record size of \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sigmob/a/a/d;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_49
    iget v0, p0, Lcom/sigmob/a/a/d;->g:I

    iget v1, p0, Lcom/sigmob/a/a/d;->j:I

    if-lt v0, v1, :cond_52

    invoke-direct {p0}, Lcom/sigmob/a/a/d;->j()V

    :cond_52
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sigmob/a/a/d;->e:[B

    iget v2, p0, Lcom/sigmob/a/a/d;->g:I

    iget v3, p0, Lcom/sigmob/a/a/d;->i:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/sigmob/a/a/d;->i:I

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/sigmob/a/a/d;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sigmob/a/a/d;->g:I

    return-void
.end method

.method public c()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/a/a/d;->c:Ljava/io/InputStream;

    if-nez v0, :cond_c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "reading (via skip) from an output buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget v0, p0, Lcom/sigmob/a/a/d;->g:I

    iget v1, p0, Lcom/sigmob/a/a/d;->j:I

    if-lt v0, v1, :cond_19

    invoke-direct {p0}, Lcom/sigmob/a/a/d;->i()Z

    move-result v0

    if-nez v0, :cond_19

    :goto_18
    return-void

    :cond_19
    iget v0, p0, Lcom/sigmob/a/a/d;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sigmob/a/a/d;->g:I

    goto :goto_18
.end method

.method public d()[B
    .registers 6

    iget-object v0, p0, Lcom/sigmob/a/a/d;->c:Ljava/io/InputStream;

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/sigmob/a/a/d;->d:Ljava/io/OutputStream;

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
    iget v0, p0, Lcom/sigmob/a/a/d;->g:I

    iget v1, p0, Lcom/sigmob/a/a/d;->j:I

    if-lt v0, v1, :cond_26

    invoke-direct {p0}, Lcom/sigmob/a/a/d;->i()Z

    move-result v0

    if-nez v0, :cond_26

    const/4 v0, 0x0

    :goto_25
    return-object v0

    :cond_26
    iget v0, p0, Lcom/sigmob/a/a/d;->i:I

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/sigmob/a/a/d;->e:[B

    iget v2, p0, Lcom/sigmob/a/a/d;->g:I

    iget v3, p0, Lcom/sigmob/a/a/d;->i:I

    mul-int/2addr v2, v3

    const/4 v3, 0x0

    iget v4, p0, Lcom/sigmob/a/a/d;->i:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/sigmob/a/a/d;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sigmob/a/a/d;->g:I

    goto :goto_25
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lcom/sigmob/a/a/d;->f:I

    return v0
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lcom/sigmob/a/a/d;->g:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method g()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/a/a/d;->d:Ljava/io/OutputStream;

    if-nez v0, :cond_c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "writing to an input buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget v0, p0, Lcom/sigmob/a/a/d;->g:I

    if-lez v0, :cond_13

    invoke-direct {p0}, Lcom/sigmob/a/a/d;->j()V

    :cond_13
    return-void
.end method

.method public h()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sigmob/a/a/d;->d:Ljava/io/OutputStream;

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/sigmob/a/a/d;->g()V

    iget-object v0, p0, Lcom/sigmob/a/a/d;->d:Ljava/io/OutputStream;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    if-eq v0, v1, :cond_1b

    iget-object v0, p0, Lcom/sigmob/a/a/d;->d:Ljava/io/OutputStream;

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-eq v0, v1, :cond_1b

    iget-object v0, p0, Lcom/sigmob/a/a/d;->d:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iput-object v2, p0, Lcom/sigmob/a/a/d;->d:Ljava/io/OutputStream;

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    iget-object v0, p0, Lcom/sigmob/a/a/d;->c:Ljava/io/InputStream;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/sigmob/a/a/d;->c:Ljava/io/InputStream;

    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    if-eq v0, v1, :cond_2b

    iget-object v0, p0, Lcom/sigmob/a/a/d;->c:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_2b
    iput-object v2, p0, Lcom/sigmob/a/a/d;->c:Ljava/io/InputStream;

    goto :goto_1b
.end method
