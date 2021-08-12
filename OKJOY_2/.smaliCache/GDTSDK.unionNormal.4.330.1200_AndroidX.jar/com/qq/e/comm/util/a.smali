.class public Lcom/qq/e/comm/util/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/e/comm/util/a$a;
    }
.end annotation


# instance fields
.field private a:Ljava/security/PublicKey;

.field private final b:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_3
    const-string v0, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDKta2b5Vw5YkWHCAj4rJCwS227\r/35FZ29e4I6pS2B8zSq2RgBpXUuMg7oZF1Qt3x0iyg8PeyblyNeCRB6gIMehFThe\r1Y7m1FaQyaZp+CJYOTLM4/THKp9UndrEgJ/5a83vP1375YCV2lMvWARrNlBep4RN\rnESUJhQz58Gr/F39TwIDAQAB"

    invoke-static {v0}, Lcom/qq/e/comm/util/a;->b(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/comm/util/a;->a:Ljava/security/PublicKey;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    const/4 v0, 0x1

    goto :goto_f

    :catchall_d
    move-exception v0

    const/4 v0, 0x0

    :goto_f
    iput-boolean v0, p0, Lcom/qq/e/comm/util/a;->b:Z

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Lcom/qq/e/comm/util/a;-><init>()V

    return-void
.end method

.method public static a()Lcom/qq/e/comm/util/a;
    .registers 1

    sget-object v0, Lcom/qq/e/comm/util/a$a;->a:Lcom/qq/e/comm/util/a;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/qq/e/comm/util/a;->a:Ljava/security/PublicKey;

    if-eqz v0, :cond_2b

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    :try_start_9
    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/qq/e/comm/util/a;->a:Ljava/security/PublicKey;

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1
    :try_end_24
    .catchall {:try_start_9 .. :try_end_24} :catchall_25

    return-object p1

    :catchall_25
    move-exception p1

    const-string v0, "ErrorWhileVerifySigNature"

    invoke-static {v0, p1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2b
    const/4 p1, 0x0

    return-object p1
.end method

.method private static b(Ljava/lang/String;)Ljava/security/PublicKey;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_14
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_14} :catch_27
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_14} :catch_1e
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_14} :catch_15

    return-object p0

    :catch_15
    move-exception p0

    new-instance p0, Ljava/lang/Exception;

    const-string v0, "\u516c\u94a5\u6570\u636e\u4e3a\u7a7a"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1e
    move-exception p0

    new-instance p0, Ljava/lang/Exception;

    const-string v0, "\u516c\u94a5\u975e\u6cd5"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_27
    move-exception p0

    new-instance p0, Ljava/lang/Exception;

    const-string v0, "\u65e0\u6b64\u7b97\u6cd5"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    invoke-static {p2}, Lcom/qq/e/comm/util/Md5Util;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/qq/e/comm/util/a;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    invoke-static {p2}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    iget-boolean v0, p0, Lcom/qq/e/comm/util/a;->b:Z

    if-nez v0, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    invoke-direct {p0, p1}, Lcom/qq/e/comm/util/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Verify Result"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "src="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " & target="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    return v0
.end method
