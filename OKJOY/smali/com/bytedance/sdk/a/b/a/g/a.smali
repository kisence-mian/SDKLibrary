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
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final b:Lcom/bytedance/sdk/a/b/a/g/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/a/b/a/g/d",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/bytedance/sdk/a/b/a/g/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/a/b/a/g/d",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/bytedance/sdk/a/b/a/g/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/a/b/a/g/d",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/bytedance/sdk/a/b/a/g/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/a/b/a/g/d",
            "<",
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
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/bytedance/sdk/a/b/a/g/d",
            "<",
            "Ljava/net/Socket;",
            ">;",
            "Lcom/bytedance/sdk/a/b/a/g/d",
            "<",
            "Ljava/net/Socket;",
            ">;",
            "Lcom/bytedance/sdk/a/b/a/g/d",
            "<",
            "Ljava/net/Socket;",
            ">;",
            "Lcom/bytedance/sdk/a/b/a/g/d",
            "<",
            "Ljava/net/Socket;",
            ">;)V"
        }
    .end annotation

    .prologue
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
    .registers 11

    .prologue
    const/4 v6, 0x0

    .line 250
    :try_start_1
    const-string v0, "com.android.org.conscrypt.SSLParametersImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_4f

    move-result-object v1

    .line 257
    :goto_7
    :try_start_7
    new-instance v2, Lcom/bytedance/sdk/a/b/a/g/d;

    const/4 v0, 0x0

    const-string v3, "setUseSessionTickets"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v4, v5

    invoke-direct {v2, v0, v3, v4}, Lcom/bytedance/sdk/a/b/a/g/d;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 259
    new-instance v3, Lcom/bytedance/sdk/a/b/a/g/d;

    const/4 v0, 0x0

    const-string v4, "setHostname"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v5, v7

    invoke-direct {v3, v0, v4, v5}, Lcom/bytedance/sdk/a/b/a/g/d;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 264
    invoke-static {}, Lcom/bytedance/sdk/a/b/a/g/a;->c()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 265
    new-instance v4, Lcom/bytedance/sdk/a/b/a/g/d;

    const-class v0, [B

    const-string v5, "getAlpnSelectedProtocol"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-direct {v4, v0, v5, v7}, Lcom/bytedance/sdk/a/b/a/g/d;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 267
    new-instance v5, Lcom/bytedance/sdk/a/b/a/g/d;

    const/4 v0, 0x0

    const-string v7, "setAlpnProtocols"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, [B

    aput-object v10, v8, v9

    invoke-direct {v5, v0, v7, v8}, Lcom/bytedance/sdk/a/b/a/g/d;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 271
    :goto_49
    new-instance v0, Lcom/bytedance/sdk/a/b/a/g/a;

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/a/b/a/g/a;-><init>(Ljava/lang/Class;Lcom/bytedance/sdk/a/b/a/g/d;Lcom/bytedance/sdk/a/b/a/g/d;Lcom/bytedance/sdk/a/b/a/g/d;Lcom/bytedance/sdk/a/b/a/g/d;)V

    .line 277
    :goto_4e
    return-object v0

    .line 251
    :catch_4f
    move-exception v0

    .line 253
    const-string v0, "org.apache.harmony.xnet.provider.jsse.SSLParametersImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_55
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_55} :catch_57

    move-result-object v1

    goto :goto_7

    .line 273
    :catch_57
    move-exception v0

    move-object v0, v6

    .line 277
    goto :goto_4e

    :cond_5a
    move-object v5, v6

    move-object v4, v6

    goto :goto_49
.end method

.method private a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
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

    .prologue
    .line 195
    :try_start_0
    const-string v0, "isCleartextTrafficPermitted"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 196
    invoke-virtual {p2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 197
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_1d} :catch_1f

    move-result v0

    .line 199
    :goto_1e
    return v0

    .line 198
    :catch_1f
    move-exception v0

    .line 199
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/a/b/a/g/a;->b(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1e
.end method

.method private b(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
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

    .prologue
    .line 206
    :try_start_0
    const-string v0, "isCleartextTrafficPermitted"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    .line 207
    invoke-virtual {p2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 208
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_15
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_15} :catch_17

    move-result v0

    .line 210
    :goto_16
    return v0

    .line 209
    :catch_17
    move-exception v0

    .line 210
    invoke-super {p0, p1}, Lcom/bytedance/sdk/a/b/a/g/e;->b(Ljava/lang/String;)Z

    move-result v0

    goto :goto_16
.end method

.method private static c()Z
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 220
    const-string v1, "GMSCore_OpenSSL"

    invoke-static {v1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 229
    :goto_9
    return v0

    .line 224
    :cond_a
    :try_start_a
    const-string v1, "android.net.Network"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_f} :catch_10

    goto :goto_9

    .line 226
    :catch_10
    move-exception v0

    .line 229
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public a(Ljavax/net/ssl/X509TrustManager;)Lcom/bytedance/sdk/a/b/a/i/c;
    .registers 8

    .prologue
    .line 234
    :try_start_0
    const-string v0, "android.net.http.X509TrustManagerExtensions"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 235
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljavax/net/ssl/X509TrustManager;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 236
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 237
    const-string v2, "checkServerTrusted"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, [Ljava/security/cert/X509Certificate;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 239
    new-instance v0, Lcom/bytedance/sdk/a/b/a/g/a$a;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/a/b/a/g/a$a;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3a

    .line 241
    :goto_39
    return-object v0

    .line 240
    :catch_3a
    move-exception v0

    .line 241
    invoke-super {p0, p1}, Lcom/bytedance/sdk/a/b/a/g/e;->a(Ljavax/net/ssl/X509TrustManager;)Lcom/bytedance/sdk/a/b/a/i/c;

    move-result-object v0

    goto :goto_39
.end method

.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/g/a;->f:Lcom/bytedance/sdk/a/b/a/g/a$c;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/a/b/a/g/a$c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 140
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/g/a;->d:Lcom/bytedance/sdk/a/b/a/g/d;

    if-nez v0, :cond_6

    .line 144
    :cond_5
    :goto_5
    return-object v1

    .line 141
    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/g/a;->d:Lcom/bytedance/sdk/a/b/a/g/d;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/a/b/a/g/d;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 143
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/g/a;->d:Lcom/bytedance/sdk/a/b/a/g/d;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Lcom/bytedance/sdk/a/b/a/g/d;->d(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    .line 144
    if-eqz v0, :cond_27

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/bytedance/sdk/a/b/a/c;->e:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v0, v1

    :goto_25
    move-object v1, v0

    goto :goto_5

    :cond_27
    move-object v0, v1

    goto :goto_25
.end method

.method public a(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 11

    .prologue
    const/16 v6, 0xa

    const/4 v0, 0x5

    .line 149
    if-ne p1, v0, :cond_43

    move v4, v0

    .line 150
    :goto_6
    if-eqz p3, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 153
    :cond_21
    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    :goto_26
    if-ge v2, v1, :cond_48

    .line 154
    invoke-virtual {p2, v6, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 155
    const/4 v3, -0x1

    if-eq v0, v3, :cond_46

    .line 157
    :goto_2f
    add-int/lit16 v3, v2, 0xfa0

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 158
    const-string v5, "OkHttp"

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5, v2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 160
    if-lt v3, v0, :cond_49

    .line 153
    add-int/lit8 v2, v3, 0x1

    goto :goto_26

    .line 149
    :cond_43
    const/4 v0, 0x3

    move v4, v0

    goto :goto_6

    :cond_46
    move v0, v1

    .line 155
    goto :goto_2f

    .line 162
    :cond_48
    return-void

    :cond_49
    move v2, v3

    goto :goto_2f
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 171
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/g/a;->f:Lcom/bytedance/sdk/a/b/a/g/a$c;

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/a/b/a/g/a$c;->a(Ljava/lang/Object;)Z

    move-result v0

    .line 172
    if-nez v0, :cond_d

    .line 174
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/bytedance/sdk/a/b/a/g/a;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 176
    :cond_d
    return-void
.end method

.method public a(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_3
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_3} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_12
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_3} :catch_1e

    .line 97
    return-void

    .line 77
    :catch_4
    move-exception v0

    .line 78
    invoke-static {v0}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/AssertionError;)Z

    move-result v1

    if-eqz v1, :cond_11

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 79
    :cond_11
    throw v0

    .line 80
    :catch_12
    move-exception v0

    .line 83
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Exception in connect"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 85
    throw v1

    .line 86
    :catch_1e
    move-exception v0

    .line 89
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_30

    .line 90
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Exception in connect"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 92
    throw v1

    .line 94
    :cond_30
    throw v0
.end method

.method public a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/a/b/w;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 126
    if-eqz p2, :cond_1a

    .line 127
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/g/a;->b:Lcom/bytedance/sdk/a/b/a/g/d;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/a/b/a/g/d;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/g/a;->c:Lcom/bytedance/sdk/a/b/a/g/d;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v4

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/a/b/a/g/d;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_1a
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/g/a;->e:Lcom/bytedance/sdk/a/b/a/g/d;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/g/a;->e:Lcom/bytedance/sdk/a/b/a/g/d;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/a/b/a/g/d;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 133
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p3}, Lcom/bytedance/sdk/a/b/a/g/a;->b(Ljava/util/List;)[B

    move-result-object v1

    aput-object v1, v0, v4

    .line 134
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/g/a;->e:Lcom/bytedance/sdk/a/b/a/g/d;

    invoke-virtual {v1, p1, v0}, Lcom/bytedance/sdk/a/b/a/g/d;->d(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :cond_33
    return-void
.end method

.method public b(Ljavax/net/ssl/X509TrustManager;)Lcom/bytedance/sdk/a/b/a/i/f;
    .registers 7

    .prologue
    .line 286
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "findTrustAnchorByIssuerAndSignature"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/security/cert/X509Certificate;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 288
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 289
    new-instance v0, Lcom/bytedance/sdk/a/b/a/g/a$b;

    invoke-direct {v0, p1, v1}, Lcom/bytedance/sdk/a/b/a/g/a$b;-><init>(Ljavax/net/ssl/X509TrustManager;Ljava/lang/reflect/Method;)V
    :try_end_1b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 291
    :goto_1b
    return-object v0

    .line 290
    :catch_1c
    move-exception v0

    .line 291
    invoke-super {p0, p1}, Lcom/bytedance/sdk/a/b/a/g/e;->b(Ljavax/net/ssl/X509TrustManager;)Lcom/bytedance/sdk/a/b/a/i/f;

    move-result-object v0

    goto :goto_1b
.end method

.method public b(Ljava/lang/String;)Z
    .registers 6

    .prologue
    .line 181
    :try_start_0
    const-string v0, "android.security.NetworkSecurityPolicy"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 182
    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 183
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 184
    invoke-direct {p0, p1, v0, v1}, Lcom/bytedance/sdk/a/b/a/g/a;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z
    :try_end_1a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_1a} :catch_1c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_1a} :catch_2e
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_1a} :catch_22
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_1a} :catch_2a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_1a} :catch_2c

    move-result v0

    .line 186
    :goto_1b
    return v0

    .line 185
    :catch_1c
    move-exception v0

    .line 186
    :goto_1d
    invoke-super {p0, p1}, Lcom/bytedance/sdk/a/b/a/g/e;->b(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1b

    .line 187
    :catch_22
    move-exception v0

    .line 188
    :goto_23
    const-string v1, "unable to determine cleartext support"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0

    .line 187
    :catch_2a
    move-exception v0

    goto :goto_23

    :catch_2c
    move-exception v0

    goto :goto_23

    .line 185
    :catch_2e
    move-exception v0

    goto :goto_1d
.end method
