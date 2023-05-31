.class public Lcom/tds/achievement/CryptoUtils;
.super Ljava/lang/Object;
.source "CryptoUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/achievement/CryptoUtils$StringUtils;,
        Lcom/tds/achievement/CryptoUtils$EncryptData;
    }
.end annotation


# static fields
.field public static final DEFAULT_SECRETKEY_NAME:Ljava/lang/String; = "default_secretkey_name"

.field public static final STORE_FILE_NAME:Ljava/lang/String; = "crypto"

.field private static final TAG:Ljava/lang/String;

.field private static final log:Lcom/tds/common/log/Logger;


# instance fields
.field private keyStore:Ljava/security/KeyStore;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    const-class v0, Lcom/tds/achievement/CryptoUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tds/achievement/CryptoUtils;->TAG:Ljava/lang/String;

    .line 34
    const-string v0, "achievement_log"

    invoke-static {v0}, Lcom/tds/common/log/Logger;->get(Ljava/lang/String;)Lcom/tds/common/log/Logger;

    move-result-object v0

    sput-object v0, Lcom/tds/achievement/CryptoUtils;->log:Lcom/tds/common/log/Logger;

    return-void
.end method

.method private constructor <init>(Ljava/security/KeyStore;)V
    .registers 2
    .param p1, "keyStore"    # Ljava/security/KeyStore;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/tds/achievement/CryptoUtils;->keyStore:Ljava/security/KeyStore;

    .line 43
    return-void
.end method

.method private static generateKeyGenerator()Ljavax/crypto/KeyGenerator;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 132
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "AES"

    const/16 v2, 0x17

    if-lt v0, v2, :cond_37

    .line 133
    const-string v0, "AndroidKeyStore"

    invoke-static {v1, v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 134
    .local v0, "keyGenerator":Ljavax/crypto/KeyGenerator;
    new-instance v1, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v2, 0x3

    const-string v3, "default_secretkey_name"

    invoke-direct {v1, v3, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const-string v2, "CBC"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 136
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 137
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    const-string v2, "PKCS7Padding"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 138
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    .line 139
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v1

    .line 134
    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_4f

    .line 141
    .end local v0    # "keyGenerator":Ljavax/crypto/KeyGenerator;
    :cond_37
    invoke-static {v1}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 142
    .restart local v0    # "keyGenerator":Ljavax/crypto/KeyGenerator;
    const-string v1, "SHA1PRNG"

    const-string v2, "Crypto"

    invoke-static {v1, v2}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v1

    .line 143
    .local v1, "secureRandom":Ljava/security/SecureRandom;
    invoke-static {}, Lcom/tds/achievement/CryptoUtils;->generateSeed()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 144
    const/16 v2, 0x80

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 147
    .end local v1    # "secureRandom":Ljava/security/SecureRandom;
    :goto_4f
    return-object v0
.end method

.method private static generateSeed()[B
    .registers 4

    .line 152
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 153
    .local v0, "seedBuffer":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 155
    .local v1, "seedBufferOut":Ljava/io/DataOutputStream;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 156
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 157
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 158
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 159
    sget-object v2, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 160
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_33} :catch_34

    return-object v2

    .line 161
    .end local v0    # "seedBuffer":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "seedBufferOut":Ljava/io/DataOutputStream;
    :catch_34
    move-exception v0

    .line 162
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Failed to generate seed"

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/tds/achievement/CryptoUtils;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/tds/achievement/CryptoUtils;

    monitor-enter v0

    .line 47
    :try_start_3
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "crypto"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_27

    .line 51
    .local v1, "file":Ljava/io/File;
    :try_start_e
    invoke-static {v1}, Lcom/tds/achievement/CryptoUtils;->getKeyStore(Ljava/io/File;)Ljava/security/KeyStore;

    move-result-object v2

    .line 53
    .local v2, "keyStore":Ljava/security/KeyStore;
    invoke-static {v2, v1}, Lcom/tds/achievement/CryptoUtils;->initKey(Ljava/security/KeyStore;Ljava/io/File;)V

    .line 55
    new-instance v3, Lcom/tds/achievement/CryptoUtils;

    invoke-direct {v3, v2}, Lcom/tds/achievement/CryptoUtils;-><init>(Ljava/security/KeyStore;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1a} :catch_1c
    .catchall {:try_start_e .. :try_end_1a} :catchall_27

    .line 56
    .local v3, "crypto":Lcom/tds/achievement/CryptoUtils;
    monitor-exit v0

    return-object v3

    .line 57
    .end local v2    # "keyStore":Ljava/security/KeyStore;
    .end local v3    # "crypto":Lcom/tds/achievement/CryptoUtils;
    :catch_1c
    move-exception v2

    .line 58
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1d
    sget-object v3, Lcom/tds/achievement/CryptoUtils;->log:Lcom/tds/common/log/Logger;

    sget-object v4, Lcom/tds/achievement/CryptoUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/tds/common/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_27

    .line 59
    const/4 v3, 0x0

    monitor-exit v0

    return-object v3

    .line 46
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local p0    # "context":Landroid/content/Context;
    :catchall_27
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static getKeyStore(Ljava/io/File;)Ljava/security/KeyStore;
    .registers 7
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 94
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-lt v0, v2, :cond_11

    .line 95
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 96
    .local v0, "keyStore":Ljava/security/KeyStore;
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 97
    return-object v0

    .line 99
    .end local v0    # "keyStore":Ljava/security/KeyStore;
    :cond_11
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 101
    .restart local v0    # "keyStore":Ljava/security/KeyStore;
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_31

    .line 102
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result v2

    .line 104
    .local v2, "isSuccess":Z
    if-eqz v2, :cond_29

    .line 108
    invoke-virtual {v0, v1, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 109
    .end local v2    # "isSuccess":Z
    goto :goto_5e

    .line 105
    .restart local v2    # "isSuccess":Z
    :cond_29
    new-instance v1, Ljava/lang/SecurityException;

    const-string v3, "\u521b\u5efa\u5185\u90e8\u5b58\u50a8\u6587\u4ef6\u5931\u8d25"

    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 109
    .end local v2    # "isSuccess":Z
    :cond_31
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_3f

    .line 110
    invoke-virtual {v0, v1, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    goto :goto_5e

    .line 112
    :cond_3f
    const/4 v2, 0x0

    .line 114
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_40
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v3

    .line 115
    invoke-virtual {v0, v2, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 116
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_4c} :catch_53
    .catchall {:try_start_40 .. :try_end_4c} :catchall_51

    .line 120
    nop

    .line 121
    :goto_4d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_5e

    .line 120
    :catchall_51
    move-exception v1

    goto :goto_5f

    .line 117
    :catch_53
    move-exception v1

    .line 118
    .local v1, "e":Ljava/lang/Exception;
    :try_start_54
    sget-object v3, Lcom/tds/achievement/CryptoUtils;->log:Lcom/tds/common/log/Logger;

    sget-object v4, Lcom/tds/achievement/CryptoUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Lcom/tds/common/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5b
    .catchall {:try_start_54 .. :try_end_5b} :catchall_51

    .line 120
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_5e

    .line 121
    goto :goto_4d

    .line 125
    .end local v2    # "fis":Ljava/io/FileInputStream;
    :cond_5e
    :goto_5e
    return-object v0

    .line 120
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :goto_5f
    if-eqz v2, :cond_64

    .line 121
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 123
    :cond_64
    throw v1
.end method

.method private static getSecretKey(Ljava/security/KeyStore;)Ljavax/crypto/SecretKey;
    .registers 5
    .param p0, "keyStore"    # Ljava/security/KeyStore;

    .line 211
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "default_secretkey_name"

    invoke-virtual {p0, v1, v0}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v1

    check-cast v1, Ljavax/crypto/SecretKey;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_a

    return-object v1

    .line 212
    :catch_a
    move-exception v1

    .line 213
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/tds/achievement/CryptoUtils;->log:Lcom/tds/common/log/Logger;

    sget-object v3, Lcom/tds/achievement/CryptoUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/tds/common/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 214
    return-object v0
.end method

.method private static initKey(Ljava/security/KeyStore;Ljava/io/File;)V
    .registers 4
    .param p0, "keyStore"    # Ljava/security/KeyStore;
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 65
    const-string v0, "default_secretkey_name"

    invoke-virtual {p0, v0}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 66
    invoke-static {}, Lcom/tds/achievement/CryptoUtils;->generateKeyGenerator()Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 67
    .local v0, "keyGenerator":Ljavax/crypto/KeyGenerator;
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 69
    .local v1, "secretKey":Ljavax/crypto/SecretKey;
    invoke-static {p0, p1, v1}, Lcom/tds/achievement/CryptoUtils;->storeKey(Ljava/security/KeyStore;Ljava/io/File;Ljavax/crypto/SecretKey;)V

    .line 71
    .end local v0    # "keyGenerator":Ljavax/crypto/KeyGenerator;
    .end local v1    # "secretKey":Ljavax/crypto/SecretKey;
    :cond_13
    return-void
.end method

.method private static storeKey(Ljava/security/KeyStore;Ljava/io/File;Ljavax/crypto/SecretKey;)V
    .registers 7
    .param p0, "keyStore"    # Ljava/security/KeyStore;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "secretKey"    # Ljavax/crypto/SecretKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 74
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "default_secretkey_name"

    const/4 v2, 0x0

    const/16 v3, 0x17

    if-lt v0, v3, :cond_d

    .line 75
    invoke-virtual {p0, v1, p2, v2, v2}, Ljava/security/KeyStore;->setKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    goto :goto_2f

    .line 77
    :cond_d
    invoke-virtual {p0, v1, p2, v2, v2}, Ljava/security/KeyStore;->setKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    .line 78
    const/4 v0, 0x0

    .line 80
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_11
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v0, v1

    .line 81
    invoke-virtual {p0, v0, v2}, Ljava/security/KeyStore;->store(Ljava/io/OutputStream;[C)V

    .line 82
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1d} :catch_24
    .catchall {:try_start_11 .. :try_end_1d} :catchall_22

    .line 86
    nop

    .line 87
    :goto_1e
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    goto :goto_2f

    .line 86
    :catchall_22
    move-exception v1

    goto :goto_30

    .line 83
    :catch_24
    move-exception v1

    .line 84
    .local v1, "e":Ljava/lang/Exception;
    :try_start_25
    sget-object v2, Lcom/tds/achievement/CryptoUtils;->log:Lcom/tds/common/log/Logger;

    sget-object v3, Lcom/tds/achievement/CryptoUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/tds/common/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_22

    .line 86
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_2f

    .line 87
    goto :goto_1e

    .line 91
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    :cond_2f
    :goto_2f
    return-void

    .line 86
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    :goto_30
    if-eqz v0, :cond_35

    .line 87
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 89
    :cond_35
    throw v1
.end method


# virtual methods
.method public aesDecrypt(Lcom/tds/achievement/CryptoUtils$EncryptData;)Ljava/lang/String;
    .registers 14
    .param p1, "encryptData"    # Lcom/tds/achievement/CryptoUtils$EncryptData;

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 193
    .local v0, "start":J
    sget-object v2, Lcom/tds/achievement/CryptoUtils;->log:Lcom/tds/common/log/Logger;

    sget-object v3, Lcom/tds/achievement/CryptoUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Decrypt start:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/tds/common/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :try_start_1e
    iget-object v4, p0, Lcom/tds/achievement/CryptoUtils;->keyStore:Ljava/security/KeyStore;

    invoke-static {v4}, Lcom/tds/achievement/CryptoUtils;->getSecretKey(Ljava/security/KeyStore;)Ljavax/crypto/SecretKey;

    move-result-object v4

    .line 196
    .local v4, "secretKey":Ljavax/crypto/SecretKey;
    const-string v5, "AES/CBC/PKCS7Padding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 197
    .local v5, "cipher":Ljavax/crypto/Cipher;
    new-instance v6, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p1}, Lcom/tds/achievement/CryptoUtils$EncryptData;->getIv()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v7, 0x2

    invoke-virtual {v5, v7, v4, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 198
    invoke-virtual {p1}, Lcom/tds/achievement/CryptoUtils$EncryptData;->getEncryptString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    .line 200
    .local v6, "bytes":[B
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 201
    .local v7, "end":J
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Decrypt end:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v7, v0

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v3, v9}, Lcom/tds/common/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-static {v6}, Lcom/tds/achievement/CryptoUtils$StringUtils;->bytes2StringWithUTF8([B)Ljava/lang/String;

    move-result-object v2
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_6d} :catch_6e

    return-object v2

    .line 203
    .end local v4    # "secretKey":Ljavax/crypto/SecretKey;
    .end local v5    # "cipher":Ljavax/crypto/Cipher;
    .end local v6    # "bytes":[B
    .end local v7    # "end":J
    :catch_6e
    move-exception v2

    .line 204
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/tds/achievement/CryptoUtils;->log:Lcom/tds/common/log/Logger;

    sget-object v4, Lcom/tds/achievement/CryptoUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/tds/common/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 205
    const/4 v3, 0x0

    return-object v3
.end method

.method public aesEncrypt(Ljava/lang/String;Ljava/lang/String;)Lcom/tds/achievement/CryptoUtils$EncryptData;
    .registers 18
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 171
    .local v1, "start":J
    sget-object v0, Lcom/tds/achievement/CryptoUtils;->log:Lcom/tds/common/log/Logger;

    sget-object v3, Lcom/tds/achievement/CryptoUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Encrypt start:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/tds/common/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    move-object v4, p0

    :try_start_1f
    iget-object v5, v4, Lcom/tds/achievement/CryptoUtils;->keyStore:Ljava/security/KeyStore;

    invoke-static {v5}, Lcom/tds/achievement/CryptoUtils;->getSecretKey(Ljava/security/KeyStore;)Ljavax/crypto/SecretKey;

    move-result-object v5

    .line 174
    .local v5, "secretKey":Ljavax/crypto/SecretKey;
    const-string v6, "AES/CBC/PKCS7Padding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6

    .line 175
    .local v6, "cipher":Ljavax/crypto/Cipher;
    const/4 v7, 0x1

    invoke-virtual {v6, v7, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 176
    invoke-static/range {p2 .. p2}, Lcom/tds/achievement/CryptoUtils$StringUtils;->string2BytesWithUTF8(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v7

    .line 177
    .local v7, "bytes":[B
    invoke-virtual {v6}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v8

    .line 178
    .local v8, "iv":[B
    const/4 v9, 0x2

    invoke-static {v7, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v9

    .line 179
    .local v9, "encryptString":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 180
    .local v10, "end":J
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Encrypt end:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "|"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sub-long v13, v10, v1

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v3, v12}, Lcom/tds/common/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    new-instance v0, Lcom/tds/achievement/CryptoUtils$EncryptData;
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_68} :catch_70

    move-object/from16 v3, p1

    :try_start_6a
    invoke-direct {v0, v3, v9, v8}, Lcom/tds/achievement/CryptoUtils$EncryptData;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6d} :catch_6e

    return-object v0

    .line 182
    .end local v5    # "secretKey":Ljavax/crypto/SecretKey;
    .end local v6    # "cipher":Ljavax/crypto/Cipher;
    .end local v7    # "bytes":[B
    .end local v8    # "iv":[B
    .end local v9    # "encryptString":Ljava/lang/String;
    .end local v10    # "end":J
    :catch_6e
    move-exception v0

    goto :goto_73

    :catch_70
    move-exception v0

    move-object/from16 v3, p1

    .line 183
    .local v0, "e":Ljava/lang/Exception;
    :goto_73
    sget-object v5, Lcom/tds/achievement/CryptoUtils;->log:Lcom/tds/common/log/Logger;

    sget-object v6, Lcom/tds/achievement/CryptoUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Lcom/tds/common/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 184
    const/4 v5, 0x0

    return-object v5
.end method
