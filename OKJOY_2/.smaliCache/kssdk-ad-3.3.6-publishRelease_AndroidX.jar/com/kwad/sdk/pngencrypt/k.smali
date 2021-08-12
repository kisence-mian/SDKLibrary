.class public Lcom/kwad/sdk/pngencrypt/k;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:Z

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:I

.field private n:J

.field private o:J


# direct methods
.method public constructor <init>(IIIZZZ)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kwad/sdk/pngencrypt/k;->n:J

    iput-wide v0, p0, Lcom/kwad/sdk/pngencrypt/k;->o:J

    iput p1, p0, Lcom/kwad/sdk/pngencrypt/k;->a:I

    iput p2, p0, Lcom/kwad/sdk/pngencrypt/k;->b:I

    iput-boolean p4, p0, Lcom/kwad/sdk/pngencrypt/k;->e:Z

    iput-boolean p6, p0, Lcom/kwad/sdk/pngencrypt/k;->g:Z

    iput-boolean p5, p0, Lcom/kwad/sdk/pngencrypt/k;->f:Z

    if-eqz p5, :cond_20

    if-nez p6, :cond_18

    goto :goto_20

    :cond_18
    new-instance p1, Lcom/kwad/sdk/pngencrypt/PngjException;

    const-string p2, "palette and greyscale are mutually exclusive"

    invoke-direct {p1, p2}, Lcom/kwad/sdk/pngencrypt/PngjException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_20
    :goto_20
    const/4 v0, 0x1

    if-nez p5, :cond_2c

    if-eqz p6, :cond_26

    goto :goto_2c

    :cond_26
    if-eqz p4, :cond_2a

    const/4 p4, 0x4

    goto :goto_31

    :cond_2a
    const/4 p4, 0x3

    goto :goto_31

    :cond_2c
    :goto_2c
    if-eqz p4, :cond_30

    const/4 p4, 0x2

    goto :goto_31

    :cond_30
    move p4, v0

    :goto_31
    iput p4, p0, Lcom/kwad/sdk/pngencrypt/k;->d:I

    iput p3, p0, Lcom/kwad/sdk/pngencrypt/k;->c:I

    const/16 v1, 0x8

    if-ge p3, v1, :cond_3b

    move v2, v0

    goto :goto_3c

    :cond_3b
    const/4 v2, 0x0

    :goto_3c
    iput-boolean v2, p0, Lcom/kwad/sdk/pngencrypt/k;->h:Z

    mul-int v3, p4, p3

    iput v3, p0, Lcom/kwad/sdk/pngencrypt/k;->i:I

    add-int/lit8 v4, v3, 0x7

    div-int/2addr v4, v1

    iput v4, p0, Lcom/kwad/sdk/pngencrypt/k;->j:I

    mul-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x7

    div-int/2addr v3, v1

    iput v3, p0, Lcom/kwad/sdk/pngencrypt/k;->k:I

    mul-int/2addr p4, p1

    iput p4, p0, Lcom/kwad/sdk/pngencrypt/k;->l:I

    if-eqz v2, :cond_53

    goto :goto_54

    :cond_53
    move v3, p4

    :goto_54
    iput v3, p0, Lcom/kwad/sdk/pngencrypt/k;->m:I

    sparse-switch p3, :sswitch_data_fe

    new-instance p1, Lcom/kwad/sdk/pngencrypt/PngjException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "invalid bitdepth="

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/kwad/sdk/pngencrypt/PngjException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_72
    if-nez p6, :cond_75

    goto :goto_ac

    :cond_75
    new-instance p1, Lcom/kwad/sdk/pngencrypt/PngjException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "indexed can\'t have bitdepth="

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/kwad/sdk/pngencrypt/PngjException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_8e
    if-nez p6, :cond_ac

    if-eqz p5, :cond_93

    goto :goto_ac

    :cond_93
    new-instance p1, Lcom/kwad/sdk/pngencrypt/PngjException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "only indexed or grayscale can have bitdepth="

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/kwad/sdk/pngencrypt/PngjException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_ac
    :goto_ac
    :sswitch_ac
    const-string p3, " ???"

    if-lt p1, v0, :cond_e0

    const/high16 p5, 0x1000000

    if-gt p1, p5, :cond_e0

    if-lt p2, v0, :cond_c3

    if-gt p2, p5, :cond_c3

    if-lt p4, v0, :cond_bb

    return-void

    :cond_bb
    new-instance p1, Lcom/kwad/sdk/pngencrypt/PngjException;

    const-string p2, "invalid image parameters (overflow?)"

    invoke-direct {p1, p2}, Lcom/kwad/sdk/pngencrypt/PngjException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c3
    new-instance p1, Lcom/kwad/sdk/pngencrypt/PngjException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "invalid rows="

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/kwad/sdk/pngencrypt/PngjException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e0
    new-instance p2, Lcom/kwad/sdk/pngencrypt/PngjException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "invalid cols="

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/kwad/sdk/pngencrypt/PngjException;-><init>(Ljava/lang/String;)V

    throw p2

    nop

    :sswitch_data_fe
    .sparse-switch
        0x1 -> :sswitch_8e
        0x2 -> :sswitch_8e
        0x4 -> :sswitch_8e
        0x8 -> :sswitch_ac
        0x10 -> :sswitch_72
    .end sparse-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v1

    :cond_13
    check-cast p1, Lcom/kwad/sdk/pngencrypt/k;

    iget-boolean v2, p0, Lcom/kwad/sdk/pngencrypt/k;->e:Z

    iget-boolean v3, p1, Lcom/kwad/sdk/pngencrypt/k;->e:Z

    if-eq v2, v3, :cond_1c

    return v1

    :cond_1c
    iget v2, p0, Lcom/kwad/sdk/pngencrypt/k;->c:I

    iget v3, p1, Lcom/kwad/sdk/pngencrypt/k;->c:I

    if-eq v2, v3, :cond_23

    return v1

    :cond_23
    iget v2, p0, Lcom/kwad/sdk/pngencrypt/k;->a:I

    iget v3, p1, Lcom/kwad/sdk/pngencrypt/k;->a:I

    if-eq v2, v3, :cond_2a

    return v1

    :cond_2a
    iget-boolean v2, p0, Lcom/kwad/sdk/pngencrypt/k;->f:Z

    iget-boolean v3, p1, Lcom/kwad/sdk/pngencrypt/k;->f:Z

    if-eq v2, v3, :cond_31

    return v1

    :cond_31
    iget-boolean v2, p0, Lcom/kwad/sdk/pngencrypt/k;->g:Z

    iget-boolean v3, p1, Lcom/kwad/sdk/pngencrypt/k;->g:Z

    if-eq v2, v3, :cond_38

    return v1

    :cond_38
    iget v2, p0, Lcom/kwad/sdk/pngencrypt/k;->b:I

    iget p1, p1, Lcom/kwad/sdk/pngencrypt/k;->b:I

    if-eq v2, p1, :cond_3f

    return v1

    :cond_3f
    return v0
.end method

.method public hashCode()I
    .registers 6

    iget-boolean v0, p0, Lcom/kwad/sdk/pngencrypt/k;->e:Z

    const/16 v1, 0x4cf

    const/16 v2, 0x4d5

    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    :goto_b
    const/16 v3, 0x1f

    add-int/2addr v0, v3

    mul-int/2addr v0, v3

    iget v4, p0, Lcom/kwad/sdk/pngencrypt/k;->c:I

    add-int/2addr v0, v4

    mul-int/2addr v0, v3

    iget v4, p0, Lcom/kwad/sdk/pngencrypt/k;->a:I

    add-int/2addr v0, v4

    mul-int/2addr v0, v3

    iget-boolean v4, p0, Lcom/kwad/sdk/pngencrypt/k;->f:Z

    if-eqz v4, :cond_1d

    move v4, v1

    goto :goto_1e

    :cond_1d
    move v4, v2

    :goto_1e
    add-int/2addr v0, v4

    mul-int/2addr v0, v3

    iget-boolean v4, p0, Lcom/kwad/sdk/pngencrypt/k;->g:Z

    if-eqz v4, :cond_25

    goto :goto_26

    :cond_25
    move v1, v2

    :goto_26
    add-int/2addr v0, v1

    mul-int/2addr v0, v3

    iget v1, p0, Lcom/kwad/sdk/pngencrypt/k;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImageInfo [cols="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kwad/sdk/pngencrypt/k;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rows="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kwad/sdk/pngencrypt/k;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bitDepth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kwad/sdk/pngencrypt/k;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", channels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kwad/sdk/pngencrypt/k;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/kwad/sdk/pngencrypt/k;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", greyscale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/kwad/sdk/pngencrypt/k;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", indexed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/kwad/sdk/pngencrypt/k;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
