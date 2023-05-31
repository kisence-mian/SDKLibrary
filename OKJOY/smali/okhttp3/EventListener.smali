.class public abstract Lokhttp3/EventListener;
.super Ljava/lang/Object;
.source "EventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/EventListener$Factory;
    }
.end annotation


# static fields
.field public static final NONE:Lokhttp3/EventListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    new-instance v0, Lokhttp3/EventListener$1;

    invoke-direct {v0}, Lokhttp3/EventListener$1;-><init>()V

    sput-object v0, Lokhttp3/EventListener;->NONE:Lokhttp3/EventListener;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static factory(Lokhttp3/EventListener;)Lokhttp3/EventListener$Factory;
    .registers 2
    .param p0, "listener"    # Lokhttp3/EventListener;

    .prologue
    .line 57
    new-instance v0, Lokhttp3/EventListener$2;

    invoke-direct {v0, p0}, Lokhttp3/EventListener$2;-><init>(Lokhttp3/EventListener;)V

    return-object v0
.end method


# virtual methods
.method public callEnd(Lokhttp3/Call;)V
    .registers 2
    .param p1, "call"    # Lokhttp3/Call;

    .prologue
    .line 270
    return-void
.end method

.method public callFailed(Lokhttp3/Call;Ljava/io/IOException;)V
    .registers 3
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "ioe"    # Ljava/io/IOException;

    .prologue
    .line 278
    return-void
.end method

.method public callStart(Lokhttp3/Call;)V
    .registers 2
    .param p1, "call"    # Lokhttp3/Call;

    .prologue
    .line 73
    return-void
.end method

.method public connectEnd(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;)V
    .registers 5
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "inetSocketAddress"    # Ljava/net/InetSocketAddress;
    .param p3, "proxy"    # Ljava/net/Proxy;
    .param p4, "protocol"    # Lokhttp3/Protocol;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 139
    return-void
.end method

.method public connectFailed(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;Ljava/io/IOException;)V
    .registers 6
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "inetSocketAddress"    # Ljava/net/InetSocketAddress;
    .param p3, "proxy"    # Ljava/net/Proxy;
    .param p4, "protocol"    # Lokhttp3/Protocol;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "ioe"    # Ljava/io/IOException;

    .prologue
    .line 151
    return-void
.end method

.method public connectStart(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V
    .registers 4
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "inetSocketAddress"    # Ljava/net/InetSocketAddress;
    .param p3, "proxy"    # Ljava/net/Proxy;

    .prologue
    .line 105
    return-void
.end method

.method public connectionAcquired(Lokhttp3/Call;Lokhttp3/Connection;)V
    .registers 3
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "connection"    # Lokhttp3/Connection;

    .prologue
    .line 160
    return-void
.end method

.method public connectionReleased(Lokhttp3/Call;Lokhttp3/Connection;)V
    .registers 3
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "connection"    # Lokhttp3/Connection;

    .prologue
    .line 171
    return-void
.end method

.method public dnsEnd(Lokhttp3/Call;Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "domainName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Call;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p3, "inetAddressList":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    return-void
.end method

.method public dnsStart(Lokhttp3/Call;Ljava/lang/String;)V
    .registers 3
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "domainName"    # Ljava/lang/String;

    .prologue
    .line 85
    return-void
.end method

.method public requestBodyEnd(Lokhttp3/Call;J)V
    .registers 4
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "byteCount"    # J

    .prologue
    .line 215
    return-void
.end method

.method public requestBodyStart(Lokhttp3/Call;)V
    .registers 2
    .param p1, "call"    # Lokhttp3/Call;

    .prologue
    .line 207
    return-void
.end method

.method public requestHeadersEnd(Lokhttp3/Call;Lokhttp3/Request;)V
    .registers 3
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "request"    # Lokhttp3/Request;

    .prologue
    .line 194
    return-void
.end method

.method public requestHeadersStart(Lokhttp3/Call;)V
    .registers 2
    .param p1, "call"    # Lokhttp3/Call;

    .prologue
    .line 183
    return-void
.end method

.method public responseBodyEnd(Lokhttp3/Call;J)V
    .registers 4
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "byteCount"    # J

    .prologue
    .line 261
    return-void
.end method

.method public responseBodyStart(Lokhttp3/Call;)V
    .registers 2
    .param p1, "call"    # Lokhttp3/Call;

    .prologue
    .line 250
    return-void
.end method

.method public responseHeadersEnd(Lokhttp3/Call;Lokhttp3/Response;)V
    .registers 3
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;

    .prologue
    .line 238
    return-void
.end method

.method public responseHeadersStart(Lokhttp3/Call;)V
    .registers 2
    .param p1, "call"    # Lokhttp3/Call;

    .prologue
    .line 227
    return-void
.end method

.method public secureConnectEnd(Lokhttp3/Call;Lokhttp3/Handshake;)V
    .registers 3
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "handshake"    # Lokhttp3/Handshake;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 128
    return-void
.end method

.method public secureConnectStart(Lokhttp3/Call;)V
    .registers 2
    .param p1, "call"    # Lokhttp3/Call;

    .prologue
    .line 120
    return-void
.end method
