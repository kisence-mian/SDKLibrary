.class public Lcom/kwad/sdk/c/b/a$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/c/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field static final c:Lcom/kwad/sdk/c/b/a$a;

.field private static final d:[I

.field private static final e:[I


# instance fields
.field private final a:Z

.field private final b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/16 v3, 0x100

    const/16 v6, 0x3d

    const/4 v5, -0x1

    const/4 v4, -0x2

    const/4 v1, 0x0

    new-instance v0, Lcom/kwad/sdk/c/b/a$a;

    invoke-direct {v0, v1, v1}, Lcom/kwad/sdk/c/b/a$a;-><init>(ZZ)V

    sput-object v0, Lcom/kwad/sdk/c/b/a$a;->c:Lcom/kwad/sdk/c/b/a$a;

    new-instance v0, Lcom/kwad/sdk/c/b/a$a;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/kwad/sdk/c/b/a$a;-><init>(ZZ)V

    new-array v0, v3, [I

    sput-object v0, Lcom/kwad/sdk/c/b/a$a;->d:[I

    new-array v0, v3, [I

    sput-object v0, Lcom/kwad/sdk/c/b/a$a;->e:[I

    sget-object v0, Lcom/kwad/sdk/c/b/a$a;->d:[I

    invoke-static {v0, v5}, Ljava/util/Arrays;->fill([II)V

    move v0, v1

    :goto_22
    invoke-static {}, Lcom/kwad/sdk/c/b/a$b;->a()[C

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_36

    sget-object v2, Lcom/kwad/sdk/c/b/a$a;->d:[I

    invoke-static {}, Lcom/kwad/sdk/c/b/a$b;->a()[C

    move-result-object v3

    aget-char v3, v3, v0

    aput v0, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_36
    sget-object v0, Lcom/kwad/sdk/c/b/a$a;->d:[I

    aput v4, v0, v6

    sget-object v0, Lcom/kwad/sdk/c/b/a$a;->e:[I

    invoke-static {v0, v5}, Ljava/util/Arrays;->fill([II)V

    :goto_3f
    invoke-static {}, Lcom/kwad/sdk/c/b/a$b;->b()[C

    move-result-object v0

    array-length v0, v0

    if-ge v1, v0, :cond_53

    sget-object v0, Lcom/kwad/sdk/c/b/a$a;->e:[I

    invoke-static {}, Lcom/kwad/sdk/c/b/a$b;->b()[C

    move-result-object v2

    aget-char v2, v2, v1

    aput v1, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    :cond_53
    sget-object v0, Lcom/kwad/sdk/c/b/a$a;->e:[I

    aput v4, v0, v6

    return-void
.end method

.method private constructor <init>(ZZ)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/kwad/sdk/c/b/a$a;->a:Z

    iput-boolean p2, p0, Lcom/kwad/sdk/c/b/a$a;->b:Z

    return-void
.end method

.method private a([BII)I
    .registers 13

    const/4 v2, 0x2

    const/4 v7, -0x1

    const/16 v6, 0x3d

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/kwad/sdk/c/b/a$a;->a:Z

    if-eqz v0, :cond_12

    sget-object v0, Lcom/kwad/sdk/c/b/a$a;->e:[I

    move-object v4, v0

    :goto_c
    sub-int v0, p3, p2

    if-nez v0, :cond_16

    move v0, v1

    :goto_11
    return v0

    :cond_12
    sget-object v0, Lcom/kwad/sdk/c/b/a$a;->d:[I

    move-object v4, v0

    goto :goto_c

    :cond_16
    if-ge v0, v2, :cond_2a

    iget-boolean v0, p0, Lcom/kwad/sdk/c/b/a$a;->b:Z

    if-eqz v0, :cond_22

    aget v0, v4, v1

    if-ne v0, v7, :cond_22

    move v0, v1

    goto :goto_11

    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input byte[] should at least have 2 bytes for base64 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    iget-boolean v3, p0, Lcom/kwad/sdk/c/b/a$a;->b:Z

    if-eqz v3, :cond_5b

    move v3, v1

    :goto_2f
    if-ge p2, p3, :cond_3e

    add-int/lit8 v2, p2, 0x1

    aget-byte v5, p1, p2

    and-int/lit16 v5, v5, 0xff

    if-ne v5, v6, :cond_53

    sub-int v2, p3, v2

    add-int/lit8 v2, v2, 0x1

    sub-int/2addr v0, v2

    :cond_3e
    sub-int/2addr v0, v3

    move v8, v0

    move v0, v1

    move v1, v8

    :goto_42
    if-nez v0, :cond_4a

    and-int/lit8 v2, v1, 0x3

    if-eqz v2, :cond_4a

    rsub-int/lit8 v0, v2, 0x4

    :cond_4a
    add-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x3

    sub-int v0, v1, v0

    goto :goto_11

    :cond_53
    aget v5, v4, v5

    if-ne v5, v7, :cond_6f

    add-int/lit8 v3, v3, 0x1

    move p2, v2

    goto :goto_2f

    :cond_5b
    add-int/lit8 v3, p3, -0x1

    aget-byte v3, p1, v3

    if-ne v3, v6, :cond_6b

    const/4 v1, 0x1

    add-int/lit8 v3, p3, -0x2

    aget-byte v3, p1, v3

    if-ne v3, v6, :cond_6b

    move v1, v0

    move v0, v2

    goto :goto_42

    :cond_6b
    move v8, v0

    move v0, v1

    move v1, v8

    goto :goto_42

    :cond_6f
    move p2, v2

    goto :goto_2f
.end method

.method private a([BII[B)I
    .registers 16

    const/4 v9, 0x6

    const/16 v5, 0x12

    const/4 v7, 0x0

    iget-boolean v0, p0, Lcom/kwad/sdk/c/b/a$a;->a:Z

    if-eqz v0, :cond_46

    sget-object v0, Lcom/kwad/sdk/c/b/a$a;->e:[I

    :goto_a
    move v4, v5

    move v6, v7

    move v2, v7

    move v3, p2

    :goto_e
    if-ge v3, p3, :cond_2b

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    aget v3, v0, v3

    if-gez v3, :cond_7a

    const/4 v8, -0x2

    if-ne v3, v8, :cond_51

    if-ne v4, v9, :cond_dc

    if-eq v1, p3, :cond_49

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, p1, v1

    const/16 v7, 0x3d

    if-ne v1, v7, :cond_49

    :goto_29
    if-eq v4, v5, :cond_49

    :cond_2b
    if-ne v4, v9, :cond_98

    add-int/lit8 v1, v2, 0x1

    shr-int/lit8 v4, v6, 0x10

    int-to-byte v4, v4

    aput-byte v4, p4, v2

    move v2, v3

    move v3, v1

    :goto_36
    if-ge v2, p3, :cond_d5

    iget-boolean v1, p0, Lcom/kwad/sdk/c/b/a$a;->b:Z

    if-eqz v1, :cond_d6

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p1, v2

    aget v2, v0, v2

    if-gez v2, :cond_b3

    move v2, v1

    goto :goto_36

    :cond_46
    sget-object v0, Lcom/kwad/sdk/c/b/a$a;->d:[I

    goto :goto_a

    :cond_49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input byte array has wrong 4-byte ending unit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_51
    iget-boolean v3, p0, Lcom/kwad/sdk/c/b/a$a;->b:Z

    if-eqz v3, :cond_57

    move v3, v1

    goto :goto_e

    :cond_57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal base64 character "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, p1, v1

    const/16 v3, 0x10

    invoke-static {v1, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7a
    shl-int/2addr v3, v4

    or-int/2addr v6, v3

    add-int/lit8 v3, v4, -0x6

    if-gez v3, :cond_d8

    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v4, v6, 0x10

    int-to-byte v4, v4

    aput-byte v4, p4, v2

    add-int/lit8 v4, v3, 0x1

    shr-int/lit8 v2, v6, 0x8

    int-to-byte v2, v2

    aput-byte v2, p4, v3

    add-int/lit8 v2, v4, 0x1

    int-to-byte v3, v6

    aput-byte v3, p4, v4

    move v4, v5

    move v6, v7

    move v3, v1

    goto/16 :goto_e

    :cond_98
    if-nez v4, :cond_ab

    add-int/lit8 v4, v2, 0x1

    shr-int/lit8 v1, v6, 0x10

    int-to-byte v1, v1

    aput-byte v1, p4, v2

    add-int/lit8 v1, v4, 0x1

    shr-int/lit8 v2, v6, 0x8

    int-to-byte v2, v2

    aput-byte v2, p4, v4

    move v2, v3

    move v3, v1

    goto :goto_36

    :cond_ab
    const/16 v1, 0xc

    if-eq v4, v1, :cond_cd

    move v10, v2

    move v2, v3

    move v3, v10

    goto :goto_36

    :cond_b3
    move v0, v1

    :goto_b4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Input byte array has incorrect ending byte at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_cd
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Last unit does not have enough valid bits"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d5
    return v3

    :cond_d6
    move v0, v2

    goto :goto_b4

    :cond_d8
    move v4, v3

    move v3, v1

    goto/16 :goto_e

    :cond_dc
    move v3, v1

    goto/16 :goto_29
.end method


# virtual methods
.method public a(Ljava/lang/String;)[B
    .registers 3

    invoke-static {}, Lcom/kwad/sdk/c/b/a;->a()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/c/b/a$a;->a([B)[B

    move-result-object v0

    return-object v0
.end method

.method public a([B)[B
    .registers 5

    const/4 v2, 0x0

    array-length v0, p1

    invoke-direct {p0, p1, v2, v0}, Lcom/kwad/sdk/c/b/a$a;->a([BII)I

    move-result v0

    new-array v0, v0, [B

    array-length v1, p1

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/kwad/sdk/c/b/a$a;->a([BII[B)I

    move-result v1

    array-length v2, v0

    if-eq v1, v2, :cond_14

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    :cond_14
    return-object v0
.end method
