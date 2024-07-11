.class public Lcom/umeng/analytics/filter/d;
.super Ljava/lang/Object;
.source "SmartDict.java"


# static fields
.field private static final b:Ljava/lang/String; = "\u0102"


# instance fields
.field private final a:Ljava/lang/String;

.field private c:Ljava/security/MessageDigest;

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .registers 6

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "MD5"

    iput-object v0, p0, Lcom/umeng/analytics/filter/d;->a:Ljava/lang/String;

    .line 24
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/umeng/analytics/filter/d;->d:Ljava/util/Set;

    .line 25
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/umeng/analytics/filter/d;->e:Z

    .line 29
    iput-boolean p1, p0, Lcom/umeng/analytics/filter/d;->e:Z

    .line 31
    :try_start_13
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/filter/d;->c:Ljava/security/MessageDigest;
    :try_end_19
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_13 .. :try_end_19} :catch_1a

    .line 35
    goto :goto_1e

    .line 32
    :catch_1a
    move-exception v0

    .line 33
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 36
    :goto_1e
    if-eqz p2, :cond_77

    .line 37
    if-eqz p1, :cond_64

    .line 39
    :try_start_22
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p1

    .line 40
    nop

    :goto_2b
    array-length p2, p1

    div-int/lit8 p2, p2, 0x4

    if-ge v1, p2, :cond_63

    .line 41
    mul-int/lit8 p2, v1, 0x4

    add-int/lit8 v0, p2, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v0, v2

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    add-int/lit8 p2, p2, 0x3

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    add-int/2addr v0, p2

    .line 45
    iget-object p2, p0, Lcom/umeng/analytics/filter/d;->d:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_5c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_5c} :catch_5f

    .line 40
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 47
    :catch_5f
    move-exception p1

    .line 48
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 49
    :cond_63
    goto :goto_77

    .line 51
    :cond_64
    const-string p1, "\u0102"

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p2, p1

    :goto_6b
    if-ge v1, p2, :cond_77

    aget-object v0, p1, v1

    .line 52
    iget-object v2, p0, Lcom/umeng/analytics/filter/d;->d:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    add-int/lit8 v1, v1, 0x1

    goto :goto_6b

    .line 56
    :cond_77
    :goto_77
    return-void
.end method

.method private c(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 4

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/filter/d;->c:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 65
    iget-object p1, p0, Lcom/umeng/analytics/filter/d;->c:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    .line 67
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    add-int/2addr v0, p1

    .line 72
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_31

    return-object p1

    .line 73
    :catch_31
    move-exception p1

    .line 74
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 75
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public a()V
    .registers 4

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    iget-object v1, p0, Lcom/umeng/analytics/filter/d;->d:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 100
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_23

    .line 102
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    :cond_23
    goto :goto_b

    .line 105
    :cond_24
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .registers 3

    .line 81
    iget-boolean v0, p0, Lcom/umeng/analytics/filter/d;->e:Z

    if-eqz v0, :cond_f

    .line 82
    iget-object v0, p0, Lcom/umeng/analytics/filter/d;->d:Ljava/util/Set;

    invoke-direct {p0, p1}, Lcom/umeng/analytics/filter/d;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 84
    :cond_f
    iget-object v0, p0, Lcom/umeng/analytics/filter/d;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    .line 89
    iget-boolean v0, p0, Lcom/umeng/analytics/filter/d;->e:Z

    if-eqz v0, :cond_e

    .line 90
    iget-object v0, p0, Lcom/umeng/analytics/filter/d;->d:Ljava/util/Set;

    invoke-direct {p0, p1}, Lcom/umeng/analytics/filter/d;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 92
    :cond_e
    iget-object v0, p0, Lcom/umeng/analytics/filter/d;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    :goto_13
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .line 110
    iget-boolean v0, p0, Lcom/umeng/analytics/filter/d;->e:Z

    if-eqz v0, :cond_58

    .line 111
    iget-object v0, p0, Lcom/umeng/analytics/filter/d;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    .line 112
    nop

    .line 113
    iget-object v1, p0, Lcom/umeng/analytics/filter/d;->d:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 114
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 115
    add-int/lit8 v5, v3, 0x1

    const/high16 v6, -0x1000000

    and-int/2addr v6, v4

    shr-int/lit8 v6, v6, 0x18

    int-to-byte v6, v6

    aput-byte v6, v0, v3

    .line 116
    add-int/lit8 v3, v5, 0x1

    const/high16 v6, 0xff0000

    and-int/2addr v6, v4

    shr-int/lit8 v6, v6, 0x10

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 117
    add-int/lit8 v5, v3, 0x1

    const v6, 0xff00

    and-int/2addr v6, v4

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v0, v3

    .line 118
    add-int/lit8 v3, v5, 0x1

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v5

    .line 119
    goto :goto_17

    .line 120
    :cond_4e
    new-instance v1, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1

    .line 122
    :cond_58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    iget-object v1, p0, Lcom/umeng/analytics/filter/d;->d:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_63
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_80

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_78

    .line 125
    const-string v3, "\u0102"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    :cond_78
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    goto :goto_63

    .line 129
    :cond_80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
