.class public Lcom/umeng/commonsdk/stateless/c;
.super Ljava/lang/Object;
.source "UMSLNetWorkSenderHelper.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "10.0.0.172"

    iput-object v0, p0, Lcom/umeng/commonsdk/stateless/c;->a:Ljava/lang/String;

    .line 49
    const/16 v0, 0x50

    iput v0, p0, Lcom/umeng/commonsdk/stateless/c;->b:I

    .line 54
    iput-object p1, p0, Lcom/umeng/commonsdk/stateless/c;->c:Landroid/content/Context;

    .line 55
    return-void
.end method

.method private a()V
    .registers 4

    .line 69
    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/c;->c:Landroid/content/Context;

    const-string v1, "sl_domain_p"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 72
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->assembleStatelessURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/stateless/a;->i:Ljava/lang/String;

    .line 75
    :cond_16
    return-void
.end method

.method private b()V
    .registers 5

    .line 88
    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/c;->c:Landroid/content/Context;

    const-string v1, "sl_domain_p"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/umeng/commonsdk/stateless/c;->c:Landroid/content/Context;

    const-string v3, "oversea_sl_domain_p"

    invoke-static {v1, v3, v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 92
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->assembleStatelessURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/stateless/a;->h:Ljava/lang/String;

    .line 94
    :cond_1e
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 95
    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->assembleStatelessURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/stateless/a;->k:Ljava/lang/String;

    .line 98
    :cond_2a
    sget-object v0, Lcom/umeng/commonsdk/stateless/a;->k:Ljava/lang/String;

    sput-object v0, Lcom/umeng/commonsdk/stateless/a;->i:Ljava/lang/String;

    .line 101
    sget-object v0, Lcom/umeng/commonsdk/statistics/b;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 102
    sget-object v0, Lcom/umeng/commonsdk/statistics/b;->b:Ljava/lang/String;

    const-string v1, "460"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4a

    sget-object v0, Lcom/umeng/commonsdk/statistics/b;->b:Ljava/lang/String;

    const-string v1, "461"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 104
    :cond_4a
    sget-object v0, Lcom/umeng/commonsdk/stateless/a;->h:Ljava/lang/String;

    sput-object v0, Lcom/umeng/commonsdk/stateless/a;->i:Ljava/lang/String;

    .line 108
    :cond_4e
    return-void
.end method

.method private c()Z
    .registers 5

    .line 111
    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/c;->c:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_61

    .line 112
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 113
    iget-object v2, p0, Lcom/umeng/commonsdk/stateless/c;->c:Landroid/content/Context;

    .line 114
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 113
    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_18

    .line 115
    return v1

    .line 118
    :cond_18
    :try_start_18
    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/c;->c:Landroid/content/Context;

    const-string v2, "connectivity"

    .line 119
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 120
    iget-object v2, p0, Lcom/umeng/commonsdk/stateless/c;->c:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 121
    return v1

    .line 123
    :cond_2b
    if-nez v0, :cond_2e

    .line 124
    return v1

    .line 126
    :cond_2e
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_5a

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5a

    .line 128
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_5a

    const-string v2, "cmwap"

    .line 130
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_59

    const-string v2, "3gwap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_59

    const-string v2, "uniwap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_57
    .catchall {:try_start_18 .. :try_end_57} :catchall_5b

    if-eqz v0, :cond_5a

    .line 131
    :cond_59
    return v3

    .line 136
    :cond_5a
    goto :goto_61

    .line 134
    :catchall_5b
    move-exception v0

    .line 135
    iget-object v2, p0, Lcom/umeng/commonsdk/stateless/c;->c:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 139
    :cond_61
    :goto_61
    return v1
.end method


# virtual methods
.method public a([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 15

    .line 144
    const-string v0, "--->>> stateless: disconnect connection."

    const-string v1, "MobclickRT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_171

    if-nez p2, :cond_c

    goto/16 :goto_171

    .line 149
    :cond_c
    sget v4, Lcom/umeng/commonsdk/statistics/SdkVersion;->SDK_TYPE:I

    if-nez v4, :cond_14

    .line 151
    invoke-direct {p0}, Lcom/umeng/commonsdk/stateless/c;->a()V

    goto :goto_1b

    .line 155
    :cond_14
    sget-object v4, Lcom/umeng/commonsdk/stateless/a;->k:Ljava/lang/String;

    sput-object v4, Lcom/umeng/commonsdk/stateless/a;->h:Ljava/lang/String;

    .line 156
    invoke-direct {p0}, Lcom/umeng/commonsdk/stateless/c;->b()V

    .line 159
    :goto_1b
    nop

    .line 160
    sget-object v4, Lcom/umeng/commonsdk/stateless/a;->i:Ljava/lang/String;

    .line 161
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_25

    .line 162
    goto :goto_26

    .line 161
    :cond_25
    move-object p3, v4

    .line 165
    :goto_26
    nop

    .line 166
    nop

    .line 168
    const/4 v4, 0x0

    :try_start_29
    invoke-direct {p0}, Lcom/umeng/commonsdk/stateless/c;->c()Z

    move-result v5

    if-eqz v5, :cond_62

    .line 169
    new-instance v5, Ljava/net/Proxy;

    sget-object v6, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v7, Ljava/net/InetSocketAddress;

    iget-object v8, p0, Lcom/umeng/commonsdk/stateless/c;->a:Ljava/lang/String;

    iget v9, p0, Lcom/umeng/commonsdk/stateless/c;->b:I

    invoke-direct {v7, v8, v9}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v5, v6, v7}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 170
    new-instance v6, Ljava/net/URL;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v6, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p3

    check-cast p3, Ljavax/net/ssl/HttpsURLConnection;

    .line 171
    goto :goto_84

    .line 172
    :cond_62
    new-instance v5, Ljava/net/URL;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v5, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p3

    check-cast p3, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_84
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_29 .. :try_end_84} :catch_145
    .catchall {:try_start_29 .. :try_end_84} :catchall_12e

    .line 175
    :goto_84
    :try_start_84
    sget-object v5, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {p3, v5}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 197
    const-string v5, "TLS"

    invoke-static {v5}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v5

    .line 198
    new-instance v6, Ljava/security/SecureRandom;

    invoke-direct {v6}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v5, v4, v4, v6}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 199
    invoke-virtual {v5}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 202
    const-string v5, "X-Umeng-UTC"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v5, v6}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v5, "Msg-Type"

    const-string v6, "envelope/json"

    invoke-virtual {p3, v5, v6}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v5, "Content-Type"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ut/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, v5, p4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const/16 p4, 0x7530

    invoke-virtual {p3, p4}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 207
    invoke-virtual {p3, p4}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 208
    const-string p4, "POST"

    invoke-virtual {p3, p4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p3, v3}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 211
    invoke-virtual {p3, v3}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 212
    invoke-virtual {p3, v2}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    .line 214
    invoke-virtual {p3}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 215
    invoke-virtual {v4, p1}, Ljava/io/OutputStream;->write([B)V

    .line 216
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 218
    invoke-virtual {p3}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 220
    invoke-virtual {p3}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result p1

    .line 222
    const/16 p4, 0xc8

    if-ne p1, p4, :cond_118

    .line 223
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "--->>> send stateless message success : "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object p4, Lcom/umeng/commonsdk/stateless/a;->i:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, "/"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_117
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_84 .. :try_end_117} :catch_12c
    .catchall {:try_start_84 .. :try_end_117} :catchall_12a

    .line 224
    const/4 v2, 0x1

    .line 239
    :cond_118
    if-eqz v4, :cond_11f

    .line 241
    :try_start_11a
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_11d
    .catch Ljava/lang/Exception; {:try_start_11a .. :try_end_11d} :catch_11e

    .line 243
    goto :goto_11f

    .line 242
    :catch_11e
    move-exception p1

    .line 245
    :cond_11f
    :goto_11f
    if-eqz p3, :cond_15c

    .line 248
    :try_start_121
    invoke-static {v1, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-virtual {p3}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_127
    .catchall {:try_start_121 .. :try_end_127} :catchall_128

    .line 250
    :goto_127
    goto :goto_129

    .line 251
    :catchall_128
    move-exception p1

    .line 253
    :goto_129
    goto :goto_15c

    .line 235
    :catchall_12a
    move-exception p1

    goto :goto_130

    .line 227
    :catch_12c
    move-exception p1

    goto :goto_147

    .line 235
    :catchall_12e
    move-exception p1

    move-object p3, v4

    .line 236
    :goto_130
    :try_start_130
    const-string p2, "Exception,Failed to send message."

    invoke-static {p2, p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_135
    .catchall {:try_start_130 .. :try_end_135} :catchall_15d

    .line 239
    if-eqz v4, :cond_13c

    .line 241
    :try_start_137
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_13a
    .catch Ljava/lang/Exception; {:try_start_137 .. :try_end_13a} :catch_13b

    .line 243
    goto :goto_13c

    .line 242
    :catch_13b
    move-exception p1

    .line 245
    :cond_13c
    :goto_13c
    if-eqz p3, :cond_15c

    .line 248
    :try_start_13e
    invoke-static {v1, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-virtual {p3}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_144
    .catchall {:try_start_13e .. :try_end_144} :catchall_128

    goto :goto_127

    .line 227
    :catch_145
    move-exception p1

    move-object p3, v4

    .line 234
    :goto_147
    :try_start_147
    const-string p2, "SSLHandshakeException, Failed to send message."

    invoke-static {p2, p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_14c
    .catchall {:try_start_147 .. :try_end_14c} :catchall_15d

    .line 239
    if-eqz v4, :cond_153

    .line 241
    :try_start_14e
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_151
    .catch Ljava/lang/Exception; {:try_start_14e .. :try_end_151} :catch_152

    .line 243
    goto :goto_153

    .line 242
    :catch_152
    move-exception p1

    .line 245
    :cond_153
    :goto_153
    if-eqz p3, :cond_15c

    .line 248
    :try_start_155
    invoke-static {v1, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-virtual {p3}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_15b
    .catchall {:try_start_155 .. :try_end_15b} :catchall_128

    goto :goto_127

    .line 267
    :cond_15c
    :goto_15c
    return v2

    .line 239
    :catchall_15d
    move-exception p1

    if-eqz v4, :cond_165

    .line 241
    :try_start_160
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_163
    .catch Ljava/lang/Exception; {:try_start_160 .. :try_end_163} :catch_164

    .line 243
    goto :goto_165

    .line 242
    :catch_164
    move-exception p2

    .line 245
    :cond_165
    :goto_165
    if-eqz p3, :cond_170

    .line 248
    :try_start_167
    invoke-static {v1, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-virtual {p3}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_16d
    .catchall {:try_start_167 .. :try_end_16d} :catchall_16f

    .line 250
    nop

    .line 253
    goto :goto_170

    .line 251
    :catchall_16f
    move-exception p2

    .line 253
    :cond_170
    :goto_170
    throw p1

    .line 145
    :cond_171
    :goto_171
    new-array p1, v3, [Ljava/lang/Object;

    const-string p2, "[stateless] sendMessage, envelopeByte == null || path == null "

    aput-object p2, p1, v2

    const-string p2, "walle"

    invoke-static {p2, p1}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    return v2
.end method
