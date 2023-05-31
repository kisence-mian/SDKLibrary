.class public Lcom/bytedance/sdk/a/b/a/g/e;
.super Ljava/lang/Object;
.source "Platform.java"


# static fields
.field private static final a:Lcom/bytedance/sdk/a/b/a/g/e;

.field private static final b:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 76
    invoke-static {}, Lcom/bytedance/sdk/a/b/a/g/e;->a()Lcom/bytedance/sdk/a/b/a/g/e;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/a/g/e;->a:Lcom/bytedance/sdk/a/b/a/g/e;

    .line 79
    const-class v0, Lcom/bytedance/sdk/a/b/v;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/a/g/e;->b:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Lcom/bytedance/sdk/a/b/a/g/e;
    .registers 1

    .prologue
    .line 192
    invoke-static {}, Lcom/bytedance/sdk/a/b/a/g/a;->a()Lcom/bytedance/sdk/a/b/a/g/e;

    move-result-object v0

    .line 194
    if-eqz v0, :cond_7

    .line 211
    :cond_6
    :goto_6
    return-object v0

    .line 198
    :cond_7
    invoke-static {}, Lcom/bytedance/sdk/a/b/a/g/b;->a()Lcom/bytedance/sdk/a/b/a/g/b;

    move-result-object v0

    .line 200
    if-nez v0, :cond_6

    .line 204
    invoke-static {}, Lcom/bytedance/sdk/a/b/a/g/c;->a()Lcom/bytedance/sdk/a/b/a/g/e;

    move-result-object v0

    .line 206
    if-nez v0, :cond_6

    .line 211
    new-instance v0, Lcom/bytedance/sdk/a/b/a/g/e;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/b/a/g/e;-><init>()V

    goto :goto_6
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/a/b/w;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 165
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_f
    if-ge v1, v3, :cond_27

    .line 166
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/a/b/w;

    .line 167
    sget-object v4, Lcom/bytedance/sdk/a/b/w;->a:Lcom/bytedance/sdk/a/b/w;

    if-ne v0, v4, :cond_1f

    .line 165
    :goto_1b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    .line 168
    :cond_1f
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/w;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 170
    :cond_27
    return-object v2
.end method

.method public static b()Lcom/bytedance/sdk/a/b/a/g/e;
    .registers 1

    .prologue
    .line 82
    sget-object v0, Lcom/bytedance/sdk/a/b/a/g/e;->a:Lcom/bytedance/sdk/a/b/a/g/e;

    return-object v0
.end method

.method static b(Ljava/util/List;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/a/b/w;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 219
    new-instance v2, Lcom/bytedance/sdk/a/a/c;

    invoke-direct {v2}, Lcom/bytedance/sdk/a/a/c;-><init>()V

    .line 220
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_b
    if-ge v1, v3, :cond_2e

    .line 221
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/a/b/w;

    .line 222
    sget-object v4, Lcom/bytedance/sdk/a/b/w;->a:Lcom/bytedance/sdk/a/b/w;

    if-ne v0, v4, :cond_1b

    .line 220
    :goto_17
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    .line 223
    :cond_1b
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/w;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    .line 224
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/w;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/a/a/c;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/c;

    goto :goto_17

    .line 226
    :cond_2e
    invoke-virtual {v2}, Lcom/bytedance/sdk/a/a/c;->q()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljavax/net/ssl/X509TrustManager;)Lcom/bytedance/sdk/a/b/a/i/c;
    .registers 4

    .prologue
    .line 174
    new-instance v0, Lcom/bytedance/sdk/a/b/a/i/a;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/a/b/a/g/e;->b(Ljavax/net/ssl/X509TrustManager;)Lcom/bytedance/sdk/a/b/a/i/f;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/a/b/a/i/a;-><init>(Lcom/bytedance/sdk/a/b/a/i/f;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 149
    sget-object v0, Lcom/bytedance/sdk/a/b/a/g/e;->b:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 150
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 152
    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public a(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 126
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    .prologue
    .line 135
    const/4 v0, 0x5

    if-ne p1, v0, :cond_b

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 136
    :goto_5
    sget-object v1, Lcom/bytedance/sdk/a/b/a/g/e;->b:Ljava/util/logging/Logger;

    invoke-virtual {v1, v0, p2, p3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    return-void

    .line 135
    :cond_b
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    goto :goto_5
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 156
    if-nez p2, :cond_15

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " To see where this was allocated, set the OkHttpClient logger level to FINE: Logger.getLogger(OkHttpClient.class.getName()).setLevel(Level.FINE);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 160
    :cond_15
    const/4 v0, 0x5

    check-cast p2, Ljava/lang/Throwable;

    invoke-virtual {p0, v0, p1, p2}, Lcom/bytedance/sdk/a/b/a/g/e;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 161
    return-void
.end method

.method public a(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 132
    return-void
.end method

.method public a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .registers 4
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
    .line 113
    return-void
.end method

.method public b(Ljavax/net/ssl/X509TrustManager;)Lcom/bytedance/sdk/a/b/a/i/f;
    .registers 4

    .prologue
    .line 253
    new-instance v0, Lcom/bytedance/sdk/a/b/a/i/b;

    invoke-interface {p1}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/a/b/a/i/b;-><init>([Ljava/security/cert/X509Certificate;)V

    return-object v0
.end method

.method public b(Ljavax/net/ssl/SSLSocket;)V
    .registers 2

    .prologue
    .line 120
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 140
    const/4 v0, 0x1

    return v0
.end method
