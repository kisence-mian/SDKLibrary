.class public Lcom/JoyFramework/d/bn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static final b:[B


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 12
    const-string v0, "SecurityUtils"

    sput-object v0, Lcom/JoyFramework/d/bn;->a:Ljava/lang/String;

    .line 17
    const-string v0, "DLFIVJDG845234"

    invoke-static {v0}, Lcom/JoyFramework/d/bn;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/JoyFramework/d/bn;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/JoyFramework/d/bn;->b:[B

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 26
    const/4 v0, 0x0

    .line 29
    :try_start_1
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 33
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V
    :try_end_13
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_13} :catch_43
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_13} :catch_50

    .line 41
    :goto_13
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 43
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 45
    const/4 v0, 0x0

    :goto_1d
    array-length v3, v1

    if-ge v0, v3, :cond_61

    .line 46
    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_55

    .line 47
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    aget-byte v4, v1, v0

    and-int/lit16 v4, v4, 0xff

    .line 48
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    :goto_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 34
    :catch_43
    move-exception v1

    .line 35
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "NoSuchAlgorithmException caught!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 36
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_13

    .line 37
    :catch_50
    move-exception v1

    .line 38
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_13

    .line 50
    :cond_55
    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_40

    .line 54
    :cond_61
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 61
    const/4 v0, 0x0

    .line 64
    :try_start_1
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 68
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V
    :try_end_13
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_13} :catch_43
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_13} :catch_50

    .line 76
    :goto_13
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 78
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 80
    const/4 v0, 0x0

    :goto_1d
    array-length v3, v1

    if-ge v0, v3, :cond_61

    .line 81
    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_55

    .line 82
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    aget-byte v4, v1, v0

    and-int/lit16 v4, v4, 0xff

    .line 83
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 82
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    :goto_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 69
    :catch_43
    move-exception v1

    .line 70
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "NoSuchAlgorithmException caught!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 71
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_13

    .line 72
    :catch_50
    move-exception v1

    .line 73
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_13

    .line 85
    :cond_55
    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_40

    .line 88
    :cond_61
    const/16 v0, 0x8

    const/16 v1, 0x18

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 99
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 100
    const-string v0, ""

    .line 111
    :goto_8
    return-object v0

    .line 102
    :cond_9
    invoke-static {p0}, Lcom/JoyFramework/d/ar;->h(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    .line 104
    if-nez v0, :cond_17

    .line 105
    const-string v0, ""

    goto :goto_8

    .line 107
    :cond_17
    new-instance v1, Lcom/JoyFramework/d/c;

    invoke-direct {v1}, Lcom/JoyFramework/d/c;-><init>()V

    sget-object v2, Lcom/JoyFramework/d/bn;->b:[B

    invoke-virtual {v1, v0, v2}, Lcom/JoyFramework/d/c;->a([B[B)[B

    move-result-object v0

    .line 108
    if-nez v0, :cond_27

    .line 109
    const-string v0, ""

    goto :goto_8

    .line 111
    :cond_27
    invoke-static {v0}, Lcom/JoyFramework/d/ar;->a([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 122
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 123
    const-string v0, ""

    .line 128
    :goto_8
    return-object v0

    .line 125
    :cond_9
    invoke-static {p0}, Lcom/JoyFramework/d/ar;->h(Ljava/lang/String;)[B

    move-result-object v0

    .line 126
    new-instance v1, Lcom/JoyFramework/d/c;

    invoke-direct {v1}, Lcom/JoyFramework/d/c;-><init>()V

    sget-object v2, Lcom/JoyFramework/d/bn;->b:[B

    invoke-virtual {v1, v0, v2}, Lcom/JoyFramework/d/c;->b([B[B)[B

    move-result-object v0

    .line 127
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    .line 128
    invoke-static {v0}, Lcom/JoyFramework/d/ar;->a([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method
