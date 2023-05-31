.class public final Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;
.super Lcom/sigmob/wire/AndroidMessage;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/AndroidMessage",
        "<",
        "Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;",
        "Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter",
            "<",
            "Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;",
            ">;"
        }
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_ENABLE_EXIT_ON_VIDEO_CLOSE:Ljava/lang/Boolean;

.field public static final DEFAULT_ENDCARD_CLOSE_POSITION:Ljava/lang/Integer;

.field public static final DEFAULT_END_TIME:Ljava/lang/Integer;

.field public static final DEFAULT_FINISHED:Ljava/lang/Float;

.field public static final DEFAULT_FULL_CLICK_ON_VIDEO:Ljava/lang/Boolean;

.field public static final DEFAULT_IF_MUTE:Ljava/lang/Integer;

.field public static final DEFAULT_INVISIBLE_AD_LABEL:Ljava/lang/Boolean;

.field public static final DEFAULT_MUTE_POSTION:Ljava/lang/Integer;

.field public static final DEFAULT_SKIP_PERCENT:Ljava/lang/Integer;

.field public static final DEFAULT_SKIP_SECONDS:Ljava/lang/Integer;

.field public static final DEFAULT_VIDEO_CLOSE_POSITION:Ljava/lang/Integer;

.field private static final serialVersionUID:J


# instance fields
.field public final click_setting:Lcom/sigmob/sdk/base/models/sigdsp/pb/ClickAreaSetting;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.sigmob.sdk.base.models.sigdsp.pb.ClickAreaSetting#ADAPTER"
        tag = 0xa
    .end annotation
.end field

.field public final enable_exit_on_video_close:Ljava/lang/Boolean;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x8
    .end annotation
.end field

.field public final end_time:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT32"
        tag = 0xc
    .end annotation
.end field

.field public final endcard_close_position:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT32"
        tag = 0x4
    .end annotation
.end field

.field public final finished:Ljava/lang/Float;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#FLOAT"
        tag = 0x2
    .end annotation
.end field

.field public final full_click_on_video:Ljava/lang/Boolean;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x9
    .end annotation
.end field

.field public final if_mute:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT32"
        tag = 0x1
    .end annotation
.end field

.field public final invisible_ad_label:Ljava/lang/Boolean;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0xb
    .end annotation
.end field

.field public final mute_postion:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT32"
        tag = 0x5
    .end annotation
.end field

.field public final skip_percent:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT32"
        tag = 0x6
    .end annotation
.end field

.field public final skip_seconds:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT32"
        tag = 0x7
    .end annotation
.end field

.field public final video_close_position:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT32"
        tag = 0x3
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    new-instance v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$ProtoAdapter_RvAdSetting;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$ProtoAdapter_RvAdSetting;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-static {v0}, Lcom/sigmob/wire/AndroidMessage;->newCreator(Lcom/sigmob/wire/ProtoAdapter;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->DEFAULT_IF_MUTE:Ljava/lang/Integer;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->DEFAULT_FINISHED:Ljava/lang/Float;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->DEFAULT_VIDEO_CLOSE_POSITION:Ljava/lang/Integer;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->DEFAULT_ENDCARD_CLOSE_POSITION:Ljava/lang/Integer;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->DEFAULT_MUTE_POSTION:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->DEFAULT_SKIP_PERCENT:Ljava/lang/Integer;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->DEFAULT_SKIP_SECONDS:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->DEFAULT_ENABLE_EXIT_ON_VIDEO_CLOSE:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->DEFAULT_FULL_CLICK_ON_VIDEO:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->DEFAULT_INVISIBLE_AD_LABEL:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->DEFAULT_END_TIME:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/sigmob/sdk/base/models/sigdsp/pb/ClickAreaSetting;Ljava/lang/Boolean;Ljava/lang/Integer;)V
    .registers 27

    sget-object v13, Lcom/sigmob/wire/okio/ByteString;->EMPTY:Lcom/sigmob/wire/okio/ByteString;

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-direct/range {v0 .. v13}, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;-><init>(Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/sigmob/sdk/base/models/sigdsp/pb/ClickAreaSetting;Ljava/lang/Boolean;Ljava/lang/Integer;Lcom/sigmob/wire/okio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/sigmob/sdk/base/models/sigdsp/pb/ClickAreaSetting;Ljava/lang/Boolean;Ljava/lang/Integer;Lcom/sigmob/wire/okio/ByteString;)V
    .registers 15

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-direct {p0, v0, p13}, Lcom/sigmob/wire/AndroidMessage;-><init>(Lcom/sigmob/wire/ProtoAdapter;Lcom/sigmob/wire/okio/ByteString;)V

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->if_mute:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->finished:Ljava/lang/Float;

    iput-object p3, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->video_close_position:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->endcard_close_position:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->mute_postion:Ljava/lang/Integer;

    iput-object p6, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->skip_percent:Ljava/lang/Integer;

    iput-object p7, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->skip_seconds:Ljava/lang/Integer;

    iput-object p8, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->enable_exit_on_video_close:Ljava/lang/Boolean;

    iput-object p9, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->full_click_on_video:Ljava/lang/Boolean;

    iput-object p10, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->click_setting:Lcom/sigmob/sdk/base/models/sigdsp/pb/ClickAreaSetting;

    iput-object p11, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->invisible_ad_label:Ljava/lang/Boolean;

    iput-object p12, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->end_time:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public RvSettingToString(Z)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->if_mute:Ljava/lang/Integer;

    if-eqz v1, :cond_14

    const-string v1, ", \"if_mute\"="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->if_mute:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_14
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->finished:Ljava/lang/Float;

    if-eqz v1, :cond_23

    const-string v1, ", \"finished\"="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->finished:Ljava/lang/Float;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_23
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->video_close_position:Ljava/lang/Integer;

    if-eqz v1, :cond_32

    const-string v1, ", \"video_close_position\"="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->video_close_position:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_32
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->endcard_close_position:Ljava/lang/Integer;

    if-eqz v1, :cond_41

    const-string v1, ", \"endcard_close_position\"="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->endcard_close_position:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_41
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->mute_postion:Ljava/lang/Integer;

    if-eqz v1, :cond_50

    const-string v1, ", \"mute_postion\"="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->mute_postion:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_50
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->skip_percent:Ljava/lang/Integer;

    if-eqz v1, :cond_5f

    const-string v1, ", \"skip_percent\"="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->skip_percent:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_5f
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->skip_seconds:Ljava/lang/Integer;

    if-eqz v1, :cond_6e

    const-string v1, ", \"skip_seconds\"="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->skip_seconds:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_6e
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->skip_seconds:Ljava/lang/Integer;

    if-eqz v1, :cond_7b

    const-string v1, ", \"has_companion_endcard\"="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_7b
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->enable_exit_on_video_close:Ljava/lang/Boolean;

    if-eqz v1, :cond_8a

    const-string v1, ", \"enable_exit_on_video_close\"="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->enable_exit_on_video_close:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_8a
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->full_click_on_video:Ljava/lang/Boolean;

    if-eqz v1, :cond_99

    const-string v1, ", full_click_on_video="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->full_click_on_video:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_99
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->click_setting:Lcom/sigmob/sdk/base/models/sigdsp/pb/ClickAreaSetting;

    if-eqz v1, :cond_a8

    const-string v1, ", click_setting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->click_setting:Lcom/sigmob/sdk/base/models/sigdsp/pb/ClickAreaSetting;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_a8
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->invisible_ad_label:Ljava/lang/Boolean;

    if-eqz v1, :cond_b7

    const-string v1, ", invisible_ad_label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->invisible_ad_label:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_b7
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->end_time:Ljava/lang/Integer;

    if-eqz v1, :cond_c6

    const-string v1, ", end_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->end_time:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_c6
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "\"rvSetting\":{"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sigmob/wire/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_93

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->if_mute:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->if_mute:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_93

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->finished:Ljava/lang/Float;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->finished:Ljava/lang/Float;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_93

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->video_close_position:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->video_close_position:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_93

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->endcard_close_position:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->endcard_close_position:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_93

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->mute_postion:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->mute_postion:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_93

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->skip_percent:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->skip_percent:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_93

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->skip_seconds:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->skip_seconds:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_93

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->enable_exit_on_video_close:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->enable_exit_on_video_close:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_93

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->full_click_on_video:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->full_click_on_video:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_93

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->click_setting:Lcom/sigmob/sdk/base/models/sigdsp/pb/ClickAreaSetting;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->click_setting:Lcom/sigmob/sdk/base/models/sigdsp/pb/ClickAreaSetting;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_93

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->invisible_ad_label:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->invisible_ad_label:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_93

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->end_time:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->end_time:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_93
    move v0, v1

    goto/16 :goto_4
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget v0, p0, Lcom/sigmob/wire/AndroidMessage;->hashCode:I

    if-nez v0, :cond_ab

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->if_mute:Ljava/lang/Integer;

    if-eqz v0, :cond_ac

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->if_mute:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_19
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->finished:Ljava/lang/Float;

    if-eqz v0, :cond_af

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->finished:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->hashCode()I

    move-result v0

    :goto_26
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->video_close_position:Ljava/lang/Integer;

    if-eqz v0, :cond_b2

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->video_close_position:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_33
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->endcard_close_position:Ljava/lang/Integer;

    if-eqz v0, :cond_b4

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->endcard_close_position:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_40
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->mute_postion:Ljava/lang/Integer;

    if-eqz v0, :cond_b6

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->mute_postion:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_4d
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->skip_percent:Ljava/lang/Integer;

    if-eqz v0, :cond_b8

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->skip_percent:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_5a
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->skip_seconds:Ljava/lang/Integer;

    if-eqz v0, :cond_ba

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->skip_seconds:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_67
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->enable_exit_on_video_close:Ljava/lang/Boolean;

    if-eqz v0, :cond_bc

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->enable_exit_on_video_close:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_74
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->full_click_on_video:Ljava/lang/Boolean;

    if-eqz v0, :cond_be

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->full_click_on_video:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_81
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->click_setting:Lcom/sigmob/sdk/base/models/sigdsp/pb/ClickAreaSetting;

    if-eqz v0, :cond_c0

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->click_setting:Lcom/sigmob/sdk/base/models/sigdsp/pb/ClickAreaSetting;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/ClickAreaSetting;->hashCode()I

    move-result v0

    :goto_8e
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->invisible_ad_label:Ljava/lang/Boolean;

    if-eqz v0, :cond_c2

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->invisible_ad_label:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_9b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->end_time:Ljava/lang/Integer;

    if-eqz v2, :cond_a8

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->end_time:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_a8
    add-int/2addr v0, v1

    iput v0, p0, Lcom/sigmob/wire/AndroidMessage;->hashCode:I

    :cond_ab
    return v0

    :cond_ac
    move v0, v1

    goto/16 :goto_19

    :cond_af
    move v0, v1

    goto/16 :goto_26

    :cond_b2
    move v0, v1

    goto :goto_33

    :cond_b4
    move v0, v1

    goto :goto_40

    :cond_b6
    move v0, v1

    goto :goto_4d

    :cond_b8
    move v0, v1

    goto :goto_5a

    :cond_ba
    move v0, v1

    goto :goto_67

    :cond_bc
    move v0, v1

    goto :goto_74

    :cond_be
    move v0, v1

    goto :goto_81

    :cond_c0
    move v0, v1

    goto :goto_8e

    :cond_c2
    move v0, v1

    goto :goto_9b
.end method

.method public newBuilder()Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;
    .registers 3

    new-instance v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->if_mute:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;->if_mute:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->finished:Ljava/lang/Float;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;->finished:Ljava/lang/Float;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->video_close_position:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;->video_close_position:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->endcard_close_position:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;->endcard_close_position:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->mute_postion:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;->mute_postion:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->skip_percent:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;->skip_percent:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->skip_seconds:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;->skip_seconds:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->enable_exit_on_video_close:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;->enable_exit_on_video_close:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->full_click_on_video:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;->full_click_on_video:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->click_setting:Lcom/sigmob/sdk/base/models/sigdsp/pb/ClickAreaSetting;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;->click_setting:Lcom/sigmob/sdk/base/models/sigdsp/pb/ClickAreaSetting;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->invisible_ad_label:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;->invisible_ad_label:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->end_time:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;->end_time:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;->addUnknownFields(Lcom/sigmob/wire/okio/ByteString;)Lcom/sigmob/wire/Message$Builder;

    return-object v0
.end method

.method public bridge synthetic newBuilder()Lcom/sigmob/wire/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->newBuilder()Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->if_mute:Ljava/lang/Integer;

    if-eqz v1, :cond_14

    const-string v1, ", if_mute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->if_mute:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_14
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->finished:Ljava/lang/Float;

    if-eqz v1, :cond_23

    const-string v1, ", finished="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->finished:Ljava/lang/Float;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_23
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->video_close_position:Ljava/lang/Integer;

    if-eqz v1, :cond_32

    const-string v1, ", video_close_position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->video_close_position:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_32
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->endcard_close_position:Ljava/lang/Integer;

    if-eqz v1, :cond_41

    const-string v1, ", endcard_close_position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->endcard_close_position:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_41
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->mute_postion:Ljava/lang/Integer;

    if-eqz v1, :cond_50

    const-string v1, ", mute_postion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->mute_postion:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_50
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->skip_percent:Ljava/lang/Integer;

    if-eqz v1, :cond_5f

    const-string v1, ", skip_percent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->skip_percent:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_5f
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->skip_seconds:Ljava/lang/Integer;

    if-eqz v1, :cond_6e

    const-string v1, ", skip_seconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->skip_seconds:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_6e
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->enable_exit_on_video_close:Ljava/lang/Boolean;

    if-eqz v1, :cond_7d

    const-string v1, ", enable_exit_on_video_close="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->enable_exit_on_video_close:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_7d
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->full_click_on_video:Ljava/lang/Boolean;

    if-eqz v1, :cond_8c

    const-string v1, ", full_click_on_video="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->full_click_on_video:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_8c
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->click_setting:Lcom/sigmob/sdk/base/models/sigdsp/pb/ClickAreaSetting;

    if-eqz v1, :cond_9b

    const-string v1, ", click_setting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->click_setting:Lcom/sigmob/sdk/base/models/sigdsp/pb/ClickAreaSetting;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_9b
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->invisible_ad_label:Ljava/lang/Boolean;

    if-eqz v1, :cond_aa

    const-string v1, ", invisible_ad_label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->invisible_ad_label:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_aa
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->end_time:Ljava/lang/Integer;

    if-eqz v1, :cond_b9

    const-string v1, ", end_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->end_time:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_b9
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "RvAdSetting{"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
