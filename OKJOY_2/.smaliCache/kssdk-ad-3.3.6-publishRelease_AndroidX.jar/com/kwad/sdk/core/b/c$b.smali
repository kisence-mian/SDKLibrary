.class public Lcom/kwad/sdk/core/b/c$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field static final a:Lcom/kwad/sdk/core/b/c$b;

.field static final b:Lcom/kwad/sdk/core/b/c$b;

.field static final c:Lcom/kwad/sdk/core/b/c$b;

.field private static final d:[C

.field private static final e:[C

.field private static final f:[B


# instance fields
.field private final g:[B

.field private final h:I

.field private final i:Z

.field private final j:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/kwad/sdk/core/b/c$b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kwad/sdk/core/b/c$b;-><init>(Z[BIZ)V

    sput-object v0, Lcom/kwad/sdk/core/b/c$b;->a:Lcom/kwad/sdk/core/b/c$b;

    new-instance v0, Lcom/kwad/sdk/core/b/c$b;

    invoke-direct {v0, v4, v2, v3, v1}, Lcom/kwad/sdk/core/b/c$b;-><init>(Z[BIZ)V

    sput-object v0, Lcom/kwad/sdk/core/b/c$b;->b:Lcom/kwad/sdk/core/b/c$b;

    const/16 v0, 0x40

    new-array v2, v0, [C

    fill-array-data v2, :array_34

    sput-object v2, Lcom/kwad/sdk/core/b/c$b;->d:[C

    new-array v0, v0, [C

    fill-array-data v0, :array_78

    sput-object v0, Lcom/kwad/sdk/core/b/c$b;->e:[C

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_bc

    sput-object v0, Lcom/kwad/sdk/core/b/c$b;->f:[B

    new-instance v2, Lcom/kwad/sdk/core/b/c$b;

    const/16 v3, 0x4c

    invoke-direct {v2, v1, v0, v3, v4}, Lcom/kwad/sdk/core/b/c$b;-><init>(Z[BIZ)V

    sput-object v2, Lcom/kwad/sdk/core/b/c$b;->c:Lcom/kwad/sdk/core/b/c$b;

    return-void

    :array_34
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
    .end array-data

    :array_78
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2ds
        0x5fs
    .end array-data

    :array_bc
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method private constructor <init>(Z[BIZ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/kwad/sdk/core/b/c$b;->i:Z

    iput-object p2, p0, Lcom/kwad/sdk/core/b/c$b;->g:[B

    iput p3, p0, Lcom/kwad/sdk/core/b/c$b;->h:I

    iput-boolean p4, p0, Lcom/kwad/sdk/core/b/c$b;->j:Z

    return-void
.end method

.method private final a(I)I
    .registers 4

    iget-boolean v0, p0, Lcom/kwad/sdk/core/b/c$b;->j:Z

    if-eqz v0, :cond_b

    add-int/lit8 p1, p1, 0x2

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x4

    goto :goto_18

    :cond_b
    rem-int/lit8 v0, p1, 0x3

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x4

    if-nez v0, :cond_15

    const/4 v0, 0x0

    goto :goto_17

    :cond_15
    add-int/lit8 v0, v0, 0x1

    :goto_17
    add-int/2addr p1, v0

    :goto_18
    iget v0, p0, Lcom/kwad/sdk/core/b/c$b;->h:I

    if-lez v0, :cond_24

    add-int/lit8 v1, p1, -0x1

    div-int/2addr v1, v0

    iget-object v0, p0, Lcom/kwad/sdk/core/b/c$b;->g:[B

    array-length v0, v0

    mul-int/2addr v1, v0

    add-int/2addr p1, v1

    :cond_24
    return p1
.end method

.method private a([BII[B)I
    .registers 16

    iget-boolean v0, p0, Lcom/kwad/sdk/core/b/c$b;->i:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/kwad/sdk/core/b/c$b;->e:[C

    goto :goto_9

    :cond_7
    sget-object v0, Lcom/kwad/sdk/core/b/c$b;->d:[C

    :goto_9
    sub-int v1, p3, p2

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x3

    add-int v2, p2, v1

    iget v3, p0, Lcom/kwad/sdk/core/b/c$b;->h:I

    if-lez v3, :cond_1f

    div-int/lit8 v4, v3, 0x4

    mul-int/lit8 v4, v4, 0x3

    if-le v1, v4, :cond_1f

    div-int/lit8 v3, v3, 0x4

    mul-int/lit8 v1, v3, 0x3

    :cond_1f
    const/4 v3, 0x0

    move v4, v3

    :goto_21
    if-ge p2, v2, :cond_90

    add-int v5, p2, v1

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v6, p2

    move v7, v4

    :goto_2b
    if-ge v6, v5, :cond_71

    add-int/lit8 v8, v6, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    add-int/lit8 v9, v8, 0x1

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v6, v8

    add-int/lit8 v8, v9, 0x1

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v6, v9

    add-int/lit8 v9, v7, 0x1

    ushr-int/lit8 v10, v6, 0x12

    and-int/lit8 v10, v10, 0x3f

    aget-char v10, v0, v10

    int-to-byte v10, v10

    aput-byte v10, p4, v7

    add-int/lit8 v7, v9, 0x1

    ushr-int/lit8 v10, v6, 0xc

    and-int/lit8 v10, v10, 0x3f

    aget-char v10, v0, v10

    int-to-byte v10, v10

    aput-byte v10, p4, v9

    add-int/lit8 v9, v7, 0x1

    ushr-int/lit8 v10, v6, 0x6

    and-int/lit8 v10, v10, 0x3f

    aget-char v10, v0, v10

    int-to-byte v10, v10

    aput-byte v10, p4, v7

    add-int/lit8 v7, v9, 0x1

    and-int/lit8 v6, v6, 0x3f

    aget-char v6, v0, v6

    int-to-byte v6, v6

    aput-byte v6, p4, v9

    move v6, v8

    goto :goto_2b

    :cond_71
    sub-int p2, v5, p2

    div-int/lit8 p2, p2, 0x3

    mul-int/lit8 p2, p2, 0x4

    add-int/2addr v4, p2

    iget v6, p0, Lcom/kwad/sdk/core/b/c$b;->h:I

    if-ne p2, v6, :cond_8e

    if-ge v5, p3, :cond_8e

    iget-object p2, p0, Lcom/kwad/sdk/core/b/c$b;->g:[B

    array-length v6, p2

    move v7, v3

    :goto_82
    if-ge v7, v6, :cond_8e

    aget-byte v8, p2, v7

    add-int/lit8 v9, v4, 0x1

    aput-byte v8, p4, v4

    add-int/lit8 v7, v7, 0x1

    move v4, v9

    goto :goto_82

    :cond_8e
    move p2, v5

    goto :goto_21

    :cond_90
    if-ge p2, p3, :cond_e3

    add-int/lit8 v1, p2, 0x1

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    add-int/lit8 v2, v4, 0x1

    shr-int/lit8 v3, p2, 0x2

    aget-char v3, v0, v3

    int-to-byte v3, v3

    aput-byte v3, p4, v4

    const/16 v3, 0x3d

    if-ne v1, p3, :cond_bd

    add-int/lit8 v4, v2, 0x1

    shl-int/lit8 p1, p2, 0x4

    and-int/lit8 p1, p1, 0x3f

    aget-char p1, v0, p1

    int-to-byte p1, p1

    aput-byte p1, p4, v2

    iget-boolean p1, p0, Lcom/kwad/sdk/core/b/c$b;->j:Z

    if-eqz p1, :cond_e3

    add-int/lit8 p1, v4, 0x1

    aput-byte v3, p4, v4

    add-int/lit8 v4, p1, 0x1

    aput-byte v3, p4, p1

    goto :goto_e3

    :cond_bd
    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    add-int/lit8 p3, v2, 0x1

    shl-int/lit8 p2, p2, 0x4

    and-int/lit8 p2, p2, 0x3f

    shr-int/lit8 v1, p1, 0x4

    or-int/2addr p2, v1

    aget-char p2, v0, p2

    int-to-byte p2, p2

    aput-byte p2, p4, v2

    add-int/lit8 v4, p3, 0x1

    shl-int/lit8 p1, p1, 0x2

    and-int/lit8 p1, p1, 0x3f

    aget-char p1, v0, p1

    int-to-byte p1, p1

    aput-byte p1, p4, p3

    iget-boolean p1, p0, Lcom/kwad/sdk/core/b/c$b;->j:Z

    if-eqz p1, :cond_e3

    add-int/lit8 p1, v4, 0x1

    aput-byte v3, p4, v4

    move v4, p1

    :cond_e3
    :goto_e3
    return v4
.end method

.method static synthetic a()[C
    .registers 1

    sget-object v0, Lcom/kwad/sdk/core/b/c$b;->d:[C

    return-object v0
.end method

.method static synthetic b()[C
    .registers 1

    sget-object v0, Lcom/kwad/sdk/core/b/c$b;->e:[C

    return-object v0
.end method


# virtual methods
.method public a([B)[B
    .registers 6

    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/kwad/sdk/core/b/c$b;->a(I)I

    move-result v0

    new-array v1, v0, [B

    array-length v2, p1

    const/4 v3, 0x0

    invoke-direct {p0, p1, v3, v2, v1}, Lcom/kwad/sdk/core/b/c$b;->a([BII[B)I

    move-result p1

    if-eq p1, v0, :cond_14

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    return-object p1

    :cond_14
    return-object v1
.end method
