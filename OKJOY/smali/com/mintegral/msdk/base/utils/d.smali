.class public Lcom/mintegral/msdk/base/utils/d;
.super Ljava/lang/Object;
.source "CommonFileMD5.java"


# static fields
.field protected static a:[C

.field protected static b:Ljava/security/MessageDigest;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 12
    const-string v0, "CommonFileMD5"

    sput-object v0, Lcom/mintegral/msdk/base/utils/d;->c:Ljava/lang/String;

    .line 13
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_3c

    sput-object v0, Lcom/mintegral/msdk/base/utils/d;->a:[C

    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/mintegral/msdk/base/utils/d;->b:Ljava/security/MessageDigest;

    .line 18
    :try_start_10
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/base/utils/d;->b:Ljava/security/MessageDigest;
    :try_end_18
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_10 .. :try_end_18} :catch_19

    .line 24
    :goto_18
    return-void

    .line 19
    :catch_19
    move-exception v0

    .line 20
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/mintegral/msdk/base/utils/d;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u521d\u59cb\u5316\u5931\u8d25\uff0cMessageDigest\u4e0d\u652f\u6301MD5Util."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_18

    .line 13
    :array_3c
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
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/File;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    const/4 v1, 0x0

    .line 50
    :try_start_1
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_2a

    .line 51
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 52
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    .line 53
    sget-object v1, Lcom/mintegral/msdk/base/utils/d;->b:Ljava/security/MessageDigest;

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    .line 54
    sget-object v0, Lcom/mintegral/msdk/base/utils/d;->b:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 1061
    array-length v1, v0

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/d;->a([BI)Ljava/lang/String;
    :try_end_25
    .catchall {:try_start_6 .. :try_end_25} :catchall_2f

    move-result-object v0

    .line 56
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 54
    return-object v0

    .line 56
    :catchall_2a
    move-exception v0

    :goto_2b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    throw v0

    :catchall_2f
    move-exception v0

    move-object v1, v6

    goto :goto_2b
.end method

.method private static a([BI)Ljava/lang/String;
    .registers 8

    .prologue
    .line 65
    new-instance v1, Ljava/lang/StringBuffer;

    mul-int/lit8 v0, p1, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 66
    add-int/lit8 v2, p1, 0x0

    .line 67
    const/4 v0, 0x0

    :goto_a
    if-ge v0, v2, :cond_25

    .line 68
    aget-byte v3, p0, v0

    .line 1074
    sget-object v4, Lcom/mintegral/msdk/base/utils/d;->a:[C

    and-int/lit16 v5, v3, 0xf0

    shr-int/lit8 v5, v5, 0x4

    aget-char v4, v4, v5

    .line 1075
    sget-object v5, Lcom/mintegral/msdk/base/utils/d;->a:[C

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v5, v3

    .line 1076
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1077
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 70
    :cond_25
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
