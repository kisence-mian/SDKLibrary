.class public Lcom/tds/common/net/intercerptor/AuthInterceptor;
.super Ljava/lang/Object;
.source "AuthInterceptor.java"

# interfaces
.implements Lcom/tds/common/net/TdsHttp$Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/net/intercerptor/AuthInterceptor$TDSAccountProvider;
    }
.end annotation


# instance fields
.field private tdsAccountProvider:Lcom/tds/common/net/intercerptor/AuthInterceptor$TDSAccountProvider;


# direct methods
.method public constructor <init>(Lcom/tds/common/net/intercerptor/AuthInterceptor$TDSAccountProvider;)V
    .registers 2
    .param p1, "tdsAccountProvider"    # Lcom/tds/common/net/intercerptor/AuthInterceptor$TDSAccountProvider;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/tds/common/net/intercerptor/AuthInterceptor;->tdsAccountProvider:Lcom/tds/common/net/intercerptor/AuthInterceptor$TDSAccountProvider;

    .line 20
    return-void
.end method


# virtual methods
.method public intercept(Lcom/tds/common/net/TdsHttp$Interceptor$Chain;)Lcom/tds/common/net/TdsHttp$Response;
    .registers 6
    .param p1, "chain"    # Lcom/tds/common/net/TdsHttp$Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    invoke-interface {p1}, Lcom/tds/common/net/TdsHttp$Interceptor$Chain;->request()Lcom/tds/common/net/TdsHttp$Request;

    move-result-object v0

    .line 25
    .local v0, "request":Lcom/tds/common/net/TdsHttp$Request;
    invoke-virtual {v0}, Lcom/tds/common/net/TdsHttp$Request;->url()Ljava/lang/String;

    move-result-object v1

    .line 26
    .local v1, "url":Ljava/lang/String;
    iget-object v2, p0, Lcom/tds/common/net/intercerptor/AuthInterceptor;->tdsAccountProvider:Lcom/tds/common/net/intercerptor/AuthInterceptor$TDSAccountProvider;

    invoke-interface {v2}, Lcom/tds/common/net/intercerptor/AuthInterceptor$TDSAccountProvider;->getTdsAccount()Lcom/tds/common/account/TdsAccount;

    move-result-object v2

    if-eqz v2, :cond_29

    .line 27
    iget-object v2, p0, Lcom/tds/common/net/intercerptor/AuthInterceptor;->tdsAccountProvider:Lcom/tds/common/net/intercerptor/AuthInterceptor$TDSAccountProvider;

    invoke-interface {v2}, Lcom/tds/common/net/intercerptor/AuthInterceptor$TDSAccountProvider;->getTdsAccount()Lcom/tds/common/account/TdsAccount;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tds/common/net/TdsHttp$Request;->method()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/tds/common/net/util/HttpUtil;->getAuthorizeHeaders(Lcom/tds/common/account/TdsAccount;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 28
    .local v2, "authHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Lcom/tds/common/net/TdsHttp$Interceptor$Chain;->request()Lcom/tds/common/net/TdsHttp$Request;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tds/common/net/TdsHttp$Request;->headers()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 30
    .end local v2    # "authHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_29
    invoke-interface {p1}, Lcom/tds/common/net/TdsHttp$Interceptor$Chain;->request()Lcom/tds/common/net/TdsHttp$Request;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/tds/common/net/TdsHttp$Interceptor$Chain;->proceed(Lcom/tds/common/net/TdsHttp$Request;)Lcom/tds/common/net/TdsHttp$Response;

    move-result-object v2

    return-object v2
.end method
