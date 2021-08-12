.class public final Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigResponse$Builder;
.super Lcom/sigmob/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/Message$Builder<",
        "Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigResponse;",
        "Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public code:Ljava/lang/Integer;

.field public config:Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

.field public error_message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/sigmob/wire/Message$Builder;-><init>()V

    sget-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigResponse;->DEFAULT_CODE:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigResponse$Builder;->code:Ljava/lang/Integer;

    const-string v0, ""

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigResponse$Builder;->error_message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigResponse;
    .registers 6

    new-instance v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigResponse;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigResponse$Builder;->code:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigResponse$Builder;->error_message:Ljava/lang/String;

    iget-object v3, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigResponse$Builder;->config:Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    invoke-super {p0}, Lcom/sigmob/wire/Message$Builder;->buildUnknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigResponse;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;Lcom/sigmob/wire/okio/ByteString;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/sigmob/wire/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigResponse$Builder;->build()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigResponse;

    move-result-object v0

    return-object v0
.end method

.method public code(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigResponse$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigResponse$Builder;->code:Ljava/lang/Integer;

    return-object p0
.end method

.method public config(Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigResponse$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigResponse$Builder;->config:Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    return-object p0
.end method

.method public error_message(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigResponse$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigResponse$Builder;->error_message:Ljava/lang/String;

    return-object p0
.end method
