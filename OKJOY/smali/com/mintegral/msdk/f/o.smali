.class public Lcom/mintegral/msdk/f/o;
.super Ljava/lang/Object;
.source "ProxyCacheUtils.java"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const-class v0, Lcom/mintegral/msdk/f/o;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/f/o;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 25
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    .line 26
    invoke-static {p0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v0, 0x0

    :goto_f
    return-object v0

    :cond_10
    invoke-virtual {v0, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_f
.end method

.method static a(Ljava/io/Closeable;)V
    .registers 4

    .prologue
    .line 63
    if-eqz p0, :cond_5

    .line 65
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 70
    :cond_5
    :goto_5
    return-void

    .line 66
    :catch_6
    move-exception v0

    .line 67
    sget-object v1, Lcom/mintegral/msdk/f/o;->a:Ljava/lang/String;

    const-string v2, "Error closing resource"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method static a([BJ)V
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 31
    const-string v0, "Buffer must be not null!"

    invoke-static {p0, v0}, Lcom/mintegral/msdk/f/l;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-ltz v0, :cond_1e

    move v0, v1

    :goto_e
    const-string v3, "Data offset must be positive!"

    invoke-static {v0, v3}, Lcom/mintegral/msdk/f/l;->a(ZLjava/lang/String;)V

    .line 33
    const/16 v0, 0x2000

    array-length v3, p0

    if-gt v0, v3, :cond_20

    :goto_18
    const-string v0, "Length must be in range [0..buffer.length]"

    invoke-static {v1, v0}, Lcom/mintegral/msdk/f/l;->a(ZLjava/lang/String;)V

    .line 34
    return-void

    :cond_1e
    move v0, v2

    .line 32
    goto :goto_e

    :cond_20
    move v1, v2

    .line 33
    goto :goto_18
.end method

.method static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 48
    :try_start_0
    const-string v0, "utf-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    return-object v0

    .line 49
    :catch_7
    move-exception v0

    .line 50
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error encoding url"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 56
    :try_start_0
    const-string v0, "utf-8"

    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    return-object v0

    .line 57
    :catch_7
    move-exception v0

    .line 58
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error decoding url"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 74
    :try_start_1
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 75
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 1083
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1084
    array-length v3, v1

    :goto_15
    if-ge v0, v3, :cond_2f

    aget-byte v4, v1, v0

    .line 1085
    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1084
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 1087
    :cond_2f
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_32
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_32} :catch_34

    move-result-object v0

    .line 76
    return-object v0

    .line 77
    :catch_34
    move-exception v0

    .line 78
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
