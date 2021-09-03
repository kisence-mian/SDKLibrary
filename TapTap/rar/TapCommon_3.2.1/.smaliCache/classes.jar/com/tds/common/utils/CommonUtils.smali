.class public Lcom/tds/common/utils/CommonUtils;
.super Ljava/lang/Object;
.source "CommonUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentLocale()Ljava/util/Locale;
    .registers 2

    .line 34
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_10

    .line 35
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    .local v0, "locale":Ljava/util/Locale;
    goto :goto_14

    .line 37
    .end local v0    # "locale":Ljava/util/Locale;
    :cond_10
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 40
    .restart local v0    # "locale":Ljava/util/Locale;
    :goto_14
    return-object v0
.end method

.method private static getHashString(Ljava/security/MessageDigest;)Ljava/lang/String;
    .registers 7
    .param p0, "digest"    # Ljava/security/MessageDigest;

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_26

    aget-byte v4, v1, v3

    .line 26
    .local v4, "b":B
    shr-int/lit8 v5, v4, 0x4

    and-int/lit8 v5, v5, 0xf

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    and-int/lit8 v5, v4, 0xf

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 29
    :cond_26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getMD5([B)Ljava/lang/String;
    .registers 3
    .param p0, "bytes"    # [B

    .line 14
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 15
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 16
    invoke-static {v0}, Lcom/tds/common/utils/CommonUtils;->getHashString(Ljava/security/MessageDigest;)Ljava/lang/String;

    move-result-object v1
    :try_end_d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v1

    .line 17
    .end local v0    # "digest":Ljava/security/MessageDigest;
    :catch_e
    move-exception v0

    .line 18
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 20
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    const-string v0, ""

    return-object v0
.end method
