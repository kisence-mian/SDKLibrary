.class public final Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting$Builder;
.super Lcom/sigmob/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/Message$Builder",
        "<",
        "Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;",
        "Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public retry_count:Ljava/lang/Integer;

.field public rv_setting:Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;

.field public splash_setting:Lcom/sigmob/sdk/base/models/sigdsp/pb/SplashAdSetting;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/sigmob/wire/Message$Builder;-><init>()V

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;->DEFAULT_RETRY_COUNT:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting$Builder;->retry_count:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public build()Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;
    .registers 6

    new-instance v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting$Builder;->rv_setting:Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting$Builder;->splash_setting:Lcom/sigmob/sdk/base/models/sigdsp/pb/SplashAdSetting;

    iget-object v3, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting$Builder;->retry_count:Ljava/lang/Integer;

    invoke-super {p0}, Lcom/sigmob/wire/Message$Builder;->buildUnknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;-><init>(Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;Lcom/sigmob/sdk/base/models/sigdsp/pb/SplashAdSetting;Ljava/lang/Integer;Lcom/sigmob/wire/okio/ByteString;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/sigmob/wire/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting$Builder;->build()Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;

    move-result-object v0

    return-object v0
.end method

.method public retry_count(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting$Builder;->retry_count:Ljava/lang/Integer;

    return-object p0
.end method

.method public rv_setting(Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;)Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting$Builder;->rv_setting:Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;

    return-object p0
.end method

.method public splash_setting(Lcom/sigmob/sdk/base/models/sigdsp/pb/SplashAdSetting;)Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting$Builder;->splash_setting:Lcom/sigmob/sdk/base/models/sigdsp/pb/SplashAdSetting;

    return-object p0
.end method
