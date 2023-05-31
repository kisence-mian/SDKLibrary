.class public Lcom/tds/common/net/TdsApiClient$Builder;
.super Ljava/lang/Object;
.source "TdsApiClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/net/TdsApiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private baseUrl:Ljava/lang/String;

.field private tdsClient:Lcom/tds/common/net/TdsHttp$Client;

.field private userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method constructor <init>(Lcom/tds/common/net/TdsApiClient;)V
    .registers 3
    .param p1, "tdsApiClient"    # Lcom/tds/common/net/TdsApiClient;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    # getter for: Lcom/tds/common/net/TdsApiClient;->baseUrl:Ljava/lang/String;
    invoke-static {p1}, Lcom/tds/common/net/TdsApiClient;->access$300(Lcom/tds/common/net/TdsApiClient;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/net/TdsApiClient$Builder;->baseUrl:Ljava/lang/String;

    .line 45
    # getter for: Lcom/tds/common/net/TdsApiClient;->userAgent:Ljava/lang/String;
    invoke-static {p1}, Lcom/tds/common/net/TdsApiClient;->access$400(Lcom/tds/common/net/TdsApiClient;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/net/TdsApiClient$Builder;->userAgent:Ljava/lang/String;

    .line 46
    # getter for: Lcom/tds/common/net/TdsApiClient;->tdsClient:Lcom/tds/common/net/TdsHttp$Client;
    invoke-static {p1}, Lcom/tds/common/net/TdsApiClient;->access$500(Lcom/tds/common/net/TdsApiClient;)Lcom/tds/common/net/TdsHttp$Client;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/net/TdsApiClient$Builder;->tdsClient:Lcom/tds/common/net/TdsHttp$Client;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/tds/common/net/TdsApiClient$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/net/TdsApiClient$Builder;

    .line 34
    iget-object v0, p0, Lcom/tds/common/net/TdsApiClient$Builder;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tds/common/net/TdsApiClient$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/net/TdsApiClient$Builder;

    .line 34
    iget-object v0, p0, Lcom/tds/common/net/TdsApiClient$Builder;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tds/common/net/TdsApiClient$Builder;)Lcom/tds/common/net/TdsHttp$Client;
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/net/TdsApiClient$Builder;

    .line 34
    iget-object v0, p0, Lcom/tds/common/net/TdsApiClient$Builder;->tdsClient:Lcom/tds/common/net/TdsHttp$Client;

    return-object v0
.end method


# virtual methods
.method public baseUrl(Ljava/lang/String;)Lcom/tds/common/net/TdsApiClient$Builder;
    .registers 2
    .param p1, "baseUrl"    # Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lcom/tds/common/net/TdsApiClient$Builder;->baseUrl:Ljava/lang/String;

    .line 51
    return-object p0
.end method

.method public build()Lcom/tds/common/net/TdsApiClient;
    .registers 3

    .line 65
    iget-object v0, p0, Lcom/tds/common/net/TdsApiClient$Builder;->baseUrl:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 69
    new-instance v0, Lcom/tds/common/net/TdsApiClient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tds/common/net/TdsApiClient;-><init>(Lcom/tds/common/net/TdsApiClient$Builder;Lcom/tds/common/net/TdsApiClient$1;)V

    return-object v0

    .line 66
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "baseUrl required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public tdsClient(Lcom/tds/common/net/TdsHttp$Client;)Lcom/tds/common/net/TdsApiClient$Builder;
    .registers 2
    .param p1, "tdsClient"    # Lcom/tds/common/net/TdsHttp$Client;

    .line 60
    iput-object p1, p0, Lcom/tds/common/net/TdsApiClient$Builder;->tdsClient:Lcom/tds/common/net/TdsHttp$Client;

    .line 61
    return-object p0
.end method

.method public userAgent(Ljava/lang/String;)Lcom/tds/common/net/TdsApiClient$Builder;
    .registers 2
    .param p1, "userAgent"    # Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/tds/common/net/TdsApiClient$Builder;->userAgent:Ljava/lang/String;

    .line 56
    return-object p0
.end method
