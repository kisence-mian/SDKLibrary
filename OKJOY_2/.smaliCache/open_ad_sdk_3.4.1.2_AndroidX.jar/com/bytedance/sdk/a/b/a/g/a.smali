.class Lcom/bytedance/sdk/a/b/a/g/a;
.super Lcom/bytedance/sdk/a/b/a/g/e;
.source "AndroidPlatform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/a/b/a/g/a$b;,
        Lcom/bytedance/sdk/a/b/a/g/a$c;,
        Lcom/bytedance/sdk/a/b/a/g/a$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final b:Lcom/bytedance/sdk/a/b/a/g/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/a/b/a/g/d<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/bytedance/sdk/a/b/a/g/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/a/b/a/g/d<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/bytedance/sdk/a/b/a/g/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/a/b/a/g/d<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/bytedance/sdk/a/b/a/g/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/a/b/a/g/d<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/bytedance/sdk/a/b/a/g/a$c;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lcom/bytedance/sdk/a/b/a/g/d;Lcom/bytedance/sdk/a/b/a/g/d;Lcom/bytedance/sdk/a/b/a/g/d;Lcom/bytedance/sdk/a/b/a/g/d;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bytedance/sdk/a/b/a/g/d<",
            "Ljava/net/Socket;",
            ">;",
            "Lcom/bytedance/sdk/a/b/a/g/d<",
            "Ljava/net/Socket;",
            ">;",
            "Lcom/bytedance/sdk/a/b/a/g/d<",
            "Ljava/net/Socket;",
            ">;",
            "Lcom/bytedance/sdk/a/b/a/g/d<",
            "Ljava/net/Socket;",
            ">;)V"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/g/e;-><init>()V

    .line 60
    invoke-static {}, Lcom/bytedance/sdk/a/b/a/g/a$c;->a()Lcom/bytedance/sdk/a/b/a/g/a$c;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/g/a;->f:Lcom/bytedance/sdk/a/b/a/g/a$c;

    .line 65
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/g/a;->a:Ljava/lang/Class;

    .line 66
    iput-object p2, p0, Lcom/bytedance/sdk/a/b/a/g/a;->b:Lcom/bytedance/sdk/a/b/a/g/d;

    .line 67
    iput-object p3, p0, Lcom/bytedance/sdk/a/b/a/g/a;->c:Lcom/bytedance/sdk/a/b/a/g/d;

    .line 68
    iput-object p4, p0, Lcom/bytedance/sdk/a/b/a/g/a;->d:Lcom/bytedance/sdk/a/b/a/g/d;

    .line 69
    iput-object p5, p0, Lcom/bytedance/sdk/a/b/a/g/a;->e:Lcom/bytedance/sdk/a/b/a/g/d;

    .line 70
    return-void
.end method

.method public static a()Lcom/bytedance/sdk/a/b/a/g/e;
    .registers 10

    .line 250
    const-class v0, [B

    const/4 v1, 0x0

    :try_start_3
    const-string v2, "com.android.org.conscrypt.SSLParametersImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_9} :catch_b

    .line 255
    move-object v4, v2

    goto :goto_13

    .line 251
    :catch_b
    move-exception v2

    .line 253
    :try_start_c
    const-string v2, "org.apache.harmony.xnet.provider.jsse.SSLParametersImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v4, v2

    .line 257
    :goto_13
    new-instance v5, Lcom/bytedance/sdk/a/b/a/g/d;

    const-string v2, "setUseSessionTickets"

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-direct {v5, v1, v2, v6}, Lcom/bytedance/sdk/a/b/a/g/d;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 259
    new-instance v6, Lcom/bytedance/sdk/a/b/a/g/d;

    const-string v2, "setHostname"

    new-array v7, v3, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-direct {v6, v1, v2, v7}, Lcom/bytedance/sdk/a/b/a/g/d;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 261
    nop

    .line 262
    nop

    .line 264
    invoke-static {}, Lcom/bytedance/sdk/a/b/a/g/a;->c()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 265
    new-instance v2, Lcom/bytedance/sdk/a/b/a/g/d;

    const-string v7, "getAlpnSelectedProtocol"

    new-array v9, v8, [Ljava/lang/Class;

    invoke-direct {v2, v0, v7, v9}, Lcom/bytedance/sdk/a/b/a/g/d;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 267
    new-instance v7, Lcom/bytedance/sdk/a/b/a/g/d;

    const-string v9, "setAlpnProtocols"

    new-array v3, v3, [Ljava/lang/Class;

    aput-object v0, v3, v8

    invoke-direct {v7, v1, v9, v3}, Lcom/bytedance/sdk/a/b/a/g/d;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    move-object v8, v7

    move-object v7, v2

    goto :goto_50

    .line 264
    :cond_4e
    move-object v7, v1

    move-object v8, v7

    .line 271
    :goto_50
    new-instance v0, Lcom/bytedance/sdk/a/b/a/g/a;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/bytedance/sdk/a/b/a/g/a;-><init>(Ljava/lang/Class;Lcom/bytedance/sdk/a/b/a/g/d;Lcom/bytedance/sdk/a/b/a/g/d;Lcom/bytedance/sdk/a/b/a/g/d;Lcom/bytedance/sdk/a/b/a/g/d;)V
    :try_end_56
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_56} :catch_57

    return-object v0

    .line 273
    :catch_57
    move-exception v0

    .line 277
    return-object v1
.end method

.method private a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 195
    :try_start_0
    const-string v0, "isCleartextTrafficPermitted"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 196
    invoke-virtual {p2, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 197
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-virtual {v0, p3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_1c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_1c} :catch_1d

    return p1

    .line 198
    :catch_1d
    move-exception v0

    .line 199
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/a/b/a/g/a;->b(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private b(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 206
    :try_start_0
    const-string v0, "isCleartextTrafficPermitted"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 207
    invoke-virtual {p2, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 208
    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p2, p3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_15
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_15} :catch_16

    return p1

    .line 209
    :catch_16
    move-exception p2

    .line 210
    invoke-super {p0, p1}, Lcom/bytedance/sdk/a/b/a/g/e;->b(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private static c()Z
    .registers 2

    .line 220
    const-string v0, "GMSCore_OpenSSL"

    invoke-static {v0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 221
    return v1

    .line 224
    :cond_a
    :try_start_a
    const-string v0, "android.net.Network"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_f} :catch_10

    .line 225
    return v1

    .line 226
    :catch_10
    move-exception v0

    .line 229
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public a(Ljavax/net/ssl/X509TrustManager;)Lcom/bytedance/sdk/a/b/a/i/c;
    .registers 9

    .line 234
    :try_start_0
    const-string v0, "android.net.http.X509TrustManagerExtensions"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 235
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljavax/net/ssl/X509TrustManager;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 236
    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 237
    const-string v3, "checkServerTrusted"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, [Ljava/security/cert/X509Certificate;

    aput-object v6, v5, v4

    const-class v4, Ljava/lang/String;

    aput-object v4, v5, v1

    const/4 v1, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v5, v1

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 239
    new-instance v1, Lcom/bytedance/sdk/a/b/a/g/a$a;

    invoke-direct {v1, v2, v0}, Lcom/bytedance/sdk/a/b/a/g/a$a;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35} :catch_36

    return-object v1

    .line 240
    :catch_36
    move-exception v0

    .line 241
    invoke-super {p0, p1}, Lcom/bytedance/sdk/a/b/a/g/e;->a(Ljavax/net/ssl/X509TrustManager;)Lcom/bytedance/sdk/a/b/a/i/c;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 166
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/g/a;->f:Lcom/bytedance/sdk/a/b/a/g/a$c;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/a/b/a/g/a$c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .registers 5

    .line 140
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/g/a;->d:Lcom/bytedance/sdk/a/b/a/g/d;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 141
    :cond_6
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/a/b/a/g/d;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    return-object v1

    .line 143
    :cond_d
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/g/a;->d:Lcom/bytedance/sdk/a/b/a/g/d;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Lcom/bytedance/sdk/a/b/a/g/d;->d(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    check-cast p1, [B

    .line 144
    if-eqz p1, :cond_23

    new-instance v1, Ljava/lang/String;

    sget-object v0, Lcom/bytedance/sdk/a/b/a/c;->e:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :cond_23
    return-object v1
.end method

.method public a(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 9

    .line 149
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x3

    .line 150
    :goto_5
    const/16 p1, 0xa

    if-eqz p3, :cond_22

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 153
    :cond_22
    const/4 p3, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    :goto_27
    if-ge p3, v1, :cond_49

    .line 154
    invoke-virtual {p2, p1, p3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 155
    const/4 v3, -0x1

    if-eq v2, v3, :cond_31

    goto :goto_32

    :cond_31
    move v2, v1

    .line 157
    :goto_32
    add-int/lit16 v3, p3, 0xfa0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 158
    invoke-virtual {p2, p3, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    const-string v4, "OkHttp"

    invoke-static {v0, v4, p3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 159
    nop

    .line 160
    if-lt v3, v2, :cond_47

    .line 153
    add-int/lit8 p3, v3, 0x1

    goto :goto_27

    .line 160
    :cond_47
    move p3, v3

    goto :goto_32

    .line 162
    :cond_49
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 171
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/g/a;->f:Lcom/bytedance/sdk/a/b/a/g/a$c;

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/a/b/a/g/a$c;->a(Ljava/lang/Object;)Z

    move-result p2

    .line 172
    if-nez p2, :cond_d

    .line 174
    const/4 p2, 0x5

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lcom/bytedance/sdk/a/b/a/g/a;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 176
    :cond_d
    return-void
.end method

.method public a(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    const-string v0, "Exception in connect"

    :try_start_2
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_5
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_5} :catch_22
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_5} :catch_18
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_5} :catch_7

    .line 96
    nop

    .line 97
    return-void

    .line 86
    :catch_7
    move-exception p1

    .line 89
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1a

    if-ne p2, p3, :cond_17

    .line 90
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 92
    throw p2

    .line 94
    :cond_17
    throw p1

    .line 80
    :catch_18
    move-exception p1

    .line 83
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 85
    throw p2

    .line 77
    :catch_22
    move-exception p1

    .line 78
    invoke-static {p1}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/AssertionError;)Z

    move-result p2

    if-eqz p2, :cond_2f

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 79
    :cond_2f
    throw p1
.end method

.method public a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/a/b/w;",
            ">;)V"
        }
    .end annotation

    .line 126
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1a

    .line 127
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/g/a;->b:Lcom/bytedance/sdk/a/b/a/g/d;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v2, p1, v3}, Lcom/bytedance/sdk/a/b/a/g/d;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/g/a;->c:Lcom/bytedance/sdk/a/b/a/g/d;

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p2, v3, v0

    invoke-virtual {v2, p1, v3}, Lcom/bytedance/sdk/a/b/a/g/d;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_1a
    iget-object p2, p0, Lcom/bytedance/sdk/a/b/a/g/a;->e:Lcom/bytedance/sdk/a/b/a/g/d;

    if-eqz p2, :cond_31

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/a/b/a/g/d;->a(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_31

    .line 133
    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p3}, Lcom/bytedance/sdk/a/b/a/g/a;->b(Ljava/util/List;)[B

    move-result-object p3

    aput-object p3, p2, v0

    .line 134
    iget-object p3, p0, Lcom/bytedance/sdk/a/b/a/g/a;->e:Lcom/bytedance/sdk/a/b/a/g/d;

    invoke-virtual {p3, p1, p2}, Lcom/bytedance/sdk/a/b/a/g/d;->d(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :cond_31
    return-void
.end method

.method public b(Ljavax/net/ssl/X509TrustManager;)Lcom/bytedance/sdk/a/b/a/i/f;
    .registers 8

    .line 286
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "findTrustAnchorByIssuerAndSignature"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/security/cert/X509Certificate;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 288
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 289
    new-instance v1, Lcom/bytedance/sdk/a/b/a/g/a$b;

    invoke-direct {v1, p1, v0}, Lcom/bytedance/sdk/a/b/a/g/a$b;-><init>(Ljavax/net/ssl/X509TrustManager;Ljava/lang/reflect/Method;)V
    :try_end_1a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_1a} :catch_1b

    return-object v1

    .line 290
    :catch_1b
    move-exception v0

    .line 291
    invoke-super {p0, p1}, Lcom/bytedance/sdk/a/b/a/g/e;->b(Ljavax/net/ssl/X509TrustManager;)Lcom/bytedance/sdk/a/b/a/i/f;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)Z
    .registers 6

    .line 181
    :try_start_0
    const-string v0, "android.security.NetworkSecurityPolicy"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 182
    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 183
    const/4 v3, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 184
    invoke-direct {p0, p1, v0, v1}, Lcom/bytedance/sdk/a/b/a/g/a;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result p1
    :try_end_1a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_1a} :catch_29
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_1a} :catch_27
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_1a} :catch_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_1a} :catch_1d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_1a} :catch_1b

    return p1

    .line 187
    :catch_1b
    move-exception p1

    goto :goto_20

    :catch_1d
    move-exception p1

    goto :goto_20

    :catch_1f
    move-exception p1

    .line 188
    :goto_20
    const-string v0, "unable to determine cleartext support"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1

    .line 185
    :catch_27
    move-exception v0

    goto :goto_2a

    :catch_29
    move-exception v0

    .line 186
    :goto_2a
    invoke-super {p0, p1}, Lcom/bytedance/sdk/a/b/a/g/e;->b(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
