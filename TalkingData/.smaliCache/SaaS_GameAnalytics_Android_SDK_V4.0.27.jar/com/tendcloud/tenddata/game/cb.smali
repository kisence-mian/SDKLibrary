.class final Lcom/tendcloud/tenddata/game/cb;
.super Ljava/lang/Object;
.source "td"


# static fields
.field private static a:Ljavax/crypto/spec/IvParameterSpec; = null

.field private static b:[B = null

.field private static c:Ljavax/crypto/SecretKey; = null

.field private static final d:I = 0x80

.field private static final e:I = 0x2710

.field private static final f:Ljava/lang/String; = "iv"

.field private static final g:Ljava/lang/String; = "salt"

.field private static final h:I = 0x10

.field private static final i:I = 0x20

.field private static final j:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field private static final k:Ljava/lang/String; = "PBKDF2WithHmacSHA1"

.field private static final l:Ljava/lang/String;

.field private static final m:Ljava/lang/String; = "AES"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tendcloud/tenddata/game/cd;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/game/cb;->l:Ljava/lang/String;

    .line 65
    :try_start_19
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 66
    invoke-static {}, Lcom/tendcloud/tenddata/game/cb;->b()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/game/cb;->a([C[B)Ljavax/crypto/SecretKey;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/game/cb;->c:Ljavax/crypto/SecretKey;
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_28

    .line 71
    goto :goto_29

    .line 67
    :catchall_28
    move-exception v0

    .line 72
    :goto_29
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([C[B)Ljavax/crypto/SecretKey;
    .registers 6

    .line 131
    const-string v0, "PBKDF2WithHmacSHA1"

    invoke-static {v0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v0

    .line 132
    new-instance v1, Ljavax/crypto/spec/PBEKeySpec;

    const/16 v2, 0x2710

    const/16 v3, 0x80

    invoke-direct {v1, p0, p1, v2, v3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 133
    invoke-virtual {v0, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p0

    .line 134
    return-object p0
.end method

.method private static a()Ljavax/crypto/spec/IvParameterSpec;
    .registers 3

    .line 80
    const-string v0, "iv"

    sget-object v1, Lcom/tendcloud/tenddata/game/cb;->a:Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v1, :cond_7

    .line 81
    return-object v1

    .line 84
    :cond_7
    :try_start_7
    sget-object v1, Lcom/tendcloud/tenddata/game/az$b;->AES_IV_LOCK:Lcom/tendcloud/tenddata/game/az$b;

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/az$b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/az;->getFileLock(Ljava/lang/String;)V

    .line 85
    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/game/cc;->a(Ljava/lang/String;I)[B

    move-result-object v2

    .line 86
    if-nez v2, :cond_1f

    .line 87
    invoke-static {v1}, Lcom/tendcloud/tenddata/game/cb;->a(I)[B

    move-result-object v2

    .line 88
    invoke-static {v0, v2}, Lcom/tendcloud/tenddata/game/cc;->a(Ljava/lang/String;[B)V

    .line 90
    :cond_1f
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v0, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    sput-object v0, Lcom/tendcloud/tenddata/game/cb;->a:Ljavax/crypto/spec/IvParameterSpec;
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_27

    goto :goto_28

    .line 91
    :catchall_27
    move-exception v0

    .line 97
    :goto_28
    sget-object v0, Lcom/tendcloud/tenddata/game/az$b;->AES_IV_LOCK:Lcom/tendcloud/tenddata/game/az$b;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/az$b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/az;->releaseFileLock(Ljava/lang/String;)V

    .line 98
    nop

    .line 99
    sget-object v0, Lcom/tendcloud/tenddata/game/cb;->a:Ljavax/crypto/spec/IvParameterSpec;

    return-object v0
.end method

.method private static a(I)[B
    .registers 2

    .line 124
    new-array p0, p0, [B

    .line 125
    invoke-static {}, Lcom/tendcloud/tenddata/game/bq;->b()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 126
    return-object p0
.end method

.method static a([B)[B
    .registers 5

    .line 144
    sget-object v0, Lcom/tendcloud/tenddata/game/cb;->c:Ljavax/crypto/SecretKey;

    if-nez v0, :cond_1a

    .line 145
    invoke-static {}, Lcom/tendcloud/tenddata/game/cd;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 146
    invoke-static {}, Lcom/tendcloud/tenddata/game/cb;->b()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/game/cb;->a([C[B)Ljavax/crypto/SecretKey;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/game/cb;->c:Ljavax/crypto/SecretKey;

    .line 148
    :cond_1a
    nop

    .line 151
    const/16 v0, 0x13

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bq;->b(I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 152
    const-string v0, "AES"

    goto :goto_28

    .line 151
    :cond_26
    const-string v0, "AES/CBC/PKCS5Padding"

    .line 155
    :goto_28
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 156
    const/4 v1, 0x1

    sget-object v2, Lcom/tendcloud/tenddata/game/cb;->c:Ljavax/crypto/SecretKey;

    invoke-static {}, Lcom/tendcloud/tenddata/game/cb;->a()Ljavax/crypto/spec/IvParameterSpec;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 157
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method private static b()[B
    .registers 3

    .line 103
    const-string v0, "salt"

    sget-object v1, Lcom/tendcloud/tenddata/game/cb;->b:[B

    if-eqz v1, :cond_7

    .line 104
    return-object v1

    .line 107
    :cond_7
    :try_start_7
    sget-object v1, Lcom/tendcloud/tenddata/game/az$b;->AES_SALT_LOCK:Lcom/tendcloud/tenddata/game/az$b;

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/az$b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/az;->getFileLock(Ljava/lang/String;)V

    .line 108
    const/16 v1, 0x20

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/game/cc;->a(Ljava/lang/String;I)[B

    move-result-object v2

    sput-object v2, Lcom/tendcloud/tenddata/game/cb;->b:[B

    .line 109
    if-eqz v2, :cond_1d

    array-length v2, v2

    if-nez v2, :cond_28

    .line 110
    :cond_1d
    invoke-static {v1}, Lcom/tendcloud/tenddata/game/cb;->a(I)[B

    move-result-object v1

    sput-object v1, Lcom/tendcloud/tenddata/game/cb;->b:[B

    .line 111
    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/game/cc;->a(Ljava/lang/String;[B)V
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_27

    goto :goto_28

    .line 113
    :catchall_27
    move-exception v0

    .line 118
    :cond_28
    :goto_28
    sget-object v0, Lcom/tendcloud/tenddata/game/az$b;->AES_SALT_LOCK:Lcom/tendcloud/tenddata/game/az$b;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/az$b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/az;->releaseFileLock(Ljava/lang/String;)V

    .line 119
    nop

    .line 120
    sget-object v0, Lcom/tendcloud/tenddata/game/cb;->b:[B

    return-object v0
.end method

.method static b([B)[B
    .registers 5

    .line 167
    sget-object v0, Lcom/tendcloud/tenddata/game/cb;->c:Ljavax/crypto/SecretKey;

    if-nez v0, :cond_1a

    .line 168
    invoke-static {}, Lcom/tendcloud/tenddata/game/cd;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 169
    invoke-static {}, Lcom/tendcloud/tenddata/game/cb;->b()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/game/cb;->a([C[B)Ljavax/crypto/SecretKey;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/game/cb;->c:Ljavax/crypto/SecretKey;

    .line 171
    :cond_1a
    nop

    .line 174
    const/16 v0, 0x13

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bq;->b(I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 175
    const-string v0, "AES"

    goto :goto_28

    .line 174
    :cond_26
    const-string v0, "AES/CBC/PKCS5Padding"

    .line 178
    :goto_28
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 179
    const/4 v1, 0x2

    sget-object v2, Lcom/tendcloud/tenddata/game/cb;->c:Ljavax/crypto/SecretKey;

    invoke-static {}, Lcom/tendcloud/tenddata/game/cb;->a()Ljavax/crypto/spec/IvParameterSpec;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 180
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 181
    return-object p0
.end method
