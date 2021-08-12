.class public final Lcom/sigmob/sdk/common/models/sigdsp/pb/SplashAdSetting$Builder;
.super Lcom/sigmob/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/common/models/sigdsp/pb/SplashAdSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/Message$Builder<",
        "Lcom/sigmob/sdk/common/models/sigdsp/pb/SplashAdSetting;",
        "Lcom/sigmob/sdk/common/models/sigdsp/pb/SplashAdSetting$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public enable_close_on_click:Ljava/lang/Boolean;

.field public show_duration:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/sigmob/wire/Message$Builder;-><init>()V

    sget-object v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/SplashAdSetting;->DEFAULT_SHOW_DURATION:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/SplashAdSetting$Builder;->show_duration:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/SplashAdSetting;->DEFAULT_ENABLE_CLOSE_ON_CLICK:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/SplashAdSetting$Builder;->enable_close_on_click:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public build()Lcom/sigmob/sdk/common/models/sigdsp/pb/SplashAdSetting;
    .registers 5

    new-instance v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/SplashAdSetting;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/SplashAdSetting$Builder;->show_duration:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/SplashAdSetting$Builder;->enable_close_on_click:Ljava/lang/Boolean;

    invoke-super {p0}, Lcom/sigmob/wire/Message$Builder;->buildUnknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/sdk/common/models/sigdsp/pb/SplashAdSetting;-><init>(Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/sigmob/wire/okio/ByteString;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/sigmob/wire/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/SplashAdSetting$Builder;->build()Lcom/sigmob/sdk/common/models/sigdsp/pb/SplashAdSetting;

    move-result-object v0

    return-object v0
.end method

.method public enable_close_on_click(Ljava/lang/Boolean;)Lcom/sigmob/sdk/common/models/sigdsp/pb/SplashAdSetting$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/SplashAdSetting$Builder;->enable_close_on_click:Ljava/lang/Boolean;

    return-object p0
.end method

.method public show_duration(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/sigdsp/pb/SplashAdSetting$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/SplashAdSetting$Builder;->show_duration:Ljava/lang/Integer;

    return-object p0
.end method
