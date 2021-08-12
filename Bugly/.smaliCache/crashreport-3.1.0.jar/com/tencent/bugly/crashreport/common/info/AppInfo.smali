.class public Lcom/tencent/bugly/crashreport/common/info/AppInfo;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field private static a:Landroid/app/ActivityManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 58
    const-string v0, "@buglyAllChannel@"

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 59
    const-string v0, "@buglyAllChannelPriority@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .registers 8

    .line 139
    nop

    .line 141
    const/4 v0, 0x0

    :try_start_2
    new-instance v1, Ljava/io/FileReader;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/proc/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/cmdline"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_2 .. :try_end_1c} :catchall_40

    .line 142
    const/16 v0, 0x200

    :try_start_1e
    new-array v2, v0, [C

    .line 143
    invoke-virtual {v1, v2}, Ljava/io/FileReader;->read([C)I

    .line 144
    const/4 v3, 0x0

    move v4, v3

    :goto_25
    if-ge v4, v0, :cond_2e

    .line 146
    aget-char v5, v2, v4

    if-eqz v5, :cond_2e

    .line 147
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 150
    :cond_2e
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    .line 151
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_37
    .catchall {:try_start_1e .. :try_end_37} :catchall_3e

    .line 152
    nop

    .line 160
    :try_start_38
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    .line 165
    goto :goto_3d

    .line 163
    :catchall_3c
    move-exception v0

    .line 165
    :goto_3d
    return-object p0

    .line 153
    :catchall_3e
    move-exception v0

    goto :goto_44

    :catchall_40
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 154
    :goto_44
    :try_start_44
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_4d

    .line 155
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 157
    :cond_4d
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0
    :try_end_51
    .catchall {:try_start_44 .. :try_end_51} :catchall_5b

    .line 160
    if-eqz v1, :cond_59

    .line 161
    :try_start_53
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_57

    goto :goto_59

    .line 163
    :catchall_57
    move-exception v0

    goto :goto_5a

    .line 165
    :cond_59
    :goto_59
    nop

    :goto_5a
    return-object p0

    .line 159
    :catchall_5b
    move-exception p0

    .line 160
    if-eqz v1, :cond_64

    .line 161
    :try_start_5e
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_62

    goto :goto_64

    .line 163
    :catchall_62
    move-exception v0

    goto :goto_65

    .line 165
    :cond_64
    :goto_64
    nop

    :goto_65
    throw p0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 70
    if-nez p0, :cond_4

    .line 71
    const/4 p0, 0x0

    return-object p0

    .line 74
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_9

    return-object p0

    .line 75
    :catchall_9
    move-exception p0

    .line 76
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 77
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 80
    :cond_13
    const-string p0, "fail"

    return-object p0
.end method

.method private static a([B)Ljava/lang/String;
    .registers 7

    .line 289
    const-string v0, "\n"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    const-string v2, "unknown"

    if-eqz p0, :cond_f9

    array-length v3, p0

    if-lez v3, :cond_f9

    .line 292
    :try_start_e
    const-string v3, "X.509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    .line 293
    const/4 v4, 0x0

    if-nez v3, :cond_18

    .line 294
    return-object v4

    .line 296
    :cond_18
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v3, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    .line 298
    if-nez p0, :cond_26

    .line 299
    return-object v4

    .line 302
    :cond_26
    const-string v3, "Issuer|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v3

    .line 304
    if-eqz v3, :cond_39

    .line 305
    invoke-interface {v3}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3c

    .line 307
    :cond_39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    :goto_3c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    const-string v4, "SerialNumber|"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v4

    .line 313
    if-eqz v3, :cond_54

    .line 314
    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_57

    .line 316
    :cond_54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    :goto_57
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    const-string v4, "NotBefore|"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v4

    .line 322
    if-eqz v3, :cond_6d

    .line 323
    invoke-virtual {v4}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_70

    .line 325
    :cond_6d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    :goto_70
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    const-string v4, "NotAfter|"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v4

    .line 331
    if-eqz v3, :cond_86

    .line 332
    invoke-virtual {v4}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_89

    .line 334
    :cond_86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    :goto_89
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    const-string v3, "SHA1|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    const-string v3, "SHA1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 340
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/bugly/proguard/z;->a([B)Ljava/lang/String;

    move-result-object v3

    .line 341
    if-eqz v3, :cond_b3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_b3

    .line 342
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b6

    .line 344
    :cond_b3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    :goto_b6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    const-string v0, "MD5|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 350
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/bugly/proguard/z;->a([B)Ljava/lang/String;

    move-result-object p0

    .line 351
    if-eqz p0, :cond_e0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_e0

    .line 352
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f9

    .line 354
    :cond_e0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_e3
    .catch Ljava/security/cert/CertificateException; {:try_start_e .. :try_end_e3} :catch_ef
    .catchall {:try_start_e .. :try_end_e3} :catchall_e4

    goto :goto_f9

    .line 360
    :catchall_e4
    move-exception p0

    .line 361
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_f9

    .line 362
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_f9

    .line 356
    :catch_ef
    move-exception p0

    .line 357
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_f9

    .line 358
    invoke-virtual {p0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    .line 366
    :cond_f9
    :goto_f9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-nez p0, :cond_100

    .line 367
    return-object v2

    .line 369
    :cond_100
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/Map;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 261
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 262
    return-object v0

    .line 265
    :cond_4
    :try_start_4
    const-string v1, "BUGLY_DISABLE"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 266
    if-eqz p0, :cond_2f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_15

    goto :goto_2f

    .line 269
    :cond_15
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 270
    const/4 v1, 0x0

    :goto_1c
    array-length v2, p0

    if-ge v1, v2, :cond_2a

    .line 271
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v1

    .line 270
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 273
    :cond_2a
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0
    :try_end_2e
    .catchall {:try_start_4 .. :try_end_2e} :catchall_30

    return-object p0

    .line 267
    :cond_2f
    :goto_2f
    return-object v0

    .line 274
    :catchall_30
    move-exception p0

    .line 275
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 276
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 278
    :cond_3a
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    .line 105
    const/4 v0, 0x0

    if-eqz p0, :cond_3f

    if-eqz p1, :cond_3f

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_10

    goto :goto_3f

    .line 110
    :cond_10
    :try_start_10
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x1000

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 112
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 113
    if-eqz p0, :cond_33

    .line 114
    array-length v1, p0

    move v2, v0

    :goto_24
    if-ge v2, v1, :cond_33

    aget-object v3, p0, v2

    .line 115
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2c
    .catchall {:try_start_10 .. :try_end_2c} :catchall_34

    if-eqz v3, :cond_30

    .line 116
    const/4 p0, 0x1

    return p0

    .line 114
    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 126
    :cond_33
    goto :goto_3e

    .line 121
    :catchall_34
    move-exception p0

    .line 122
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_3e

    .line 123
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 128
    :cond_3e
    :goto_3e
    return v0

    .line 106
    :cond_3f
    :goto_3f
    return v0
.end method

.method public static b(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .registers 3

    .line 91
    :try_start_0
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/AppInfo;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_e

    return-object p0

    .line 93
    :catchall_e
    move-exception p0

    .line 94
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 95
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 97
    :cond_18
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 177
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 178
    return-object v0

    .line 181
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 182
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 183
    if-eqz v1, :cond_1b

    if-eqz p0, :cond_1b

    .line 184
    invoke-virtual {v1, p0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 185
    if-eqz p0, :cond_1b

    .line 186
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_1c

    return-object p0

    .line 193
    :cond_1b
    goto :goto_26

    .line 189
    :catchall_1c
    move-exception p0

    .line 190
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 191
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 194
    :cond_26
    :goto_26
    return-object v0
.end method

.method public static d(Landroid/content/Context;)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 204
    const-string v0, "com.tencent.rdm.uuid"

    const-string v1, "BUGLY_ENABLE_DEBUG"

    const-string v2, "BUGLY_APP_VERSION"

    const-string v3, "BUGLY_APP_CHANNEL"

    const-string v4, "BUGLY_APPID"

    const-string v5, "BUGLY_DISABLE"

    const/4 v6, 0x0

    if-nez p0, :cond_10

    .line 205
    return-object v6

    .line 207
    :cond_10
    nop

    .line 209
    :try_start_11
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 210
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v8, 0x80

    invoke-virtual {v7, p0, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 212
    iget-object v7, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_83

    .line 213
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 215
    iget-object v8, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v8, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 216
    if-eqz v8, :cond_37

    .line 217
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    :cond_37
    iget-object v5, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 221
    if-eqz v5, :cond_46

    .line 222
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    :cond_46
    iget-object v4, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 226
    if-eqz v4, :cond_55

    .line 227
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    :cond_55
    iget-object v3, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 231
    if-eqz v3, :cond_64

    .line 232
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    :cond_64
    iget-object v2, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 236
    if-eqz v2, :cond_73

    .line 237
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    :cond_73
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 241
    if-eqz p0, :cond_82

    .line 242
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_82
    .catchall {:try_start_11 .. :try_end_82} :catchall_84

    .line 245
    :cond_82
    move-object v6, v7

    :cond_83
    return-object v6

    .line 246
    :catchall_84
    move-exception p0

    .line 247
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_8e

    .line 248
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 250
    :cond_8e
    return-object v6
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 378
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/AppInfo;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 379
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 380
    return-object v1

    .line 384
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v2, 0x40

    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_12} :catch_2d

    .line 388
    nop

    .line 389
    if-nez p0, :cond_16

    .line 390
    return-object v1

    .line 392
    :cond_16
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 393
    if-eqz v0, :cond_2c

    array-length v0, v0

    if-nez v0, :cond_1e

    goto :goto_2c

    .line 396
    :cond_1e
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/AppInfo;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 394
    :cond_2c
    :goto_2c
    return-object v1

    .line 386
    :catch_2d
    move-exception p0

    .line 387
    return-object v1
.end method

.method public static f(Landroid/content/Context;)Z
    .registers 3

    .line 406
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 407
    return v0

    .line 409
    :cond_4
    sget-object v1, Lcom/tencent/bugly/crashreport/common/info/AppInfo;->a:Landroid/app/ActivityManager;

    if-nez v1, :cond_12

    .line 410
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    sput-object p0, Lcom/tencent/bugly/crashreport/common/info/AppInfo;->a:Landroid/app/ActivityManager;

    .line 413
    :cond_12
    :try_start_12
    new-instance p0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {p0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 414
    sget-object v1, Lcom/tencent/bugly/crashreport/common/info/AppInfo;->a:Landroid/app/ActivityManager;

    invoke-virtual {v1, p0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 415
    iget-boolean p0, p0, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    if-eqz p0, :cond_29

    .line 416
    const-string p0, "Memory is low."

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p0, v1}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_27
    .catchall {:try_start_12 .. :try_end_27} :catchall_2a

    .line 417
    const/4 p0, 0x1

    return p0

    .line 419
    :cond_29
    return v0

    .line 421
    :catchall_2a
    move-exception p0

    .line 422
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 423
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 425
    :cond_34
    return v0
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 489
    if-nez p0, :cond_5

    .line 490
    const-string p0, ""

    return-object p0

    .line 492
    :cond_5
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/AppInfo;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 493
    invoke-static {v0}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 494
    return-object v0

    .line 496
    :cond_10
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/AppInfo;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 497
    return-object p0
.end method

.method private static h(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    .line 430
    const-string v0, ""

    .line 431
    const-string v1, "DENGTA_META"

    invoke-static {v1, p0}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 433
    nop

    .line 435
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_b
    const-string v4, "key_channelpath"

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 437
    invoke-static {v1}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 438
    const-string v1, "channel.ini"

    .line 440
    :cond_19
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[AppInfo] Beacon channel file path: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 441
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_71

    .line 442
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 443
    new-instance p0, Ljava/util/Properties;

    invoke-direct {p0}, Ljava/util/Properties;-><init>()V

    .line 444
    invoke-virtual {p0, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 445
    const-string v1, "CHANNEL"

    invoke-virtual {p0, v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 446
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "[AppInfo] Beacon channel read from assert: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 447
    invoke-static {v0}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result p0
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_61} :catch_6f
    .catchall {:try_start_b .. :try_end_61} :catchall_7c

    if-nez p0, :cond_71

    .line 448
    nop

    .line 454
    if-eqz v3, :cond_6e

    .line 456
    :try_start_66
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_6a

    .line 459
    goto :goto_6e

    .line 457
    :catch_6a
    move-exception p0

    .line 458
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    .line 459
    :cond_6e
    :goto_6e
    return-object v0

    .line 451
    :catch_6f
    move-exception p0

    goto :goto_7e

    .line 454
    :cond_71
    if-eqz v3, :cond_8b

    .line 456
    :try_start_73
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_77

    .line 459
    :goto_76
    goto :goto_8b

    .line 457
    :catch_77
    move-exception p0

    .line 458
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    goto :goto_76

    .line 454
    :catchall_7c
    move-exception p0

    goto :goto_8c

    .line 452
    :goto_7e
    :try_start_7e
    const-string p0, "[AppInfo] Failed to get get beacon channel"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_85
    .catchall {:try_start_7e .. :try_end_85} :catchall_7c

    .line 454
    if-eqz v3, :cond_8b

    .line 456
    :try_start_87
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_77

    goto :goto_76

    .line 462
    :cond_8b
    :goto_8b
    return-object v0

    .line 454
    :goto_8c
    if-eqz v3, :cond_96

    .line 456
    :try_start_8e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_91} :catch_92

    .line 459
    goto :goto_96

    .line 457
    :catch_92
    move-exception v0

    .line 458
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    .line 459
    :cond_96
    :goto_96
    throw p0
.end method

.method private static i(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 466
    const-string v0, ""

    .line 468
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x80

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 471
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "CHANNEL_DENGTA"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 472
    if-eqz p0, :cond_1f

    .line 473
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1e
    .catchall {:try_start_2 .. :try_end_1e} :catchall_20

    move-object v0, p0

    .line 478
    :cond_1f
    goto :goto_2c

    .line 475
    :catchall_20
    move-exception p0

    .line 476
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "[AppInfo] Failed to read beacon channel from manifest."

    invoke-static {v2, v1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 477
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    .line 479
    :goto_2c
    return-object v0
.end method
