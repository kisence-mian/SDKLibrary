.class public Lcom/umeng/commonsdk/statistics/internal/c;
.super Ljava/lang/Object;
.source "NetworkHelper.java"


# static fields
.field private static e:Z

.field private static f:Z

.field private static g:Z


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Landroid/content/Context;

.field private d:Lcom/umeng/commonsdk/statistics/internal/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 77
    const/4 v0, 0x0

    sput-boolean v0, Lcom/umeng/commonsdk/statistics/internal/c;->e:Z

    .line 79
    sput-boolean v0, Lcom/umeng/commonsdk/statistics/internal/c;->f:Z

    .line 81
    sput-boolean v0, Lcom/umeng/commonsdk/statistics/internal/c;->g:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-string v0, "10.0.0.172"

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/internal/c;->a:Ljava/lang/String;

    .line 72
    const/16 v0, 0x50

    iput v0, p0, Lcom/umeng/commonsdk/statistics/internal/c;->b:I

    .line 84
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/internal/c;->c:Landroid/content/Context;

    .line 86
    return-void
.end method

.method static synthetic a(Lcom/umeng/commonsdk/statistics/internal/c;)Landroid/content/Context;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/umeng/commonsdk/statistics/internal/c;->c:Landroid/content/Context;

    return-object p0
.end method

.method private a()V
    .registers 5

    .line 104
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/internal/c;->c:Landroid/content/Context;

    const-string v1, "domain_p"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/internal/c;->c:Landroid/content/Context;

    const-string v3, "domain_s"

    invoke-static {v1, v3, v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 109
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->assembleURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/statistics/UMServerURL;->DEFAULT_URL:Ljava/lang/String;

    .line 111
    :cond_1e
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 113
    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->assembleURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/statistics/UMServerURL;->SECONDARY_URL:Ljava/lang/String;

    .line 116
    :cond_2a
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/umeng/commonsdk/statistics/UMServerURL;->DEFAULT_URL:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/umeng/commonsdk/statistics/UMServerURL;->SECONDARY_URL:Ljava/lang/String;

    aput-object v2, v0, v1

    sput-object v0, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->APPLOG_URL_LIST:[Ljava/lang/String;

    .line 119
    return-void
.end method

.method private b()V
    .registers 6

    .line 128
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/internal/c;->c:Landroid/content/Context;

    const-string v1, "domain_p"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/internal/c;->c:Landroid/content/Context;

    const-string v3, "domain_s"

    invoke-static {v1, v3, v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 133
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->assembleURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/statistics/UMServerURL;->DEFAULT_URL:Ljava/lang/String;

    .line 135
    :cond_1e
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 137
    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->assembleURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/statistics/UMServerURL;->SECONDARY_URL:Ljava/lang/String;

    .line 141
    :cond_2a
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/internal/c;->c:Landroid/content/Context;

    const-string v1, "oversea_domain_p"

    invoke-static {v0, v1, v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/internal/c;->c:Landroid/content/Context;

    const-string v3, "oversea_domain_s"

    invoke-static {v1, v3, v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 144
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_46

    .line 146
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->assembleURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/statistics/UMServerURL;->OVERSEA_DEFAULT_URL:Ljava/lang/String;

    .line 148
    :cond_46
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_52

    .line 150
    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->assembleURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/statistics/UMServerURL;->OVERSEA_SECONDARY_URL:Ljava/lang/String;

    .line 154
    :cond_52
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    sget-object v2, Lcom/umeng/commonsdk/statistics/UMServerURL;->OVERSEA_DEFAULT_URL:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/umeng/commonsdk/statistics/UMServerURL;->OVERSEA_SECONDARY_URL:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sput-object v1, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->APPLOG_URL_LIST:[Ljava/lang/String;

    .line 158
    sget-object v1, Lcom/umeng/commonsdk/statistics/b;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_89

    .line 159
    sget-object v1, Lcom/umeng/commonsdk/statistics/b;->b:Ljava/lang/String;

    const-string v2, "460"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7d

    sget-object v1, Lcom/umeng/commonsdk/statistics/b;->b:Ljava/lang/String;

    const-string v2, "461"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 161
    :cond_7d
    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/umeng/commonsdk/statistics/UMServerURL;->DEFAULT_URL:Ljava/lang/String;

    aput-object v1, v0, v3

    sget-object v1, Lcom/umeng/commonsdk/statistics/UMServerURL;->SECONDARY_URL:Ljava/lang/String;

    aput-object v1, v0, v4

    sput-object v0, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->APPLOG_URL_LIST:[Ljava/lang/String;

    .line 166
    :cond_89
    return-void
.end method

.method private c()V
    .registers 4

    .line 191
    sget-boolean v0, Lcom/umeng/commonsdk/statistics/internal/c;->g:Z

    if-nez v0, :cond_17

    .line 193
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/internal/c;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->getImprintService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;

    move-result-object v0

    new-instance v1, Lcom/umeng/commonsdk/statistics/internal/c$1;

    invoke-direct {v1, p0}, Lcom/umeng/commonsdk/statistics/internal/c$1;-><init>(Lcom/umeng/commonsdk/statistics/internal/c;)V

    const-string v2, "cfgfd"

    invoke-virtual {v0, v2, v1}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->registImprintCallback(Ljava/lang/String;Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;)V

    .line 209
    const/4 v0, 0x1

    sput-boolean v0, Lcom/umeng/commonsdk/statistics/internal/c;->g:Z

    .line 211
    :cond_17
    return-void
.end method

.method private d()V
    .registers 4

    .line 214
    sget-boolean v0, Lcom/umeng/commonsdk/statistics/internal/c;->f:Z

    if-nez v0, :cond_2e

    .line 216
    const-string v0, "MobclickRT"

    const-string v1, "--->>> \u6ce8\u518c\u96f6\u53f7\u62a5\u6587 imprint \u5e94\u7b54\u5904\u7406\u56de\u8c03\u3002"

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/internal/c;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->getImprintService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;

    move-result-object v0

    new-instance v1, Lcom/umeng/commonsdk/statistics/internal/c$2;

    invoke-direct {v1, p0}, Lcom/umeng/commonsdk/statistics/internal/c$2;-><init>(Lcom/umeng/commonsdk/statistics/internal/c;)V

    const-string v2, "iscfg"

    invoke-virtual {v0, v2, v1}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->registPreProcessCallback(Ljava/lang/String;Lcom/umeng/commonsdk/statistics/internal/UMImprintPreProcessCallback;)V

    .line 235
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/internal/c;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->getImprintService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;

    move-result-object v0

    new-instance v1, Lcom/umeng/commonsdk/statistics/internal/c$3;

    invoke-direct {v1, p0}, Lcom/umeng/commonsdk/statistics/internal/c$3;-><init>(Lcom/umeng/commonsdk/statistics/internal/c;)V

    const-string v2, "cfgfd"

    invoke-virtual {v0, v2, v1}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->registImprintCallback(Ljava/lang/String;Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;)V

    .line 261
    const/4 v0, 0x1

    sput-boolean v0, Lcom/umeng/commonsdk/statistics/internal/c;->f:Z

    .line 263
    :cond_2e
    return-void
.end method

.method private e()Z
    .registers 5

    .line 310
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/internal/c;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 311
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/internal/c;->c:Landroid/content/Context;

    .line 312
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 311
    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 313
    return v1

    .line 316
    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/internal/c;->c:Landroid/content/Context;

    const-string v3, "connectivity"

    .line 317
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 318
    iget-object v3, p0, Lcom/umeng/commonsdk/statistics/internal/c;->c:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 319
    return v1

    .line 321
    :cond_29
    if-nez v0, :cond_2c

    .line 322
    return v1

    .line 324
    :cond_2c
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 326
    if-eqz v0, :cond_58

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_58

    .line 327
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 329
    if-eqz v0, :cond_58

    const-string v2, "cmwap"

    .line 330
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_57

    const-string v2, "3gwap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_57

    const-string v2, "uniwap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_55
    .catchall {:try_start_16 .. :try_end_55} :catchall_59

    if-eqz v0, :cond_58

    .line 331
    :cond_57
    return v3

    .line 336
    :cond_58
    goto :goto_5f

    .line 334
    :catchall_59
    move-exception v0

    .line 335
    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/internal/c;->c:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 338
    :goto_5f
    return v1
.end method


# virtual methods
.method public a(Lcom/umeng/commonsdk/statistics/internal/b;)V
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/internal/c;->d:Lcom/umeng/commonsdk/statistics/internal/b;

    .line 90
    return-void
.end method

.method public a([BLjava/lang/String;)[B
    .registers 12

    .line 430
    const-string v0, "Content-Type"

    const-string v1, "\\|"

    .line 431
    nop

    .line 433
    const/4 v2, 0x2

    const/4 v3, 0x0

    :try_start_7
    iget-object v4, p0, Lcom/umeng/commonsdk/statistics/internal/c;->d:Lcom/umeng/commonsdk/statistics/internal/b;

    if-eqz v4, :cond_e

    .line 434
    invoke-interface {v4}, Lcom/umeng/commonsdk/statistics/internal/b;->onRequestStart()V

    .line 436
    :cond_e
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/internal/c;->e()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 437
    new-instance v4, Ljava/net/Proxy;

    sget-object v5, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v6, Ljava/net/InetSocketAddress;

    iget-object v7, p0, Lcom/umeng/commonsdk/statistics/internal/c;->a:Ljava/lang/String;

    iget v8, p0, Lcom/umeng/commonsdk/statistics/internal/c;->b:I

    invoke-direct {v6, v7, v8}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v4, v5, v6}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 438
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p2

    check-cast p2, Ljavax/net/ssl/HttpsURLConnection;

    .line 439
    goto :goto_3b

    .line 440
    :cond_30
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p2

    check-cast p2, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_3b
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_7 .. :try_end_3b} :catch_177
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_3b} :catch_153
    .catchall {:try_start_7 .. :try_end_3b} :catchall_134

    .line 444
    :goto_3b
    :try_start_3b
    sget-boolean v4, Lcom/umeng/commonsdk/statistics/internal/c;->e:Z

    const/4 v5, 0x1

    if-nez v4, :cond_5c

    .line 445
    sget-object v4, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {p2, v4}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 467
    const-string v4, "TLS"

    invoke-static {v4}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v4

    .line 468
    new-instance v6, Ljava/security/SecureRandom;

    invoke-direct {v6}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v4, v3, v3, v6}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 469
    invoke-virtual {v4}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 470
    sput-boolean v5, Lcom/umeng/commonsdk/statistics/internal/c;->e:Z

    .line 474
    :cond_5c
    const-string v4, "X-Umeng-UTC"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v4, v6}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const-string v4, "X-Umeng-Sdk"

    iget-object v6, p0, Lcom/umeng/commonsdk/statistics/internal/c;->c:Landroid/content/Context;

    invoke-static {v6}, Lcom/umeng/commonsdk/statistics/internal/a;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/umeng/commonsdk/statistics/internal/a;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v4, v6}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-object v4, p0, Lcom/umeng/commonsdk/statistics/internal/c;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/commonsdk/statistics/internal/a;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/umeng/commonsdk/statistics/internal/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v0, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const-string v4, "Msg-Type"

    const-string v6, "envelope/json"

    invoke-virtual {p2, v4, v6}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const-string v4, "X-Umeng-Pro-Ver"

    const-string v6, "1.0.0"

    invoke-virtual {p2, v4, v6}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const/16 v4, 0x7530

    invoke-virtual {p2, v4}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 482
    invoke-virtual {p2, v4}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 483
    const-string v4, "POST"

    invoke-virtual {p2, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 485
    invoke-virtual {p2, v5}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 486
    invoke-virtual {p2, v5}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 487
    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    .line 490
    invoke-virtual {p2}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6
    :try_end_ae
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_3b .. :try_end_ae} :catch_131
    .catch Ljava/net/UnknownHostException; {:try_start_3b .. :try_end_ae} :catch_12e
    .catchall {:try_start_3b .. :try_end_ae} :catchall_12b

    .line 491
    :try_start_ae
    invoke-virtual {v6, p1}, Ljava/io/OutputStream;->write([B)V

    .line 492
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 494
    invoke-virtual {p2}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 497
    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/internal/c;->d:Lcom/umeng/commonsdk/statistics/internal/b;

    if-eqz p1, :cond_be

    .line 498
    invoke-interface {p1}, Lcom/umeng/commonsdk/statistics/internal/b;->onRequestEnd()V

    .line 500
    :cond_be
    invoke-virtual {p2}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result p1

    .line 501
    invoke-virtual {p2, v0}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 502
    nop

    .line 503
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d6

    const-string v7, "application/thrift"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d6

    .line 504
    goto :goto_d7

    .line 506
    :cond_d6
    const/4 v5, 0x0

    :goto_d7
    sget-boolean v0, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    .line 509
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_10a

    if-eqz v5, :cond_10a

    .line 513
    invoke-virtual {p2}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_e3
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_ae .. :try_end_e3} :catch_129
    .catch Ljava/net/UnknownHostException; {:try_start_ae .. :try_end_e3} :catch_127
    .catchall {:try_start_ae .. :try_end_e3} :catchall_125

    .line 516
    :try_start_e3
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->readStreamToByteArray(Ljava/io/InputStream;)[B

    move-result-object v0
    :try_end_e7
    .catchall {:try_start_e3 .. :try_end_e7} :catchall_105

    .line 518
    :try_start_e7
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->safeClose(Ljava/io/InputStream;)V
    :try_end_ea
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_e7 .. :try_end_ea} :catch_129
    .catch Ljava/net/UnknownHostException; {:try_start_e7 .. :try_end_ea} :catch_127
    .catchall {:try_start_e7 .. :try_end_ea} :catchall_125

    .line 539
    if-eqz v6, :cond_f6

    .line 541
    :try_start_ec
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_ef} :catch_f0

    .line 544
    goto :goto_f6

    .line 542
    :catch_f0
    move-exception p1

    .line 543
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/internal/c;->c:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 546
    :cond_f6
    :goto_f6
    if-eqz p2, :cond_104

    .line 550
    :try_start_f8
    invoke-virtual {p2}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_ff
    .catch Ljava/io/IOException; {:try_start_f8 .. :try_end_ff} :catch_100

    .line 553
    goto :goto_101

    .line 551
    :catch_100
    move-exception p1

    .line 554
    :goto_101
    invoke-virtual {p2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_104
    return-object v0

    .line 518
    :catchall_105
    move-exception v0

    :try_start_106
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->safeClose(Ljava/io/InputStream;)V

    throw v0
    :try_end_10a
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_106 .. :try_end_10a} :catch_129
    .catch Ljava/net/UnknownHostException; {:try_start_106 .. :try_end_10a} :catch_127
    .catchall {:try_start_106 .. :try_end_10a} :catchall_125

    .line 539
    :cond_10a
    if-eqz v6, :cond_116

    .line 541
    :try_start_10c
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_10c .. :try_end_10f} :catch_110

    .line 544
    goto :goto_116

    .line 542
    :catch_110
    move-exception p1

    .line 543
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/internal/c;->c:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 546
    :cond_116
    :goto_116
    if-eqz p2, :cond_124

    .line 550
    :try_start_118
    invoke-virtual {p2}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_11f
    .catch Ljava/io/IOException; {:try_start_118 .. :try_end_11f} :catch_120

    .line 553
    goto :goto_121

    .line 551
    :catch_120
    move-exception p1

    .line 554
    :goto_121
    invoke-virtual {p2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 557
    :cond_124
    return-object v3

    .line 534
    :catchall_125
    move-exception p1

    goto :goto_137

    .line 528
    :catch_127
    move-exception p1

    goto :goto_156

    .line 521
    :catch_129
    move-exception p1

    goto :goto_17a

    .line 534
    :catchall_12b
    move-exception p1

    move-object v6, v3

    goto :goto_137

    .line 528
    :catch_12e
    move-exception p1

    move-object v6, v3

    goto :goto_156

    .line 521
    :catch_131
    move-exception p1

    move-object v6, v3

    goto :goto_17a

    .line 534
    :catchall_134
    move-exception p1

    move-object p2, v3

    move-object v6, p2

    .line 537
    :goto_137
    nop

    .line 539
    if-eqz v6, :cond_144

    .line 541
    :try_start_13a
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_13d
    .catch Ljava/lang/Exception; {:try_start_13a .. :try_end_13d} :catch_13e

    .line 544
    goto :goto_144

    .line 542
    :catch_13e
    move-exception p1

    .line 543
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/internal/c;->c:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 546
    :cond_144
    :goto_144
    if-eqz p2, :cond_152

    .line 550
    :try_start_146
    invoke-virtual {p2}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_14d
    .catch Ljava/io/IOException; {:try_start_146 .. :try_end_14d} :catch_14e

    .line 553
    goto :goto_14f

    .line 551
    :catch_14e
    move-exception p1

    .line 554
    :goto_14f
    invoke-virtual {p2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_152
    return-object v3

    .line 528
    :catch_153
    move-exception p1

    move-object p2, v3

    move-object v6, p2

    .line 531
    :goto_156
    :try_start_156
    const-string p1, "A_10200"

    invoke-static {p1, v2, v1}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_15b
    .catchall {:try_start_156 .. :try_end_15b} :catchall_19b

    .line 532
    nop

    .line 539
    if-eqz v6, :cond_168

    .line 541
    :try_start_15e
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_161
    .catch Ljava/lang/Exception; {:try_start_15e .. :try_end_161} :catch_162

    .line 544
    goto :goto_168

    .line 542
    :catch_162
    move-exception p1

    .line 543
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/internal/c;->c:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 546
    :cond_168
    :goto_168
    if-eqz p2, :cond_176

    .line 550
    :try_start_16a
    invoke-virtual {p2}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_171
    .catch Ljava/io/IOException; {:try_start_16a .. :try_end_171} :catch_172

    .line 553
    goto :goto_173

    .line 551
    :catch_172
    move-exception p1

    .line 554
    :goto_173
    invoke-virtual {p2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_176
    return-object v3

    .line 521
    :catch_177
    move-exception p1

    move-object p2, v3

    move-object v6, p2

    .line 526
    :goto_17a
    :try_start_17a
    const-string p1, "A_10201"

    invoke-static {p1, v2, v1}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_17f
    .catchall {:try_start_17a .. :try_end_17f} :catchall_19b

    .line 527
    nop

    .line 539
    if-eqz v6, :cond_18c

    .line 541
    :try_start_182
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_185
    .catch Ljava/lang/Exception; {:try_start_182 .. :try_end_185} :catch_186

    .line 544
    goto :goto_18c

    .line 542
    :catch_186
    move-exception p1

    .line 543
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/internal/c;->c:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 546
    :cond_18c
    :goto_18c
    if-eqz p2, :cond_19a

    .line 550
    :try_start_18e
    invoke-virtual {p2}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_195
    .catch Ljava/io/IOException; {:try_start_18e .. :try_end_195} :catch_196

    .line 553
    goto :goto_197

    .line 551
    :catch_196
    move-exception p1

    .line 554
    :goto_197
    invoke-virtual {p2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_19a
    return-object v3

    .line 539
    :catchall_19b
    move-exception p1

    if-eqz v6, :cond_1a8

    .line 541
    :try_start_19e
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_1a1
    .catch Ljava/lang/Exception; {:try_start_19e .. :try_end_1a1} :catch_1a2

    .line 544
    goto :goto_1a8

    .line 542
    :catch_1a2
    move-exception v0

    .line 543
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/internal/c;->c:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 546
    :cond_1a8
    :goto_1a8
    if-eqz p2, :cond_1b6

    .line 550
    :try_start_1aa
    invoke-virtual {p2}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1b1
    .catch Ljava/io/IOException; {:try_start_1aa .. :try_end_1b1} :catch_1b2

    .line 553
    goto :goto_1b3

    .line 551
    :catch_1b2
    move-exception v0

    .line 554
    :goto_1b3
    invoke-virtual {p2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_1b6
    throw p1
.end method

.method public a([BZZLjava/lang/String;)[B
    .registers 8

    .line 273
    nop

    .line 275
    sget v0, Lcom/umeng/commonsdk/statistics/SdkVersion;->SDK_TYPE:I

    if-nez v0, :cond_9

    .line 276
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/internal/c;->a()V

    goto :goto_14

    .line 279
    :cond_9
    sget-object v0, Lcom/umeng/commonsdk/statistics/UMServerURL;->OVERSEA_DEFAULT_URL:Ljava/lang/String;

    sput-object v0, Lcom/umeng/commonsdk/statistics/UMServerURL;->DEFAULT_URL:Ljava/lang/String;

    .line 280
    sget-object v0, Lcom/umeng/commonsdk/statistics/UMServerURL;->OVERSEA_SECONDARY_URL:Ljava/lang/String;

    sput-object v0, Lcom/umeng/commonsdk/statistics/UMServerURL;->SECONDARY_URL:Ljava/lang/String;

    .line 281
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/internal/c;->b()V

    .line 284
    :goto_14
    nop

    .line 285
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_17
    sget-object v2, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->APPLOG_URL_LIST:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_58

    .line 286
    sget-object v1, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->APPLOG_URL_LIST:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 287
    if-eqz p3, :cond_26

    .line 288
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/internal/c;->d()V

    goto :goto_29

    .line 290
    :cond_26
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/internal/c;->c()V

    .line 292
    :goto_29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 294
    invoke-virtual {p0, p1, v1}, Lcom/umeng/commonsdk/statistics/internal/c;->a([BLjava/lang/String;)[B

    move-result-object v1

    .line 296
    if-eqz v1, :cond_4e

    .line 297
    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/internal/c;->d:Lcom/umeng/commonsdk/statistics/internal/b;

    if-eqz p1, :cond_58

    .line 298
    invoke-interface {p1, p2}, Lcom/umeng/commonsdk/statistics/internal/b;->onRequestSucceed(Z)V

    goto :goto_58

    .line 302
    :cond_4e
    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/internal/c;->d:Lcom/umeng/commonsdk/statistics/internal/b;

    if-eqz v2, :cond_55

    .line 303
    invoke-interface {v2}, Lcom/umeng/commonsdk/statistics/internal/b;->onRequestFailed()V

    .line 285
    :cond_55
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 306
    :cond_58
    :goto_58
    return-object v1
.end method
