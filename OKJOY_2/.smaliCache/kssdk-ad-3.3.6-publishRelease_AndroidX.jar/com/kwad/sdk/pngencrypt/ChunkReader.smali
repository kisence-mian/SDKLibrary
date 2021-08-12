.class public abstract Lcom/kwad/sdk/pngencrypt/ChunkReader;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/pngencrypt/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/pngencrypt/ChunkReader$ChunkReaderMode;
    }
.end annotation


# instance fields
.field public final a:Lcom/kwad/sdk/pngencrypt/ChunkReader$ChunkReaderMode;

.field protected b:I

.field protected c:Lcom/kwad/sdk/pngencrypt/ErrorBehaviour;

.field private final d:Lcom/kwad/sdk/pngencrypt/chunk/d;

.field private e:I

.field private f:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;JLcom/kwad/sdk/pngencrypt/ChunkReader$ChunkReaderMode;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/kwad/sdk/pngencrypt/ChunkReader;->b:I

    iput v0, p0, Lcom/kwad/sdk/pngencrypt/ChunkReader;->e:I

    sget-object v1, Lcom/kwad/sdk/pngencrypt/ErrorBehaviour;->STRICT:Lcom/kwad/sdk/pngencrypt/ErrorBehaviour;

    iput-object v1, p0, Lcom/kwad/sdk/pngencrypt/ChunkReader;->c:Lcom/kwad/sdk/pngencrypt/ErrorBehaviour;

    if-eqz p5, :cond_17

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_17

    if-gez p1, :cond_32

    :cond_17
    new-instance v1, Lcom/kwad/sdk/pngencrypt/PngjException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad chunk paramenters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/kwad/sdk/pngencrypt/PngjException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :cond_32
    iput-object p5, p0, Lcom/kwad/sdk/pngencrypt/ChunkReader;->a:Lcom/kwad/sdk/pngencrypt/ChunkReader$ChunkReaderMode;

    new-instance v1, Lcom/kwad/sdk/pngencrypt/chunk/d;

    sget-object v2, Lcom/kwad/sdk/pngencrypt/ChunkReader$ChunkReaderMode;->BUFFER:Lcom/kwad/sdk/pngencrypt/ChunkReader$ChunkReaderMode;

    const/4 v3, 0x1

    if-ne p5, v2, :cond_3d

    move v2, v3

    goto :goto_3e

    :cond_3d
    move v2, v0

    :goto_3e
    invoke-direct {v1, p1, p2, v2}, Lcom/kwad/sdk/pngencrypt/chunk/d;-><init>(ILjava/lang/String;Z)V

    iput-object v1, p0, Lcom/kwad/sdk/pngencrypt/ChunkReader;->d:Lcom/kwad/sdk/pngencrypt/chunk/d;

    invoke-virtual {v1, p3, p4}, Lcom/kwad/sdk/pngencrypt/chunk/d;->a(J)V

    sget-object p1, Lcom/kwad/sdk/pngencrypt/ChunkReader$ChunkReaderMode;->SKIP:Lcom/kwad/sdk/pngencrypt/ChunkReader$ChunkReaderMode;

    if-ne p5, p1, :cond_4b

    goto :goto_4c

    :cond_4b
    move v0, v3

    :goto_4c
    iput-boolean v0, p0, Lcom/kwad/sdk/pngencrypt/ChunkReader;->f:Z

    return-void
.end method


# virtual methods
.method public final a([BII)I
    .registers 9

    const/4 v0, 0x0

    if-nez p3, :cond_4

    return v0

    :cond_4
    if-gez p3, :cond_10

    new-instance v1, Lcom/kwad/sdk/pngencrypt/PngjException;

    const-string v2, "negative length??"

    invoke-direct {v1, v2}, Lcom/kwad/sdk/pngencrypt/PngjException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :cond_10
    iget v1, p0, Lcom/kwad/sdk/pngencrypt/ChunkReader;->b:I

    const/4 v2, 0x4

    if-nez v1, :cond_24

    iget v1, p0, Lcom/kwad/sdk/pngencrypt/ChunkReader;->e:I

    if-nez v1, :cond_24

    iget-boolean v1, p0, Lcom/kwad/sdk/pngencrypt/ChunkReader;->f:Z

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/kwad/sdk/pngencrypt/ChunkReader;->d:Lcom/kwad/sdk/pngencrypt/chunk/d;

    iget-object v3, v1, Lcom/kwad/sdk/pngencrypt/chunk/d;->b:[B

    invoke-virtual {v1, v3, v0, v2}, Lcom/kwad/sdk/pngencrypt/chunk/d;->a([BII)V

    :cond_24
    iget-object v1, p0, Lcom/kwad/sdk/pngencrypt/ChunkReader;->d:Lcom/kwad/sdk/pngencrypt/chunk/d;

    iget v1, v1, Lcom/kwad/sdk/pngencrypt/chunk/d;->a:I

    iget v3, p0, Lcom/kwad/sdk/pngencrypt/ChunkReader;->b:I

    sub-int/2addr v1, v3

    if-le v1, p3, :cond_2e

    move v1, p3

    :cond_2e
    if-gtz v1, :cond_34

    iget v3, p0, Lcom/kwad/sdk/pngencrypt/ChunkReader;->e:I

    if-nez v3, :cond_6f

    :cond_34
    iget-boolean v3, p0, Lcom/kwad/sdk/pngencrypt/ChunkReader;->f:Z

    if-eqz v3, :cond_45

    iget-object v3, p0, Lcom/kwad/sdk/pngencrypt/ChunkReader;->a:Lcom/kwad/sdk/pngencrypt/ChunkReader$ChunkReaderMode;

    sget-object v4, Lcom/kwad/sdk/pngencrypt/ChunkReader$ChunkReaderMode;->BUFFER:Lcom/kwad/sdk/pngencrypt/ChunkReader$ChunkReaderMode;

    if-eq v3, v4, :cond_45

    if-lez v1, :cond_45

    iget-object v3, p0, Lcom/kwad/sdk/pngencrypt/ChunkReader;->d:Lcom/kwad/sdk/pngencrypt/chunk/d;

    invoke-virtual {v3, p1, p2, v1}, Lcom/kwad/sdk/pngencrypt/chunk/d;->a([BII)V

    :cond_45
    iget-object v3, p0, Lcom/kwad/sdk/pngencrypt/ChunkReader;->a:Lcom/kwad/sdk/pngencrypt/ChunkReader$ChunkReaderMode;

    sget-object v4, Lcom/kwad/sdk/pngencrypt/ChunkReader$ChunkReaderMode;->BUFFER:Lcom/kwad/sdk/pngencrypt/ChunkReader$ChunkReaderMode;

    if-ne v3, v4, :cond_5d

    iget-object v3, p0, Lcom/kwad/sdk/pngencrypt/ChunkReader;->d:Lcom/kwad/sdk/pngencrypt/chunk/d;

    iget-object v3, v3, Lcom/kwad/sdk/pngencrypt/chunk/d;->d:[B

    if-eq v3, p1, :cond_68

    if-lez v1, :cond_68

    iget-object v3, p0, Lcom/kwad/sdk/pngencrypt/ChunkReader;->d:Lcom/kwad/sdk/pngencrypt/chunk/d;

    iget-object v3, v3, Lcom/kwad/sdk/pngencrypt/chunk/d;->d:[B

    iget v4, p0, Lcom/kwad/sdk/pngencrypt/ChunkReader;->b:I

    invoke-static {p1, p2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_68

    :cond_5d
    iget-object v3, p0, Lcom/kwad/sdk/pngencrypt/ChunkReader;->a:Lcom/kwad/sdk/pngencrypt/ChunkReader$ChunkReaderMode;

    sget-object v4, Lcom/kwad/sdk/pngencrypt/ChunkReader$ChunkReaderMode;->PROCESS:Lcom/kwad/sdk/pngencrypt/ChunkReader$ChunkReaderMode;

    if-ne v3, v4, :cond_68

    iget v3, p0, Lcom/kwad/sdk/pngencrypt/ChunkReader;->b:I

    invoke-virtual {p0, v3, p1, p2, v1}, Lcom/kwad/sdk/pngencrypt/ChunkReader;->a(I[BII)V

    :cond_68
    :goto_68
    iget v3, p0, Lcom/kwad/sdk/pngencrypt/ChunkReader;->b:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/kwad/sdk/pngencrypt/ChunkReader;->b:I

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    :cond_6f
    iget v3, p0, Lcom/kwad/sdk/pngencrypt/ChunkReader;->b:I

    iget-object v4, p0, Lcom/kwad/sdk/pngencrypt/ChunkReader;->d:Lcom/kwad/sdk/pngencrypt/chunk/d;

    iget v4, v4, Lcom/kwad/sdk/pngencrypt/chunk/d;->a:I

    if-ne v3, v4, :cond_c3

    iget v3, p0, Lcom/kwad/sdk/pngencrypt/ChunkReader;->e:I

    rsub-int/lit8 v3, v3, 0x4

    if-le v3, p3, :cond_7e

    goto :goto_7f

    :cond_7e
    move p3, v3

    :goto_7f
    if-lez p3, :cond_c2

    iget-object v3, p0, Lcom/kwad/sdk/pngencrypt/ChunkReader;->d:Lcom/kwad/sdk/pngencrypt/chunk/d;

    iget-object v3, v3, Lcom/kwad/sdk/pngencrypt/chunk/d;->e:[B

    if-eq p1, v3, :cond_90

    iget-object v3, p0, Lcom/kwad/sdk/pngencrypt/ChunkReader;->d:Lcom/kwad/sdk/pngencrypt/chunk/d;

    iget-object v3, v3, Lcom/kwad/sdk/pngencrypt/chunk/d;->e:[B

    iget v4, p0, Lcom/kwad/sdk/pngencrypt/ChunkReader;->e:I

    invoke-static {p1, p2, v3, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_90
    iget p1, p0, Lcom/kwad/sdk/pngencrypt/ChunkReader;->e:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/kwad/sdk/pngencrypt/ChunkReader;->e:I

    if-ne p1, v2, :cond_c2

    iget-boolean p1, p0, Lcom/kwad/sdk/pngencrypt/ChunkReader;->f:Z

    if-eqz p1, :cond_b8

    iget-object p1, p0, Lcom/kwad/sdk/pngencrypt/ChunkReader;->a:Lcom/kwad/sdk/pngencrypt/ChunkReader$ChunkReaderMode;

    sget-object p2, Lcom/kwad/sdk/pngencrypt/ChunkReader$ChunkReaderMode;->BUFFER:Lcom/kwad/sdk/pngencrypt/ChunkReader$ChunkReaderMode;

    if-ne p1, p2, :cond_ac

    iget-object p1, p0, Lcom/kwad/sdk/pngencrypt/ChunkReader;->d:Lcom/kwad/sdk/pngencrypt/chunk/d;

    iget-object p2, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->d:[B

    iget-object v2, p0, Lcom/kwad/sdk/pngencrypt/ChunkReader;->d:Lcom/kwad/sdk/pngencrypt/chunk/d;

    iget v2, v2, Lcom/kwad/sdk/pngencrypt/chunk/d;->a:I

    invoke-virtual {p1, p2, v0, v2}, Lcom/kwad/sdk/pngencrypt/chunk/d;->a([BII)V

    :cond_ac
    iget-object p1, p0, Lcom/kwad/sdk/pngencrypt/ChunkReader;->d:Lcom/kwad/sdk/pngencrypt/chunk/d;

    iget-object p2, p0, Lcom/kwad/sdk/pngencrypt/ChunkReader;->c:Lcom/kwad/sdk/pngencrypt/ErrorBehaviour;

    sget-object v2, Lcom/kwad/sdk/pngencrypt/ErrorBehaviour;->STRICT:Lcom/kwad/sdk/pngencrypt/ErrorBehaviour;

    if-ne p2, v2, :cond_b5

    const/4 v0, 0x1

    :cond_b5
    invoke-virtual {p1, v0}, Lcom/kwad/sdk/pngencrypt/chunk/d;->a(Z)V

    :cond_b8
    const-string p1, "PNG_ENCRYPT"

    const-string p2, "Chunk done"

    invoke-static {p1, p2}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kwad/sdk/pngencrypt/ChunkReader;->c()V

    :cond_c2
    move v0, p3

    :cond_c3
    if-gtz v1, :cond_ca

    if-lez v0, :cond_c8

    goto :goto_ca

    :cond_c8
    const/4 p1, -0x1

    goto :goto_cc

    :cond_ca
    :goto_ca
    add-int p1, v1, v0

    :goto_cc
    return p1
.end method

.method public a()Lcom/kwad/sdk/pngencrypt/chunk/d;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/ChunkReader;->d:Lcom/kwad/sdk/pngencrypt/chunk/d;

    return-object v0
.end method

.method protected abstract a(I[BII)V
.end method

.method public a(Z)V
    .registers 4

    iget v0, p0, Lcom/kwad/sdk/pngencrypt/ChunkReader;->b:I

    if-eqz v0, :cond_14

    if-eqz p1, :cond_14

    iget-boolean v0, p0, Lcom/kwad/sdk/pngencrypt/ChunkReader;->f:Z

    if-nez v0, :cond_14

    new-instance v0, Lcom/kwad/sdk/pngencrypt/PngjException;

    const-string v1, "too late!"

    invoke-direct {v0, v1}, Lcom/kwad/sdk/pngencrypt/PngjException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :cond_14
    iput-boolean p1, p0, Lcom/kwad/sdk/pngencrypt/ChunkReader;->f:Z

    return-void
.end method

.method public final b()Z
    .registers 3

    iget v0, p0, Lcom/kwad/sdk/pngencrypt/ChunkReader;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method protected abstract c()V
.end method

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
    check-cast p1, Lcom/kwad/sdk/pngencrypt/ChunkReader;

    iget-object v2, p0, Lcom/kwad/sdk/pngencrypt/ChunkReader;->d:Lcom/kwad/sdk/pngencrypt/chunk/d;

    iget-object p1, p1, Lcom/kwad/sdk/pngencrypt/ChunkReader;->d:Lcom/kwad/sdk/pngencrypt/chunk/d;

    if-nez v2, :cond_1e

    if-eqz p1, :cond_25

    return v1

    :cond_1e
    invoke-virtual {v2, p1}, Lcom/kwad/sdk/pngencrypt/chunk/d;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_25

    return v1

    :cond_25
    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/ChunkReader;->d:Lcom/kwad/sdk/pngencrypt/chunk/d;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Lcom/kwad/sdk/pngencrypt/chunk/d;->hashCode()I

    move-result v0

    :goto_a
    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/ChunkReader;->d:Lcom/kwad/sdk/pngencrypt/chunk/d;

    invoke-virtual {v0}, Lcom/kwad/sdk/pngencrypt/chunk/d;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
