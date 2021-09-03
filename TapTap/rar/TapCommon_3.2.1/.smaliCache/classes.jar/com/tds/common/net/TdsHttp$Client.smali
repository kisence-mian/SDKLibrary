.class public Lcom/tds/common/net/TdsHttp$Client;
.super Ljava/lang/Object;
.source "TdsHttp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/net/TdsHttp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Client"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/net/TdsHttp$Client$Builder;
    }
.end annotation


# instance fields
.field final connectTimeout:I

.field final eventListener:Lcom/tds/common/net/EventListener;

.field final hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tds/common/net/TdsHttp$Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field final proxy:Ljava/net/Proxy;

.field final readTimeout:I

.field final sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field final trustAllCerts:Z

.field final writeTimeout:I


# direct methods
.method constructor <init>(Lcom/tds/common/net/TdsHttp$Client$Builder;)V
    .registers 4
    .param p1, "builder"    # Lcom/tds/common/net/TdsHttp$Client$Builder;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/tds/common/net/TdsHttp$Client$Builder;->interceptors:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/net/TdsHttp$Client;->interceptors:Ljava/util/List;

    .line 73
    iget v0, p1, Lcom/tds/common/net/TdsHttp$Client$Builder;->connectTimeout:I

    iput v0, p0, Lcom/tds/common/net/TdsHttp$Client;->connectTimeout:I

    .line 74
    iget v0, p1, Lcom/tds/common/net/TdsHttp$Client$Builder;->readTimeout:I

    iput v0, p0, Lcom/tds/common/net/TdsHttp$Client;->readTimeout:I

    .line 75
    iget v0, p1, Lcom/tds/common/net/TdsHttp$Client$Builder;->writeTimeout:I

    iput v0, p0, Lcom/tds/common/net/TdsHttp$Client;->writeTimeout:I

    .line 76
    iget-object v0, p1, Lcom/tds/common/net/TdsHttp$Client$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lcom/tds/common/net/TdsHttp$Client;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 77
    iget-object v0, p1, Lcom/tds/common/net/TdsHttp$Client$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lcom/tds/common/net/TdsHttp$Client;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 78
    iget-boolean v0, p1, Lcom/tds/common/net/TdsHttp$Client$Builder;->trustAllCerts:Z

    iput-boolean v0, p0, Lcom/tds/common/net/TdsHttp$Client;->trustAllCerts:Z

    .line 79
    iget-object v0, p1, Lcom/tds/common/net/TdsHttp$Client$Builder;->proxy:Ljava/net/Proxy;

    iput-object v0, p0, Lcom/tds/common/net/TdsHttp$Client;->proxy:Ljava/net/Proxy;

    .line 80
    iget-object v0, p1, Lcom/tds/common/net/TdsHttp$Client$Builder;->eventListener:Lcom/tds/common/net/EventListener;

    iput-object v0, p0, Lcom/tds/common/net/TdsHttp$Client;->eventListener:Lcom/tds/common/net/EventListener;

    .line 81
    return-void
.end method


# virtual methods
.method public getEventListener()Lcom/tds/common/net/EventListener;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/tds/common/net/TdsHttp$Client;->eventListener:Lcom/tds/common/net/EventListener;

    return-object v0
.end method

.method public newCall(Lcom/tds/common/net/TdsHttp$Request;)Lcom/tds/common/net/TdsHttp$Call;
    .registers 3
    .param p1, "request"    # Lcom/tds/common/net/TdsHttp$Request;

    .line 84
    new-instance v0, Lcom/tds/common/net/TdsHttp$Call;

    invoke-direct {v0, p0, p1}, Lcom/tds/common/net/TdsHttp$Call;-><init>(Lcom/tds/common/net/TdsHttp$Client;Lcom/tds/common/net/TdsHttp$Request;)V

    return-object v0
.end method
