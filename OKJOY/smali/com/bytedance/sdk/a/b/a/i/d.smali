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

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, "RFC2253"

    invoke-virtual {p1, v0}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->a:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->b:I

    .line 48
    return-void
.end method

.method private a(I)I
    .registers 10

    .prologue
    const/16 v7, 0x61

    const/16 v6, 0x46

    const/16 v5, 0x41

    const/16 v4, 0x39

    const/16 v3, 0x30

    .line 315
    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->b:I

    if-lt v0, v1, :cond_2b

    .line 316
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/i/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :cond_2b
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    aget-char v0, v0, p1

    .line 322
    if-lt v0, v3, :cond_45

    if-gt v0, v4, :cond_45

    .line 323
    add-int/lit8 v0, v0, -0x30

    .line 332
    :goto_35
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    add-int/lit8 v2, p1, 0x1

    aget-char v1, v1, v2

    .line 333
    if-lt v1, v3, :cond_70

    if-gt v1, v4, :cond_70

    .line 334
    add-int/lit8 v1, v1, -0x30

    .line 343
    :goto_41
    shl-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v1

    return v0

    .line 324
    :cond_45
    if-lt v0, v7, :cond_4e

    const/16 v1, 0x66

    if-gt v0, v1, :cond_4e

    .line 325
    add-int/lit8 v0, v0, -0x57

    goto :goto_35

    .line 326
    :cond_4e
    if-lt v0, v5, :cond_55

    if-gt v0, v6, :cond_55

    .line 327
    add-int/lit8 v0, v0, -0x37

    goto :goto_35

    .line 329
    :cond_55
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/i/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_70
    if-lt v1, v7, :cond_79

    const/16 v2, 0x66

    if-gt v1, v2, :cond_79

    .line 336
    add-int/lit8 v1, v1, -0x57

    goto :goto_41

    .line 337
    :cond_79
    if-lt v1, v5, :cond_80

    if-gt v1, v6, :cond_80

    .line 338
    add-int/lit8 v1, v1, -0x37

    goto :goto_41

    .line 340
    :cond_80
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed DN: "

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

.method private a()Ljava/lang/String;
    .registers 6

    .prologue
    const/16 v3, 0x3d

    const/16 v2, 0x20

    .line 54
    :goto_4
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->b:I

    if-ge v0, v1, :cond_19

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_19

    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    goto :goto_4

    .line 56
    :cond_19
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->b:I

    if-ne v0, v1, :cond_21

    .line 57
    const/4 v0, 0x0

    .line 103
    :goto_20
    return-object v0

    .line 61
    :cond_21
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->d:I

    .line 64
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    .line 65
    :goto_2b
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->b:I

    if-ge v0, v1, :cond_48

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    aget-char v0, v0, v1

    if-eq v0, v3, :cond_48

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    aget-char v0, v0, v1

    if-eq v0, v2, :cond_48

    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    goto :goto_2b

    .line 69
    :cond_48
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->b:I

    if-lt v0, v1, :cond_69

    .line 70
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

    .line 74
    :cond_69
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->e:I

    .line 78
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_bb

    .line 79
    :goto_75
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->b:I

    if-ge v0, v1, :cond_92

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    aget-char v0, v0, v1

    if-eq v0, v3, :cond_92

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_92

    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    goto :goto_75

    .line 82
    :cond_92
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    aget-char v0, v0, v1

    if-ne v0, v3, :cond_a0

    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->b:I

    if-ne v0, v1, :cond_bb

    .line 83
    :cond_a0
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

    .line 87
    :cond_bb
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    .line 91
    :goto_c1
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->b:I

    if-ge v0, v1, :cond_d6

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_d6

    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    goto :goto_c1

    .line 96
    :cond_d6
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->e:I

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->d:I

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    if-le v0, v1, :cond_134

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->d:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_134

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->d:I

    aget-char v0, v0, v1

    const/16 v1, 0x4f

    if-eq v0, v1, :cond_fe

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->d:I

    aget-char v0, v0, v1

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_134

    :cond_fe
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->d:I

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    const/16 v1, 0x49

    if-eq v0, v1, :cond_116

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->d:I

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    const/16 v1, 0x69

    if-ne v0, v1, :cond_134

    :cond_116
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->d:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    const/16 v1, 0x44

    if-eq v0, v1, :cond_12e

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->d:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    const/16 v1, 0x64

    if-ne v0, v1, :cond_134

    .line 100
    :cond_12e
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->d:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->d:I

    .line 103
    :cond_134
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    iget v2, p0, Lcom/bytedance/sdk/a/b/a/i/d;->d:I

    iget v3, p0, Lcom/bytedance/sdk/a/b/a/i/d;->e:I

    iget v4, p0, Lcom/bytedance/sdk/a/b/a/i/d;->d:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_20
.end method

.method private b()Ljava/lang/String;
    .registers 6

    .prologue
    .line 108
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    .line 109
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->d:I

    .line 110
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->d:I

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->e:I

    .line 113
    :goto_e
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->b:I

    if-ne v0, v1, :cond_2f

    .line 114
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

    .line 117
    :cond_2f
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x22

    if-ne v0, v1, :cond_56

    .line 119
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    .line 133
    :goto_3f
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->b:I

    if-ge v0, v1, :cond_84

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_84

    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    goto :goto_3f

    .line 121
    :cond_56
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_77

    .line 122
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->e:I

    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/i/d;->e()C

    move-result v2

    aput-char v2, v0, v1

    .line 127
    :goto_6a
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    .line 128
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->e:I

    goto :goto_e

    .line 125
    :cond_77
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->e:I

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    iget v3, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    goto :goto_6a

    .line 136
    :cond_84
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    iget v2, p0, Lcom/bytedance/sdk/a/b/a/i/d;->d:I

    iget v3, p0, Lcom/bytedance/sdk/a/b/a/i/d;->e:I

    iget v4, p0, Lcom/bytedance/sdk/a/b/a/i/d;->d:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .registers 6

    .prologue
    const/16 v3, 0x20

    .line 141
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->b:I

    if-lt v0, v1, :cond_25

    .line 143
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

    .line 146
    :cond_25
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->d:I

    .line 147
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    .line 152
    :goto_2f
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->b:I

    if-eq v0, v1, :cond_53

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_53

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_53

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_7f

    .line 154
    :cond_53
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->e:I

    .line 175
    :cond_57
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->e:I

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->d:I

    sub-int v2, v0, v1

    .line 176
    const/4 v0, 0x5

    if-lt v2, v0, :cond_64

    and-int/lit8 v0, v2, 0x1

    if-nez v0, :cond_cd

    .line 177
    :cond_64
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

    .line 158
    :cond_7f
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    aget-char v0, v0, v1

    if-ne v0, v3, :cond_a6

    .line 159
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->e:I

    .line 160
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    .line 163
    :goto_91
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->b:I

    if-ge v0, v1, :cond_57

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    aget-char v0, v0, v1

    if-ne v0, v3, :cond_57

    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    goto :goto_91

    .line 166
    :cond_a6
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x41

    if-lt v0, v1, :cond_c5

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x46

    if-gt v0, v1, :cond_c5

    .line 167
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    aget-char v2, v0, v1

    add-int/lit8 v2, v2, 0x20

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 170
    :cond_c5
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    goto/16 :goto_2f

    .line 181
    :cond_cd
    div-int/lit8 v0, v2, 0x2

    new-array v3, v0, [B

    .line 182
    const/4 v1, 0x0

    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->d:I

    add-int/lit8 v0, v0, 0x1

    :goto_d6
    array-length v4, v3

    if-ge v1, v4, :cond_e5

    .line 183
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/a/b/a/i/d;->a(I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 182
    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_d6

    .line 186
    :cond_e5
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    iget v3, p0, Lcom/bytedance/sdk/a/b/a/i/d;->d:I

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .registers 6

    .prologue
    const/16 v4, 0x20

    .line 191
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->d:I

    .line 192
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->e:I

    .line 194
    :cond_a
    :goto_a
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->b:I

    if-lt v0, v1, :cond_1f

    .line 196
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    iget v2, p0, Lcom/bytedance/sdk/a/b/a/i/d;->d:I

    iget v3, p0, Lcom/bytedance/sdk/a/b/a/i/d;->e:I

    iget v4, p0, Lcom/bytedance/sdk/a/b/a/i/d;->d:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 224
    :goto_1e
    return-object v0

    .line 199
    :cond_1f
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    aget-char v0, v0, v1

    sparse-switch v0, :sswitch_data_ca

    .line 228
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/bytedance/sdk/a/b/a/i/d;->e:I

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    iget v3, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 229
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    goto :goto_a

    .line 204
    :sswitch_3f
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    iget v2, p0, Lcom/bytedance/sdk/a/b/a/i/d;->d:I

    iget v3, p0, Lcom/bytedance/sdk/a/b/a/i/d;->e:I

    iget v4, p0, Lcom/bytedance/sdk/a/b/a/i/d;->d:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_1e

    .line 207
    :sswitch_4e
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/bytedance/sdk/a/b/a/i/d;->e:I

    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/i/d;->e()C

    move-result v2

    aput-char v2, v0, v1

    .line 208
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    goto :goto_a

    .line 213
    :sswitch_63
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->e:I

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->f:I

    .line 215
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    .line 216
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/bytedance/sdk/a/b/a/i/d;->e:I

    aput-char v4, v0, v1

    .line 218
    :goto_77
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->b:I

    if-ge v0, v1, :cond_96

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    aget-char v0, v0, v1

    if-ne v0, v4, :cond_96

    .line 219
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/bytedance/sdk/a/b/a/i/d;->e:I

    aput-char v4, v0, v1

    .line 218
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    goto :goto_77

    .line 221
    :cond_96
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->b:I

    if-eq v0, v1, :cond_ba

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_ba

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_ba

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_a

    .line 224
    :cond_ba
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    iget v2, p0, Lcom/bytedance/sdk/a/b/a/i/d;->d:I

    iget v3, p0, Lcom/bytedance/sdk/a/b/a/i/d;->f:I

    iget v4, p0, Lcom/bytedance/sdk/a/b/a/i/d;->d:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_1e

    .line 199
    :sswitch_data_ca
    .sparse-switch
        0x20 -> :sswitch_63
        0x2b -> :sswitch_3f
        0x2c -> :sswitch_3f
        0x3b -> :sswitch_3f
        0x5c -> :sswitch_4e
    .end sparse-switch
.end method

.method private e()C
    .registers 4

    .prologue
    .line 236
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    .line 237
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->b:I

    if-ne v0, v1, :cond_27

    .line 238
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

    .line 241
    :cond_27
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    aget-char v0, v0, v1

    sparse-switch v0, :sswitch_data_3c

    .line 260
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/i/d;->f()C

    move-result v0

    :goto_34
    return v0

    .line 256
    :sswitch_35
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    aget-char v0, v0, v1

    goto :goto_34

    .line 241
    :sswitch_data_3c
    .sparse-switch
        0x20 -> :sswitch_35
        0x22 -> :sswitch_35
        0x23 -> :sswitch_35
        0x25 -> :sswitch_35
        0x2a -> :sswitch_35
        0x2b -> :sswitch_35
        0x2c -> :sswitch_35
        0x3b -> :sswitch_35
        0x3c -> :sswitch_35
        0x3d -> :sswitch_35
        0x3e -> :sswitch_35
        0x5c -> :sswitch_35
        0x5f -> :sswitch_35
    .end sparse-switch
.end method

.method private f()C
    .registers 9

    .prologue
    const/16 v6, 0x80

    const/16 v2, 0x3f

    .line 267
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/a/b/a/i/d;->a(I)I

    move-result v1

    .line 268
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    .line 270
    if-ge v1, v6, :cond_14

    .line 271
    int-to-char v0, v1

    .line 304
    :goto_13
    return v0

    .line 272
    :cond_14
    const/16 v0, 0xc0

    if-lt v1, v0, :cond_6f

    const/16 v0, 0xf7

    if-gt v1, v0, :cond_6f

    .line 275
    const/16 v0, 0xdf

    if-gt v1, v0, :cond_41

    .line 276
    const/4 v0, 0x1

    .line 277
    and-int/lit8 v1, v1, 0x1f

    .line 287
    :goto_23
    const/4 v3, 0x0

    move v7, v3

    move v3, v1

    move v1, v7

    :goto_27
    if-ge v1, v0, :cond_6d

    .line 288
    iget v4, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    .line 289
    iget v4, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    iget v5, p0, Lcom/bytedance/sdk/a/b/a/i/d;->b:I

    if-eq v4, v5, :cond_3f

    iget-object v4, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    iget v5, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    aget-char v4, v4, v5

    const/16 v5, 0x5c

    if-eq v4, v5, :cond_4d

    :cond_3f
    move v0, v2

    .line 290
    goto :goto_13

    .line 278
    :cond_41
    const/16 v0, 0xef

    if-gt v1, v0, :cond_49

    .line 279
    const/4 v0, 0x2

    .line 280
    and-int/lit8 v1, v1, 0xf

    goto :goto_23

    .line 282
    :cond_49
    const/4 v0, 0x3

    .line 283
    and-int/lit8 v1, v1, 0x7

    goto :goto_23

    .line 292
    :cond_4d
    iget v4, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    .line 294
    iget v4, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    invoke-direct {p0, v4}, Lcom/bytedance/sdk/a/b/a/i/d;->a(I)I

    move-result v4

    .line 295
    iget v5, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    .line 296
    and-int/lit16 v5, v4, 0xc0

    if-eq v5, v6, :cond_65

    move v0, v2

    .line 297
    goto :goto_13

    .line 300
    :cond_65
    shl-int/lit8 v3, v3, 0x6

    and-int/lit8 v4, v4, 0x3f

    add-int/2addr v3, v4

    .line 287
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 302
    :cond_6d
    int-to-char v0, v3

    goto :goto_13

    :cond_6f
    move v0, v2

    .line 304
    goto :goto_13
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 354
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
    if-nez v0, :cond_1a

    move-object v1, v2

    .line 395
    :cond_19
    :goto_19
    return-object v1

    .line 365
    :cond_1a
    const-string v1, ""

    .line 367
    iget v3, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    iget v4, p0, Lcom/bytedance/sdk/a/b/a/i/d;->b:I

    if-ne v3, v4, :cond_24

    move-object v1, v2

    .line 368
    goto :goto_19

    .line 371
    :cond_24
    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    iget v4, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    aget-char v3, v3, v4

    sparse-switch v3, :sswitch_data_aa

    .line 384
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/i/d;->d()Ljava/lang/String;

    move-result-object v1

    .line 390
    :goto_31
    :sswitch_31
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 394
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->b:I

    if-lt v0, v1, :cond_49

    move-object v1, v2

    .line 395
    goto :goto_19

    .line 373
    :sswitch_3f
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/i/d;->b()Ljava/lang/String;

    move-result-object v1

    goto :goto_31

    .line 376
    :sswitch_44
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/i/d;->c()Ljava/lang/String;

    move-result-object v1

    goto :goto_31

    .line 398
    :cond_49
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_5d

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_84

    .line 403
    :cond_5d
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    .line 404
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/i/d;->a()Ljava/lang/String;

    move-result-object v0

    .line 405
    if-nez v0, :cond_1a

    .line 406
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/i/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 399
    :cond_84
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/i/d;->g:[C

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/i/d;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_5d

    .line 400
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/i/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    nop

    :sswitch_data_aa
    .sparse-switch
        0x22 -> :sswitch_3f
        0x23 -> :sswitch_44
        0x2b -> :sswitch_31
        0x2c -> :sswitch_31
        0x3b -> :sswitch_31
    .end sparse-switch
.end method
