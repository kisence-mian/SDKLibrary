.class public Lcom/kwad/sdk/pngencrypt/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field static final synthetic a:Z


# instance fields
.field private b:Ljava/io/InputStream;

.field private c:[B

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z

.field private h:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/kwad/sdk/pngencrypt/a;->a:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    const/16 v0, 0x4000

    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/pngencrypt/a;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwad/sdk/pngencrypt/a;->f:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwad/sdk/pngencrypt/a;->g:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/kwad/sdk/pngencrypt/a;->h:J

    iput-object p1, p0, Lcom/kwad/sdk/pngencrypt/a;->b:Ljava/io/InputStream;

    if-ge p2, v0, :cond_13

    const/16 p2, 0x4000

    :cond_13
    new-array p1, p2, [B

    iput-object p1, p0, Lcom/kwad/sdk/pngencrypt/a;->c:[B

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/pngencrypt/f;)I
    .registers 3

    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lcom/kwad/sdk/pngencrypt/a;->a(Lcom/kwad/sdk/pngencrypt/f;I)I

    move-result p1

    return p1
.end method

.method public a(Lcom/kwad/sdk/pngencrypt/f;I)I
    .registers 6

    invoke-virtual {p0}, Lcom/kwad/sdk/pngencrypt/a;->a()V

    if-lez p2, :cond_a

    iget v0, p0, Lcom/kwad/sdk/pngencrypt/a;->d:I

    if-ge p2, v0, :cond_a

    goto :goto_c

    :cond_a
    iget p2, p0, Lcom/kwad/sdk/pngencrypt/a;->d:I

    :goto_c
    const/4 v0, -0x1

    if-lez p2, :cond_44

    iget-object v1, p0, Lcom/kwad/sdk/pngencrypt/a;->c:[B

    iget v2, p0, Lcom/kwad/sdk/pngencrypt/a;->e:I

    invoke-interface {p1, v1, v2, p2}, Lcom/kwad/sdk/pngencrypt/f;->a([BII)I

    move-result p2

    if-lez p2, :cond_30

    iget v1, p0, Lcom/kwad/sdk/pngencrypt/a;->e:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/kwad/sdk/pngencrypt/a;->e:I

    iget v1, p0, Lcom/kwad/sdk/pngencrypt/a;->d:I

    sub-int/2addr v1, p2

    iput v1, p0, Lcom/kwad/sdk/pngencrypt/a;->d:I

    sget-boolean v2, Lcom/kwad/sdk/pngencrypt/a;->a:Z

    if-nez v2, :cond_30

    if-ltz v1, :cond_2a

    goto :goto_30

    :cond_2a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_30
    :goto_30
    if-lez p2, :cond_33

    return p2

    :cond_33
    invoke-interface {p1}, Lcom/kwad/sdk/pngencrypt/f;->b()Z

    move-result p1

    if-nez p1, :cond_43

    new-instance p1, Lcom/kwad/sdk/pngencrypt/PngjException;

    const-string p2, "This should not happen!"

    invoke-direct {p1, p2}, Lcom/kwad/sdk/pngencrypt/PngjException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :cond_43
    return v0

    :cond_44
    iget-boolean p2, p0, Lcom/kwad/sdk/pngencrypt/a;->f:Z

    if-nez p2, :cond_52

    new-instance p2, Lcom/kwad/sdk/pngencrypt/PngjException;

    const-string v1, "This should not happen"

    invoke-direct {p2, v1}, Lcom/kwad/sdk/pngencrypt/PngjException;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :cond_52
    invoke-interface {p1}, Lcom/kwad/sdk/pngencrypt/f;->b()Z

    move-result p1

    if-eqz p1, :cond_59

    goto :goto_5a

    :cond_59
    const/4 v0, 0x0

    :goto_5a
    return v0
.end method

.method protected a()V
    .registers 6

    iget v0, p0, Lcom/kwad/sdk/pngencrypt/a;->d:I

    if-gtz v0, :cond_39

    iget-boolean v0, p0, Lcom/kwad/sdk/pngencrypt/a;->f:Z

    if-eqz v0, :cond_9

    goto :goto_39

    :cond_9
    const/4 v0, 0x0

    :try_start_a
    iput v0, p0, Lcom/kwad/sdk/pngencrypt/a;->e:I

    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/a;->b:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/kwad/sdk/pngencrypt/a;->c:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/pngencrypt/a;->d:I

    if-nez v0, :cond_23

    new-instance v0, Lcom/kwad/sdk/pngencrypt/PngjException;

    const-string v1, "This should not happen: stream.read(buf) returned 0"

    invoke-direct {v0, v1}, Lcom/kwad/sdk/pngencrypt/PngjException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    goto :goto_39

    :cond_23
    if-gez v0, :cond_29

    invoke-virtual {p0}, Lcom/kwad/sdk/pngencrypt/a;->close()V

    goto :goto_39

    :cond_29
    iget-wide v1, p0, Lcom/kwad/sdk/pngencrypt/a;->h:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/kwad/sdk/pngencrypt/a;->h:J
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_2f} :catch_30

    goto :goto_39

    :catch_30
    move-exception v0

    new-instance v1, Lcom/kwad/sdk/pngencrypt/PngjException;

    invoke-direct {v1, v0}, Lcom/kwad/sdk/pngencrypt/PngjException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :cond_39
    :goto_39
    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/pngencrypt/a;->g:Z

    return-void
.end method

.method public b(Lcom/kwad/sdk/pngencrypt/f;I)I
    .registers 5

    move v0, p2

    :goto_1
    if-lez v0, :cond_c

    invoke-virtual {p0, p1, v0}, Lcom/kwad/sdk/pngencrypt/a;->a(Lcom/kwad/sdk/pngencrypt/f;I)I

    move-result v1

    if-gtz v1, :cond_a

    return v1

    :cond_a
    sub-int/2addr v0, v1

    goto :goto_1

    :cond_c
    sget-boolean p1, Lcom/kwad/sdk/pngencrypt/a;->a:Z

    if-nez p1, :cond_19

    if-nez v0, :cond_13

    goto :goto_19

    :cond_13
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_19
    :goto_19
    return p2
.end method

.method public close()V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwad/sdk/pngencrypt/a;->f:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwad/sdk/pngencrypt/a;->c:[B

    const/4 v1, 0x0

    iput v1, p0, Lcom/kwad/sdk/pngencrypt/a;->d:I

    iput v1, p0, Lcom/kwad/sdk/pngencrypt/a;->e:I

    iget-object v1, p0, Lcom/kwad/sdk/pngencrypt/a;->b:Ljava/io/InputStream;

    if-eqz v1, :cond_18

    iget-boolean v2, p0, Lcom/kwad/sdk/pngencrypt/a;->g:Z

    if-eqz v2, :cond_18

    :try_start_13
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_17

    goto :goto_18

    :catch_17
    move-exception v1

    :cond_18
    :goto_18
    iput-object v0, p0, Lcom/kwad/sdk/pngencrypt/a;->b:Ljava/io/InputStream;

    return-void
.end method
