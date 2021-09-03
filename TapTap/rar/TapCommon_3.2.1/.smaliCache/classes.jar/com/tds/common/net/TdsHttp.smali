.class public final Lcom/tds/common/net/TdsHttp;
.super Ljava/lang/Object;
.source "TdsHttp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/net/TdsHttp$RealInterceptorChain;,
        Lcom/tds/common/net/TdsHttp$CallServerInterceptor;,
        Lcom/tds/common/net/TdsHttp$Interceptor;,
        Lcom/tds/common/net/TdsHttp$Call;,
        Lcom/tds/common/net/TdsHttp$ResponseBody;,
        Lcom/tds/common/net/TdsHttp$Response;,
        Lcom/tds/common/net/TdsHttp$CountBytesOutputStream;,
        Lcom/tds/common/net/TdsHttp$FormBody;,
        Lcom/tds/common/net/TdsHttp$MultipartBody;,
        Lcom/tds/common/net/TdsHttp$RequestBody;,
        Lcom/tds/common/net/TdsHttp$Request;,
        Lcom/tds/common/net/TdsHttp$Client;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Ljava/lang/Object;

    .line 42
    invoke-static {p0}, Lcom/tds/common/net/TdsHttp;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static newClientBuilder()Lcom/tds/common/net/TdsHttp$Client$Builder;
    .registers 1

    .line 51
    new-instance v0, Lcom/tds/common/net/TdsHttp$Client$Builder;

    invoke-direct {v0}, Lcom/tds/common/net/TdsHttp$Client$Builder;-><init>()V

    return-object v0
.end method

.method public static newRequestBuilder()Lcom/tds/common/net/TdsHttp$Request$Builder;
    .registers 1

    .line 55
    new-instance v0, Lcom/tds/common/net/TdsHttp$Request$Builder;

    invoke-direct {v0}, Lcom/tds/common/net/TdsHttp$Request$Builder;-><init>()V

    return-object v0
.end method

.method private static requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 45
    .local p0, "obj":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_3

    .line 47
    return-object p0

    .line 46
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method
