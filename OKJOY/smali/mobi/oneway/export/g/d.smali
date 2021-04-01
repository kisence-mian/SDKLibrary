.class Lmobi/oneway/export/g/d;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljavax/net/ssl/SSLSocketFactory;
    .registers 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    new-instance v3, Lmobi/oneway/export/g/d$1;

    invoke-direct {v3}, Lmobi/oneway/export/g/d$1;-><init>()V

    aput-object v3, v0, v2

    :try_start_c
    const-string v2, "SSL"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v3, v0, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    new-instance v0, Lmobi/oneway/export/g/c;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-direct {v0, v2}, Lmobi/oneway/export/g/c;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_24
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c .. :try_end_24} :catch_25
    .catch Ljava/security/KeyManagementException; {:try_start_c .. :try_end_24} :catch_2b

    :goto_24
    return-object v0

    :catch_25
    move-exception v0

    :goto_26
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    move-object v0, v1

    goto :goto_24

    :catch_2b
    move-exception v0

    goto :goto_26
.end method

.method public static b()Ljavax/net/ssl/HostnameVerifier;
    .registers 1

    new-instance v0, Lmobi/oneway/export/g/d$2;

    invoke-direct {v0}, Lmobi/oneway/export/g/d$2;-><init>()V

    return-object v0
.end method
