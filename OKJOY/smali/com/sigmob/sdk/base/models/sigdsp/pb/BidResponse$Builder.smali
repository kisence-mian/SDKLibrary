.class public final Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse$Builder;
.super Lcom/sigmob/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/Message$Builder",
        "<",
        "Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;",
        "Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public ads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;",
            ">;"
        }
    .end annotation
.end field

.field public error_code:Ljava/lang/Long;

.field public expiration_time:Ljava/lang/Integer;

.field public pctr_valid_check:Ljava/lang/Integer;

.field public pctr_version:Ljava/lang/String;

.field public process_time_ms_dsp:Ljava/lang/Long;

.field public process_time_ms_ssp:Ljava/lang/Long;

.field public request_id:Ljava/lang/String;

.field public uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/sigmob/wire/Message$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse$Builder;->request_id:Ljava/lang/String;

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->DEFAULT_ERROR_CODE:Ljava/lang/Long;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse$Builder;->error_code:Ljava/lang/Long;

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->DEFAULT_PROCESS_TIME_MS_DSP:Ljava/lang/Long;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse$Builder;->process_time_ms_dsp:Ljava/lang/Long;

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->DEFAULT_PROCESS_TIME_MS_SSP:Ljava/lang/Long;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse$Builder;->process_time_ms_ssp:Ljava/lang/Long;

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->DEFAULT_PCTR_VALID_CHECK:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse$Builder;->pctr_valid_check:Ljava/lang/Integer;

    const-string v0, ""

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse$Builder;->pctr_version:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse$Builder;->uid:Ljava/lang/String;

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->DEFAULT_EXPIRATION_TIME:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse$Builder;->expiration_time:Ljava/lang/Integer;

    invoke-static {}, Lcom/sigmob/wire/internal/Internal;->newMutableList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse$Builder;->ads:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public ads(Ljava/util/List;)Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;",
            ">;)",
            "Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/sigmob/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse$Builder;->ads:Ljava/util/List;

    return-object p0
.end method

.method public build()Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;
    .registers 12

    new-instance v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse$Builder;->request_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse$Builder;->ads:Ljava/util/List;

    iget-object v3, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse$Builder;->error_code:Ljava/lang/Long;

    iget-object v4, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse$Builder;->process_time_ms_dsp:Ljava/lang/Long;

    iget-object v5, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse$Builder;->process_time_ms_ssp:Ljava/lang/Long;

    iget-object v6, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse$Builder;->pctr_valid_check:Ljava/lang/Integer;

    iget-object v7, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse$Builder;->pctr_version:Ljava/lang/String;

    iget-object v8, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse$Builder;->uid:Ljava/lang/String;

    iget-object v9, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse$Builder;->expiration_time:Ljava/lang/Integer;

    invoke-super {p0}, Lcom/sigmob/wire/Message$Builder;->buildUnknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v10

    invoke-direct/range {v0 .. v10}, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/sigmob/wire/okio/ByteString;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/sigmob/wire/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse$Builder;->build()Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;

    move-result-object v0

    return-object v0
.end method

.method public error_code(Ljava/lang/Long;)Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse$Builder;->error_code:Ljava/lang/Long;

    return-object p0
.end method

.method public expiration_time(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse$Builder;->expiration_time:Ljava/lang/Integer;

    return-object p0
.end method

.method public pctr_valid_check(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse$Builder;->pctr_valid_check:Ljava/lang/Integer;

    return-object p0
.end method

.method public pctr_version(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse$Builder;->pctr_version:Ljava/lang/String;

    return-object p0
.end method

.method public process_time_ms_dsp(Ljava/lang/Long;)Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse$Builder;->process_time_ms_dsp:Ljava/lang/Long;

    return-object p0
.end method

.method public process_time_ms_ssp(Ljava/lang/Long;)Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse$Builder;->process_time_ms_ssp:Ljava/lang/Long;

    return-object p0
.end method

.method public request_id(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse$Builder;->request_id:Ljava/lang/String;

    return-object p0
.end method

.method public uid(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse$Builder;->uid:Ljava/lang/String;

    return-object p0
.end method
