.class Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ssjj/fnsdk/core/SsjjFNUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:[I

.field private static final d:[I

.field private static final e:[I


# instance fields
.field private transient f:[I

.field private transient g:J

.field private transient h:[I

.field private transient i:[B

.field private transient j:I

.field private transient k:J

.field private transient l:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const v0, 0x8000

    const/16 v1, 0x80

    const/high16 v2, -0x80000000

    const/high16 v3, 0x800000

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->a:[I

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/16 v2, 0x28

    const/4 v3, 0x1

    aput v2, v1, v3

    const/16 v2, 0x30

    const/4 v4, 0x2

    aput v2, v1, v4

    const/16 v2, 0x38

    const/4 v5, 0x3

    aput v2, v1, v5

    sput-object v1, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->b:[I

    new-array v1, v0, [I

    const/16 v2, 0x8

    aput v2, v1, v3

    const/16 v6, 0x10

    aput v6, v1, v4

    const/16 v7, 0x18

    aput v7, v1, v5

    sput-object v1, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->c:[I

    new-array v0, v0, [I

    aput v7, v0, v3

    aput v6, v0, v4

    aput v2, v0, v5

    sput-object v0, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->d:[I

    const v0, 0xffff

    const/16 v1, 0xff

    const/4 v2, -0x1

    const v3, 0xffffff

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->e:[I

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x57

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->f:[I

    const/16 v1, 0x52

    const v2, 0x67452301

    aput v2, v0, v1

    const/16 v1, 0x53

    const v2, -0x10325477

    aput v2, v0, v1

    const/16 v1, 0x54

    const v2, -0x67452302

    aput v2, v0, v1

    const/16 v1, 0x55

    const v2, 0x10325476

    aput v2, v0, v1

    const/16 v1, 0x56

    const v2, -0x3c2d1e10

    aput v2, v0, v1

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->g:J

    const/16 v2, 0x25

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->h:[I

    const/16 v2, 0x14

    new-array v3, v2, [B

    iput-object v3, p0, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->i:[B

    iput v2, p0, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->j:I

    iput-wide v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->k:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->l:I

    return-void
.end method

.method private static a([I)V
    .registers 17

    const/16 v0, 0x52

    aget v1, p0, v0

    const/16 v2, 0x53

    aget v3, p0, v2

    const/16 v4, 0x54

    aget v5, p0, v4

    const/16 v6, 0x55

    aget v7, p0, v6

    const/16 v8, 0x56

    aget v9, p0, v8

    const/16 v10, 0x10

    :goto_16
    const/16 v11, 0x50

    if-lt v10, v11, :cond_c8

    const/4 v10, 0x0

    :goto_1b
    const/16 v12, 0x14

    if-lt v10, v12, :cond_a6

    :goto_1f
    const/16 v10, 0x28

    if-lt v12, v10, :cond_86

    :goto_23
    const/16 v12, 0x3c

    if-lt v10, v12, :cond_62

    :goto_27
    if-lt v12, v11, :cond_43

    aget v10, p0, v0

    add-int/2addr v10, v1

    aput v10, p0, v0

    aget v0, p0, v2

    add-int/2addr v0, v3

    aput v0, p0, v2

    aget v0, p0, v4

    add-int/2addr v0, v5

    aput v0, p0, v4

    aget v0, p0, v6

    add-int/2addr v0, v7

    aput v0, p0, v6

    aget v0, p0, v8

    add-int/2addr v0, v9

    aput v0, p0, v8

    return-void

    :cond_43
    shl-int/lit8 v10, v1, 0x5

    ushr-int/lit8 v13, v1, 0x1b

    or-int/2addr v10, v13

    xor-int v13, v3, v5

    xor-int/2addr v13, v7

    add-int/2addr v10, v13

    aget v13, p0, v12

    add-int/2addr v9, v13

    const v13, -0x359d3e2a    # -3715189.5f

    add-int/2addr v9, v13

    add-int/2addr v9, v10

    shl-int/lit8 v10, v3, 0x1e

    ushr-int/lit8 v3, v3, 0x2

    or-int/2addr v3, v10

    add-int/lit8 v12, v12, 0x1

    move v15, v3

    move v3, v1

    move v1, v9

    move v9, v7

    move v7, v5

    move v5, v15

    goto :goto_27

    :cond_62
    shl-int/lit8 v12, v1, 0x5

    ushr-int/lit8 v13, v1, 0x1b

    or-int/2addr v12, v13

    and-int v13, v3, v5

    and-int v14, v3, v7

    or-int/2addr v13, v14

    and-int v14, v5, v7

    or-int/2addr v13, v14

    add-int/2addr v12, v13

    aget v13, p0, v10

    add-int/2addr v9, v13

    const v13, -0x70e44324

    add-int/2addr v9, v13

    add-int/2addr v9, v12

    shl-int/lit8 v12, v3, 0x1e

    ushr-int/lit8 v3, v3, 0x2

    or-int/2addr v3, v12

    add-int/lit8 v10, v10, 0x1

    move v15, v3

    move v3, v1

    move v1, v9

    move v9, v7

    move v7, v5

    move v5, v15

    goto :goto_23

    :cond_86
    shl-int/lit8 v10, v1, 0x5

    ushr-int/lit8 v13, v1, 0x1b

    or-int/2addr v10, v13

    xor-int v13, v3, v5

    xor-int/2addr v13, v7

    add-int/2addr v10, v13

    aget v13, p0, v12

    add-int/2addr v9, v13

    const v13, 0x6ed9eba1

    add-int/2addr v9, v13

    add-int/2addr v9, v10

    shl-int/lit8 v10, v3, 0x1e

    ushr-int/lit8 v3, v3, 0x2

    or-int/2addr v3, v10

    add-int/lit8 v12, v12, 0x1

    move v15, v3

    move v3, v1

    move v1, v9

    move v9, v7

    move v7, v5

    move v5, v15

    goto/16 :goto_1f

    :cond_a6
    shl-int/lit8 v12, v1, 0x5

    ushr-int/lit8 v13, v1, 0x1b

    or-int/2addr v12, v13

    and-int v13, v3, v5

    not-int v14, v3

    and-int/2addr v14, v7

    or-int/2addr v13, v14

    add-int/2addr v12, v13

    aget v13, p0, v10

    add-int/2addr v9, v13

    const v13, 0x5a827999

    add-int/2addr v9, v13

    add-int/2addr v9, v12

    shl-int/lit8 v12, v3, 0x1e

    ushr-int/lit8 v3, v3, 0x2

    or-int/2addr v3, v12

    add-int/lit8 v10, v10, 0x1

    move v15, v3

    move v3, v1

    move v1, v9

    move v9, v7

    move v7, v5

    move v5, v15

    goto/16 :goto_1b

    :cond_c8
    add-int/lit8 v11, v10, -0x3

    aget v11, p0, v11

    add-int/lit8 v12, v10, -0x8

    aget v12, p0, v12

    xor-int/2addr v11, v12

    add-int/lit8 v12, v10, -0xe

    aget v12, p0, v12

    xor-int/2addr v11, v12

    add-int/lit8 v12, v10, -0x10

    aget v12, p0, v12

    xor-int/2addr v11, v12

    shl-int/lit8 v12, v11, 0x1

    ushr-int/lit8 v11, v11, 0x1f

    or-int/2addr v11, v12

    aput v11, p0, v10

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_16
.end method

.method private static a([I[BII)V
    .registers 13

    const/16 v0, 0x51

    aget v1, p0, v0

    shr-int/lit8 v2, v1, 0x2

    and-int/lit8 v3, v1, 0x3

    add-int/2addr v1, p3

    sub-int/2addr v1, p2

    const/4 v4, 0x1

    add-int/2addr v1, v4

    and-int/lit8 v1, v1, 0x3f

    aput v1, p0, v0

    const/4 v0, 0x0

    const/16 v1, 0x10

    if-eqz v3, :cond_3b

    :goto_15
    const/4 v5, 0x4

    if-gt p2, p3, :cond_2e

    if-lt v3, v5, :cond_1b

    goto :goto_2e

    :cond_1b
    aget v5, p0, v2

    aget-byte v6, p1, p2

    and-int/lit16 v6, v6, 0xff

    rsub-int/lit8 v7, v3, 0x3

    shl-int/lit8 v7, v7, 0x3

    shl-int/2addr v6, v7

    or-int/2addr v5, v6

    aput v5, p0, v2

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_15

    :cond_2e
    :goto_2e
    if-ne v3, v5, :cond_38

    add-int/lit8 v2, v2, 0x1

    if-ne v2, v1, :cond_38

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->a([I)V

    const/4 v2, 0x0

    :cond_38
    if-le p2, p3, :cond_3b

    return-void

    :cond_3b
    sub-int v3, p3, p2

    add-int/2addr v3, v4

    const/4 v5, 0x2

    shr-int/2addr v3, v5

    const/4 v6, 0x0

    :goto_41
    if-lt v6, v3, :cond_65

    sub-int/2addr p3, p2

    add-int/2addr p3, v4

    if-eqz p3, :cond_64

    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    if-eq p3, v4, :cond_62

    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v1, v3, 0x10

    or-int/2addr v0, v1

    if-eq p3, v5, :cond_62

    add-int/2addr p2, v5

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr v0, p1

    :cond_62
    aput v0, p0, v2

    :cond_64
    return-void

    :cond_65
    aget-byte v7, p1, p2

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x18

    add-int/lit8 v8, p2, 0x1

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/2addr v8, v1

    or-int/2addr v7, v8

    add-int/lit8 v8, p2, 0x2

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    add-int/lit8 v8, p2, 0x3

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    aput v7, p0, v2

    add-int/lit8 p2, p2, 0x4

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_8c

    goto :goto_90

    :cond_8c
    invoke-static {p0}, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->a([I)V

    const/4 v2, 0x0

    :goto_90
    add-int/lit8 v6, v6, 0x1

    goto :goto_41
.end method

.method public static a([BI)[B
    .registers 3

    div-int/lit8 p1, p1, 0x8

    new-instance v0, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;-><init>()V

    invoke-direct {v0, p0}, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->c([B)V

    new-array p0, p1, [B

    invoke-virtual {v0, p0}, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->a([B)V

    return-object p0
.end method

.method private b([B)V
    .registers 6

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->f:[I

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1}, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->a([I[BII)V

    iget-wide v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->g:J

    array-length p1, p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->g:J

    return-void
.end method

.method private c([B)V
    .registers 7

    if-eqz p1, :cond_1c

    iget v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->l:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->h:[I

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->f:[I

    const/16 v2, 0x52

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_12
    const/4 v0, 0x1

    iput v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->l:I

    array-length v0, p1

    if-eqz v0, :cond_1b

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->b([B)V

    :cond_1b
    return-void

    :cond_1c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "seed == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected declared-synchronized a([B)V
    .registers 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    if-eqz v0, :cond_197

    :try_start_7
    iget-object v2, v1, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->f:[I

    const/16 v3, 0x51

    aget v4, v2, v3

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-nez v4, :cond_13

    const/4 v4, 0x0

    goto :goto_16

    :cond_13
    add-int/lit8 v4, v4, 0x7

    shr-int/2addr v4, v5

    :goto_16
    iget v7, v1, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->l:I

    if-eqz v7, :cond_18d

    const/16 v8, 0x20

    const/16 v9, 0x30

    const-wide/16 v10, -0x1

    const/4 v12, 0x3

    const/4 v13, 0x5

    const/16 v14, 0x14

    const/4 v15, 0x1

    if-ne v7, v15, :cond_6b

    iget-object v7, v1, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->h:[I

    const/16 v15, 0x52

    invoke-static {v2, v15, v7, v6, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v4, 0x3

    :goto_30
    const/16 v7, 0x12

    if-lt v2, v7, :cond_5f

    iget-wide v5, v1, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->g:J

    shl-long/2addr v5, v12

    const-wide/16 v16, 0x40

    add-long v5, v5, v16

    iget-object v2, v1, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->f:[I

    aget v7, v2, v3

    if-ge v7, v9, :cond_4f

    ushr-long v12, v5, v8

    long-to-int v13, v12

    const/16 v12, 0xe

    aput v13, v2, v12

    and-long/2addr v5, v10

    long-to-int v6, v5

    const/16 v5, 0xf

    aput v6, v2, v5

    goto :goto_5c

    :cond_4f
    iget-object v2, v1, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->h:[I

    ushr-long v12, v5, v8

    long-to-int v13, v12

    const/16 v12, 0x13

    aput v13, v2, v12

    and-long/2addr v5, v10

    long-to-int v6, v5

    aput v6, v2, v14

    :goto_5c
    iput v14, v1, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->j:I

    goto :goto_6b

    :cond_5f
    iget-object v5, v1, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->f:[I

    const/4 v6, 0x0

    aput v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v12, 0x3

    const/4 v13, 0x5

    goto :goto_30

    :cond_6b
    :goto_6b
    const/4 v2, 0x2

    iput v2, v1, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->l:I

    array-length v2, v0
    :try_end_6f
    .catchall {:try_start_7 .. :try_end_6f} :catchall_195

    if-nez v2, :cond_73

    monitor-exit p0

    return-void

    :cond_73
    :try_start_73
    iget v2, v1, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->j:I

    rsub-int/lit8 v5, v2, 0x14

    array-length v6, v0

    const/4 v12, 0x0

    sub-int/2addr v6, v12

    if-ge v5, v6, :cond_7f

    rsub-int/lit8 v5, v2, 0x14

    goto :goto_81

    :cond_7f
    array-length v5, v0

    sub-int/2addr v5, v12

    :goto_81
    if-lez v5, :cond_90

    iget-object v6, v1, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->i:[B

    invoke-static {v6, v2, v0, v12, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, v1, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->j:I

    add-int/2addr v2, v5

    iput v2, v1, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->j:I

    add-int/lit8 v2, v5, 0x0

    goto :goto_91

    :cond_90
    const/4 v2, 0x0

    :goto_91
    array-length v5, v0
    :try_end_92
    .catchall {:try_start_73 .. :try_end_92} :catchall_195

    if-lt v2, v5, :cond_96

    monitor-exit p0

    return-void

    :cond_96
    :try_start_96
    iget-object v5, v1, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->f:[I

    aget v5, v5, v3

    const/4 v6, 0x3

    and-int/2addr v5, v6

    :goto_9c
    if-nez v5, :cond_b7

    iget-object v6, v1, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->f:[I

    iget-wide v12, v1, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->k:J

    ushr-long v14, v12, v8

    long-to-int v15, v14

    aput v15, v6, v4

    add-int/lit8 v14, v4, 0x1

    and-long/2addr v12, v10

    long-to-int v13, v12

    aput v13, v6, v14

    add-int/lit8 v12, v4, 0x2

    sget-object v13, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->a:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    aput v13, v6, v12

    goto :goto_ec

    :cond_b7
    iget-object v6, v1, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->f:[I

    aget v12, v6, v4

    iget-wide v13, v1, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->k:J

    sget-object v16, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->b:[I

    aget v16, v16, v5

    ushr-long v18, v13, v16

    sget-object v16, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->e:[I

    aget v7, v16, v5

    int-to-long v8, v7

    and-long v7, v18, v8

    long-to-int v8, v7

    or-int v7, v12, v8

    aput v7, v6, v4

    add-int/lit8 v7, v4, 0x1

    sget-object v8, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->c:[I

    aget v8, v8, v5

    ushr-long v8, v13, v8

    and-long/2addr v8, v10

    long-to-int v9, v8

    aput v9, v6, v7

    add-int/lit8 v7, v4, 0x2

    sget-object v8, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->d:[I

    aget v8, v8, v5

    shl-long v8, v13, v8

    sget-object v12, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->a:[I

    aget v12, v12, v5

    int-to-long v12, v12

    or-long/2addr v8, v12

    long-to-int v9, v8

    aput v9, v6, v7

    :goto_ec
    iget-object v6, v1, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->f:[I

    aget v7, v6, v3

    const/16 v8, 0x10

    const/16 v9, 0x30

    if-le v7, v9, :cond_104

    iget-object v7, v1, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->h:[I

    aget v9, v6, v8

    const/4 v12, 0x5

    aput v9, v7, v12

    const/16 v9, 0x11

    aget v9, v6, v9

    const/4 v12, 0x6

    aput v9, v7, v12

    :cond_104
    invoke-static {v6}, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->a([I)V

    iget-object v6, v1, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->f:[I

    aget v7, v6, v3

    const/16 v9, 0x30

    if-le v7, v9, :cond_12b

    iget-object v7, v1, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->h:[I

    const/16 v12, 0x15

    const/4 v13, 0x0

    invoke-static {v6, v13, v7, v12, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, v1, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->h:[I

    iget-object v7, v1, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->f:[I

    const/4 v14, 0x5

    invoke-static {v6, v14, v7, v13, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, v1, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->f:[I

    invoke-static {v6}, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->a([I)V

    iget-object v6, v1, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->h:[I

    iget-object v7, v1, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->f:[I

    invoke-static {v6, v12, v7, v13, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_12b
    iget-wide v6, v1, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->k:J

    const-wide/16 v12, 0x1

    add-long/2addr v6, v12

    iput-wide v6, v1, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->k:J

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_134
    const/4 v8, 0x5

    if-lt v6, v8, :cond_163

    const/4 v12, 0x0

    iput v12, v1, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->j:I

    array-length v6, v0

    sub-int/2addr v6, v2

    const/16 v12, 0x14

    if-ge v12, v6, :cond_143

    const/16 v6, 0x14

    goto :goto_148

    :cond_143
    array-length v6, v0

    sub-int v20, v6, v2

    move/from16 v6, v20

    :goto_148
    if-lez v6, :cond_157

    iget-object v7, v1, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->i:[B

    const/4 v13, 0x0

    invoke-static {v7, v13, v0, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v6

    iget v7, v1, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->j:I

    add-int/2addr v7, v6

    iput v7, v1, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->j:I

    goto :goto_158

    :cond_157
    const/4 v13, 0x0

    :goto_158
    array-length v6, v0
    :try_end_159
    .catchall {:try_start_96 .. :try_end_159} :catchall_195

    if-lt v2, v6, :cond_15d

    monitor-exit p0

    return-void

    :cond_15d
    const/16 v8, 0x20

    const/16 v14, 0x14

    goto/16 :goto_9c

    :cond_163
    const/16 v12, 0x14

    const/4 v13, 0x0

    :try_start_166
    iget-object v14, v1, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->f:[I

    add-int/lit8 v15, v6, 0x52

    aget v14, v14, v15

    iget-object v15, v1, Lcom/ssjj/fnsdk/core/SsjjFNUtility$a;->i:[B

    ushr-int/lit8 v3, v14, 0x18

    int-to-byte v3, v3

    aput-byte v3, v15, v7

    add-int/lit8 v3, v7, 0x1

    ushr-int/lit8 v8, v14, 0x10

    int-to-byte v8, v8

    aput-byte v8, v15, v3

    add-int/lit8 v3, v7, 0x2

    ushr-int/lit8 v8, v14, 0x8

    int-to-byte v8, v8

    aput-byte v8, v15, v3

    add-int/lit8 v3, v7, 0x3

    int-to-byte v8, v14

    aput-byte v8, v15, v3

    add-int/lit8 v7, v7, 0x4

    add-int/lit8 v6, v6, 0x1

    const/16 v3, 0x51

    goto :goto_134

    :cond_18d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "No seed supplied!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_195
    move-exception v0

    goto :goto_19f

    :cond_197
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "bytes == null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_19f
    .catchall {:try_start_166 .. :try_end_19f} :catchall_195

    :goto_19f
    monitor-exit p0

    throw v0
.end method
