.class public Lcom/appsflyer/AFKeystoreWrapper;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private AFInAppEventParameterName:Landroid/content/Context;

.field public final AFInAppEventType:Ljava/lang/Object;

.field public AFKeystoreWrapper:Ljava/lang/String;

.field public valueOf:Ljava/security/KeyStore;

.field public values:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/AFKeystoreWrapper;->AFInAppEventType:Ljava/lang/Object;

    .line 47
    iput-object p1, p0, Lcom/appsflyer/AFKeystoreWrapper;->AFInAppEventParameterName:Landroid/content/Context;

    .line 48
    const-string p1, ""

    iput-object p1, p0, Lcom/appsflyer/AFKeystoreWrapper;->AFKeystoreWrapper:Ljava/lang/String;

    .line 49
    const/4 p1, 0x0

    iput p1, p0, Lcom/appsflyer/AFKeystoreWrapper;->values:I

    .line 50
    nop

    .line 1054
    const-string p1, "Initialising KeyStore.."

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;)V

    .line 1056
    :try_start_19
    const-string p1, "AndroidKeyStore"

    invoke-static {p1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/AFKeystoreWrapper;->valueOf:Ljava/security/KeyStore;

    .line 1057
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_25} :catch_2c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_19 .. :try_end_25} :catch_2a
    .catch Ljava/security/cert/CertificateException; {:try_start_19 .. :try_end_25} :catch_28
    .catch Ljava/security/KeyStoreException; {:try_start_19 .. :try_end_25} :catch_26

    .line 1060
    return-void

    .line 1058
    :catch_26
    move-exception p1

    goto :goto_2d

    :catch_28
    move-exception p1

    goto :goto_2d

    :catch_2a
    move-exception p1

    goto :goto_2d

    :catch_2c
    move-exception p1

    .line 1059
    :goto_2d
    const-string v0, "Couldn\'t load keystore instance of type: AndroidKeyStore"

    invoke-static {v0, p1}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    return-void
.end method

.method private static AFInAppEventType(Ljava/lang/String;)Z
    .registers 2

    .line 173
    const-string v0, "com.appsflyer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final AFInAppEventParameterName()Z
    .registers 8

    .line 92
    nop

    .line 93
    iget-object v0, p0, Lcom/appsflyer/AFKeystoreWrapper;->AFInAppEventType:Ljava/lang/Object;

    monitor-enter v0

    .line 94
    :try_start_4
    iget-object v1, p0, Lcom/appsflyer/AFKeystoreWrapper;->valueOf:Ljava/security/KeyStore;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_92

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_8f

    .line 96
    :try_start_a
    invoke-virtual {v1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    .line 97
    :goto_e
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_71

    .line 98
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 99
    if-eqz v4, :cond_70

    invoke-static {v4}, Lcom/appsflyer/AFKeystoreWrapper;->AFInAppEventType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_70

    .line 100
    const-string v1, ","

    invoke-virtual {v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 101
    array-length v5, v1

    const/4 v6, 0x3

    if-ne v5, v6, :cond_71

    .line 102
    const-string v5, "Found a matching AF key with alias:\n"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_a .. :try_end_39} :catchall_72

    .line 103
    nop

    .line 104
    :try_start_3a
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 105
    const/4 v4, 0x2

    aget-object v1, v1, v4

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v5, "="

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 106
    array-length v5, v3

    if-ne v5, v4, :cond_6d

    array-length v5, v1

    if-ne v5, v4, :cond_6d

    .line 107
    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/appsflyer/AFKeystoreWrapper;->AFKeystoreWrapper:Ljava/lang/String;

    .line 108
    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/appsflyer/AFKeystoreWrapper;->values:I
    :try_end_6d
    .catchall {:try_start_3a .. :try_end_6d} :catchall_6e

    .line 110
    :cond_6d
    goto :goto_90

    .line 114
    :catchall_6e
    move-exception v1

    goto :goto_74

    .line 113
    :cond_70
    goto :goto_e

    .line 116
    :cond_71
    goto :goto_8f

    .line 114
    :catchall_72
    move-exception v1

    const/4 v2, 0x0

    .line 115
    :goto_74
    :try_start_74
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Couldn\'t list KeyStore Aliases: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_90

    .line 118
    :cond_8f
    :goto_8f
    const/4 v2, 0x0

    :goto_90
    monitor-exit v0
    :try_end_91
    .catchall {:try_start_74 .. :try_end_91} :catchall_92

    .line 119
    return v2

    .line 118
    :catchall_92
    move-exception v1

    monitor-exit v0

    goto :goto_96

    :goto_95
    throw v1

    :goto_96
    goto :goto_95
.end method

.method public final AFInAppEventType()I
    .registers 3

    .line 193
    iget-object v0, p0, Lcom/appsflyer/AFKeystoreWrapper;->AFInAppEventType:Ljava/lang/Object;

    monitor-enter v0

    .line 194
    :try_start_3
    iget v1, p0, Lcom/appsflyer/AFKeystoreWrapper;->values:I

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    return v1

    .line 195
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final AFKeystoreWrapper()Ljava/lang/String;
    .registers 5

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    const-string v1, "com.appsflyer,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    iget-object v1, p0, Lcom/appsflyer/AFKeystoreWrapper;->AFInAppEventType:Ljava/lang/Object;

    monitor-enter v1

    .line 180
    :try_start_d
    const-string v2, "KSAppsFlyerId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appsflyer/AFKeystoreWrapper;->AFKeystoreWrapper:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    const-string v2, "KSAppsFlyerRICounter="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/appsflyer/AFKeystoreWrapper;->values:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_d .. :try_end_2a} :catchall_2f

    .line 183
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 182
    :catchall_2f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final valueOf()Ljava/lang/String;
    .registers 3

    .line 187
    iget-object v0, p0, Lcom/appsflyer/AFKeystoreWrapper;->AFInAppEventType:Ljava/lang/Object;

    monitor-enter v0

    .line 188
    :try_start_3
    iget-object v1, p0, Lcom/appsflyer/AFKeystoreWrapper;->AFKeystoreWrapper:Ljava/lang/String;

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    return-object v1

    .line 189
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final valueOf(Ljava/lang/String;)V
    .registers 8

    .line 123
    const-string v0, "Creating a new key with alias: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;)V

    .line 125
    :try_start_d
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 126
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 127
    const/4 v2, 0x1

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 128
    const/4 v2, 0x0

    .line 129
    iget-object v3, p0, Lcom/appsflyer/AFKeystoreWrapper;->AFInAppEventType:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_b5

    .line 130
    :try_start_1e
    iget-object v4, p0, Lcom/appsflyer/AFKeystoreWrapper;->valueOf:Ljava/security/KeyStore;

    invoke-virtual {v4, p1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a3

    .line 131
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_58

    .line 132
    new-instance v2, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v4, 0x3

    invoke-direct {v2, p1, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    new-instance p1, Ljavax/security/auth/x500/X500Principal;

    const-string v4, "CN=AndroidSDK, O=AppsFlyer"

    invoke-direct {p1, v4}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v2, p1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p1

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 134
    invoke-virtual {p1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateSerialNumber(Ljava/math/BigInteger;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p1

    .line 135
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateNotBefore(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p1

    .line 136
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateNotAfter(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p1

    .line 137
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v2

    goto :goto_94

    .line 138
    :cond_58
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-lt v4, v5, :cond_94

    .line 139
    invoke-static {}, Lcom/appsflyer/internal/ac;->AFKeystoreWrapper()Z

    move-result v4

    if-nez v4, :cond_94

    .line 140
    new-instance v2, Landroid/security/KeyPairGeneratorSpec$Builder;

    iget-object v4, p0, Lcom/appsflyer/AFKeystoreWrapper;->AFInAppEventParameterName:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/security/KeyPairGeneratorSpec$Builder;-><init>(Landroid/content/Context;)V

    .line 141
    invoke-virtual {v2, p1}, Landroid/security/KeyPairGeneratorSpec$Builder;->setAlias(Ljava/lang/String;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p1

    new-instance v2, Ljavax/security/auth/x500/X500Principal;

    const-string v4, "CN=AndroidSDK, O=AppsFlyer"

    invoke-direct {v2, v4}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p1, v2}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p1

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 143
    invoke-virtual {p1, v2}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSerialNumber(Ljava/math/BigInteger;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p1

    .line 144
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/security/KeyPairGeneratorSpec$Builder;->setStartDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p1

    .line 145
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/security/KeyPairGeneratorSpec$Builder;->setEndDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p1

    .line 146
    invoke-virtual {p1}, Landroid/security/KeyPairGeneratorSpec$Builder;->build()Landroid/security/KeyPairGeneratorSpec;

    move-result-object v2

    .line 148
    :cond_94
    :goto_94
    const-string p1, "RSA"

    const-string v0, "AndroidKeyStore"

    invoke-static {p1, v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object p1

    .line 149
    invoke-virtual {p1, v2}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 150
    invoke-virtual {p1}, Ljava/security/KeyPairGeneratorSpi;->generateKeyPair()Ljava/security/KeyPair;

    .line 151
    goto :goto_b0

    .line 152
    :cond_a3
    const-string v0, "Alias already exists: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;)V

    .line 154
    :goto_b0
    monitor-exit v3
    :try_end_b1
    .catchall {:try_start_1e .. :try_end_b1} :catchall_b2

    return-void

    :catchall_b2
    move-exception p1

    :try_start_b3
    monitor-exit v3

    throw p1
    :try_end_b5
    .catchall {:try_start_b3 .. :try_end_b5} :catchall_b5

    .line 155
    :catchall_b5
    move-exception p1

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " occurred"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    return-void
.end method
