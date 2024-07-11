.class public final Lcom/qq/e/comm/net/rr/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/e/comm/net/rr/a$b;,
        Lcom/qq/e/comm/net/rr/a$a;
    }
.end annotation


# static fields
.field private static final a:[B

.field private static b:Ljavax/crypto/Cipher;

.field private static c:Ljavax/crypto/Cipher;

.field private static d:Ljava/lang/String;

.field private static e:[B


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_26

    sput-object v0, Lcom/qq/e/comm/net/rr/a;->a:[B

    const/4 v0, 0x0

    sput-object v0, Lcom/qq/e/comm/net/rr/a;->b:Ljavax/crypto/Cipher;

    sput-object v0, Lcom/qq/e/comm/net/rr/a;->c:Ljavax/crypto/Cipher;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ECB"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "AES/%s/PKCS7Padding"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qq/e/comm/net/rr/a;->d:Ljava/lang/String;

    const-string v0, "4M3PpUC4Vu1uMp+Y0Mxd+vfc6v4ggJAINfgTlH74pis="

    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    sput-object v0, Lcom/qq/e/comm/net/rr/a;->e:[B

    return-void

    :array_26
    .array-data 1
        0x5bt
        -0x3et
    .end array-data
.end method

.method private static declared-synchronized a()Ljavax/crypto/Cipher;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qq/e/comm/net/rr/a$a;
        }
    .end annotation

    const-class v0, Lcom/qq/e/comm/net/rr/a;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/qq/e/comm/net/rr/a;->b:Ljavax/crypto/Cipher;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_29

    if-eqz v1, :cond_9

    monitor-exit v0

    return-object v1

    :cond_9
    :try_start_9
    sget-object v1, Lcom/qq/e/comm/net/rr/a;->d:Ljava/lang/String;

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v3, Lcom/qq/e/comm/net/rr/a;->e:[B

    const-string v4, "AES"

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    sput-object v1, Lcom/qq/e/comm/net/rr/a;->b:Ljavax/crypto/Cipher;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1e} :catch_20
    .catchall {:try_start_9 .. :try_end_1e} :catchall_29

    monitor-exit v0

    return-object v1

    :catch_20
    move-exception v1

    :try_start_21
    new-instance v2, Lcom/qq/e/comm/net/rr/a$a;

    const-string v3, "Fail To Init Cipher"

    invoke-direct {v2, v3, v1}, Lcom/qq/e/comm/net/rr/a$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    :catchall_29
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a([B)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qq/e/comm/net/rr/a$b;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_a
    sget-object v2, Lcom/qq/e/comm/net/rr/a;->a:[B

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-static {p0}, Lcom/qq/e/comm/a;->a([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/qq/e/comm/net/rr/a;->c([B)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_29} :catch_2a

    return-object p0

    :catch_2a
    move-exception p0

    new-instance v0, Lcom/qq/e/comm/net/rr/a$b;

    const-string v1, "Exception while packaging byte array"

    invoke-direct {v0, v1, p0}, Lcom/qq/e/comm/net/rr/a$b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static declared-synchronized b()Ljavax/crypto/Cipher;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qq/e/comm/net/rr/a$a;
        }
    .end annotation

    const-class v0, Lcom/qq/e/comm/net/rr/a;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/qq/e/comm/net/rr/a;->c:Ljavax/crypto/Cipher;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_29

    if-eqz v1, :cond_9

    monitor-exit v0

    return-object v1

    :cond_9
    :try_start_9
    sget-object v1, Lcom/qq/e/comm/net/rr/a;->d:Ljava/lang/String;

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v3, Lcom/qq/e/comm/net/rr/a;->e:[B

    const-string v4, "AES"

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    sput-object v1, Lcom/qq/e/comm/net/rr/a;->c:Ljavax/crypto/Cipher;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1e} :catch_20
    .catchall {:try_start_9 .. :try_end_1e} :catchall_29

    monitor-exit v0

    return-object v1

    :catch_20
    move-exception v1

    :try_start_21
    new-instance v2, Lcom/qq/e/comm/net/rr/a$a;

    const-string v3, "Fail To Init Cipher"

    invoke-direct {v2, v3, v1}, Lcom/qq/e/comm/net/rr/a$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    :catchall_29
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static b([B)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qq/e/comm/net/rr/a$b;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_4f

    array-length v1, p0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_4f

    :try_start_7
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-array v3, v2, [B

    invoke-virtual {v1, v3}, Ljava/io/DataInputStream;->read([B)I

    sget-object v1, Lcom/qq/e/comm/net/rr/a;->a:[B

    const/4 v4, 0x0

    aget-byte v5, v1, v4

    aget-byte v4, v3, v4

    if-ne v5, v4, :cond_3e

    const/4 v4, 0x1

    aget-byte v1, v1, v4

    aget-byte v5, v3, v4

    if-ne v1, v5, :cond_3e

    const/4 v1, 0x2

    aget-byte v5, v3, v1

    if-ne v4, v5, :cond_3e

    const/4 v4, 0x3

    aget-byte v3, v3, v4

    if-ne v1, v3, :cond_3e

    array-length v0, p0

    invoke-static {p0, v2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    invoke-static {p0}, Lcom/qq/e/comm/net/rr/a;->d([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/qq/e/comm/a;->b([B)[B

    move-result-object p0

    return-object p0

    :cond_3e
    new-instance p0, Lcom/qq/e/comm/net/rr/a$b;

    const-string v1, "S2SS Package Magic/Version FormatError"

    invoke-direct {p0, v1, v0}, Lcom/qq/e/comm/net/rr/a$b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_46} :catch_46

    :catch_46
    move-exception p0

    new-instance v0, Lcom/qq/e/comm/net/rr/a$b;

    const-string v1, "Exception while packaging byte array"

    invoke-direct {v0, v1, p0}, Lcom/qq/e/comm/net/rr/a$b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_4f
    new-instance p0, Lcom/qq/e/comm/net/rr/a$b;

    const-string v1, "S2SS Package FormatError"

    invoke-direct {p0, v1, v0}, Lcom/qq/e/comm/net/rr/a$b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method private static c([B)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qq/e/comm/net/rr/a$a;
        }
    .end annotation

    invoke-static {}, Lcom/qq/e/comm/net/rr/a;->a()Ljavax/crypto/Cipher;

    move-result-object v0

    :try_start_4
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    new-instance v0, Lcom/qq/e/comm/net/rr/a$a;

    const-string v1, "Exception While encrypt byte array"

    invoke-direct {v0, v1, p0}, Lcom/qq/e/comm/net/rr/a$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static d([B)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qq/e/comm/net/rr/a$a;
        }
    .end annotation

    invoke-static {}, Lcom/qq/e/comm/net/rr/a;->b()Ljavax/crypto/Cipher;

    move-result-object v0

    :try_start_4
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    new-instance v0, Lcom/qq/e/comm/net/rr/a$a;

    const-string v1, "Exception While dencrypt byte array"

    invoke-direct {v0, v1, p0}, Lcom/qq/e/comm/net/rr/a$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
