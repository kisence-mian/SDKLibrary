.class public final Lcom/mintegral/msdk/base/common/net/i;
.super Lorg/apache/http/impl/client/DefaultHttpClient;
.source "CommonPPHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/base/common/net/i$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mintegral/msdk/base/common/net/j;

.field private b:Ljava/lang/RuntimeException;


# direct methods
.method private constructor <init>(IILcom/mintegral/msdk/base/common/net/j;)V
    .registers 10

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 80
    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 54
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "QihooHttpClient created and never closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mintegral/msdk/base/common/net/i;->b:Ljava/lang/RuntimeException;

    .line 82
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/common/net/i;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 83
    iput-object p3, p0, Lcom/mintegral/msdk/base/common/net/i;->a:Lcom/mintegral/msdk/base/common/net/j;

    .line 84
    iget-object v1, p0, Lcom/mintegral/msdk/base/common/net/i;->a:Lcom/mintegral/msdk/base/common/net/j;

    iget-object v1, v1, Lcom/mintegral/msdk/base/common/net/j;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 85
    new-instance v1, Lorg/apache/http/HttpHost;

    iget-object v2, p0, Lcom/mintegral/msdk/base/common/net/i;->a:Lcom/mintegral/msdk/base/common/net/j;

    iget-object v2, v2, Lcom/mintegral/msdk/base/common/net/j;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/mintegral/msdk/base/common/net/i;->a:Lcom/mintegral/msdk/base/common/net/j;

    iget-object v3, v3, Lcom/mintegral/msdk/base/common/net/j;->c:Ljava/lang/String;

    .line 86
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 87
    const-string v2, "http.route.default-proxy"

    invoke-interface {v0, v2, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 90
    :cond_34
    const-string v1, "http.connection.timeout"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 91
    const-string v1, "http.socket.timeout"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 92
    const-string v1, "http.socket.buffer-size"

    const/16 v2, 0x2000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 93
    const-string v1, "http.protocol.allow-circular-redirects"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 96
    :try_start_5a
    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 97
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 98
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    invoke-virtual {p0, v1}, Lcom/mintegral/msdk/base/common/net/i;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_6e} :catch_ac

    .line 104
    :goto_6e
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_77

    .line 105
    invoke-static {v0, v4}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 108
    :cond_77
    sget v0, Lcom/mintegral/msdk/base/common/net/i$a;->a:I

    if-eq p1, v0, :cond_ab

    .line 110
    sget v0, Lcom/mintegral/msdk/base/common/net/i$a;->b:I

    if-ne p1, v0, :cond_ab

    .line 1134
    :try_start_7f
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    .line 1133
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 1135
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 1137
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/common/net/i;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    .line 1138
    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v0

    .line 1142
    const-string v1, "PPHttpClient"

    const-string v2, "system api level lower than API 8 FROYO"

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "https"

    .line 1147
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v3

    const/16 v4, 0x1bb

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 1145
    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_ab} :catch_b5

    .line 1154
    :cond_ab
    :goto_ab
    return-void

    .line 100
    :catch_ac
    move-exception v1

    const-string v1, "PPHttpClient"

    const-string v2, "setversion deprecated"

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6e

    .line 1151
    :catch_b5
    move-exception v0

    .line 1153
    const-string v1, "PPHttpClient"

    const-string v2, "Exception"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_ab
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/mintegral/msdk/base/common/net/j;)V
    .registers 5

    .prologue
    .line 66
    invoke-static {p1}, Lcom/mintegral/msdk/base/common/net/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0, p2, p3}, Lcom/mintegral/msdk/base/common/net/i;-><init>(IILcom/mintegral/msdk/base/common/net/j;)V

    .line 67
    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 203
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 204
    sget v0, Lcom/mintegral/msdk/base/common/net/i$a;->b:I

    .line 206
    :goto_10
    return v0

    :cond_11
    sget v0, Lcom/mintegral/msdk/base/common/net/i$a;->a:I

    goto :goto_10
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/i;->b:Ljava/lang/RuntimeException;

    if-eqz v0, :cond_e

    .line 169
    :try_start_4
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/common/net/i;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_b} :catch_f

    .line 173
    :goto_b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/base/common/net/i;->b:Ljava/lang/RuntimeException;

    .line 175
    :cond_e
    return-void

    .line 171
    :catch_f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    goto :goto_b
.end method

.method protected final createHttpParams()Lorg/apache/http/params/HttpParams;
    .registers 4

    .prologue
    .line 185
    const/4 v0, 0x0

    .line 187
    :try_start_1
    invoke-super {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->createHttpParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 188
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_9} :catch_a

    .line 193
    :goto_9
    return-object v0

    .line 190
    :catch_a
    move-exception v1

    const-string v1, "PPHttpClient"

    const-string v2, "createHttpParams  failed"

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method protected final finalize()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 158
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 159
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/i;->b:Ljava/lang/RuntimeException;

    if-eqz v0, :cond_10

    .line 160
    const-string v0, "PPHttpClient"

    const-string v1, "Leak found"

    iget-object v2, p0, Lcom/mintegral/msdk/base/common/net/i;->b:Ljava/lang/RuntimeException;

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 161
    :cond_10
    return-void
.end method
