.class public final Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig$Builder;
.super Lcom/sigmob/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/Message$Builder",
        "<",
        "Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;",
        "Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public cacheTop:Ljava/lang/Integer;

.field public material_expired_time:Ljava/lang/Integer;

.field public showDuration:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/sigmob/wire/Message$Builder;-><init>()V

    sget-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;->DEFAULT_SHOWDURATION:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig$Builder;->showDuration:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;->DEFAULT_CACHETOP:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig$Builder;->cacheTop:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;->DEFAULT_MATERIAL_EXPIRED_TIME:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig$Builder;->material_expired_time:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public build()Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;
    .registers 6

    new-instance v0, Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig$Builder;->showDuration:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig$Builder;->cacheTop:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig$Builder;->material_expired_time:Ljava/lang/Integer;

    invoke-super {p0}, Lcom/sigmob/wire/Message$Builder;->buildUnknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/sigmob/wire/okio/ByteString;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/sigmob/wire/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig$Builder;->build()Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;

    move-result-object v0

    return-object v0
.end method

.method public cacheTop(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig$Builder;->cacheTop:Ljava/lang/Integer;

    return-object p0
.end method

.method public material_expired_time(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig$Builder;->material_expired_time:Ljava/lang/Integer;

    return-object p0
.end method

.method public showDuration(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig$Builder;->showDuration:Ljava/lang/Integer;

    return-object p0
.end method
