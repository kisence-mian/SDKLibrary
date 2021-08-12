.class public final Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;
.super Lcom/sigmob/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/Message$Builder<",
        "Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;",
        "Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public cacheTop:Ljava/lang/Integer;

.field public close_dialog_setting:Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;

.field public enableExitOnVideoClose:Ljava/lang/Boolean;

.field public endcardClosePosition:Ljava/lang/Integer;

.field public endpoints:Lcom/sigmob/sdk/common/models/ssp/pb/RvEndpointsConfig;

.field public finished:Ljava/lang/Float;

.field public ifMute:Ljava/lang/Integer;

.field public loadExpired:Ljava/lang/Integer;

.field public loadPeriodTime:Ljava/lang/Integer;

.field public loadTimeout:Ljava/lang/Integer;

.field public mutePostion:Ljava/lang/Integer;

.field public screen_capture:Ljava/lang/Integer;

.field public screen_capture_times:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public showClose:Ljava/lang/Integer;

.field public skipPercent:Ljava/lang/Integer;

.field public skipSeconds:Ljava/lang/Integer;

.field public videoClosePosition:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/sigmob/wire/Message$Builder;-><init>()V

    sget-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->DEFAULT_CACHETOP:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->cacheTop:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->DEFAULT_IFMUTE:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->ifMute:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->DEFAULT_SHOWCLOSE:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->showClose:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->DEFAULT_FINISHED:Ljava/lang/Float;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->finished:Ljava/lang/Float;

    sget-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->DEFAULT_LOADEXPIRED:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->loadExpired:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->DEFAULT_LOADTIMEOUT:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->loadTimeout:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->DEFAULT_VIDEOCLOSEPOSITION:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->videoClosePosition:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->DEFAULT_ENDCARDCLOSEPOSITION:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->endcardClosePosition:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->DEFAULT_MUTEPOSTION:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->mutePostion:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->DEFAULT_LOADPERIODTIME:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->loadPeriodTime:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->DEFAULT_SKIPPERCENT:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->skipPercent:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->DEFAULT_SCREEN_CAPTURE:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->screen_capture:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->DEFAULT_SKIPSECONDS:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->skipSeconds:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->DEFAULT_ENABLEEXITONVIDEOCLOSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->enableExitOnVideoClose:Ljava/lang/Boolean;

    invoke-static {}, Lcom/sigmob/wire/internal/Internal;->newMutableList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->screen_capture_times:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public build()Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;
    .registers 23

    move-object/from16 v0, p0

    new-instance v20, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;

    move-object/from16 v1, v20

    iget-object v2, v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->endpoints:Lcom/sigmob/sdk/common/models/ssp/pb/RvEndpointsConfig;

    iget-object v3, v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->cacheTop:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->ifMute:Ljava/lang/Integer;

    iget-object v5, v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->showClose:Ljava/lang/Integer;

    iget-object v6, v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->finished:Ljava/lang/Float;

    iget-object v7, v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->loadExpired:Ljava/lang/Integer;

    iget-object v8, v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->loadTimeout:Ljava/lang/Integer;

    iget-object v9, v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->videoClosePosition:Ljava/lang/Integer;

    iget-object v10, v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->endcardClosePosition:Ljava/lang/Integer;

    iget-object v11, v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->mutePostion:Ljava/lang/Integer;

    iget-object v12, v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->loadPeriodTime:Ljava/lang/Integer;

    iget-object v13, v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->skipPercent:Ljava/lang/Integer;

    iget-object v14, v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->screen_capture:Ljava/lang/Integer;

    iget-object v15, v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->screen_capture_times:Ljava/util/List;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->skipSeconds:Ljava/lang/Integer;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->enableExitOnVideoClose:Ljava/lang/Boolean;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->close_dialog_setting:Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;

    move-object/from16 v18, v1

    invoke-super/range {p0 .. p0}, Lcom/sigmob/wire/Message$Builder;->buildUnknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v19

    move-object/from16 v1, v21

    invoke-direct/range {v1 .. v19}, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;-><init>(Lcom/sigmob/sdk/common/models/ssp/pb/RvEndpointsConfig;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;Lcom/sigmob/wire/okio/ByteString;)V

    return-object v20
.end method

.method public bridge synthetic build()Lcom/sigmob/wire/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->build()Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;

    move-result-object v0

    return-object v0
.end method

.method public cacheTop(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->cacheTop:Ljava/lang/Integer;

    return-object p0
.end method

.method public close_dialog_setting(Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;)Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->close_dialog_setting:Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;

    return-object p0
.end method

.method public enableExitOnVideoClose(Ljava/lang/Boolean;)Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->enableExitOnVideoClose:Ljava/lang/Boolean;

    return-object p0
.end method

.method public endcardClosePosition(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->endcardClosePosition:Ljava/lang/Integer;

    return-object p0
.end method

.method public endpoints(Lcom/sigmob/sdk/common/models/ssp/pb/RvEndpointsConfig;)Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->endpoints:Lcom/sigmob/sdk/common/models/ssp/pb/RvEndpointsConfig;

    return-object p0
.end method

.method public finished(Ljava/lang/Float;)Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->finished:Ljava/lang/Float;

    return-object p0
.end method

.method public ifMute(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->ifMute:Ljava/lang/Integer;

    return-object p0
.end method

.method public loadExpired(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->loadExpired:Ljava/lang/Integer;

    return-object p0
.end method

.method public loadPeriodTime(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->loadPeriodTime:Ljava/lang/Integer;

    return-object p0
.end method

.method public loadTimeout(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->loadTimeout:Ljava/lang/Integer;

    return-object p0
.end method

.method public mutePostion(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->mutePostion:Ljava/lang/Integer;

    return-object p0
.end method

.method public screen_capture(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->screen_capture:Ljava/lang/Integer;

    return-object p0
.end method

.method public screen_capture_times(Ljava/util/List;)Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/sigmob/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->screen_capture_times:Ljava/util/List;

    return-object p0
.end method

.method public showClose(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->showClose:Ljava/lang/Integer;

    return-object p0
.end method

.method public skipPercent(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->skipPercent:Ljava/lang/Integer;

    return-object p0
.end method

.method public skipSeconds(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->skipSeconds:Ljava/lang/Integer;

    return-object p0
.end method

.method public videoClosePosition(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->videoClosePosition:Ljava/lang/Integer;

    return-object p0
.end method
