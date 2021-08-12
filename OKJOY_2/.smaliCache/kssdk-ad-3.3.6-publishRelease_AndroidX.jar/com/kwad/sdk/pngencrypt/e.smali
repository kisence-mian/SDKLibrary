.class public Lcom/kwad/sdk/pngencrypt/e;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/kwad/sdk/pngencrypt/k;

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Z


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/pngencrypt/k;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwad/sdk/pngencrypt/e;->o:Z

    iput-object p1, p0, Lcom/kwad/sdk/pngencrypt/e;->a:Lcom/kwad/sdk/pngencrypt/k;

    iput v0, p0, Lcom/kwad/sdk/pngencrypt/e;->i:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/kwad/sdk/pngencrypt/e;->l:I

    iput p1, p0, Lcom/kwad/sdk/pngencrypt/e;->m:I

    iput v0, p0, Lcom/kwad/sdk/pngencrypt/e;->n:I

    iput-boolean v0, p0, Lcom/kwad/sdk/pngencrypt/e;->o:Z

    iput v0, p0, Lcom/kwad/sdk/pngencrypt/e;->h:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/pngencrypt/e;->a(I)V

    invoke-direct {p0, v0}, Lcom/kwad/sdk/pngencrypt/e;->c(I)V

    return-void
.end method

.method static b(I)[B
    .registers 4

    const/4 v0, 0x4

    packed-switch p0, :pswitch_data_48

    new-instance v0, Lcom/kwad/sdk/pngencrypt/PngjException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad interlace pass"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/kwad/sdk/pngencrypt/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1d
    new-array p0, v0, [B

    fill-array-data p0, :array_5a

    return-object p0

    :pswitch_23
    new-array p0, v0, [B

    fill-array-data p0, :array_60

    return-object p0

    :pswitch_29
    new-array p0, v0, [B

    fill-array-data p0, :array_66

    return-object p0

    :pswitch_2f
    new-array p0, v0, [B

    fill-array-data p0, :array_6c

    return-object p0

    :pswitch_35
    new-array p0, v0, [B

    fill-array-data p0, :array_72

    return-object p0

    :pswitch_3b
    new-array p0, v0, [B

    fill-array-data p0, :array_78

    return-object p0

    :pswitch_41
    new-array p0, v0, [B

    fill-array-data p0, :array_7e

    return-object p0

    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_41
        :pswitch_3b
        :pswitch_35
        :pswitch_2f
        :pswitch_29
        :pswitch_23
        :pswitch_1d
    .end packed-switch

    :array_5a
    .array-data 1
        0x1t
        0x2t
        0x0t
        0x1t
    .end array-data

    :array_60
    .array-data 1
        0x2t
        0x2t
        0x1t
        0x0t
    .end array-data

    :array_66
    .array-data 1
        0x2t
        0x4t
        0x0t
        0x2t
    .end array-data

    :array_6c
    .array-data 1
        0x4t
        0x4t
        0x2t
        0x0t
    .end array-data

    :array_72
    .array-data 1
        0x4t
        0x8t
        0x0t
        0x4t
    .end array-data

    :array_78
    .array-data 1
        0x8t
        0x8t
        0x4t
        0x0t
    .end array-data

    :array_7e
    .array-data 1
        0x8t
        0x8t
        0x0t
        0x0t
    .end array-data
.end method

.method private c(I)V
    .registers 3

    iput p1, p0, Lcom/kwad/sdk/pngencrypt/e;->l:I

    iget v0, p0, Lcom/kwad/sdk/pngencrypt/e;->b:I

    mul-int/2addr p1, v0

    iget v0, p0, Lcom/kwad/sdk/pngencrypt/e;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/kwad/sdk/pngencrypt/e;->m:I

    if-ltz p1, :cond_13

    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/e;->a:Lcom/kwad/sdk/pngencrypt/k;

    iget v0, v0, Lcom/kwad/sdk/pngencrypt/k;->b:I

    if-ge p1, v0, :cond_13

    return-void

    :cond_13
    new-instance p1, Lcom/kwad/sdk/pngencrypt/PngjException;

    const-string v0, "bad row - this should not happen"

    invoke-direct {p1, v0}, Lcom/kwad/sdk/pngencrypt/PngjException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method a(I)V
    .registers 6

    iget v0, p0, Lcom/kwad/sdk/pngencrypt/e;->i:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput p1, p0, Lcom/kwad/sdk/pngencrypt/e;->i:I

    invoke-static {p1}, Lcom/kwad/sdk/pngencrypt/e;->b(I)[B

    move-result-object p1

    const/4 v0, 0x0

    aget-byte v1, p1, v0

    iput v1, p0, Lcom/kwad/sdk/pngencrypt/e;->c:I

    const/4 v1, 0x1

    aget-byte v2, p1, v1

    iput v2, p0, Lcom/kwad/sdk/pngencrypt/e;->b:I

    const/4 v2, 0x2

    aget-byte v2, p1, v2

    iput v2, p0, Lcom/kwad/sdk/pngencrypt/e;->e:I

    const/4 v2, 0x3

    aget-byte p1, p1, v2

    iput p1, p0, Lcom/kwad/sdk/pngencrypt/e;->d:I

    iget-object p1, p0, Lcom/kwad/sdk/pngencrypt/e;->a:Lcom/kwad/sdk/pngencrypt/k;

    iget p1, p1, Lcom/kwad/sdk/pngencrypt/k;->b:I

    iget v2, p0, Lcom/kwad/sdk/pngencrypt/e;->d:I

    if-le p1, v2, :cond_34

    iget-object p1, p0, Lcom/kwad/sdk/pngencrypt/e;->a:Lcom/kwad/sdk/pngencrypt/k;

    iget p1, p1, Lcom/kwad/sdk/pngencrypt/k;->b:I

    iget v2, p0, Lcom/kwad/sdk/pngencrypt/e;->b:I

    add-int/2addr p1, v2

    sub-int/2addr p1, v1

    iget v3, p0, Lcom/kwad/sdk/pngencrypt/e;->d:I

    sub-int/2addr p1, v3

    div-int/2addr p1, v2

    goto :goto_35

    :cond_34
    move p1, v0

    :goto_35
    iput p1, p0, Lcom/kwad/sdk/pngencrypt/e;->j:I

    iget-object p1, p0, Lcom/kwad/sdk/pngencrypt/e;->a:Lcom/kwad/sdk/pngencrypt/k;

    iget p1, p1, Lcom/kwad/sdk/pngencrypt/k;->a:I

    iget v2, p0, Lcom/kwad/sdk/pngencrypt/e;->e:I

    if-le p1, v2, :cond_4c

    iget-object p1, p0, Lcom/kwad/sdk/pngencrypt/e;->a:Lcom/kwad/sdk/pngencrypt/k;

    iget p1, p1, Lcom/kwad/sdk/pngencrypt/k;->a:I

    iget v2, p0, Lcom/kwad/sdk/pngencrypt/e;->c:I

    add-int/2addr p1, v2

    sub-int/2addr p1, v1

    iget v1, p0, Lcom/kwad/sdk/pngencrypt/e;->e:I

    sub-int/2addr p1, v1

    div-int/2addr p1, v2

    goto :goto_4d

    :cond_4c
    move p1, v0

    :goto_4d
    iput p1, p0, Lcom/kwad/sdk/pngencrypt/e;->k:I

    if-nez p1, :cond_53

    iput v0, p0, Lcom/kwad/sdk/pngencrypt/e;->j:I

    :cond_53
    iget p1, p0, Lcom/kwad/sdk/pngencrypt/e;->c:I

    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/e;->a:Lcom/kwad/sdk/pngencrypt/k;

    iget v0, v0, Lcom/kwad/sdk/pngencrypt/k;->d:I

    mul-int/2addr p1, v0

    iput p1, p0, Lcom/kwad/sdk/pngencrypt/e;->g:I

    iget p1, p0, Lcom/kwad/sdk/pngencrypt/e;->e:I

    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/e;->a:Lcom/kwad/sdk/pngencrypt/k;

    iget v0, v0, Lcom/kwad/sdk/pngencrypt/k;->d:I

    mul-int/2addr p1, v0

    iput p1, p0, Lcom/kwad/sdk/pngencrypt/e;->f:I

    return-void
.end method

.method a()Z
    .registers 5

    iget v0, p0, Lcom/kwad/sdk/pngencrypt/e;->n:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/kwad/sdk/pngencrypt/e;->n:I

    iget v0, p0, Lcom/kwad/sdk/pngencrypt/e;->j:I

    if-eqz v0, :cond_15

    iget v2, p0, Lcom/kwad/sdk/pngencrypt/e;->l:I

    sub-int/2addr v0, v1

    if-lt v2, v0, :cond_10

    goto :goto_15

    :cond_10
    add-int/2addr v2, v1

    invoke-direct {p0, v2}, Lcom/kwad/sdk/pngencrypt/e;->c(I)V

    goto :goto_33

    :cond_15
    :goto_15
    iget v0, p0, Lcom/kwad/sdk/pngencrypt/e;->i:I

    const/4 v2, 0x7

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1e

    iput-boolean v1, p0, Lcom/kwad/sdk/pngencrypt/e;->o:Z

    return v3

    :cond_1e
    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/pngencrypt/e;->a(I)V

    iget v0, p0, Lcom/kwad/sdk/pngencrypt/e;->j:I

    if-nez v0, :cond_30

    iget v0, p0, Lcom/kwad/sdk/pngencrypt/e;->n:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/kwad/sdk/pngencrypt/e;->n:I

    invoke-virtual {p0}, Lcom/kwad/sdk/pngencrypt/e;->a()Z

    move-result v0

    return v0

    :cond_30
    invoke-direct {p0, v3}, Lcom/kwad/sdk/pngencrypt/e;->c(I)V

    :goto_33
    return v1
.end method

.method b()I
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/pngencrypt/e;->l:I

    return v0
.end method

.method c()I
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/pngencrypt/e;->m:I

    return v0
.end method

.method d()I
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/pngencrypt/e;->i:I

    return v0
.end method

.method e()I
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/pngencrypt/e;->j:I

    return v0
.end method

.method f()I
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/pngencrypt/e;->k:I

    return v0
.end method

.method public g()I
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/pngencrypt/e;->f()I

    move-result v0

    return v0
.end method

.method public h()I
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/e;->a:Lcom/kwad/sdk/pngencrypt/k;

    iget v0, v0, Lcom/kwad/sdk/pngencrypt/k;->i:I

    invoke-virtual {p0}, Lcom/kwad/sdk/pngencrypt/e;->g()I

    move-result v1

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method
