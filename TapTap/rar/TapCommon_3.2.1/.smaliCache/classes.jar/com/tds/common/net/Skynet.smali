.class public Lcom/tds/common/net/Skynet;
.super Ljava/lang/Object;
.source "Skynet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/net/Skynet$Holder;
    }
.end annotation


# instance fields
.field final tdsApiClientCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tds/common/net/TdsApiClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tds/common/net/Skynet;->tdsApiClientCache:Ljava/util/Map;

    .line 14
    return-void
.end method

.method synthetic constructor <init>(Lcom/tds/common/net/Skynet$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/tds/common/net/Skynet$1;

    .line 6
    invoke-direct {p0}, Lcom/tds/common/net/Skynet;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/tds/common/net/Skynet;
    .registers 1

    .line 17
    # getter for: Lcom/tds/common/net/Skynet$Holder;->INSTANCE:Lcom/tds/common/net/Skynet;
    invoke-static {}, Lcom/tds/common/net/Skynet$Holder;->access$100()Lcom/tds/common/net/Skynet;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getTdsApiClient(Ljava/lang/String;)Lcom/tds/common/net/TdsApiClient;
    .registers 3
    .param p1, "sdkName"    # Ljava/lang/String;

    .line 27
    iget-object v0, p0, Lcom/tds/common/net/Skynet;->tdsApiClientCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/common/net/TdsApiClient;

    return-object v0
.end method

.method public registerTdsClient(Ljava/lang/String;Lcom/tds/common/net/TdsApiClient;)V
    .registers 4
    .param p1, "sdkName"    # Ljava/lang/String;
    .param p2, "tdsApiClient"    # Lcom/tds/common/net/TdsApiClient;

    .line 23
    iget-object v0, p0, Lcom/tds/common/net/Skynet;->tdsApiClientCache:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    return-void
.end method
