.class public final Lcom/anythink/core/common/g/f;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "MD5"

.field private static b:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 110
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/anythink/core/common/g/f;->b:[C

    return-void

    :array_a
    .array-data 2
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
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 33
    const-string v0, "MD5"

    :try_start_2
    invoke-static {v0, p0}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 36
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 37
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 1064
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1065
    array-length v1, p0

    const/4 v2, 0x0

    :goto_21
    if-ge v2, v1, :cond_3c

    aget-byte v3, p0, v2

    .line 1066
    and-int/lit16 v4, v3, 0xf0

    ushr-int/lit8 v4, v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1067
    and-int/lit8 v3, v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1065
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 1069
    :cond_3c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0
    :try_end_46
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_46} :catch_47

    .line 37
    return-object p0

    .line 39
    :catch_47
    move-exception p0

    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 41
    const-string p0, ""

    return-object p0
.end method

.method private static a([B)Ljava/lang/String;
    .registers 6

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 65
    array-length v1, p0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_25

    aget-byte v3, p0, v2

    .line 66
    and-int/lit16 v4, v3, 0xf0

    ushr-int/lit8 v4, v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    and-int/lit8 v3, v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 69
    :cond_25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 88
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 89
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 90
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 1102
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1103
    const/4 v1, 0x0

    :goto_1a
    array-length v2, p0

    if-ge v1, v2, :cond_38

    .line 1104
    sget-object v2, Lcom/anythink/core/common/g/f;->b:[C

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xf0

    ushr-int/lit8 v3, v3, 0x4

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1105
    sget-object v2, Lcom/anythink/core/common/g/f;->b:[C

    aget-byte v3, p0, v1

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1103
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 1107
    :cond_38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 90
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_40} :catch_41

    return-object p0

    .line 91
    :catch_41
    move-exception p0

    .line 92
    const-string p0, ""

    return-object p0
.end method

.method private static b([B)Ljava/lang/String;
    .registers 6

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 74
    array-length v1, p0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_25

    aget-byte v3, p0, v2

    .line 75
    and-int/lit16 v4, v3, 0xf0

    ushr-int/lit8 v4, v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    and-int/lit8 v3, v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 78
    :cond_25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 52
    const-string v0, "MD5"

    :try_start_2
    invoke-static {v0, p0}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 55
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 56
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 1073
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1074
    array-length v1, p0

    const/4 v2, 0x0

    :goto_21
    if-ge v2, v1, :cond_3c

    aget-byte v3, p0, v2

    .line 1075
    and-int/lit16 v4, v3, 0xf0

    ushr-int/lit8 v4, v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1076
    and-int/lit8 v3, v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1074
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 1078
    :cond_3c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0
    :try_end_46
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_46} :catch_47

    .line 56
    return-object p0

    .line 58
    :catch_47
    move-exception p0

    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 60
    const-string p0, ""

    return-object p0
.end method

.method private static c([B)Ljava/lang/String;
    .registers 5

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 103
    const/4 v1, 0x0

    :goto_9
    array-length v2, p0

    if-ge v1, v2, :cond_27

    .line 104
    sget-object v2, Lcom/anythink/core/common/g/f;->b:[C

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xf0

    ushr-int/lit8 v3, v3, 0x4

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    sget-object v2, Lcom/anythink/core/common/g/f;->b:[C

    aget-byte v3, p0, v1

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 107
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
