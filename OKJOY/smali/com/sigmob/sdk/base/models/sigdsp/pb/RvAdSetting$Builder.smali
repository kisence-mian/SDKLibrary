.class public final Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;
.super Lcom/sigmob/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/Message$Builder",
        "<",
        "Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;",
        "Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public click_setting:Lcom/sigmob/sdk/base/models/sigdsp/pb/ClickAreaSetting;

.field public enable_exit_on_video_close:Ljava/lang/Boolean;

.field public end_time:Ljava/lang/Integer;

.field public endcard_close_position:Ljava/lang/Integer;

.field public finished:Ljava/lang/Float;

.field public full_click_on_video:Ljava/lang/Boolean;

.field public if_mute:Ljava/lang/Integer;

.field public invisible_ad_label:Ljava/lang/Boolean;

.field public mute_postion:Ljava/lang/Integer;

.field public skip_percent:Ljava/lang/Integer;

.field public skip_seconds:Ljava/lang/Integer;

.field public video_close_position:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/sigmob/wire/Message$Builder;-><init>()V

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->DEFAULT_IF_MUTE:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;->if_mute:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->DEFAULT_FINISHED:Ljava/lang/Float;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;->finished:Ljava/lang/Float;

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->DEFAULT_VIDEO_CLOSE_POSITION:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;->video_close_position:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->DEFAULT_ENDCARD_CLOSE_POSITION:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;->endcard_close_position:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->DEFAULT_MUTE_POSTION:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;->mute_postion:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->DEFAULT_SKIP_PERCENT:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;->skip_percent:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->DEFAULT_SKIP_SECONDS:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;->skip_seconds:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->DEFAULT_ENABLE_EXIT_ON_VIDEO_CLOSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;->enable_exit_on_video_close:Ljava/lang/Boolean;

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->DEFAULT_FULL_CLICK_ON_VIDEO:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;->full_click_on_video:Ljava/lang/Boolean;

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->DEFAULT_INVISIBLE_AD_LABEL:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;->invisible_ad_label:Ljava/lang/Boolean;

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->DEFAULT_END_TIME:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;->end_time:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public build()Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;
    .registers 15

    new-instance v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;->if_mute:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;->finished:Ljava/lang/Float;

    iget-object v3, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;->video_close_position:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;->endcard_close_position:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;->mute_postion:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;->skip_percent:Ljava/lang/Integer;

    iget-object v7, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;->skip_seconds:Ljava/lang/Integer;

    iget-object v8, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;->enable_exit_on_video_close:Ljava/lang/Boolean;

    iget-object v9, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;->full_click_on_video:Ljava/lang/Boolean;

    iget-object v10, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;->click_setting:Lcom/sigmob/sdk/base/models/sigdsp/pb/ClickAreaSetting;

    iget-object v11, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;->invisible_ad_label:Ljava/lang/Boolean;

    iget-object v12, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;->end_time:Ljava/lang/Integer;

    invoke-super {p0}, Lcom/sigmob/wire/Message$Builder;->buildUnknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v13

    invoke-direct/range {v0 .. v13}, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;-><init>(Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/sigmob/sdk/base/models/sigdsp/pb/ClickAreaSetting;Ljava/lang/Boolean;Ljava/lang/Integer;Lcom/sigmob/wire/okio/ByteString;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/sigmob/wire/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;->build()Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;

    move-result-object v0

    return-object v0
.end method

.method public click_setting(Lcom/sigmob/sdk/base/models/sigdsp/pb/ClickAreaSetting;)Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;->click_setting:Lcom/sigmob/sdk/base/models/sigdsp/pb/ClickAreaSetting;

    return-object p0
.end method

.method public enable_exit_on_video_close(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;->enable_exit_on_video_close:Ljava/lang/Boolean;

    return-object p0
.end method

.method public end_time(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;->end_time:Ljava/lang/Integer;

    return-object p0
.end method

.method public endcard_close_position(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;->endcard_close_position:Ljava/lang/Integer;

    return-object p0
.end method

.method public finished(Ljava/lang/Float;)Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;->finished:Ljava/lang/Float;

    return-object p0
.end method

.method public full_click_on_video(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;->full_click_on_video:Ljava/lang/Boolean;

    return-object p0
.end method

.method public if_mute(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;->if_mute:Ljava/lang/Integer;

    return-object p0
.end method

.method public invisible_ad_label(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;->invisible_ad_label:Ljava/lang/Boolean;

    return-object p0
.end method

.method public mute_postion(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;->mute_postion:Ljava/lang/Integer;

    return-object p0
.end method

.method public skip_percent(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;->skip_percent:Ljava/lang/Integer;

    return-object p0
.end method

.method public skip_seconds(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;->skip_seconds:Ljava/lang/Integer;

    return-object p0
.end method

.method public video_close_position(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;->video_close_position:Ljava/lang/Integer;

    return-object p0
.end method
