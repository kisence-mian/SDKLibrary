.class public Lcom/bytedance/sdk/adnet/core/k;
.super Ljava/lang/Object;
.source "OkStack.java"

# interfaces
.implements Lcom/bytedance/sdk/adnet/face/IHttpStack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/adnet/core/k$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/bytedance/sdk/a/b/v;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x2710

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/bytedance/sdk/a/b/v$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/b/v$a;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 46
    invoke-virtual {v0, v2, v3, v1}, Lcom/bytedance/sdk/a/b/v$a;->a(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/a/b/v$a;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 47
    invoke-virtual {v0, v2, v3, v1}, Lcom/bytedance/sdk/a/b/v$a;->b(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/a/b/v$a;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 48
    invoke-virtual {v0, v2, v3, v1}, Lcom/bytedance/sdk/a/b/v$a;->c(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/a/b/v$a;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/v$a;->a()Lcom/bytedance/sdk/a/b/v;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/core/k;->a:Lcom/bytedance/sdk/a/b/v;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;Ljavax/net/ssl/HostnameVerifier;)V
    .registers 8

    .prologue
    const-wide/16 v2, 0x2710

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/bytedance/sdk/a/b/v$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/b/v$a;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 54
    invoke-virtual {v0, v2, v3, v1}, Lcom/bytedance/sdk/a/b/v$a;->a(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/a/b/v$a;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 55
    invoke-virtual {v0, v2, v3, v1}, Lcom/bytedance/sdk/a/b/v$a;->b(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/a/b/v$a;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 56
    invoke-virtual {v0, v2, v3, v1}, Lcom/bytedance/sdk/a/b/v$a;->c(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/a/b/v$a;

    move-result-object v0

    if-nez p3, :cond_20

    sget-object p3, Lcom/bytedance/sdk/a/b/a/i/e;->a:Lcom/bytedance/sdk/a/b/a/i/e;

    .line 57
    :cond_20
    invoke-virtual {v0, p3}, Lcom/bytedance/sdk/a/b/v$a;->a(Ljavax/net/ssl/HostnameVerifier;)Lcom/bytedance/sdk/a/b/v$a;

    move-result-object v0

    if-nez p1, :cond_2b

    new-instance p1, Lcom/bytedance/sdk/adnet/d/h;

    invoke-direct {p1}, Lcom/bytedance/sdk/adnet/d/h;-><init>()V

    :cond_2b
    if-nez p2, :cond_2f

    sget-object p2, Lcom/bytedance/sdk/adnet/d/h;->a:Ljavax/net/ssl/X509TrustManager;

    .line 58
    :cond_2f
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/a/b/v$a;->a(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lcom/bytedance/sdk/a/b/v$a;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/v$a;->a()Lcom/bytedance/sdk/a/b/v;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/core/k;->a:Lcom/bytedance/sdk/a/b/v;

    .line 61
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/a/b/ab;)Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 39
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/core/k;->b(Lcom/bytedance/sdk/a/b/ab;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/bytedance/sdk/a/b/r;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/a/b/r;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/adnet/core/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    if-nez p0, :cond_8

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 224
    :cond_7
    return-object v0

    .line 216
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/r;->a()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 217
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/r;->a()I

    move-result v2

    :goto_16
    if-ge v1, v2, :cond_7

    .line 218
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/a/b/r;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 219
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/a/b/r;->b(I)Ljava/lang/String;

    move-result-object v4

    .line 220
    if-eqz v3, :cond_2a

    .line 221
    new-instance v5, Lcom/bytedance/sdk/adnet/core/Header;

    invoke-direct {v5, v3, v4}, Lcom/bytedance/sdk/adnet/core/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_16
.end method

.method private static a(Lcom/bytedance/sdk/a/b/y$a;Lcom/bytedance/sdk/adnet/core/Request;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/a/b/y$a;",
            "Lcom/bytedance/sdk/adnet/core/Request",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/bytedance/sdk/adnet/err/a;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 230
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getMethod()I

    move-result v0

    packed-switch v0, :pswitch_data_56

    .line 263
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown method type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :pswitch_10
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getPostBody()[B

    move-result-object v0

    .line 233
    if-eqz v0, :cond_25

    .line 235
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getBodyContentType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/a/b/u;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/u;

    move-result-object v1

    .line 234
    invoke-static {v1, v0}, Lcom/bytedance/sdk/a/b/z;->a(Lcom/bytedance/sdk/a/b/u;[B)Lcom/bytedance/sdk/a/b/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/b/y$a;->a(Lcom/bytedance/sdk/a/b/z;)Lcom/bytedance/sdk/a/b/y$a;

    .line 265
    :cond_25
    :goto_25
    return-void

    .line 239
    :pswitch_26
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/y$a;->a()Lcom/bytedance/sdk/a/b/y$a;

    goto :goto_25

    .line 242
    :pswitch_2a
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/y$a;->c()Lcom/bytedance/sdk/a/b/y$a;

    goto :goto_25

    .line 245
    :pswitch_2e
    invoke-static {p1}, Lcom/bytedance/sdk/adnet/core/k;->d(Lcom/bytedance/sdk/adnet/core/Request;)Lcom/bytedance/sdk/a/b/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/b/y$a;->a(Lcom/bytedance/sdk/a/b/z;)Lcom/bytedance/sdk/a/b/y$a;

    goto :goto_25

    .line 248
    :pswitch_36
    invoke-static {p1}, Lcom/bytedance/sdk/adnet/core/k;->d(Lcom/bytedance/sdk/adnet/core/Request;)Lcom/bytedance/sdk/a/b/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/b/y$a;->c(Lcom/bytedance/sdk/a/b/z;)Lcom/bytedance/sdk/a/b/y$a;

    goto :goto_25

    .line 251
    :pswitch_3e
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/y$a;->b()Lcom/bytedance/sdk/a/b/y$a;

    goto :goto_25

    .line 254
    :pswitch_42
    const-string v0, "OPTIONS"

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/a/b/y$a;->a(Ljava/lang/String;Lcom/bytedance/sdk/a/b/z;)Lcom/bytedance/sdk/a/b/y$a;

    goto :goto_25

    .line 257
    :pswitch_48
    const-string v0, "TRACE"

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/a/b/y$a;->a(Ljava/lang/String;Lcom/bytedance/sdk/a/b/z;)Lcom/bytedance/sdk/a/b/y$a;

    goto :goto_25

    .line 260
    :pswitch_4e
    invoke-static {p1}, Lcom/bytedance/sdk/adnet/core/k;->d(Lcom/bytedance/sdk/adnet/core/Request;)Lcom/bytedance/sdk/a/b/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/b/y$a;->d(Lcom/bytedance/sdk/a/b/z;)Lcom/bytedance/sdk/a/b/y$a;

    goto :goto_25

    .line 230
    :pswitch_data_56
    .packed-switch -0x1
        :pswitch_10
        :pswitch_26
        :pswitch_2e
        :pswitch_36
        :pswitch_2a
        :pswitch_3e
        :pswitch_42
        :pswitch_48
        :pswitch_4e
    .end packed-switch
.end method

.method private a(Lcom/bytedance/sdk/adnet/core/Request;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/Request",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 142
    if-eqz p1, :cond_9

    .line 143
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/adnet/core/k;->b(Lcom/bytedance/sdk/adnet/core/Request;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/adnet/core/Request;->setIpAddrStr(Ljava/lang/String;)V

    .line 145
    :cond_9
    return-void
.end method

.method private static a(II)Z
    .registers 3

    .prologue
    .line 206
    const/4 v0, 0x4

    if-eq p0, v0, :cond_15

    const/16 v0, 0x64

    if-gt v0, p1, :cond_b

    const/16 v0, 0xc8

    if-lt p1, v0, :cond_15

    :cond_b
    const/16 v0, 0xcc

    if-eq p1, v0, :cond_15

    const/16 v0, 0x130

    if-eq p1, v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private static b(Lcom/bytedance/sdk/a/b/ab;)Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 304
    if-nez p0, :cond_4

    .line 305
    const/4 v0, 0x0

    .line 307
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/ab;->b()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_3
.end method

.method private b(Lcom/bytedance/sdk/adnet/core/Request;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/Request",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 149
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    .line 150
    :cond_8
    const-string v0, ""

    .line 161
    :goto_a
    return-object v0

    .line 154
    :cond_b
    :try_start_b
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1f} :catch_21

    move-result-object v0

    goto :goto_a

    .line 158
    :catch_21
    move-exception v0

    .line 159
    const-string v0, ""

    goto :goto_a
.end method

.method private c(Lcom/bytedance/sdk/adnet/core/Request;)Lcom/bytedance/sdk/a/b/y$a;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 165
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    .line 194
    :cond_9
    :goto_9
    return-object v0

    .line 169
    :cond_a
    new-instance v1, Lcom/bytedance/sdk/a/b/y$a;

    invoke-direct {v1}, Lcom/bytedance/sdk/a/b/y$a;-><init>()V

    .line 171
    new-instance v3, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 175
    sget-object v2, Lcom/bytedance/sdk/adnet/a;->a:Lcom/bytedance/sdk/adnet/core/o;

    if-eqz v2, :cond_26

    .line 176
    sget-object v0, Lcom/bytedance/sdk/adnet/a;->a:Lcom/bytedance/sdk/adnet/core/o;

    invoke-interface {v0, v4}, Lcom/bytedance/sdk/adnet/core/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    :cond_26
    const/4 v2, 0x0

    .line 180
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4e

    .line 182
    :try_start_2d
    new-instance v5, Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v1, v5}, Lcom/bytedance/sdk/a/b/y$a;->a(Ljava/net/URL;)Lcom/bytedance/sdk/a/b/y$a;

    move-result-object v0

    const-string v5, "Host"

    invoke-virtual {v0, v5, v4}, Lcom/bytedance/sdk/a/b/y$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/y$a;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_43} :catch_4b

    .line 184
    const/4 v0, 0x1

    .line 189
    :goto_44
    if-nez v0, :cond_49

    .line 191
    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/a/b/y$a;->a(Ljava/net/URL;)Lcom/bytedance/sdk/a/b/y$a;

    :cond_49
    move-object v0, v1

    .line 194
    goto :goto_9

    .line 185
    :catch_4b
    move-exception v0

    move v0, v2

    goto :goto_44

    :cond_4e
    move v0, v2

    goto :goto_44
.end method

.method private static d(Lcom/bytedance/sdk/adnet/core/Request;)Lcom/bytedance/sdk/a/b/z;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/adnet/err/a;
        }
    .end annotation

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/core/Request;->getBody()[B

    move-result-object v0

    .line 269
    if-nez v0, :cond_13

    .line 271
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/core/Request;->getMethod()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    .line 272
    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 278
    :cond_13
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/core/Request;->getBodyContentType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/a/b/u;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/u;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/bytedance/sdk/a/b/z;->a(Lcom/bytedance/sdk/a/b/u;[B)Lcom/bytedance/sdk/a/b/z;

    move-result-object v0

    :goto_1f
    return-object v0

    .line 274
    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method


# virtual methods
.method public performRequest(Lcom/bytedance/sdk/adnet/core/Request;Ljava/util/Map;)Lcom/bytedance/sdk/adnet/core/HttpResponse;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/Request",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/bytedance/sdk/adnet/core/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/bytedance/sdk/adnet/err/VAdError;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 65
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getTimeoutMs()I

    move-result v0

    .line 67
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/k;->a:Lcom/bytedance/sdk/a/b/v;

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/v;->y()Lcom/bytedance/sdk/a/b/v$a;

    move-result-object v1

    int-to-long v4, v0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 68
    invoke-virtual {v1, v4, v5, v3}, Lcom/bytedance/sdk/a/b/v$a;->a(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/a/b/v$a;

    move-result-object v1

    int-to-long v4, v0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 69
    invoke-virtual {v1, v4, v5, v3}, Lcom/bytedance/sdk/a/b/v$a;->b(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/a/b/v$a;

    move-result-object v1

    int-to-long v4, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 70
    invoke-virtual {v1, v4, v5, v0}, Lcom/bytedance/sdk/a/b/v$a;->c(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/a/b/v$a;

    move-result-object v0

    .line 71
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/a/b/v$a;->b(Z)Lcom/bytedance/sdk/a/b/v$a;

    move-result-object v0

    .line 72
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/a/b/v$a;->a(Z)Lcom/bytedance/sdk/a/b/v$a;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/v$a;->a()Lcom/bytedance/sdk/a/b/v;

    move-result-object v3

    .line 75
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/adnet/core/k;->c(Lcom/bytedance/sdk/adnet/core/Request;)Lcom/bytedance/sdk/a/b/y$a;

    move-result-object v4

    .line 77
    if-nez v4, :cond_3a

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "request params maybe null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_3a
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/adnet/core/k;->a(Lcom/bytedance/sdk/adnet/core/Request;)V

    .line 84
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_71

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/a/b/a/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    const-string v1, "User-Agent"

    invoke-virtual {v4, v1}, Lcom/bytedance/sdk/a/b/y$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/y$a;

    move-result-object v1

    const-string v5, "User-Agent"

    .line 87
    invoke-virtual {v1, v5, v0}, Lcom/bytedance/sdk/a/b/y$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/y$a;

    .line 91
    :cond_71
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getHeaders()Ljava/util/Map;

    move-result-object v5

    .line 92
    if-eqz v5, :cond_95

    .line 93
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_95

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 94
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Lcom/bytedance/sdk/a/b/y$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/y$a;

    goto :goto_7f

    .line 97
    :cond_95
    if-eqz p2, :cond_b5

    .line 98
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 100
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Lcom/bytedance/sdk/a/b/y$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/y$a;

    goto :goto_9f

    .line 105
    :cond_b5
    invoke-static {v4, p1}, Lcom/bytedance/sdk/adnet/core/k;->a(Lcom/bytedance/sdk/a/b/y$a;Lcom/bytedance/sdk/adnet/core/Request;)V

    .line 107
    invoke-virtual {v4}, Lcom/bytedance/sdk/a/b/y$a;->d()Lcom/bytedance/sdk/a/b/y;

    move-result-object v0

    .line 108
    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/a/b/v;->a(Lcom/bytedance/sdk/a/b/y;)Lcom/bytedance/sdk/a/b/e;

    move-result-object v0

    .line 109
    invoke-interface {v0}, Lcom/bytedance/sdk/a/b/e;->a()Lcom/bytedance/sdk/a/b/aa;

    move-result-object v3

    .line 111
    invoke-static {v3}, Lcom/bytedance/sdk/a/b/a/c/k;->a(Lcom/bytedance/sdk/a/b/aa;)Lcom/bytedance/sdk/a/b/a/c/k;

    move-result-object v0

    .line 112
    invoke-virtual {v3}, Lcom/bytedance/sdk/a/b/aa;->g()Lcom/bytedance/sdk/a/b/ab;

    move-result-object v4

    .line 114
    const/4 v1, 0x0

    .line 117
    :try_start_cd
    iget v5, v0, Lcom/bytedance/sdk/a/b/a/c/k;->b:I

    .line 118
    const/4 v0, -0x1

    if-ne v5, v0, :cond_e1

    .line 119
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Could not retrieve response code from HttpUrlConnection."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_da
    .catchall {:try_start_cd .. :try_end_da} :catchall_da

    .line 134
    :catchall_da
    move-exception v0

    :goto_db
    if-nez v1, :cond_e0

    .line 135
    invoke-virtual {v4}, Lcom/bytedance/sdk/a/b/ab;->close()V

    .line 137
    :cond_e0
    throw v0

    .line 122
    :cond_e1
    :try_start_e1
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getMethod()I

    move-result v0

    invoke-static {v0, v5}, Lcom/bytedance/sdk/adnet/core/k;->a(II)Z

    move-result v0

    if-nez v0, :cond_fc

    .line 123
    new-instance v0, Lcom/bytedance/sdk/adnet/core/HttpResponse;

    invoke-virtual {v3}, Lcom/bytedance/sdk/a/b/aa;->f()Lcom/bytedance/sdk/a/b/r;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/adnet/core/k;->a(Lcom/bytedance/sdk/a/b/r;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v5, v2}, Lcom/bytedance/sdk/adnet/core/HttpResponse;-><init>(ILjava/util/List;)V
    :try_end_f8
    .catchall {:try_start_e1 .. :try_end_f8} :catchall_da

    .line 135
    invoke-virtual {v4}, Lcom/bytedance/sdk/a/b/ab;->close()V

    .line 128
    :goto_fb
    return-object v0

    :cond_fc
    :try_start_fc
    new-instance v0, Lcom/bytedance/sdk/adnet/core/HttpResponse;

    .line 130
    invoke-virtual {v3}, Lcom/bytedance/sdk/a/b/aa;->f()Lcom/bytedance/sdk/a/b/r;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/adnet/core/k;->a(Lcom/bytedance/sdk/a/b/r;)Ljava/util/List;

    move-result-object v1

    .line 131
    invoke-virtual {v4}, Lcom/bytedance/sdk/a/b/ab;->a()J

    move-result-wide v6

    long-to-int v3, v6

    new-instance v6, Lcom/bytedance/sdk/adnet/core/k$a;

    invoke-direct {v6, v4}, Lcom/bytedance/sdk/adnet/core/k$a;-><init>(Lcom/bytedance/sdk/a/b/ab;)V

    invoke-direct {v0, v5, v1, v3, v6}, Lcom/bytedance/sdk/adnet/core/HttpResponse;-><init>(ILjava/util/List;ILjava/io/InputStream;)V
    :try_end_113
    .catchall {:try_start_fc .. :try_end_113} :catchall_114

    goto :goto_fb

    .line 134
    :catchall_114
    move-exception v0

    move v1, v2

    goto :goto_db
.end method
