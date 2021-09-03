.class abstract Lcom/taptap/pay/sdk/library/IabService;
.super Ljava/lang/Object;
.source "IabService.java"


# static fields
.field static final BILLING_RESPONSE_RESULT_ERROR:I = 0x6

.field static final BILLING_RESPONSE_RESULT_OK:I = 0x0

.field private static final SHA1CERT:Ljava/lang/String; = "A9:99:C3:23:96:07:DC:BC:9C:7A:2B:49:52:4B:27:BA:14:BA:21:D5"


# instance fields
.field protected activity:Landroid/app/Activity;

.field private connection:Landroid/content/ServiceConnection;

.field private iconDrawable:Landroid/graphics/drawable/Drawable;

.field private inAppBillingService:Lcom/play/taptap/service/IInAppBillingService;

.field private label:Ljava/lang/CharSequence;

.field private pm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taptap/pay/sdk/library/exceptions/TapTapBaseException;
        }
    .end annotation

    .line 55
    const-string v0, "taptap_sdk_label"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/taptap/pay/sdk/library/IabService;->iconDrawable:Landroid/graphics/drawable/Drawable;

    .line 181
    iput-object v1, p0, Lcom/taptap/pay/sdk/library/IabService;->connection:Landroid/content/ServiceConnection;

    .line 56
    iput-object p1, p0, Lcom/taptap/pay/sdk/library/IabService;->activity:Landroid/app/Activity;

    .line 57
    const/4 v1, 0x0

    .line 58
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/taptap/pay/sdk/library/IabService;->pm:Landroid/content/pm/PackageManager;

    .line 60
    :try_start_13
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_28

    .line 61
    iget-object v2, p0, Lcom/taptap/pay/sdk/library/IabService;->pm:Landroid/content/pm/PackageManager;

    .line 62
    invoke-virtual {p0}, Lcom/taptap/pay/sdk/library/IabService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x8000080

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    move-object v1, v2

    goto :goto_35

    .line 64
    :cond_28
    iget-object v2, p0, Lcom/taptap/pay/sdk/library/IabService;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lcom/taptap/pay/sdk/library/IabService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xc0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    move-object v1, v2

    .line 67
    :goto_35
    if-eqz v1, :cond_52

    .line 68
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/taptap/pay/sdk/library/IabService;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/taptap/pay/sdk/library/IabService;->iconDrawable:Landroid/graphics/drawable/Drawable;

    .line 69
    move-object v2, v0

    .line 70
    .local v2, "taptap_sdk_label":Ljava/lang/String;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 71
    .local v3, "metaData":Landroid/os/Bundle;
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 72
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/taptap/pay/sdk/library/IabService;->label:Ljava/lang/CharSequence;
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_52} :catch_53

    .line 77
    .end local v2    # "taptap_sdk_label":Ljava/lang/String;
    .end local v3    # "metaData":Landroid/os/Bundle;
    :cond_52
    goto :goto_57

    .line 75
    :catch_53
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 79
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_57
    if-eqz v1, :cond_68

    .line 83
    invoke-direct {p0, v1}, Lcom/taptap/pay/sdk/library/IabService;->signatureRight(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 87
    return-void

    .line 84
    :cond_60
    new-instance v0, Lcom/taptap/pay/sdk/library/exceptions/TapTapSignatureCheckException;

    const-string v2, "Signature Error"

    invoke-direct {v0, v2}, Lcom/taptap/pay/sdk/library/exceptions/TapTapSignatureCheckException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_68
    new-instance v0, Lcom/taptap/pay/sdk/library/exceptions/TapTapNotInstalledException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/taptap/pay/sdk/library/IabService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not installed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/taptap/pay/sdk/library/exceptions/TapTapNotInstalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$002(Lcom/taptap/pay/sdk/library/IabService;Lcom/play/taptap/service/IInAppBillingService;)Lcom/play/taptap/service/IInAppBillingService;
    .registers 2
    .param p0, "x0"    # Lcom/taptap/pay/sdk/library/IabService;
    .param p1, "x1"    # Lcom/play/taptap/service/IInAppBillingService;

    .line 38
    iput-object p1, p0, Lcom/taptap/pay/sdk/library/IabService;->inAppBillingService:Lcom/play/taptap/service/IInAppBillingService;

    return-object p1
.end method

.method private byte2HexFormatted([B)Ljava/lang/String;
    .registers 10
    .param p1, "arr"    # [B

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p1

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 160
    .local v0, "str":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    array-length v3, p1

    if-ge v1, v3, :cond_47

    .line 161
    aget-byte v3, p1, v1

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 162
    .local v3, "h":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 163
    .local v4, "l":I
    const/4 v5, 0x1

    if-ne v4, v5, :cond_2c

    .line 164
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 166
    :cond_2c
    if-le v4, v2, :cond_34

    .line 167
    add-int/lit8 v6, v4, -0x2

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 169
    :cond_34
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    array-length v6, p1

    sub-int/2addr v6, v5

    if-ge v1, v6, :cond_44

    .line 171
    const/16 v5, 0x3a

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 160
    .end local v3    # "h":Ljava/lang/String;
    .end local v4    # "l":I
    :cond_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 174
    .end local v1    # "i":I
    :cond_47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private signatureRight(Landroid/content/pm/PackageInfo;)Z
    .registers 12
    .param p1, "info"    # Landroid/content/pm/PackageInfo;

    .line 98
    const/4 v0, 0x0

    .line 100
    .local v0, "signatures":[Landroid/content/pm/Signature;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_e

    .line 101
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 102
    .local v1, "packageSignInfo":Landroid/content/pm/SigningInfo;
    invoke-virtual {v1}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v0

    .line 103
    .end local v1    # "packageSignInfo":Landroid/content/pm/SigningInfo;
    goto :goto_10

    .line 104
    :cond_e
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 107
    :goto_10
    const/4 v1, 0x0

    if-eqz v0, :cond_77

    array-length v2, v0

    if-nez v2, :cond_17

    goto :goto_77

    .line 111
    :cond_17
    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    .line 112
    .local v2, "cert":[B
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 114
    .local v3, "certInput":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 116
    .local v4, "cf":Ljava/security/cert/CertificateFactory;
    :try_start_23
    const-string v5, "X.509"

    invoke-static {v5}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v5
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_29} :catch_2b

    move-object v4, v5

    .line 119
    goto :goto_2f

    .line 117
    :catch_2b
    move-exception v5

    .line 118
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 121
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_2f
    if-nez v4, :cond_32

    .line 122
    return v1

    .line 125
    :cond_32
    const/4 v5, 0x0

    .line 127
    .local v5, "x509Cert":Ljava/security/cert/X509Certificate;
    :try_start_33
    invoke-virtual {v4, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_39} :catch_3b

    move-object v5, v6

    .line 130
    goto :goto_3f

    .line 128
    :catch_3b
    move-exception v6

    .line 129
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 132
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_3f
    if-nez v5, :cond_42

    .line 133
    return v1

    .line 136
    :cond_42
    const/4 v6, 0x0

    .line 138
    .local v6, "certString":Ljava/lang/String;
    :try_start_43
    const-string v7, "SHA1"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    .line 139
    .local v7, "md":Ljava/security/MessageDigest;
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v8

    .line 140
    .local v8, "key":[B
    invoke-direct {p0, v8}, Lcom/taptap/pay/sdk/library/IabService;->byte2HexFormatted([B)Ljava/lang/String;

    move-result-object v9
    :try_end_55
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_43 .. :try_end_55} :catch_5c
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_43 .. :try_end_55} :catch_57

    move-object v6, v9

    .line 145
    .end local v7    # "md":Ljava/security/MessageDigest;
    .end local v8    # "key":[B
    :goto_56
    goto :goto_61

    .line 143
    :catch_57
    move-exception v7

    .line 144
    .local v7, "e":Ljava/security/cert/CertificateEncodingException;
    invoke-virtual {v7}, Ljava/security/cert/CertificateEncodingException;->printStackTrace()V

    goto :goto_61

    .line 141
    .end local v7    # "e":Ljava/security/cert/CertificateEncodingException;
    :catch_5c
    move-exception v7

    .line 142
    .local v7, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v7}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .end local v7    # "e":Ljava/security/NoSuchAlgorithmException;
    goto :goto_56

    .line 147
    :goto_61
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_68

    .line 148
    return v1

    .line 151
    :cond_68
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "A9:99:C3:23:96:07:DC:BC:9C:7A:2B:49:52:4B:27:BA:14:BA:21:D5"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_76

    .line 152
    const/4 v1, 0x1

    return v1

    .line 154
    :cond_76
    return v1

    .line 108
    .end local v2    # "cert":[B
    .end local v3    # "certInput":Ljava/io/InputStream;
    .end local v4    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v5    # "x509Cert":Ljava/security/cert/X509Certificate;
    .end local v6    # "certString":Ljava/lang/String;
    :cond_77
    :goto_77
    return v1
.end method


# virtual methods
.method public checkLicense()Z
    .registers 9

    .line 240
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_6f

    .line 244
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/IabService;->inAppBillingService:Lcom/play/taptap/service/IInAppBillingService;

    const/4 v1, 0x0

    if-eqz v0, :cond_6e

    .line 245
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 246
    .local v0, "result":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 249
    .local v3, "lock":Ljava/lang/Object;
    :try_start_1a
    iget-object v4, p0, Lcom/taptap/pay/sdk/library/IabService;->inAppBillingService:Lcom/play/taptap/service/IInAppBillingService;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/taptap/pay/sdk/library/IabService;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/taptap/pay/sdk/library/IabService$2;

    invoke-direct {v7, p0, v0, v3}, Lcom/taptap/pay/sdk/library/IabService$2;-><init>(Lcom/taptap/pay/sdk/library/IabService;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Object;)V

    invoke-interface {v4, v5, v6, v1, v7}, Lcom/play/taptap/service/IInAppBillingService;->isAppLicensed(ILjava/lang/String;ILcom/play/taptap/service/ICallback;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_2b} :catch_67

    .line 260
    nop

    .line 262
    monitor-enter v3

    .line 264
    const-wide/16 v4, 0x7d0

    :try_start_2f
    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_32
    .catch Ljava/lang/InterruptedException; {:try_start_2f .. :try_end_32} :catch_35
    .catchall {:try_start_2f .. :try_end_32} :catchall_33

    .line 267
    goto :goto_39

    .line 268
    :catchall_33
    move-exception v1

    goto :goto_65

    .line 265
    :catch_35
    move-exception v4

    .line 266
    .local v4, "e":Ljava/lang/InterruptedException;
    :try_start_36
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 268
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :goto_39
    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_33

    .line 269
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-nez v4, :cond_41

    move v1, v2

    .line 270
    .local v1, "license":Z
    :cond_41
    if-eqz v1, :cond_64

    .line 271
    iget-object v2, p0, Lcom/taptap/pay/sdk/library/IabService;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/taptap/pay/sdk/library/Settings;->getLicensedDate(Landroid/content/Context;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-nez v2, :cond_55

    .line 272
    iget-object v2, p0, Lcom/taptap/pay/sdk/library/IabService;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/taptap/pay/sdk/library/Settings;->setLicensedDate(Landroid/content/Context;)V

    goto :goto_64

    .line 273
    :cond_55
    iget-object v2, p0, Lcom/taptap/pay/sdk/library/IabService;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/taptap/pay/sdk/library/Settings;->getLicensedDateAfterFiveDays(Landroid/content/Context;)J

    move-result-wide v4

    cmp-long v2, v4, v6

    if-nez v2, :cond_64

    .line 274
    iget-object v2, p0, Lcom/taptap/pay/sdk/library/IabService;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/taptap/pay/sdk/library/Settings;->setLicensedDateAfterFiveDays(Landroid/content/Context;)V

    .line 277
    :cond_64
    :goto_64
    return v1

    .line 268
    .end local v1    # "license":Z
    :goto_65
    :try_start_65
    monitor-exit v3
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_33

    throw v1

    .line 258
    :catch_67
    move-exception v1

    .line 259
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 279
    .end local v0    # "result":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "lock":Ljava/lang/Object;
    :cond_6e
    return v1

    .line 241
    :cond_6f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Must not called on main thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public connect()Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taptap/pay/sdk/library/exceptions/TapTapBaseException;
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/IabService;->connection:Landroid/content/ServiceConnection;

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/taptap/pay/sdk/library/IabService;->inAppBillingService:Lcom/play/taptap/service/IInAppBillingService;

    if-eqz v0, :cond_a

    .line 185
    return v1

    .line 188
    :cond_a
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v0, v2, :cond_7e

    .line 192
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 193
    .local v0, "result":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 194
    .local v3, "lock":Ljava/lang/Object;
    monitor-enter v3

    .line 195
    :try_start_20
    new-instance v4, Lcom/taptap/pay/sdk/library/IabService$1;

    invoke-direct {v4, p0, v0, v3}, Lcom/taptap/pay/sdk/library/IabService$1;-><init>(Lcom/taptap/pay/sdk/library/IabService;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/taptap/pay/sdk/library/IabService;->connection:Landroid/content/ServiceConnection;

    .line 215
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 216
    .local v4, "intent":Landroid/content/Intent;
    new-instance v5, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/taptap/pay/sdk/library/IabService;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.play.taptap.service.InAppBillingService"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_3a
    .catchall {:try_start_20 .. :try_end_3a} :catchall_7b

    .line 217
    const/4 v5, 0x0

    .line 219
    .local v5, "ret":Z
    :try_start_3b
    iget-object v6, p0, Lcom/taptap/pay/sdk/library/IabService;->activity:Landroid/app/Activity;

    iget-object v7, p0, Lcom/taptap/pay/sdk/library/IabService;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v6, v4, v7, v1}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_43} :catch_5d
    .catchall {:try_start_3b .. :try_end_43} :catchall_7b

    .line 222
    .end local v5    # "ret":Z
    .local v1, "ret":Z
    nop

    .line 224
    if-eqz v1, :cond_51

    .line 226
    const-wide/16 v5, 0x7d0

    :try_start_48
    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_4b
    .catch Ljava/lang/InterruptedException; {:try_start_48 .. :try_end_4b} :catch_4c
    .catchall {:try_start_48 .. :try_end_4b} :catchall_7b

    .line 229
    :goto_4b
    goto :goto_57

    .line 227
    :catch_4c
    move-exception v2

    .line 228
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_4d
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/InterruptedException;
    goto :goto_4b

    .line 231
    :cond_51
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/taptap/pay/sdk/library/IabService;->connection:Landroid/content/ServiceConnection;

    .line 232
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 235
    .end local v1    # "ret":Z
    .end local v4    # "intent":Landroid/content/Intent;
    :goto_57
    monitor-exit v3
    :try_end_58
    .catchall {:try_start_4d .. :try_end_58} :catchall_7b

    .line 236
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    return v1

    .line 220
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v5    # "ret":Z
    :catch_5d
    move-exception v1

    .line 221
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5e
    new-instance v2, Lcom/taptap/pay/sdk/library/exceptions/TapTapConnectException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "can not connect to service of  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/taptap/pay/sdk/library/IabService;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/taptap/pay/sdk/library/exceptions/TapTapConnectException;-><init>(Ljava/lang/String;)V

    .end local v0    # "result":Ljava/util/concurrent/atomic/AtomicBoolean;
    .end local v3    # "lock":Ljava/lang/Object;
    .end local p0    # "this":Lcom/taptap/pay/sdk/library/IabService;
    throw v2

    .line 235
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "ret":Z
    .restart local v0    # "result":Ljava/util/concurrent/atomic/AtomicBoolean;
    .restart local v3    # "lock":Ljava/lang/Object;
    .restart local p0    # "this":Lcom/taptap/pay/sdk/library/IabService;
    :catchall_7b
    move-exception v1

    monitor-exit v3
    :try_end_7d
    .catchall {:try_start_5e .. :try_end_7d} :catchall_7b

    throw v1

    .line 189
    .end local v0    # "result":Ljava/util/concurrent/atomic/AtomicBoolean;
    .end local v3    # "lock":Ljava/lang/Object;
    :cond_7e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Must not called on main thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method destroy()V
    .registers 3

    .line 284
    const-string v0, "IabService"

    const-string v1, "destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/IabService;->connection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_15

    .line 286
    iget-object v1, p0, Lcom/taptap/pay/sdk/library/IabService;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 287
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taptap/pay/sdk/library/IabService;->connection:Landroid/content/ServiceConnection;

    .line 288
    iput-object v0, p0, Lcom/taptap/pay/sdk/library/IabService;->inAppBillingService:Lcom/play/taptap/service/IInAppBillingService;

    .line 290
    :cond_15
    return-void
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/IabService;->iconDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/IabService;->label:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public abstract openTapTap()V
.end method
