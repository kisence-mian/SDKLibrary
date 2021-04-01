.class public final Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;
.super Lcom/sigmob/wire/AndroidMessage;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/AndroidMessage",
        "<",
        "Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;",
        "Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter",
            "<",
            "Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;",
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

.field public final close_dialog_setting:Lcom/sigmob/sdk/base/models/ssp/pb/DialogSetting;
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

.field public final endpoints:Lcom/sigmob/sdk/base/models/ssp/pb/RvEndpointsConfig;
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
            "Ljava/util/List",
            "<",
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
    .registers 2

    const/4 v1, 0x0

    new-instance v0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$ProtoAdapter_RvConfig;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$ProtoAdapter_RvConfig;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    sget-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-static {v0}, Lcom/sigmob/wire/AndroidMessage;->newCreator(Lcom/sigmob/wire/ProtoAdapter;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->DEFAULT_CACHETOP:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->DEFAULT_IFMUTE:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->DEFAULT_SHOWCLOSE:Ljava/lang/Integer;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->DEFAULT_FINISHED:Ljava/lang/Float;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->DEFAULT_LOADEXPIRED:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->DEFAULT_LOADTIMEOUT:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->DEFAULT_VIDEOCLOSEPOSITION:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->DEFAULT_ENDCARDCLOSEPOSITION:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->DEFAULT_MUTEPOSTION:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->DEFAULT_LOADPERIODTIME:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->DEFAULT_SKIPPERCENT:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->DEFAULT_SCREEN_CAPTURE:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->DEFAULT_SKIPSECONDS:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->DEFAULT_ENABLEEXITONVIDEOCLOSE:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Lcom/sigmob/sdk/base/models/ssp/pb/RvEndpointsConfig;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/sigmob/sdk/base/models/ssp/pb/DialogSetting;)V
    .registers 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/sdk/base/models/ssp/pb/RvEndpointsConfig;",
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
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Lcom/sigmob/sdk/base/models/ssp/pb/DialogSetting;",
            ")V"
        }
    .end annotation

    sget-object v18, Lcom/sigmob/wire/okio/ByteString;->EMPTY:Lcom/sigmob/wire/okio/ByteString;

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

    invoke-direct/range {v0 .. v18}, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;-><init>(Lcom/sigmob/sdk/base/models/ssp/pb/RvEndpointsConfig;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/sigmob/sdk/base/models/ssp/pb/DialogSetting;Lcom/sigmob/wire/okio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Lcom/sigmob/sdk/base/models/ssp/pb/RvEndpointsConfig;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/sigmob/sdk/base/models/ssp/pb/DialogSetting;Lcom/sigmob/wire/okio/ByteString;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/sdk/base/models/ssp/pb/RvEndpointsConfig;",
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
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Lcom/sigmob/sdk/base/models/ssp/pb/DialogSetting;",
            "Lcom/sigmob/wire/okio/ByteString;",
            ")V"
        }
    .end annotation

    sget-object v1, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    move-object/from16 v0, p18

    invoke-direct {p0, v1, v0}, Lcom/sigmob/wire/AndroidMessage;-><init>(Lcom/sigmob/wire/ProtoAdapter;Lcom/sigmob/wire/okio/ByteString;)V

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->endpoints:Lcom/sigmob/sdk/base/models/ssp/pb/RvEndpointsConfig;

    iput-object p2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->cacheTop:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->ifMute:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->showClose:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->finished:Ljava/lang/Float;

    iput-object p6, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->loadExpired:Ljava/lang/Integer;

    iput-object p7, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->loadTimeout:Ljava/lang/Integer;

    iput-object p8, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->videoClosePosition:Ljava/lang/Integer;

    iput-object p9, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->endcardClosePosition:Ljava/lang/Integer;

    iput-object p10, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->mutePostion:Ljava/lang/Integer;

    iput-object p11, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->loadPeriodTime:Ljava/lang/Integer;

    iput-object p12, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->skipPercent:Ljava/lang/Integer;

    iput-object p13, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->screen_capture:Ljava/lang/Integer;

    const-string v1, "screen_capture_times"

    move-object/from16 v0, p14

    invoke-static {v1, v0}, Lcom/sigmob/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->screen_capture_times:Ljava/util/List;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->skipSeconds:Ljava/lang/Integer;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->enableExitOnVideoClose:Ljava/lang/Boolean;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->close_dialog_setting:Lcom/sigmob/sdk/base/models/ssp/pb/DialogSetting;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sigmob/wire/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c5

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->endpoints:Lcom/sigmob/sdk/base/models/ssp/pb/RvEndpointsConfig;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->endpoints:Lcom/sigmob/sdk/base/models/ssp/pb/RvEndpointsConfig;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c5

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->cacheTop:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->cacheTop:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c5

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->ifMute:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->ifMute:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c5

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->showClose:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->showClose:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c5

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->finished:Ljava/lang/Float;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->finished:Ljava/lang/Float;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c5

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->loadExpired:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->loadExpired:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c5

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->loadTimeout:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->loadTimeout:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c5

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->videoClosePosition:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->videoClosePosition:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c5

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->endcardClosePosition:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->endcardClosePosition:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c5

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->mutePostion:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->mutePostion:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c5

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->loadPeriodTime:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->loadPeriodTime:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c5

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->skipPercent:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->skipPercent:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c5

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->screen_capture:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->screen_capture:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c5

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->screen_capture_times:Ljava/util/List;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->screen_capture_times:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c5

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->skipSeconds:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->skipSeconds:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c5

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->enableExitOnVideoClose:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->enableExitOnVideoClose:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c5

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->close_dialog_setting:Lcom/sigmob/sdk/base/models/ssp/pb/DialogSetting;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->close_dialog_setting:Lcom/sigmob/sdk/base/models/ssp/pb/DialogSetting;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_c5
    move v0, v1

    goto/16 :goto_4
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget v0, p0, Lcom/sigmob/wire/AndroidMessage;->hashCode:I

    if-nez v0, :cond_e8

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->endpoints:Lcom/sigmob/sdk/base/models/ssp/pb/RvEndpointsConfig;

    if-eqz v0, :cond_e9

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->endpoints:Lcom/sigmob/sdk/base/models/ssp/pb/RvEndpointsConfig;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/ssp/pb/RvEndpointsConfig;->hashCode()I

    move-result v0

    :goto_19
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->cacheTop:Ljava/lang/Integer;

    if-eqz v0, :cond_ec

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->cacheTop:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_26
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->ifMute:Ljava/lang/Integer;

    if-eqz v0, :cond_ef

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->ifMute:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_33
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->showClose:Ljava/lang/Integer;

    if-eqz v0, :cond_f2

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->showClose:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_40
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->finished:Ljava/lang/Float;

    if-eqz v0, :cond_f5

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->finished:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->hashCode()I

    move-result v0

    :goto_4d
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->loadExpired:Ljava/lang/Integer;

    if-eqz v0, :cond_f8

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->loadExpired:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_5a
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->loadTimeout:Ljava/lang/Integer;

    if-eqz v0, :cond_fb

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->loadTimeout:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_67
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->videoClosePosition:Ljava/lang/Integer;

    if-eqz v0, :cond_fe

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->videoClosePosition:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_74
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->endcardClosePosition:Ljava/lang/Integer;

    if-eqz v0, :cond_101

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->endcardClosePosition:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_81
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->mutePostion:Ljava/lang/Integer;

    if-eqz v0, :cond_104

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->mutePostion:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_8e
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->loadPeriodTime:Ljava/lang/Integer;

    if-eqz v0, :cond_106

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->loadPeriodTime:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_9b
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->skipPercent:Ljava/lang/Integer;

    if-eqz v0, :cond_108

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->skipPercent:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_a8
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->screen_capture:Ljava/lang/Integer;

    if-eqz v0, :cond_10a

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->screen_capture:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_b5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->screen_capture_times:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->skipSeconds:Ljava/lang/Integer;

    if-eqz v0, :cond_10c

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->skipSeconds:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_cb
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->enableExitOnVideoClose:Ljava/lang/Boolean;

    if-eqz v0, :cond_10e

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->enableExitOnVideoClose:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_d8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->close_dialog_setting:Lcom/sigmob/sdk/base/models/ssp/pb/DialogSetting;

    if-eqz v2, :cond_e5

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->close_dialog_setting:Lcom/sigmob/sdk/base/models/ssp/pb/DialogSetting;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/ssp/pb/DialogSetting;->hashCode()I

    move-result v1

    :cond_e5
    add-int/2addr v0, v1

    iput v0, p0, Lcom/sigmob/wire/AndroidMessage;->hashCode:I

    :cond_e8
    return v0

    :cond_e9
    move v0, v1

    goto/16 :goto_19

    :cond_ec
    move v0, v1

    goto/16 :goto_26

    :cond_ef
    move v0, v1

    goto/16 :goto_33

    :cond_f2
    move v0, v1

    goto/16 :goto_40

    :cond_f5
    move v0, v1

    goto/16 :goto_4d

    :cond_f8
    move v0, v1

    goto/16 :goto_5a

    :cond_fb
    move v0, v1

    goto/16 :goto_67

    :cond_fe
    move v0, v1

    goto/16 :goto_74

    :cond_101
    move v0, v1

    goto/16 :goto_81

    :cond_104
    move v0, v1

    goto :goto_8e

    :cond_106
    move v0, v1

    goto :goto_9b

    :cond_108
    move v0, v1

    goto :goto_a8

    :cond_10a
    move v0, v1

    goto :goto_b5

    :cond_10c
    move v0, v1

    goto :goto_cb

    :cond_10e
    move v0, v1

    goto :goto_d8
.end method

.method public newBuilder()Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;
    .registers 4

    new-instance v0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->endpoints:Lcom/sigmob/sdk/base/models/ssp/pb/RvEndpointsConfig;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;->endpoints:Lcom/sigmob/sdk/base/models/ssp/pb/RvEndpointsConfig;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->cacheTop:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;->cacheTop:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->ifMute:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;->ifMute:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->showClose:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;->showClose:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->finished:Ljava/lang/Float;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;->finished:Ljava/lang/Float;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->loadExpired:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;->loadExpired:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->loadTimeout:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;->loadTimeout:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->videoClosePosition:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;->videoClosePosition:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->endcardClosePosition:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;->endcardClosePosition:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->mutePostion:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;->mutePostion:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->loadPeriodTime:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;->loadPeriodTime:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->skipPercent:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;->skipPercent:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->screen_capture:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;->screen_capture:Ljava/lang/Integer;

    const-string v1, "screen_capture_times"

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->screen_capture_times:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/sigmob/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;->screen_capture_times:Ljava/util/List;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->skipSeconds:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;->skipSeconds:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->enableExitOnVideoClose:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;->enableExitOnVideoClose:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->close_dialog_setting:Lcom/sigmob/sdk/base/models/ssp/pb/DialogSetting;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;->close_dialog_setting:Lcom/sigmob/sdk/base/models/ssp/pb/DialogSetting;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;->addUnknownFields(Lcom/sigmob/wire/okio/ByteString;)Lcom/sigmob/wire/Message$Builder;

    return-object v0
.end method

.method public bridge synthetic newBuilder()Lcom/sigmob/wire/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->newBuilder()Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->endpoints:Lcom/sigmob/sdk/base/models/ssp/pb/RvEndpointsConfig;

    if-eqz v1, :cond_14

    const-string v1, ", endpoints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->endpoints:Lcom/sigmob/sdk/base/models/ssp/pb/RvEndpointsConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_14
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->cacheTop:Ljava/lang/Integer;

    if-eqz v1, :cond_23

    const-string v1, ", cacheTop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->cacheTop:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_23
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->ifMute:Ljava/lang/Integer;

    if-eqz v1, :cond_32

    const-string v1, ", ifMute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->ifMute:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_32
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->showClose:Ljava/lang/Integer;

    if-eqz v1, :cond_41

    const-string v1, ", showClose="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->showClose:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_41
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->finished:Ljava/lang/Float;

    if-eqz v1, :cond_50

    const-string v1, ", finished="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->finished:Ljava/lang/Float;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_50
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->loadExpired:Ljava/lang/Integer;

    if-eqz v1, :cond_5f

    const-string v1, ", loadExpired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->loadExpired:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_5f
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->loadTimeout:Ljava/lang/Integer;

    if-eqz v1, :cond_6e

    const-string v1, ", loadTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->loadTimeout:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_6e
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->videoClosePosition:Ljava/lang/Integer;

    if-eqz v1, :cond_7d

    const-string v1, ", videoClosePosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->videoClosePosition:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_7d
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->endcardClosePosition:Ljava/lang/Integer;

    if-eqz v1, :cond_8c

    const-string v1, ", endcardClosePosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->endcardClosePosition:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_8c
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->mutePostion:Ljava/lang/Integer;

    if-eqz v1, :cond_9b

    const-string v1, ", mutePostion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->mutePostion:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_9b
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->loadPeriodTime:Ljava/lang/Integer;

    if-eqz v1, :cond_aa

    const-string v1, ", loadPeriodTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->loadPeriodTime:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_aa
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->skipPercent:Ljava/lang/Integer;

    if-eqz v1, :cond_b9

    const-string v1, ", skipPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->skipPercent:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_b9
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->screen_capture:Ljava/lang/Integer;

    if-eqz v1, :cond_c8

    const-string v1, ", screen_capture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->screen_capture:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_c8
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->screen_capture_times:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_db

    const-string v1, ", screen_capture_times="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->screen_capture_times:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_db
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->skipSeconds:Ljava/lang/Integer;

    if-eqz v1, :cond_ea

    const-string v1, ", skipSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->skipSeconds:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_ea
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->enableExitOnVideoClose:Ljava/lang/Boolean;

    if-eqz v1, :cond_f9

    const-string v1, ", enableExitOnVideoClose="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->enableExitOnVideoClose:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_f9
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->close_dialog_setting:Lcom/sigmob/sdk/base/models/ssp/pb/DialogSetting;

    if-eqz v1, :cond_108

    const-string v1, ", close_dialog_setting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->close_dialog_setting:Lcom/sigmob/sdk/base/models/ssp/pb/DialogSetting;

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
