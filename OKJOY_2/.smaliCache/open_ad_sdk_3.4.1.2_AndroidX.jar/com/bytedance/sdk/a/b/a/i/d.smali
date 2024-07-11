.class final Lcom/bytedance/sdk/a/b/a/i/d;
.super Ljava/lang/Object;
.source "DistinguishedNameParser.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:[C


# direct methods
.method constructor <init>(Ljavax/security/auth/x500/X500Principal;)V
    .registers 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, "RFC2253"

    invoke-virtual {p1, v0}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->a:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->b:I

    .line 48
    return-void
.end method

.method private a(I)I
    .registers 11

    .line 315
    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->b:I

    const-string v2, "Malformed DN: "

    if-ge v0, v1, :cond_76

    .line 321
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    aget-char p1, v1, p1

    .line 322
    const/16 v3, 0x46

    const/16 v4, 0x66

    const/16 v5, 0x41

    const/16 v6, 0x39

    const/16 v7, 0x61

    const/16 v8, 0x30

    if-lt p1, v8, :cond_1e

    if-gt p1, v6, :cond_1e

    .line 323
    sub-int/2addr p1, v8

    goto :goto_2b

    .line 324
    :cond_1e
    if-lt p1, v7, :cond_25

    if-gt p1, v4, :cond_25

    .line 325
    add-int/lit8 p1, p1, -0x57

    goto :goto_2b

    .line 326
    :cond_25
    if-lt p1, v5, :cond_5d

    if-gt p1, v3, :cond_5d

    .line 327
    add-int/lit8 p1, p1, -0x37

    .line 332
    :goto_2b
    aget-char v0, v1, v0

    .line 333
    if-lt v0, v8, :cond_33

    if-gt v0, v6, :cond_33

    .line 334
    sub-int/2addr v0, v8

    goto :goto_40

    .line 335
    :cond_33
    if-lt v0, v7, :cond_3a

    if-gt v0, v4, :cond_3a

    .line 336
    add-int/lit8 v0, v0, -0x57

    goto :goto_40

    .line 337
    :cond_3a
    if-lt v0, v5, :cond_44

    if-gt v0, v3, :cond_44

    .line 338
    add-int/lit8 v0, v0, -0x37

    .line 343
    :goto_40
    shl-int/lit8 p1, p1, 0x4

    add-int/2addr p1, v0

    return p1

    .line 340
    :cond_44
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 329
    :cond_5d
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 316
    :cond_76
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a()Ljava/lang/String;
    .registers 8

    .line 54
    :goto_0
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->b:I

    const/16 v2, 0x20

    if-ge v0, v1, :cond_13

    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    aget-char v3, v3, v0

    if-ne v3, v2, :cond_13

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    goto :goto_0

    .line 56
    :cond_13
    if-ne v0, v1, :cond_17

    .line 57
    const/4 v0, 0x0

    return-object v0

    .line 61
    :cond_17
    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->d:I

    .line 64
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    .line 65
    :goto_1d
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->b:I

    const/16 v3, 0x3d

    if-ge v0, v1, :cond_34

    iget-object v4, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    aget-char v5, v4, v0

    if-eq v5, v3, :cond_34

    aget-char v4, v4, v0

    if-eq v4, v2, :cond_34

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    goto :goto_1d

    .line 69
    :cond_34
    const-string v4, "Unexpected end of DN: "

    if-ge v0, v1, :cond_dc

    .line 74
    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->e:I

    .line 78
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    aget-char v0, v1, v0

    if-ne v0, v2, :cond_77

    .line 79
    :goto_40
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->b:I

    if-ge v0, v1, :cond_55

    iget-object v5, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    aget-char v6, v5, v0

    if-eq v6, v3, :cond_55

    aget-char v5, v5, v0

    if-ne v5, v2, :cond_55

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    goto :goto_40

    .line 82
    :cond_55
    iget-object v5, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    aget-char v5, v5, v0

    if-ne v5, v3, :cond_5e

    if-eq v0, v1, :cond_5e

    goto :goto_77

    .line 83
    :cond_5e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/i/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_77
    :goto_77
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    .line 91
    :goto_7d
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->b:I

    if-ge v0, v1, :cond_8e

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    aget-char v1, v1, v0

    if-ne v1, v2, :cond_8e

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    goto :goto_7d

    .line 96
    :cond_8e
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->e:I

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->d:I

    sub-int/2addr v0, v1

    const/4 v2, 0x4

    if-le v0, v2, :cond_cf

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    add-int/lit8 v3, v1, 0x3

    aget-char v3, v0, v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_cf

    aget-char v3, v0, v1

    const/16 v4, 0x4f

    if-eq v3, v4, :cond_ac

    aget-char v3, v0, v1

    const/16 v4, 0x6f

    if-ne v3, v4, :cond_cf

    :cond_ac
    add-int/lit8 v3, v1, 0x1

    aget-char v3, v0, v3

    const/16 v4, 0x49

    if-eq v3, v4, :cond_bc

    add-int/lit8 v3, v1, 0x1

    aget-char v3, v0, v3

    const/16 v4, 0x69

    if-ne v3, v4, :cond_cf

    :cond_bc
    add-int/lit8 v3, v1, 0x2

    aget-char v3, v0, v3

    const/16 v4, 0x44

    if-eq v3, v4, :cond_cc

    add-int/lit8 v3, v1, 0x2

    aget-char v0, v0, v3

    const/16 v3, 0x64

    if-ne v0, v3, :cond_cf

    .line 100
    :cond_cc
    add-int/2addr v1, v2

    iput v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->d:I

    .line 103
    :cond_cf
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    iget v2, p0, Lcom/bytedance/sdk/a/b/a/i/d;->d:I

    iget v3, p0, Lcom/bytedance/sdk/a/b/a/i/d;->e:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 70
    :cond_dc
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/i/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b()Ljava/lang/String;
    .registers 5

    .line 108
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    .line 109
    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->d:I

    .line 110
    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->e:I

    .line 113
    :goto_a
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->b:I

    if-eq v0, v1, :cond_5f

    .line 117
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    aget-char v2, v1, v0

    const/16 v3, 0x22

    if-ne v2, v3, :cond_3d

    .line 119
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    .line 120
    nop

    .line 133
    :goto_1d
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->b:I

    if-ge v0, v1, :cond_30

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    aget-char v1, v1, v0

    const/16 v2, 0x20

    if-ne v1, v2, :cond_30

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    goto :goto_1d

    .line 136
    :cond_30
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    iget v2, p0, Lcom/bytedance/sdk/a/b/a/i/d;->d:I

    iget v3, p0, Lcom/bytedance/sdk/a/b/a/i/d;->e:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 121
    :cond_3d
    aget-char v2, v1, v0

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_4c

    .line 122
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->e:I

    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/i/d;->e()C

    move-result v2

    aput-char v2, v1, v0

    goto :goto_52

    .line 125
    :cond_4c
    iget v2, p0, Lcom/bytedance/sdk/a/b/a/i/d;->e:I

    aget-char v0, v1, v0

    aput-char v0, v1, v2

    .line 127
    :goto_52
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    .line 128
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->e:I

    goto :goto_a

    .line 114
    :cond_5f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected end of DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/i/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private c()Ljava/lang/String;
    .registers 7

    .line 141
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    add-int/lit8 v1, v0, 0x4

    iget v2, p0, Lcom/bytedance/sdk/a/b/a/i/d;->b:I

    const-string v3, "Unexpected end of DN: "

    if-ge v1, v2, :cond_a6

    .line 146
    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->d:I

    .line 147
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    .line 152
    :goto_10
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->b:I

    if-eq v0, v1, :cond_5f

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    aget-char v2, v1, v0

    const/16 v4, 0x2b

    if-eq v2, v4, :cond_5f

    aget-char v2, v1, v0

    const/16 v4, 0x2c

    if-eq v2, v4, :cond_5f

    aget-char v2, v1, v0

    const/16 v4, 0x3b

    if-ne v2, v4, :cond_2b

    goto :goto_5f

    .line 158
    :cond_2b
    aget-char v2, v1, v0

    const/16 v4, 0x20

    if-ne v2, v4, :cond_48

    .line 159
    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->e:I

    .line 160
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    .line 163
    :goto_37
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->b:I

    if-ge v0, v1, :cond_62

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    aget-char v1, v1, v0

    if-ne v1, v4, :cond_62

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    goto :goto_37

    .line 166
    :cond_48
    aget-char v2, v1, v0

    const/16 v5, 0x41

    if-lt v2, v5, :cond_5a

    aget-char v2, v1, v0

    const/16 v5, 0x46

    if-gt v2, v5, :cond_5a

    .line 167
    aget-char v2, v1, v0

    add-int/2addr v2, v4

    int-to-char v2, v2

    aput-char v2, v1, v0

    .line 170
    :cond_5a
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    goto :goto_10

    .line 154
    :cond_5f
    :goto_5f
    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->e:I

    .line 155
    nop

    .line 175
    :cond_62
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->e:I

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->d:I

    sub-int/2addr v0, v1

    .line 176
    const/4 v2, 0x5

    if-lt v0, v2, :cond_8d

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_8d

    .line 181
    div-int/lit8 v2, v0, 0x2

    new-array v3, v2, [B

    .line 182
    const/4 v4, 0x0

    add-int/lit8 v1, v1, 0x1

    :goto_75
    if-ge v4, v2, :cond_83

    .line 183
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/a/b/a/i/d;->a(I)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 182
    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    goto :goto_75

    .line 186
    :cond_83
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    iget v3, p0, Lcom/bytedance/sdk/a/b/a/i/d;->d:I

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    .line 177
    :cond_8d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/i/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_a6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/i/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private d()Ljava/lang/String;
    .registers 6

    .line 191
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->d:I

    .line 192
    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->e:I

    .line 194
    :cond_6
    :goto_6
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->b:I

    if-lt v0, v1, :cond_19

    .line 196
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    iget v2, p0, Lcom/bytedance/sdk/a/b/a/i/d;->d:I

    iget v3, p0, Lcom/bytedance/sdk/a/b/a/i/d;->e:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 199
    :cond_19
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    aget-char v2, v1, v0

    sparse-switch v2, :sswitch_data_9c

    .line 228
    iget v2, p0, Lcom/bytedance/sdk/a/b/a/i/d;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/bytedance/sdk/a/b/a/i/d;->e:I

    aget-char v3, v1, v0

    aput-char v3, v1, v2

    .line 229
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    goto :goto_6

    .line 207
    :sswitch_2f
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->e:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/bytedance/sdk/a/b/a/i/d;->e:I

    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/i/d;->e()C

    move-result v2

    aput-char v2, v1, v0

    .line 208
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    .line 209
    goto :goto_6

    .line 204
    :sswitch_42
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    iget v2, p0, Lcom/bytedance/sdk/a/b/a/i/d;->d:I

    iget v3, p0, Lcom/bytedance/sdk/a/b/a/i/d;->e:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 213
    :sswitch_4f
    iget v2, p0, Lcom/bytedance/sdk/a/b/a/i/d;->e:I

    iput v2, p0, Lcom/bytedance/sdk/a/b/a/i/d;->f:I

    .line 215
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    .line 216
    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->e:I

    const/16 v0, 0x20

    aput-char v0, v1, v2

    .line 218
    :goto_5f
    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    iget v2, p0, Lcom/bytedance/sdk/a/b/a/i/d;->b:I

    if-ge v1, v2, :cond_78

    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    aget-char v4, v3, v1

    if-ne v4, v0, :cond_78

    .line 219
    iget v2, p0, Lcom/bytedance/sdk/a/b/a/i/d;->e:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/bytedance/sdk/a/b/a/i/d;->e:I

    aput-char v0, v3, v2

    .line 218
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    goto :goto_5f

    .line 221
    :cond_78
    if-eq v1, v2, :cond_8e

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    aget-char v2, v0, v1

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_8e

    aget-char v2, v0, v1

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_8e

    aget-char v0, v0, v1

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_6

    .line 224
    :cond_8e
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    iget v2, p0, Lcom/bytedance/sdk/a/b/a/i/d;->d:I

    iget v3, p0, Lcom/bytedance/sdk/a/b/a/i/d;->f:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    nop

    :sswitch_data_9c
    .sparse-switch
        0x20 -> :sswitch_4f
        0x2b -> :sswitch_42
        0x2c -> :sswitch_42
        0x3b -> :sswitch_42
        0x5c -> :sswitch_2f
    .end sparse-switch
.end method

.method private e()C
    .registers 4

    .line 236
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    .line 237
    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->b:I

    if-eq v0, v1, :cond_19

    .line 241
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    aget-char v2, v1, v0

    sparse-switch v2, :sswitch_data_34

    .line 260
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/i/d;->f()C

    move-result v0

    return v0

    .line 256
    :sswitch_16
    aget-char v0, v1, v0

    return v0

    .line 238
    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected end of DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/i/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_34
    .sparse-switch
        0x20 -> :sswitch_16
        0x22 -> :sswitch_16
        0x23 -> :sswitch_16
        0x25 -> :sswitch_16
        0x2a -> :sswitch_16
        0x2b -> :sswitch_16
        0x2c -> :sswitch_16
        0x3b -> :sswitch_16
        0x3c -> :sswitch_16
        0x3d -> :sswitch_16
        0x3e -> :sswitch_16
        0x5c -> :sswitch_16
        0x5f -> :sswitch_16
    .end sparse-switch
.end method

.method private f()C
    .registers 10

    .line 267
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/a/b/a/i/d;->a(I)I

    move-result v0

    .line 268
    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    .line 270
    const/16 v1, 0x80

    if-ge v0, v1, :cond_12

    .line 271
    int-to-char v0, v0

    return v0

    .line 272
    :cond_12
    const/16 v3, 0xc0

    const/16 v4, 0x3f

    if-lt v0, v3, :cond_62

    const/16 v3, 0xf7

    if-gt v0, v3, :cond_62

    .line 275
    const/16 v3, 0xdf

    if-gt v0, v3, :cond_25

    .line 276
    nop

    .line 277
    and-int/lit8 v0, v0, 0x1f

    move v3, v2

    goto :goto_30

    .line 278
    :cond_25
    const/16 v3, 0xef

    if-gt v0, v3, :cond_2d

    .line 279
    const/4 v3, 0x2

    .line 280
    and-int/lit8 v0, v0, 0xf

    goto :goto_30

    .line 282
    :cond_2d
    const/4 v3, 0x3

    .line 283
    and-int/lit8 v0, v0, 0x7

    .line 287
    :goto_30
    const/4 v5, 0x0

    :goto_31
    if-ge v5, v3, :cond_60

    .line 288
    iget v6, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    add-int/2addr v6, v2

    iput v6, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    .line 289
    iget v7, p0, Lcom/bytedance/sdk/a/b/a/i/d;->b:I

    if-eq v6, v7, :cond_5f

    iget-object v7, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    aget-char v7, v7, v6

    const/16 v8, 0x5c

    if-eq v7, v8, :cond_45

    goto :goto_5f

    .line 292
    :cond_45
    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    .line 294
    invoke-direct {p0, v6}, Lcom/bytedance/sdk/a/b/a/i/d;->a(I)I

    move-result v6

    .line 295
    iget v7, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    add-int/2addr v7, v2

    iput v7, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    .line 296
    and-int/lit16 v7, v6, 0xc0

    if-eq v7, v1, :cond_57

    .line 297
    return v4

    .line 300
    :cond_57
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v6, v6, 0x3f

    add-int/2addr v0, v6

    .line 287
    add-int/lit8 v5, v5, 0x1

    goto :goto_31

    .line 290
    :cond_5f
    :goto_5f
    return v4

    .line 302
    :cond_60
    int-to-char v0, v0

    return v0

    .line 304
    :cond_62
    return v4
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 354
    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    .line 355
    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->d:I

    .line 356
    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->e:I

    .line 357
    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->f:I

    .line 358
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    .line 360
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/i/d;->a()Ljava/lang/String;

    move-result-object v0

    .line 361
    const/4 v1, 0x0

    if-nez v0, :cond_19

    .line 362
    return-object v1

    .line 365
    :cond_19
    :goto_19
    nop

    .line 367
    iget v2, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    iget v3, p0, Lcom/bytedance/sdk/a/b/a/i/d;->b:I

    if-ne v2, v3, :cond_21

    .line 368
    return-object v1

    .line 371
    :cond_21
    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    aget-char v2, v3, v2

    sparse-switch v2, :sswitch_data_9e

    .line 384
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/i/d;->d()Ljava/lang/String;

    move-result-object v2

    goto :goto_3a

    .line 382
    :sswitch_2d
    const-string v2, ""

    goto :goto_3a

    .line 376
    :sswitch_30
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/i/d;->c()Ljava/lang/String;

    move-result-object v2

    .line 377
    goto :goto_3a

    .line 373
    :sswitch_35
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/i/d;->b()Ljava/lang/String;

    move-result-object v2

    .line 374
    nop

    .line 390
    :goto_3a
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 391
    return-object v2

    .line 394
    :cond_41
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    iget v2, p0, Lcom/bytedance/sdk/a/b/a/i/d;->b:I

    if-lt v0, v2, :cond_48

    .line 395
    return-object v1

    .line 398
    :cond_48
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    aget-char v3, v2, v0

    const/16 v4, 0x2c

    const-string v5, "Malformed DN: "

    if-eq v3, v4, :cond_79

    aget-char v3, v2, v0

    const/16 v4, 0x3b

    if-ne v3, v4, :cond_59

    goto :goto_79

    .line 399
    :cond_59
    aget-char v2, v2, v0

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_60

    goto :goto_79

    .line 400
    :cond_60
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 403
    :cond_79
    :goto_79
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    .line 404
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/i/d;->a()Ljava/lang/String;

    move-result-object v0

    .line 405
    if-eqz v0, :cond_84

    .line 408
    goto :goto_19

    .line 406
    :cond_84
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :sswitch_data_9e
    .sparse-switch
        0x22 -> :sswitch_35
        0x23 -> :sswitch_30
        0x2b -> :sswitch_2d
        0x2c -> :sswitch_2d
        0x3b -> :sswitch_2d
    .end sparse-switch
.end method
