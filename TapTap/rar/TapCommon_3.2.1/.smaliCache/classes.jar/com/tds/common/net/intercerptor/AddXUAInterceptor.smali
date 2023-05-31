.class public Lcom/tds/common/net/intercerptor/AddXUAInterceptor;
.super Ljava/lang/Object;
.source "AddXUAInterceptor.java"

# interfaces
.implements Lcom/tds/common/net/TdsHttp$Interceptor;


# instance fields
.field private final xuaParams:Lcom/tds/common/net/XUAParams;


# direct methods
.method public constructor <init>(Lcom/tds/common/net/XUAParams;)V
    .registers 2
    .param p1, "params"    # Lcom/tds/common/net/XUAParams;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/tds/common/net/intercerptor/AddXUAInterceptor;->xuaParams:Lcom/tds/common/net/XUAParams;

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .param p1, "sdkName"    # Ljava/lang/String;
    .param p2, "sdkVersionCode"    # I
    .param p3, "sdkVersionName"    # Ljava/lang/String;

    .line 20
    invoke-static {p1, p2, p3}, Lcom/tds/common/net/XUAParams;->getCommonXUAParams(Ljava/lang/String;ILjava/lang/String;)Lcom/tds/common/net/XUAParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tds/common/net/intercerptor/AddXUAInterceptor;-><init>(Lcom/tds/common/net/XUAParams;)V

    .line 21
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

    .line 25
    invoke-interface {p1}, Lcom/tds/common/net/TdsHttp$Interceptor$Chain;->request()Lcom/tds/common/net/TdsHttp$Request;

    move-result-object v0

    .line 27
    .local v0, "originRequest":Lcom/tds/common/net/TdsHttp$Request;
    const-string v1, ""

    .line 28
    .local v1, "xuaVal":Ljava/lang/String;
    iget-object v2, p0, Lcom/tds/common/net/intercerptor/AddXUAInterceptor;->xuaParams:Lcom/tds/common/net/XUAParams;

    if-eqz v2, :cond_e

    .line 29
    invoke-virtual {v2}, Lcom/tds/common/net/XUAParams;->getXUAValue()Ljava/lang/String;

    move-result-object v1

    .line 32
    :cond_e
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 33
    invoke-virtual {v0}, Lcom/tds/common/net/TdsHttp$Request;->headers()Ljava/util/Map;

    move-result-object v2

    const-string v3, "XUA"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_1d
    invoke-interface {p1, v0}, Lcom/tds/common/net/TdsHttp$Interceptor$Chain;->proceed(Lcom/tds/common/net/TdsHttp$Request;)Lcom/tds/common/net/TdsHttp$Response;

    move-result-object v2

    return-object v2
.end method
