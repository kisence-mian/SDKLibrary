.class public Lcom/tds/common/net/TdsHttp$Call;
.super Ljava/lang/Object;
.source "TdsHttp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/net/TdsHttp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Call"
.end annotation


# instance fields
.field final client:Lcom/tds/common/net/TdsHttp$Client;

.field final originalRequest:Lcom/tds/common/net/TdsHttp$Request;


# direct methods
.method constructor <init>(Lcom/tds/common/net/TdsHttp$Client;Lcom/tds/common/net/TdsHttp$Request;)V
    .registers 3
    .param p1, "client"    # Lcom/tds/common/net/TdsHttp$Client;
    .param p2, "originalRequest"    # Lcom/tds/common/net/TdsHttp$Request;

    .line 682
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 683
    iput-object p1, p0, Lcom/tds/common/net/TdsHttp$Call;->client:Lcom/tds/common/net/TdsHttp$Client;

    .line 684
    iput-object p2, p0, Lcom/tds/common/net/TdsHttp$Call;->originalRequest:Lcom/tds/common/net/TdsHttp$Request;

    .line 685
    return-void
.end method


# virtual methods
.method public execute()Lcom/tds/common/net/TdsHttp$Response;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 688
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tds/common/net/TdsHttp$Call;->client:Lcom/tds/common/net/TdsHttp$Client;

    iget-object v1, v1, Lcom/tds/common/net/TdsHttp$Client;->interceptors:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 689
    .local v0, "interceptors":Ljava/util/List;, "Ljava/util/List<Lcom/tds/common/net/TdsHttp$Interceptor;>;"
    new-instance v1, Lcom/tds/common/net/TdsHttp$CallServerInterceptor;

    invoke-direct {v1}, Lcom/tds/common/net/TdsHttp$CallServerInterceptor;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 690
    new-instance v1, Lcom/tds/common/net/TdsHttp$RealInterceptorChain;

    iget-object v5, p0, Lcom/tds/common/net/TdsHttp$Call;->originalRequest:Lcom/tds/common/net/TdsHttp$Request;

    iget-object v2, p0, Lcom/tds/common/net/TdsHttp$Call;->client:Lcom/tds/common/net/TdsHttp$Client;

    iget v7, v2, Lcom/tds/common/net/TdsHttp$Client;->connectTimeout:I

    iget-object v2, p0, Lcom/tds/common/net/TdsHttp$Call;->client:Lcom/tds/common/net/TdsHttp$Client;

    iget v8, v2, Lcom/tds/common/net/TdsHttp$Client;->readTimeout:I

    iget-object v2, p0, Lcom/tds/common/net/TdsHttp$Call;->client:Lcom/tds/common/net/TdsHttp$Client;

    iget v9, v2, Lcom/tds/common/net/TdsHttp$Client;->writeTimeout:I

    const/4 v4, 0x0

    move-object v2, v1

    move-object v3, v0

    move-object v6, p0

    invoke-direct/range {v2 .. v9}, Lcom/tds/common/net/TdsHttp$RealInterceptorChain;-><init>(Ljava/util/List;ILcom/tds/common/net/TdsHttp$Request;Lcom/tds/common/net/TdsHttp$Call;III)V

    .line 692
    .local v1, "chain":Lcom/tds/common/net/TdsHttp$Interceptor$Chain;
    iget-object v2, p0, Lcom/tds/common/net/TdsHttp$Call;->originalRequest:Lcom/tds/common/net/TdsHttp$Request;

    invoke-interface {v1, v2}, Lcom/tds/common/net/TdsHttp$Interceptor$Chain;->proceed(Lcom/tds/common/net/TdsHttp$Request;)Lcom/tds/common/net/TdsHttp$Response;

    move-result-object v2

    return-object v2
.end method

.method public getOriginalRequest()Lcom/tds/common/net/TdsHttp$Request;
    .registers 2

    .line 679
    iget-object v0, p0, Lcom/tds/common/net/TdsHttp$Call;->originalRequest:Lcom/tds/common/net/TdsHttp$Request;

    return-object v0
.end method
