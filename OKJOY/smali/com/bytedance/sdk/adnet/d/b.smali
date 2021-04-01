.class public Lcom/bytedance/sdk/adnet/d/b;
.super Ljava/lang/Object;
.source "HTTPSTrustManager.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public static a()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 34
    :try_start_0
    new-instance v0, Lcom/bytedance/sdk/adnet/d/b$1;

    invoke-direct {v0}, Lcom/bytedance/sdk/adnet/d/b$1;-><init>()V

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 41
    new-instance v0, Lcom/bytedance/sdk/adnet/d/h;

    invoke-direct {v0}, Lcom/bytedance/sdk/adnet/d/h;-><init>()V

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_10} :catch_11

    .line 45
    :goto_10
    return-void

    .line 42
    :catch_11
    move-exception v0

    .line 43
    const-string v1, "HTTPSTrustManager"

    const-string v2, "allowAllSSL error: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10
.end method
