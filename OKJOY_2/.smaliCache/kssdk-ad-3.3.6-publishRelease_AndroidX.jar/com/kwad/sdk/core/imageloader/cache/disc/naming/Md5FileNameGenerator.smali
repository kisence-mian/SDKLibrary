.class public Lcom/kwad/sdk/core/imageloader/cache/disc/naming/Md5FileNameGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/imageloader/cache/disc/naming/FileNameGenerator;


# static fields
.field private static final HASH_ALGORITHM:Ljava/lang/String; = "MD5"

.field private static final RADIX:I = 0x24


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getMD5([B)[B
    .registers 3

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1
    :try_end_d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_13

    :catch_e
    move-exception p1

    invoke-static {p1}, Lcom/kwad/sdk/core/imageloader/utils/L;->e(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_13
    return-object p1
.end method


# virtual methods
.method public generate(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/imageloader/cache/disc/naming/Md5FileNameGenerator;->getMD5([B)[B

    move-result-object p1

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p1

    const/16 v0, 0x24

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
