.class public Lcom/bytedance/sdk/adnet/core/j;
.super Ljava/lang/Object;
.source "OkStack.java"

# interfaces
.implements Lcom/bytedance/sdk/adnet/face/IHttpStack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/adnet/core/j$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/bytedance/sdk/a/b/v;


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/bytedance/sdk/a/b/v$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/b/v$a;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 45
    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3, v1}, Lcom/bytedance/sdk/a/b/v$a;->a(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/a/b/v$a;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 46
    invoke-virtual {v0, v2, v3, v1}, Lcom/bytedance/sdk/a/b/v$a;->b(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/a/b/v$a;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 47
    invoke-virtual {v0, v2, v3, v1}, Lcom/bytedance/sdk/a/b/v$a;->c(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/a/b/v$a;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/v$a;->a()Lcom/bytedance/sdk/a/b/v;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/core/j;->a:Lcom/bytedance/sdk/a/b/v;

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/a/b/ab;)Ljava/io/InputStream;
    .registers 1

    .line 38
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/core/j;->b(Lcom/bytedance/sdk/a/b/ab;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/bytedance/sdk/a/b/r;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/a/b/r;",
            ")",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/adnet/core/Header;",
            ">;"
        }
    .end annotation

    .line 212
    if-nez p0, :cond_8

    .line 213
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 215
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/r;->a()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 216
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/r;->a()I

    move-result v2

    :goto_16
    if-ge v1, v2, :cond_2d

    .line 217
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/a/b/r;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 218
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/a/b/r;->b(I)Ljava/lang/String;

    move-result-object v4

    .line 219
    if-eqz v3, :cond_2a

    .line 220
    new-instance v5, Lcom/bytedance/sdk/adnet/core/Header;

    invoke-direct {v5, v3, v4}, Lcom/bytedance/sdk/adnet/core/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 223
    :cond_2d
    return-object v0
.end method

.method private static a(Lcom/bytedance/sdk/a/b/y$a;Lcom/bytedance/sdk/adnet/core/Request;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/a/b/y$a;",
            "Lcom/bytedance/sdk/adnet/core/Request<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/bytedance/sdk/adnet/err/a;
        }
    .end annotation

    .line 229
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getMethod()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_58

    .line 262
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unknown method type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 259
    :pswitch_10
    invoke-static {p1}, Lcom/bytedance/sdk/adnet/core/j;->d(Lcom/bytedance/sdk/adnet/core/Request;)Lcom/bytedance/sdk/a/b/z;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/a/b/y$a;->d(Lcom/bytedance/sdk/a/b/z;)Lcom/bytedance/sdk/a/b/y$a;

    .line 260
    goto :goto_56

    .line 256
    :pswitch_18
    const-string p1, "TRACE"

    invoke-virtual {p0, p1, v1}, Lcom/bytedance/sdk/a/b/y$a;->a(Ljava/lang/String;Lcom/bytedance/sdk/a/b/z;)Lcom/bytedance/sdk/a/b/y$a;

    .line 257
    goto :goto_56

    .line 253
    :pswitch_1e
    const-string p1, "OPTIONS"

    invoke-virtual {p0, p1, v1}, Lcom/bytedance/sdk/a/b/y$a;->a(Ljava/lang/String;Lcom/bytedance/sdk/a/b/z;)Lcom/bytedance/sdk/a/b/y$a;

    .line 254
    goto :goto_56

    .line 250
    :pswitch_24
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/y$a;->b()Lcom/bytedance/sdk/a/b/y$a;

    .line 251
    goto :goto_56

    .line 241
    :pswitch_28
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/y$a;->c()Lcom/bytedance/sdk/a/b/y$a;

    .line 242
    goto :goto_56

    .line 247
    :pswitch_2c
    invoke-static {p1}, Lcom/bytedance/sdk/adnet/core/j;->d(Lcom/bytedance/sdk/adnet/core/Request;)Lcom/bytedance/sdk/a/b/z;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/a/b/y$a;->c(Lcom/bytedance/sdk/a/b/z;)Lcom/bytedance/sdk/a/b/y$a;

    .line 248
    goto :goto_56

    .line 244
    :pswitch_34
    invoke-static {p1}, Lcom/bytedance/sdk/adnet/core/j;->d(Lcom/bytedance/sdk/adnet/core/Request;)Lcom/bytedance/sdk/a/b/z;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/a/b/y$a;->a(Lcom/bytedance/sdk/a/b/z;)Lcom/bytedance/sdk/a/b/y$a;

    .line 245
    goto :goto_56

    .line 238
    :pswitch_3c
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/y$a;->a()Lcom/bytedance/sdk/a/b/y$a;

    .line 239
    goto :goto_56

    .line 231
    :pswitch_40
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getPostBody()[B

    move-result-object v0

    .line 232
    if-eqz v0, :cond_56

    .line 233
    nop

    .line 234
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getBodyContentType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/a/b/u;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/u;

    move-result-object p1

    .line 233
    invoke-static {p1, v0}, Lcom/bytedance/sdk/a/b/z;->a(Lcom/bytedance/sdk/a/b/u;[B)Lcom/bytedance/sdk/a/b/z;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/a/b/y$a;->a(Lcom/bytedance/sdk/a/b/z;)Lcom/bytedance/sdk/a/b/y$a;

    .line 264
    :cond_56
    :goto_56
    return-void

    nop

    :pswitch_data_58
    .packed-switch -0x1
        :pswitch_40
        :pswitch_3c
        :pswitch_34
        :pswitch_2c
        :pswitch_28
        :pswitch_24
        :pswitch_1e
        :pswitch_18
        :pswitch_10
    .end packed-switch
.end method

.method private a(Lcom/bytedance/sdk/adnet/core/Request;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/Request<",
            "*>;)V"
        }
    .end annotation

    .line 141
    if-eqz p1, :cond_9

    .line 142
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/adnet/core/j;->b(Lcom/bytedance/sdk/adnet/core/Request;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/adnet/core/Request;->setIpAddrStr(Ljava/lang/String;)V

    .line 144
    :cond_9
    return-void
.end method

.method private static a(II)Z
    .registers 3

    .line 205
    const/4 v0, 0x4

    if-eq p0, v0, :cond_15

    const/16 p0, 0x64

    if-gt p0, p1, :cond_b

    const/16 p0, 0xc8

    if-lt p1, p0, :cond_15

    :cond_b
    const/16 p0, 0xcc

    if-eq p1, p0, :cond_15

    const/16 p0, 0x130

    if-eq p1, p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return p0
.end method

.method private static b(Lcom/bytedance/sdk/a/b/ab;)Ljava/io/InputStream;
    .registers 1

    .line 303
    if-nez p0, :cond_4

    .line 304
    const/4 p0, 0x0

    return-object p0

    .line 306
    :cond_4
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/ab;->c()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method private b(Lcom/bytedance/sdk/adnet/core/Request;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/Request<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 148
    const-string v0, ""

    if-eqz p1, :cond_24

    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    goto :goto_24

    .line 153
    :cond_b
    :try_start_b
    new-instance v1, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p1

    .line 155
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    .line 156
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_20} :catch_21

    .line 159
    goto :goto_23

    .line 157
    :catch_21
    move-exception p1

    .line 158
    nop

    .line 160
    :goto_23
    return-object v0

    .line 149
    :cond_24
    :goto_24
    return-object v0
.end method

.method private c(Lcom/bytedance/sdk/adnet/core/Request;)Lcom/bytedance/sdk/a/b/y$a;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    const/4 v0, 0x0

    if-eqz p1, :cond_4e

    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_4e

    .line 168
    :cond_a
    new-instance v1, Lcom/bytedance/sdk/a/b/y$a;

    invoke-direct {v1}, Lcom/bytedance/sdk/a/b/y$a;-><init>()V

    .line 170
    new-instance v2, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 171
    nop

    .line 172
    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p1

    .line 173
    nop

    .line 174
    sget-object v3, Lcom/bytedance/sdk/adnet/a;->a:Lcom/bytedance/sdk/adnet/core/n;

    if-eqz v3, :cond_28

    .line 175
    sget-object v0, Lcom/bytedance/sdk/adnet/a;->a:Lcom/bytedance/sdk/adnet/core/n;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/adnet/core/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    :cond_28
    const/4 v3, 0x0

    .line 179
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_48

    .line 181
    :try_start_2f
    new-instance v4, Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/a/b/y$a;->a(Ljava/net/URL;)Lcom/bytedance/sdk/a/b/y$a;

    move-result-object v0

    const-string v4, "Host"

    invoke-virtual {v0, v4, p1}, Lcom/bytedance/sdk/a/b/y$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/y$a;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_45} :catch_47

    .line 183
    const/4 v3, 0x1

    .line 185
    goto :goto_48

    .line 184
    :catch_47
    move-exception p1

    .line 188
    :cond_48
    :goto_48
    if-nez v3, :cond_4d

    .line 190
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/a/b/y$a;->a(Ljava/net/URL;)Lcom/bytedance/sdk/a/b/y$a;

    .line 193
    :cond_4d
    return-object v1

    .line 165
    :cond_4e
    :goto_4e
    return-object v0
.end method

.method private static d(Lcom/bytedance/sdk/adnet/core/Request;)Lcom/bytedance/sdk/a/b/z;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/adnet/err/a;
        }
    .end annotation

    .line 267
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/core/Request;->getBody()[B

    move-result-object v0

    .line 268
    if-nez v0, :cond_16

    .line 270
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/core/Request;->getMethod()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    .line 271
    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_16

    .line 273
    :cond_14
    const/4 p0, 0x0

    return-object p0

    .line 277
    :cond_16
    :goto_16
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/core/Request;->getBodyContentType()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/a/b/u;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/u;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/bytedance/sdk/a/b/z;->a(Lcom/bytedance/sdk/a/b/u;[B)Lcom/bytedance/sdk/a/b/z;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public performRequest(Lcom/bytedance/sdk/adnet/core/Request;Ljava/util/Map;)Lcom/bytedance/sdk/adnet/core/HttpResponse;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/Request<",
            "*>;",
            "Ljava/util/Map<",
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

    .line 64
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getTimeoutMs()I

    move-result v0

    .line 66
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/j;->a:Lcom/bytedance/sdk/a/b/v;

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/v;->y()Lcom/bytedance/sdk/a/b/v$a;

    move-result-object v1

    int-to-long v2, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 67
    invoke-virtual {v1, v2, v3, v0}, Lcom/bytedance/sdk/a/b/v$a;->a(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/a/b/v$a;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 68
    invoke-virtual {v0, v2, v3, v1}, Lcom/bytedance/sdk/a/b/v$a;->b(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/a/b/v$a;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 69
    invoke-virtual {v0, v2, v3, v1}, Lcom/bytedance/sdk/a/b/v$a;->c(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/a/b/v$a;

    move-result-object v0

    .line 70
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/v$a;->b(Z)Lcom/bytedance/sdk/a/b/v$a;

    move-result-object v0

    .line 71
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/v$a;->a(Z)Lcom/bytedance/sdk/a/b/v$a;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/v$a;->a()Lcom/bytedance/sdk/a/b/v;

    move-result-object v0

    .line 74
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/adnet/core/j;->c(Lcom/bytedance/sdk/adnet/core/Request;)Lcom/bytedance/sdk/a/b/y$a;

    move-result-object v2

    .line 76
    if-eqz v2, :cond_f3

    .line 80
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/adnet/core/j;->a(Lcom/bytedance/sdk/adnet/core/Request;)V

    .line 83
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4a

    .line 84
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    .line 85
    const-string v4, "User-Agent"

    invoke-virtual {v2, v4}, Lcom/bytedance/sdk/a/b/y$a;->b(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/y$a;

    move-result-object v5

    .line 86
    invoke-virtual {v5, v4, v3}, Lcom/bytedance/sdk/a/b/y$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/y$a;

    .line 90
    :cond_4a
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getHeaders()Ljava/util/Map;

    move-result-object v3

    .line 91
    if-eqz v3, :cond_6e

    .line 92
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_58
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 93
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lcom/bytedance/sdk/a/b/y$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/y$a;

    .line 94
    goto :goto_58

    .line 96
    :cond_6e
    if-eqz p2, :cond_8e

    .line 97
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_78
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 99
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/bytedance/sdk/a/b/y$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/y$a;

    .line 100
    goto :goto_78

    .line 104
    :cond_8e
    invoke-static {v2, p1}, Lcom/bytedance/sdk/adnet/core/j;->a(Lcom/bytedance/sdk/a/b/y$a;Lcom/bytedance/sdk/adnet/core/Request;)V

    .line 106
    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/y$a;->d()Lcom/bytedance/sdk/a/b/y;

    move-result-object p2

    .line 107
    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/a/b/v;->a(Lcom/bytedance/sdk/a/b/y;)Lcom/bytedance/sdk/a/b/e;

    move-result-object p2

    .line 108
    invoke-interface {p2}, Lcom/bytedance/sdk/a/b/e;->a()Lcom/bytedance/sdk/a/b/aa;

    move-result-object p2

    .line 110
    invoke-static {p2}, Lcom/bytedance/sdk/a/b/a/c/k;->a(Lcom/bytedance/sdk/a/b/aa;)Lcom/bytedance/sdk/a/b/a/c/k;

    move-result-object v0

    .line 111
    invoke-virtual {p2}, Lcom/bytedance/sdk/a/b/aa;->h()Lcom/bytedance/sdk/a/b/ab;

    move-result-object v2

    .line 113
    const/4 v3, 0x0

    .line 116
    :try_start_a6
    iget v0, v0, Lcom/bytedance/sdk/a/b/a/c/k;->b:I

    .line 117
    const/4 v4, -0x1

    if-eq v0, v4, :cond_e3

    .line 121
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getMethod()I

    move-result p1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/adnet/core/j;->a(II)Z

    move-result p1

    if-nez p1, :cond_c7

    .line 122
    new-instance p1, Lcom/bytedance/sdk/adnet/core/HttpResponse;

    invoke-virtual {p2}, Lcom/bytedance/sdk/a/b/aa;->g()Lcom/bytedance/sdk/a/b/r;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/sdk/adnet/core/j;->a(Lcom/bytedance/sdk/a/b/r;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/bytedance/sdk/adnet/core/HttpResponse;-><init>(ILjava/util/List;)V
    :try_end_c2
    .catchall {:try_start_a6 .. :try_end_c2} :catchall_eb

    .line 133
    nop

    .line 134
    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/ab;->close()V

    .line 122
    return-object p1

    .line 126
    :cond_c7
    nop

    .line 127
    :try_start_c8
    new-instance p1, Lcom/bytedance/sdk/adnet/core/HttpResponse;

    .line 129
    invoke-virtual {p2}, Lcom/bytedance/sdk/a/b/aa;->g()Lcom/bytedance/sdk/a/b/r;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/sdk/adnet/core/j;->a(Lcom/bytedance/sdk/a/b/r;)Ljava/util/List;

    move-result-object p2

    .line 130
    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/ab;->b()J

    move-result-wide v3

    long-to-int v3, v3

    new-instance v4, Lcom/bytedance/sdk/adnet/core/j$a;

    invoke-direct {v4, v2}, Lcom/bytedance/sdk/adnet/core/j$a;-><init>(Lcom/bytedance/sdk/a/b/ab;)V

    invoke-direct {p1, v0, p2, v3, v4}, Lcom/bytedance/sdk/adnet/core/HttpResponse;-><init>(ILjava/util/List;ILjava/io/InputStream;)V
    :try_end_df
    .catchall {:try_start_c8 .. :try_end_df} :catchall_e1

    .line 133
    nop

    .line 127
    return-object p1

    .line 133
    :catchall_e1
    move-exception p1

    goto :goto_ed

    .line 118
    :cond_e3
    :try_start_e3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Could not retrieve response code from HttpUrlConnection."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_eb
    .catchall {:try_start_e3 .. :try_end_eb} :catchall_eb

    .line 133
    :catchall_eb
    move-exception p1

    move v1, v3

    :goto_ed
    if-nez v1, :cond_f2

    .line 134
    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/ab;->close()V

    .line 136
    :cond_f2
    throw p1

    .line 77
    :cond_f3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "request params maybe null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
