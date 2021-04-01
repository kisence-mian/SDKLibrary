.class public final Lcom/sigmob/sdk/base/common/utils/p;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:I = 0x400


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/sigmob/sdk/base/common/utils/p;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/common/utils/p;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/File;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x800

    new-array v1, v1, [B

    :try_start_e
    const-string v2, "md5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_13} :catch_7d
    .catchall {:try_start_e .. :try_end_13} :catchall_5e

    move-result-object v3

    :try_start_14
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_19} :catch_81
    .catchall {:try_start_14 .. :try_end_19} :catchall_77

    :goto_19
    const/4 v4, 0x0

    const/16 v5, 0x400

    :try_start_1c
    invoke-virtual {v2, v1, v4, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3c

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5, v4}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_27} :catch_28
    .catchall {:try_start_1c .. :try_end_27} :catchall_7b

    goto :goto_19

    :catch_28
    move-exception v1

    :goto_29
    :try_start_29
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_7b

    if-eqz v3, :cond_31

    :try_start_2e
    invoke-virtual {v3}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_31} :catch_59

    :cond_31
    :goto_31
    if-eqz v2, :cond_3

    :try_start_33
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_36} :catch_37

    goto :goto_3

    :catch_37
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :cond_3c
    if-eqz v3, :cond_41

    :try_start_3e
    invoke-virtual {v3}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_41} :catch_4f

    :cond_41
    :goto_41
    if-eqz v2, :cond_46

    :try_start_43
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_46} :catch_54

    :cond_46
    :goto_46
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/utils/p;->a([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :catch_4f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_41

    :catch_54
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_46

    :catch_59
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_31

    :catchall_5e
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    :goto_62
    if-eqz v3, :cond_67

    :try_start_64
    invoke-virtual {v3}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_67} :catch_6d

    :cond_67
    :goto_67
    if-eqz v2, :cond_6c

    :try_start_69
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_6c} :catch_72

    :cond_6c
    :goto_6c
    throw v0

    :catch_6d
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_67

    :catch_72
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6c

    :catchall_77
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_62

    :catchall_7b
    move-exception v0

    goto :goto_62

    :catch_7d
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    goto :goto_29

    :catch_81
    move-exception v1

    move-object v2, v0

    goto :goto_29
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    const/16 v2, 0x10

    new-array v3, v2, [C

    fill-array-data v3, :array_4c

    :try_start_c
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string v4, "md5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    array-length v2, v4

    mul-int/lit8 v2, v2, 0x2

    new-array v5, v2, [C

    array-length v6, v4

    move v2, v1

    :goto_26
    if-ge v1, v6, :cond_3f

    aget-byte v7, v4, v1

    add-int/lit8 v8, v2, 0x1

    ushr-int/lit8 v9, v7, 0x4

    and-int/lit8 v9, v9, 0xf

    aget-char v9, v3, v9

    aput-char v9, v5, v2

    add-int/lit8 v2, v8, 0x1

    and-int/lit8 v7, v7, 0xf

    aget-char v7, v3, v7

    aput-char v7, v5, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    :cond_3f
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>([C)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_44} :catch_46

    move-object v0, v1

    goto :goto_4

    :catch_46
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    nop

    :array_4c
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

.method private static a([B)Ljava/lang/String;
    .registers 8

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_d

    array-length v0, p0

    if-gtz v0, :cond_f

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return-object v0

    :cond_f
    array-length v3, p0

    move v0, v1

    :goto_11
    if-ge v0, v3, :cond_2b

    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_25

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_25
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_2b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_e

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_f

    :cond_e
    :goto_e
    return-object v0

    :cond_f
    :try_start_f
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_14} :catch_4a
    .catchall {:try_start_f .. :try_end_14} :catchall_65

    :try_start_14
    const-string v1, "md5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    new-instance v2, Ljava/security/DigestInputStream;

    invoke-direct {v2, v3, v1}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_1f} :catch_84
    .catchall {:try_start_14 .. :try_end_1f} :catchall_7e

    const/16 v1, 0x400

    :try_start_21
    new-array v1, v1, [B

    :cond_23
    invoke-virtual {v2, v1}, Ljava/security/DigestInputStream;->read([B)I

    move-result v4

    if-gtz v4, :cond_23

    invoke-virtual {v2}, Ljava/security/DigestInputStream;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/utils/p;->a([B)Ljava/lang/String;
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_34} :catch_87
    .catchall {:try_start_21 .. :try_end_34} :catchall_82

    move-result-object v0

    if-eqz v3, :cond_3a

    :try_start_37
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_3a} :catch_45

    :cond_3a
    :goto_3a
    if-eqz v2, :cond_e

    :try_start_3c
    invoke-virtual {v2}, Ljava/security/DigestInputStream;->close()V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3f} :catch_40

    goto :goto_e

    :catch_40
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_e

    :catch_45
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3a

    :catch_4a
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    :goto_4d
    :try_start_4d
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_82

    if-eqz v3, :cond_55

    :try_start_52
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_55} :catch_60

    :cond_55
    :goto_55
    if-eqz v2, :cond_e

    :try_start_57
    invoke-virtual {v2}, Ljava/security/DigestInputStream;->close()V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_5a} :catch_5b

    goto :goto_e

    :catch_5b
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_e

    :catch_60
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_55

    :catchall_65
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    :goto_69
    if-eqz v3, :cond_6e

    :try_start_6b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_6b .. :try_end_6e} :catch_74

    :cond_6e
    :goto_6e
    if-eqz v2, :cond_73

    :try_start_70
    invoke-virtual {v2}, Ljava/security/DigestInputStream;->close()V
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_73} :catch_79

    :cond_73
    :goto_73
    throw v0

    :catch_74
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6e

    :catch_79
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_73

    :catchall_7e
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_69

    :catchall_82
    move-exception v0

    goto :goto_69

    :catch_84
    move-exception v1

    move-object v2, v0

    goto :goto_4d

    :catch_87
    move-exception v1

    goto :goto_4d
.end method
