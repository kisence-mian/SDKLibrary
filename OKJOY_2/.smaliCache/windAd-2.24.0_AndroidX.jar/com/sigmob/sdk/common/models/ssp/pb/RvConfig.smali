.class public final Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;
.super Lcom/sigmob/wire/AndroidMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$ProtoAdapter_RvConfig;,
        Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/AndroidMessage<",
        "Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;",
        "Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter<",
            "Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_CACHETOP:Ljava/lang/Integer;

.field public static final DEFAULT_ENABLEEXITONVIDEOCLOSE:Ljava/lang/Boolean;

.field public static final DEFAULT_ENDCARDCLOSEPOSITION:Ljava/lang/Integer;

.field public static final DEFAULT_FINISHED:Ljava/lang/Float;

.field public static final DEFAULT_IFMUTE:Ljava/lang/Integer;

.field public static final DEFAULT_LOADEXPIRED:Ljava/lang/Integer;

.field public static final DEFAULT_LOADPERIODTIME:Ljava/lang/Integer;

.field public static final DEFAULT_LOADTIMEOUT:Ljava/lang/Integer;

.field public static final DEFAULT_MUTEPOSTION:Ljava/lang/Integer;

.field public static final DEFAULT_SCREEN_CAPTURE:Ljava/lang/Integer;

.field public static final DEFAULT_SHOWCLOSE:Ljava/lang/Integer;

.field public static final DEFAULT_SKIPPERCENT:Ljava/lang/Integer;

.field public static final DEFAULT_SKIPSECONDS:Ljava/lang/Integer;

.field public static final DEFAULT_VIDEOCLOSEPOSITION:Ljava/lang/Integer;

.field private static final serialVersionUID:J


# instance fields
.field public final cacheTop:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x2
    .end annotation
.end field

.field public final close_dialog_setting:Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.sigmob.sdk.base.models.ssp.pb.DialogSetting#ADAPTER"
        tag = 0x11
    .end annotation
.end field

.field public final enableExitOnVideoClose:Ljava/lang/Boolean;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x10
    .end annotation
.end field

.field public final endcardClosePosition:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x9
    .end annotation
.end field

.field public final endpoints:Lcom/sigmob/sdk/common/models/ssp/pb/RvEndpointsConfig;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.sigmob.sdk.base.models.ssp.pb.RvEndpointsConfig#ADAPTER"
        tag = 0x1
    .end annotation
.end field

.field public final finished:Ljava/lang/Float;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#FLOAT"
        tag = 0x5
    .end annotation
.end field

.field public final ifMute:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x3
    .end annotation
.end field

.field public final loadExpired:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x6
    .end annotation
.end field

.field public final loadPeriodTime:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0xb
    .end annotation
.end field

.field public final loadTimeout:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x7
    .end annotation
.end field

.field public final mutePostion:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0xa
    .end annotation
.end field

.field public final screen_capture:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0xd
    .end annotation
.end field

.field public final screen_capture_times:Ljava/util/List;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        label = .enum Lcom/sigmob/wire/WireField$Label;->REPEATED:Lcom/sigmob/wire/WireField$Label;
        tag = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final showClose:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x4
    .end annotation
.end field

.field public final skipPercent:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0xc
    .end annotation
.end field

.field public final skipSeconds:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT32"
        tag = 0xf
    .end annotation
.end field

.field public final videoClosePosition:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x8
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$ProtoAdapter_RvConfig;

    invoke-direct {v0}, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$ProtoAdapter_RvConfig;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-static {v0}, Lcom/sigmob/wire/AndroidMessage;->newCreator(Lcom/sigmob/wire/ProtoAdapter;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->DEFAULT_CACHETOP:Ljava/lang/Integer;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->DEFAULT_IFMUTE:Ljava/lang/Integer;

    sput-object v1, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->DEFAULT_SHOWCLOSE:Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    sput-object v2, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->DEFAULT_FINISHED:Ljava/lang/Float;

    sput-object v1, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->DEFAULT_LOADEXPIRED:Ljava/lang/Integer;

    sput-object v1, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->DEFAULT_LOADTIMEOUT:Ljava/lang/Integer;

    sput-object v1, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->DEFAULT_VIDEOCLOSEPOSITION:Ljava/lang/Integer;

    sput-object v1, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->DEFAULT_ENDCARDCLOSEPOSITION:Ljava/lang/Integer;

    sput-object v1, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->DEFAULT_MUTEPOSTION:Ljava/lang/Integer;

    sput-object v1, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->DEFAULT_LOADPERIODTIME:Ljava/lang/Integer;

    sput-object v1, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->DEFAULT_SKIPPERCENT:Ljava/lang/Integer;

    sput-object v1, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->DEFAULT_SCREEN_CAPTURE:Ljava/lang/Integer;

    sput-object v1, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->DEFAULT_SKIPSECONDS:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->DEFAULT_ENABLEEXITONVIDEOCLOSE:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Lcom/sigmob/sdk/common/models/ssp/pb/RvEndpointsConfig;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;)V
    .registers 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/sdk/common/models/ssp/pb/RvEndpointsConfig;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

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

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    sget-object v18, Lcom/sigmob/wire/okio/ByteString;->EMPTY:Lcom/sigmob/wire/okio/ByteString;

    invoke-direct/range {v0 .. v18}, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;-><init>(Lcom/sigmob/sdk/common/models/ssp/pb/RvEndpointsConfig;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;Lcom/sigmob/wire/okio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Lcom/sigmob/sdk/common/models/ssp/pb/RvEndpointsConfig;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;Lcom/sigmob/wire/okio/ByteString;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/sdk/common/models/ssp/pb/RvEndpointsConfig;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;",
            "Lcom/sigmob/wire/okio/ByteString;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    sget-object v1, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    move-object/from16 v2, p18

    invoke-direct {p0, v1, v2}, Lcom/sigmob/wire/AndroidMessage;-><init>(Lcom/sigmob/wire/ProtoAdapter;Lcom/sigmob/wire/okio/ByteString;)V

    move-object v1, p1

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->endpoints:Lcom/sigmob/sdk/common/models/ssp/pb/RvEndpointsConfig;

    move-object v1, p2

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->cacheTop:Ljava/lang/Integer;

    move-object v1, p3

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->ifMute:Ljava/lang/Integer;

    move-object v1, p4

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->showClose:Ljava/lang/Integer;

    move-object v1, p5

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->finished:Ljava/lang/Float;

    move-object v1, p6

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->loadExpired:Ljava/lang/Integer;

    move-object v1, p7

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->loadTimeout:Ljava/lang/Integer;

    move-object v1, p8

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->videoClosePosition:Ljava/lang/Integer;

    move-object v1, p9

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->endcardClosePosition:Ljava/lang/Integer;

    move-object v1, p10

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->mutePostion:Ljava/lang/Integer;

    move-object v1, p11

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->loadPeriodTime:Ljava/lang/Integer;

    move-object v1, p12

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->skipPercent:Ljava/lang/Integer;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->screen_capture:Ljava/lang/Integer;

    const-string v1, "screen_capture_times"

    move-object/from16 v2, p14

    invoke-static {v1, v2}, Lcom/sigmob/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->screen_capture_times:Ljava/util/List;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->skipSeconds:Ljava/lang/Integer;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->enableExitOnVideoClose:Ljava/lang/Boolean;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->close_dialog_setting:Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sigmob/wire/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c5

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->endpoints:Lcom/sigmob/sdk/common/models/ssp/pb/RvEndpointsConfig;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->endpoints:Lcom/sigmob/sdk/common/models/ssp/pb/RvEndpointsConfig;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c5

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->cacheTop:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->cacheTop:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c5

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->ifMute:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->ifMute:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c5

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->showClose:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->showClose:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c5

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->finished:Ljava/lang/Float;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->finished:Ljava/lang/Float;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c5

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->loadExpired:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->loadExpired:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c5

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->loadTimeout:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->loadTimeout:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c5

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->videoClosePosition:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->videoClosePosition:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c5

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->endcardClosePosition:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->endcardClosePosition:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c5

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->mutePostion:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->mutePostion:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c5

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->loadPeriodTime:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->loadPeriodTime:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c5

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->skipPercent:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->skipPercent:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c5

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->screen_capture:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->screen_capture:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c5

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->screen_capture_times:Ljava/util/List;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->screen_capture_times:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c5

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->skipSeconds:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->skipSeconds:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c5

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->enableExitOnVideoClose:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->enableExitOnVideoClose:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c5

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->close_dialog_setting:Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;

    iget-object p1, p1, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->close_dialog_setting:Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;

    invoke-static {v1, p1}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c5

    goto :goto_c6

    :cond_c5
    move v0, v2

    :goto_c6
    return v0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lcom/sigmob/wire/AndroidMessage;->hashCode:I

    if-nez v0, :cond_e6

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->endpoints:Lcom/sigmob/sdk/common/models/ssp/pb/RvEndpointsConfig;

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/models/ssp/pb/RvEndpointsConfig;->hashCode()I

    move-result v1

    goto :goto_19

    :cond_18
    move v1, v2

    :goto_19
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->cacheTop:Ljava/lang/Integer;

    if-eqz v1, :cond_25

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_26

    :cond_25
    move v1, v2

    :goto_26
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->ifMute:Ljava/lang/Integer;

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_33

    :cond_32
    move v1, v2

    :goto_33
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->showClose:Ljava/lang/Integer;

    if-eqz v1, :cond_3f

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_40

    :cond_3f
    move v1, v2

    :goto_40
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->finished:Ljava/lang/Float;

    if-eqz v1, :cond_4c

    invoke-virtual {v1}, Ljava/lang/Float;->hashCode()I

    move-result v1

    goto :goto_4d

    :cond_4c
    move v1, v2

    :goto_4d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->loadExpired:Ljava/lang/Integer;

    if-eqz v1, :cond_59

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_5a

    :cond_59
    move v1, v2

    :goto_5a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->loadTimeout:Ljava/lang/Integer;

    if-eqz v1, :cond_66

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_67

    :cond_66
    move v1, v2

    :goto_67
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->videoClosePosition:Ljava/lang/Integer;

    if-eqz v1, :cond_73

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_74

    :cond_73
    move v1, v2

    :goto_74
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->endcardClosePosition:Ljava/lang/Integer;

    if-eqz v1, :cond_80

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_81

    :cond_80
    move v1, v2

    :goto_81
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->mutePostion:Ljava/lang/Integer;

    if-eqz v1, :cond_8d

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_8e

    :cond_8d
    move v1, v2

    :goto_8e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->loadPeriodTime:Ljava/lang/Integer;

    if-eqz v1, :cond_9a

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_9b

    :cond_9a
    move v1, v2

    :goto_9b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->skipPercent:Ljava/lang/Integer;

    if-eqz v1, :cond_a7

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_a8

    :cond_a7
    move v1, v2

    :goto_a8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->screen_capture:Ljava/lang/Integer;

    if-eqz v1, :cond_b4

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_b5

    :cond_b4
    move v1, v2

    :goto_b5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->screen_capture_times:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->skipSeconds:Ljava/lang/Integer;

    if-eqz v1, :cond_ca

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_cb

    :cond_ca
    move v1, v2

    :goto_cb
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->enableExitOnVideoClose:Ljava/lang/Boolean;

    if-eqz v1, :cond_d7

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_d8

    :cond_d7
    move v1, v2

    :goto_d8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->close_dialog_setting:Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;

    if-eqz v1, :cond_e3

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;->hashCode()I

    move-result v2

    :cond_e3
    add-int/2addr v0, v2

    iput v0, p0, Lcom/sigmob/wire/AndroidMessage;->hashCode:I

    :cond_e6
    return v0
.end method

.method public newBuilder()Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;
    .registers 4

    new-instance v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;

    invoke-direct {v0}, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->endpoints:Lcom/sigmob/sdk/common/models/ssp/pb/RvEndpointsConfig;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->endpoints:Lcom/sigmob/sdk/common/models/ssp/pb/RvEndpointsConfig;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->cacheTop:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->cacheTop:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->ifMute:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->ifMute:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->showClose:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->showClose:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->finished:Ljava/lang/Float;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->finished:Ljava/lang/Float;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->loadExpired:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->loadExpired:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->loadTimeout:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->loadTimeout:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->videoClosePosition:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->videoClosePosition:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->endcardClosePosition:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->endcardClosePosition:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->mutePostion:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->mutePostion:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->loadPeriodTime:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->loadPeriodTime:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->skipPercent:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->skipPercent:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->screen_capture:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->screen_capture:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->screen_capture_times:Ljava/util/List;

    const-string v2, "screen_capture_times"

    invoke-static {v2, v1}, Lcom/sigmob/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->screen_capture_times:Ljava/util/List;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->skipSeconds:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->skipSeconds:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->enableExitOnVideoClose:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->enableExitOnVideoClose:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->close_dialog_setting:Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->close_dialog_setting:Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->addUnknownFields(Lcom/sigmob/wire/okio/ByteString;)Lcom/sigmob/wire/Message$Builder;

    return-object v0
.end method

.method public bridge synthetic newBuilder()Lcom/sigmob/wire/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->newBuilder()Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->endpoints:Lcom/sigmob/sdk/common/models/ssp/pb/RvEndpointsConfig;

    if-eqz v1, :cond_14

    const-string v1, ", endpoints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->endpoints:Lcom/sigmob/sdk/common/models/ssp/pb/RvEndpointsConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_14
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->cacheTop:Ljava/lang/Integer;

    if-eqz v1, :cond_23

    const-string v1, ", cacheTop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->cacheTop:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_23
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->ifMute:Ljava/lang/Integer;

    if-eqz v1, :cond_32

    const-string v1, ", ifMute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->ifMute:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_32
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->showClose:Ljava/lang/Integer;

    if-eqz v1, :cond_41

    const-string v1, ", showClose="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->showClose:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_41
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->finished:Ljava/lang/Float;

    if-eqz v1, :cond_50

    const-string v1, ", finished="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->finished:Ljava/lang/Float;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_50
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->loadExpired:Ljava/lang/Integer;

    if-eqz v1, :cond_5f

    const-string v1, ", loadExpired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->loadExpired:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_5f
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->loadTimeout:Ljava/lang/Integer;

    if-eqz v1, :cond_6e

    const-string v1, ", loadTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->loadTimeout:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_6e
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->videoClosePosition:Ljava/lang/Integer;

    if-eqz v1, :cond_7d

    const-string v1, ", videoClosePosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->videoClosePosition:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_7d
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->endcardClosePosition:Ljava/lang/Integer;

    if-eqz v1, :cond_8c

    const-string v1, ", endcardClosePosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->endcardClosePosition:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_8c
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->mutePostion:Ljava/lang/Integer;

    if-eqz v1, :cond_9b

    const-string v1, ", mutePostion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->mutePostion:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_9b
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->loadPeriodTime:Ljava/lang/Integer;

    if-eqz v1, :cond_aa

    const-string v1, ", loadPeriodTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->loadPeriodTime:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_aa
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->skipPercent:Ljava/lang/Integer;

    if-eqz v1, :cond_b9

    const-string v1, ", skipPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->skipPercent:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_b9
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->screen_capture:Ljava/lang/Integer;

    if-eqz v1, :cond_c8

    const-string v1, ", screen_capture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->screen_capture:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_c8
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->screen_capture_times:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_db

    const-string v1, ", screen_capture_times="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->screen_capture_times:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_db
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->skipSeconds:Ljava/lang/Integer;

    if-eqz v1, :cond_ea

    const-string v1, ", skipSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->skipSeconds:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_ea
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->enableExitOnVideoClose:Ljava/lang/Boolean;

    if-eqz v1, :cond_f9

    const-string v1, ", enableExitOnVideoClose="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->enableExitOnVideoClose:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_f9
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->close_dialog_setting:Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;

    if-eqz v1, :cond_108

    const-string v1, ", close_dialog_setting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->close_dialog_setting:Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_108
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "RvConfig{"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
