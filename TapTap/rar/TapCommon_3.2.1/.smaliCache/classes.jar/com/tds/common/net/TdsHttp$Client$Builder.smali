.class public Lcom/tds/common/net/TdsHttp$Client$Builder;
.super Ljava/lang/Object;
.source "TdsHttp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/net/TdsHttp$Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field connectTimeout:I

.field eventListener:Lcom/tds/common/net/EventListener;

.field hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tds/common/net/TdsHttp$Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field proxy:Ljava/net/Proxy;

.field readTimeout:I

.field sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field trustAllCerts:Z

.field writeTimeout:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tds/common/net/TdsHttp$Client$Builder;->interceptors:Ljava/util/List;

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tds/common/net/TdsHttp$Client$Builder;->trustAllCerts:Z

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tds/common/net/TdsHttp$Client$Builder;->proxy:Ljava/net/Proxy;

    .line 94
    iput-object v0, p0, Lcom/tds/common/net/TdsHttp$Client$Builder;->eventListener:Lcom/tds/common/net/EventListener;

    .line 97
    const/16 v0, 0x1388

    iput v0, p0, Lcom/tds/common/net/TdsHttp$Client$Builder;->connectTimeout:I

    .line 98
    iput v0, p0, Lcom/tds/common/net/TdsHttp$Client$Builder;->readTimeout:I

    .line 99
    iput v0, p0, Lcom/tds/common/net/TdsHttp$Client$Builder;->writeTimeout:I

    .line 100
    return-void
.end method


# virtual methods
.method public addEventListener(Lcom/tds/common/net/EventListener;)Lcom/tds/common/net/TdsHttp$Client$Builder;
    .registers 2
    .param p1, "eventListener"    # Lcom/tds/common/net/EventListener;

    .line 144
    iput-object p1, p0, Lcom/tds/common/net/TdsHttp$Client$Builder;->eventListener:Lcom/tds/common/net/EventListener;

    .line 145
    return-object p0
.end method

.method public addInterceptor(Lcom/tds/common/net/TdsHttp$Interceptor;)Lcom/tds/common/net/TdsHttp$Client$Builder;
    .registers 3
    .param p1, "interceptor"    # Lcom/tds/common/net/TdsHttp$Interceptor;

    .line 103
    # invokes: Lcom/tds/common/net/TdsHttp;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {p1}, Lcom/tds/common/net/TdsHttp;->access$000(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lcom/tds/common/net/TdsHttp$Client$Builder;->interceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    return-object p0
.end method

.method public build()Lcom/tds/common/net/TdsHttp$Client;
    .registers 2

    .line 149
    new-instance v0, Lcom/tds/common/net/TdsHttp$Client;

    invoke-direct {v0, p0}, Lcom/tds/common/net/TdsHttp$Client;-><init>(Lcom/tds/common/net/TdsHttp$Client$Builder;)V

    return-object v0
.end method

.method public connectTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/tds/common/net/TdsHttp$Client$Builder;
    .registers 6
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 109
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/tds/common/net/TdsHttp$Client$Builder;->connectTimeout:I

    .line 110
    return-object p0
.end method

.method public hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcom/tds/common/net/TdsHttp$Client$Builder;
    .registers 2
    .param p1, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .line 129
    iput-object p1, p0, Lcom/tds/common/net/TdsHttp$Client$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 130
    return-object p0
.end method

.method public proxy(Ljava/net/Proxy;)Lcom/tds/common/net/TdsHttp$Client$Builder;
    .registers 2
    .param p1, "proxy"    # Ljava/net/Proxy;

    .line 139
    iput-object p1, p0, Lcom/tds/common/net/TdsHttp$Client$Builder;->proxy:Ljava/net/Proxy;

    .line 140
    return-object p0
.end method

.method public readTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/tds/common/net/TdsHttp$Client$Builder;
    .registers 6
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 114
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/tds/common/net/TdsHttp$Client$Builder;->readTimeout:I

    .line 115
    return-object p0
.end method

.method public sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lcom/tds/common/net/TdsHttp$Client$Builder;
    .registers 2
    .param p1, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    .line 124
    iput-object p1, p0, Lcom/tds/common/net/TdsHttp$Client$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 125
    return-object p0
.end method

.method public trustAllCerts(Z)Lcom/tds/common/net/TdsHttp$Client$Builder;
    .registers 2
    .param p1, "trustAllCerts"    # Z

    .line 134
    iput-boolean p1, p0, Lcom/tds/common/net/TdsHttp$Client$Builder;->trustAllCerts:Z

    .line 135
    return-object p0
.end method

.method public writeTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/tds/common/net/TdsHttp$Client$Builder;
    .registers 6
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 119
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/tds/common/net/TdsHttp$Client$Builder;->writeTimeout:I

    .line 120
    return-object p0
.end method
