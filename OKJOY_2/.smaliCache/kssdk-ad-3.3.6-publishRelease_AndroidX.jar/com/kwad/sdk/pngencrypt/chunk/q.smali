.class public Lcom/kwad/sdk/pngencrypt/chunk/q;
.super Lcom/kwad/sdk/pngencrypt/chunk/aa;


# instance fields
.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/pngencrypt/k;)V
    .registers 3

    const-string v0, "IHDR"

    invoke-direct {p0, v0, p1}, Lcom/kwad/sdk/pngencrypt/chunk/aa;-><init>(Ljava/lang/String;Lcom/kwad/sdk/pngencrypt/k;)V

    if-eqz p1, :cond_a

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/pngencrypt/chunk/q;->a(Lcom/kwad/sdk/pngencrypt/k;)V

    :cond_a
    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/pngencrypt/chunk/d;)V
    .registers 5

    iget v0, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->a:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_35

    invoke-virtual {p1}, Lcom/kwad/sdk/pngencrypt/chunk/d;->b()Ljava/io/ByteArrayInputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/kwad/sdk/pngencrypt/n;->b(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/q;->h:I

    invoke-static {p1}, Lcom/kwad/sdk/pngencrypt/n;->b(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/q;->i:I

    invoke-static {p1}, Lcom/kwad/sdk/pngencrypt/n;->a(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/q;->j:I

    invoke-static {p1}, Lcom/kwad/sdk/pngencrypt/n;->a(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/q;->k:I

    invoke-static {p1}, Lcom/kwad/sdk/pngencrypt/n;->a(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/q;->l:I

    invoke-static {p1}, Lcom/kwad/sdk/pngencrypt/n;->a(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/q;->m:I

    invoke-static {p1}, Lcom/kwad/sdk/pngencrypt/n;->a(Ljava/io/InputStream;)I

    move-result p1

    iput p1, p0, Lcom/kwad/sdk/pngencrypt/chunk/q;->n:I

    return-void

    :cond_35
    new-instance v0, Lcom/kwad/sdk/pngencrypt/PngjException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad IDHR len "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p1, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->a:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/kwad/sdk/pngencrypt/PngjException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/kwad/sdk/pngencrypt/k;)V
    .registers 4

    iget-object p1, p0, Lcom/kwad/sdk/pngencrypt/chunk/q;->e:Lcom/kwad/sdk/pngencrypt/k;

    iget p1, p1, Lcom/kwad/sdk/pngencrypt/k;->a:I

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/pngencrypt/chunk/q;->b(I)V

    iget-object p1, p0, Lcom/kwad/sdk/pngencrypt/chunk/q;->e:Lcom/kwad/sdk/pngencrypt/k;

    iget p1, p1, Lcom/kwad/sdk/pngencrypt/k;->b:I

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/pngencrypt/chunk/q;->c(I)V

    iget-object p1, p0, Lcom/kwad/sdk/pngencrypt/chunk/q;->e:Lcom/kwad/sdk/pngencrypt/k;

    iget p1, p1, Lcom/kwad/sdk/pngencrypt/k;->c:I

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/pngencrypt/chunk/q;->d(I)V

    iget-object p1, p0, Lcom/kwad/sdk/pngencrypt/chunk/q;->e:Lcom/kwad/sdk/pngencrypt/k;

    iget-boolean p1, p1, Lcom/kwad/sdk/pngencrypt/k;->e:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1e

    const/4 p1, 0x4

    goto :goto_1f

    :cond_1e
    move p1, v0

    :goto_1f
    iget-object v1, p0, Lcom/kwad/sdk/pngencrypt/chunk/q;->e:Lcom/kwad/sdk/pngencrypt/k;

    iget-boolean v1, v1, Lcom/kwad/sdk/pngencrypt/k;->g:Z

    if-eqz v1, :cond_27

    add-int/lit8 p1, p1, 0x1

    :cond_27
    iget-object v1, p0, Lcom/kwad/sdk/pngencrypt/chunk/q;->e:Lcom/kwad/sdk/pngencrypt/k;

    iget-boolean v1, v1, Lcom/kwad/sdk/pngencrypt/k;->f:Z

    if-nez v1, :cond_2f

    add-int/lit8 p1, p1, 0x2

    :cond_2f
    invoke-virtual {p0, p1}, Lcom/kwad/sdk/pngencrypt/chunk/q;->e(I)V

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/pngencrypt/chunk/q;->f(I)V

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/pngencrypt/chunk/q;->g(I)V

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/pngencrypt/chunk/q;->h(I)V

    return-void
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lcom/kwad/sdk/pngencrypt/chunk/q;->h:I

    return-void
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/q;->h:I

    return v0
.end method

.method public c(I)V
    .registers 2

    iput p1, p0, Lcom/kwad/sdk/pngencrypt/chunk/q;->i:I

    return-void
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/q;->i:I

    return v0
.end method

.method public d(I)V
    .registers 2

    iput p1, p0, Lcom/kwad/sdk/pngencrypt/chunk/q;->j:I

    return-void
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/q;->j:I

    return v0
.end method

.method public e(I)V
    .registers 2

    iput p1, p0, Lcom/kwad/sdk/pngencrypt/chunk/q;->k:I

    return-void
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/q;->k:I

    return v0
.end method

.method public f(I)V
    .registers 2

    iput p1, p0, Lcom/kwad/sdk/pngencrypt/chunk/q;->l:I

    return-void
.end method

.method public g()I
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/q;->n:I

    return v0
.end method

.method public g(I)V
    .registers 2

    iput p1, p0, Lcom/kwad/sdk/pngencrypt/chunk/q;->m:I

    return-void
.end method

.method public h(I)V
    .registers 2

    iput p1, p0, Lcom/kwad/sdk/pngencrypt/chunk/q;->n:I

    return-void
.end method

.method public h()Z
    .registers 3

    invoke-virtual {p0}, Lcom/kwad/sdk/pngencrypt/chunk/q;->g()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public i()Lcom/kwad/sdk/pngencrypt/k;
    .registers 12

    invoke-virtual {p0}, Lcom/kwad/sdk/pngencrypt/chunk/q;->j()V

    invoke-virtual {p0}, Lcom/kwad/sdk/pngencrypt/chunk/q;->f()I

    move-result v0

    const/4 v1, 0x4

    and-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_f

    move v8, v3

    goto :goto_10

    :cond_f
    move v8, v2

    :goto_10
    invoke-virtual {p0}, Lcom/kwad/sdk/pngencrypt/chunk/q;->f()I

    move-result v0

    and-int/2addr v0, v3

    if-eqz v0, :cond_19

    move v10, v3

    goto :goto_1a

    :cond_19
    move v10, v2

    :goto_1a
    invoke-virtual {p0}, Lcom/kwad/sdk/pngencrypt/chunk/q;->f()I

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Lcom/kwad/sdk/pngencrypt/chunk/q;->f()I

    move-result v0

    if-ne v0, v1, :cond_27

    goto :goto_29

    :cond_27
    move v9, v2

    goto :goto_2a

    :cond_29
    :goto_29
    move v9, v3

    :goto_2a
    new-instance v0, Lcom/kwad/sdk/pngencrypt/k;

    invoke-virtual {p0}, Lcom/kwad/sdk/pngencrypt/chunk/q;->c()I

    move-result v5

    invoke-virtual {p0}, Lcom/kwad/sdk/pngencrypt/chunk/q;->d()I

    move-result v6

    invoke-virtual {p0}, Lcom/kwad/sdk/pngencrypt/chunk/q;->e()I

    move-result v7

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/kwad/sdk/pngencrypt/k;-><init>(IIIZZZ)V

    return-object v0
.end method

.method public j()V
    .registers 7

    iget v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/q;->h:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_5c

    iget v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/q;->i:I

    if-lt v0, v1, :cond_5c

    iget v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/q;->l:I

    if-nez v0, :cond_5c

    iget v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/q;->m:I

    if-nez v0, :cond_5c

    iget v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/q;->j:I

    const/16 v2, 0x8

    const-string v3, "bad IHDR: bitdepth invalid"

    const/16 v4, 0x10

    if-eq v0, v1, :cond_2c

    const/4 v5, 0x2

    if-eq v0, v5, :cond_2c

    const/4 v5, 0x4

    if-eq v0, v5, :cond_2c

    if-eq v0, v2, :cond_2c

    if-ne v0, v4, :cond_26

    goto :goto_2c

    :cond_26
    new-instance v0, Lcom/kwad/sdk/pngencrypt/PngjException;

    invoke-direct {v0, v3}, Lcom/kwad/sdk/pngencrypt/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    :goto_2c
    iget v5, p0, Lcom/kwad/sdk/pngencrypt/chunk/q;->n:I

    if-ltz v5, :cond_54

    if-gt v5, v1, :cond_54

    iget v1, p0, Lcom/kwad/sdk/pngencrypt/chunk/q;->k:I

    packed-switch v1, :pswitch_data_64

    :pswitch_37
    new-instance v0, Lcom/kwad/sdk/pngencrypt/PngjException;

    const-string v1, "bad IHDR: invalid colormodel"

    invoke-direct {v0, v1}, Lcom/kwad/sdk/pngencrypt/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3f
    if-eq v0, v4, :cond_42

    goto :goto_53

    :cond_42
    new-instance v0, Lcom/kwad/sdk/pngencrypt/PngjException;

    invoke-direct {v0, v3}, Lcom/kwad/sdk/pngencrypt/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_48
    if-eq v0, v2, :cond_53

    if-ne v0, v4, :cond_4d

    goto :goto_53

    :cond_4d
    new-instance v0, Lcom/kwad/sdk/pngencrypt/PngjException;

    invoke-direct {v0, v3}, Lcom/kwad/sdk/pngencrypt/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_53
    :goto_53
    :pswitch_53
    return-void

    :cond_54
    new-instance v0, Lcom/kwad/sdk/pngencrypt/PngjException;

    const-string v1, "bad IHDR: interlace invalid"

    invoke-direct {v0, v1}, Lcom/kwad/sdk/pngencrypt/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5c
    new-instance v0, Lcom/kwad/sdk/pngencrypt/PngjException;

    const-string v1, "bad IHDR: col/row/compmethod/filmethod invalid"

    invoke-direct {v0, v1}, Lcom/kwad/sdk/pngencrypt/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_53
        :pswitch_37
        :pswitch_48
        :pswitch_3f
        :pswitch_48
        :pswitch_37
        :pswitch_48
    .end packed-switch
.end method
