.class public final Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;
.super Lcom/sigmob/wire/AndroidMessage;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/AndroidMessage",
        "<",
        "Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;",
        "Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter",
            "<",
            "Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;",
            ">;"
        }
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_CLICK_TYPE:Ljava/lang/Integer;

.field public static final DEFAULT_CREATIVE_TYPE:Ljava/lang/Integer;

.field public static final DEFAULT_DEEPLINK_URL:Ljava/lang/String; = ""

.field public static final DEFAULT_ENABLE_COLLAPSE_TOOL_BAR:Ljava/lang/Boolean;

.field public static final DEFAULT_ENDCARD_MD5:Ljava/lang/String; = ""

.field public static final DEFAULT_ENDCARD_URL:Ljava/lang/String; = ""

.field public static final DEFAULT_HAS_COMPANIONENDCARD:Ljava/lang/Boolean;

.field public static final DEFAULT_HTML_SNIPPET:Lcom/sigmob/wire/okio/ByteString;

.field public static final DEFAULT_HTML_URL:Ljava/lang/String; = ""

.field public static final DEFAULT_IMAGE_MD5:Ljava/lang/String; = ""

.field public static final DEFAULT_IMAGE_SRC:Ljava/lang/String; = ""

.field public static final DEFAULT_IMAGE_TYPE:Ljava/lang/Integer;

.field public static final DEFAULT_INTERACTION_TYPE:Ljava/lang/Integer;

.field public static final DEFAULT_LANDING_PAGE:Ljava/lang/String; = ""

.field public static final DEFAULT_OPEN_MARKET_MODE:Ljava/lang/Integer;

.field public static final DEFAULT_PLAY_MODE:Ljava/lang/Integer;

.field public static final DEFAULT_SUB_INTERACTION_TYPE:Ljava/lang/Integer;

.field public static final DEFAULT_TEMPLATE_TYPE:Ljava/lang/Integer;

.field public static final DEFAULT_VIDEO_DURATION:Ljava/lang/Integer;

.field public static final DEFAULT_VIDEO_MD5:Ljava/lang/String; = ""

.field public static final DEFAULT_VIDEO_RECIPROCAL_MILLISECOND:Ljava/lang/Integer;

.field public static final DEFAULT_VIDEO_URL:Ljava/lang/String; = ""

.field private static final serialVersionUID:J


# instance fields
.field public final click_type:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x10
    .end annotation
.end field

.field public final companion:Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.sigmob.sdk.base.models.sigdsp.pb.CompanionEndcard#ADAPTER"
        tag = 0x12
    .end annotation
.end field

.field public final creative_type:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x1
    .end annotation
.end field

.field public final deeplink_url:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0xb
    .end annotation
.end field

.field public final enable_collapse_tool_bar:Ljava/lang/Boolean;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x17
    .end annotation
.end field

.field public final endcard_md5:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0xa
    .end annotation
.end field

.field public final endcard_url:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x8
    .end annotation
.end field

.field public final has_companionEndcard:Ljava/lang/Boolean;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x11
    .end annotation
.end field

.field public final html_snippet:Lcom/sigmob/wire/okio/ByteString;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BYTES"
        tag = 0x7
    .end annotation
.end field

.field public final html_url:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x16
    .end annotation
.end field

.field public final image_md5:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0xe
    .end annotation
.end field

.field public final image_size:Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.sigmob.sdk.base.models.sigdsp.pb.Size#ADAPTER"
        tag = 0xd
    .end annotation
.end field

.field public final image_src:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0xc
    .end annotation
.end field

.field public final image_type:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0xf
    .end annotation
.end field

.field public final interaction_type:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x2
    .end annotation
.end field

.field public final landing_page:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x3
    .end annotation
.end field

.field public final open_market_mode:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x18
    .end annotation
.end field

.field public final play_mode:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x19
    .end annotation
.end field

.field public final sub_interaction_type:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x1a
    .end annotation
.end field

.field public final template_type:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x14
    .end annotation
.end field

.field public final video_duration:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x5
    .end annotation
.end field

.field public final video_md5:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x9
    .end annotation
.end field

.field public final video_reciprocal_millisecond:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT32"
        tag = 0x15
    .end annotation
.end field

.field public final video_size:Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.sigmob.sdk.base.models.sigdsp.pb.Size#ADAPTER"
        tag = 0x6
    .end annotation
.end field

.field public final video_url:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x4
    .end annotation
.end field

.field public final web_event_handle:Lcom/sigmob/sdk/base/models/sigdsp/pb/WebEventHandle;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.sigmob.sdk.base.models.sigdsp.pb.WebEventHandle#ADAPTER"
        tag = 0x13
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    new-instance v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$ProtoAdapter_MaterialMeta;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$ProtoAdapter_MaterialMeta;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-static {v0}, Lcom/sigmob/wire/AndroidMessage;->newCreator(Lcom/sigmob/wire/ProtoAdapter;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->DEFAULT_CREATIVE_TYPE:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->DEFAULT_INTERACTION_TYPE:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->DEFAULT_VIDEO_DURATION:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/wire/okio/ByteString;->EMPTY:Lcom/sigmob/wire/okio/ByteString;

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->DEFAULT_HTML_SNIPPET:Lcom/sigmob/wire/okio/ByteString;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->DEFAULT_IMAGE_TYPE:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->DEFAULT_CLICK_TYPE:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->DEFAULT_HAS_COMPANIONENDCARD:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->DEFAULT_TEMPLATE_TYPE:Ljava/lang/Integer;

    const/16 v0, -0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->DEFAULT_VIDEO_RECIPROCAL_MILLISECOND:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->DEFAULT_ENABLE_COLLAPSE_TOOL_BAR:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->DEFAULT_OPEN_MARKET_MODE:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->DEFAULT_PLAY_MODE:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->DEFAULT_SUB_INTERACTION_TYPE:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;Lcom/sigmob/wire/okio/ByteString;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;Lcom/sigmob/sdk/base/models/sigdsp/pb/WebEventHandle;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 55

    sget-object v27, Lcom/sigmob/wire/okio/ByteString;->EMPTY:Lcom/sigmob/wire/okio/ByteString;

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

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move-object/from16 v21, p21

    move-object/from16 v22, p22

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    move-object/from16 v26, p26

    invoke-direct/range {v0 .. v27}, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;Lcom/sigmob/wire/okio/ByteString;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;Lcom/sigmob/sdk/base/models/sigdsp/pb/WebEventHandle;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/sigmob/wire/okio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;Lcom/sigmob/wire/okio/ByteString;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;Lcom/sigmob/sdk/base/models/sigdsp/pb/WebEventHandle;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/sigmob/wire/okio/ByteString;)V
    .registers 30

    sget-object v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    move-object/from16 v0, p27

    invoke-direct {p0, v1, v0}, Lcom/sigmob/wire/AndroidMessage;-><init>(Lcom/sigmob/wire/ProtoAdapter;Lcom/sigmob/wire/okio/ByteString;)V

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->creative_type:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->interaction_type:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->landing_page:Ljava/lang/String;

    iput-object p4, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->video_url:Ljava/lang/String;

    iput-object p5, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->video_duration:Ljava/lang/Integer;

    iput-object p6, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->video_size:Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

    iput-object p7, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->html_snippet:Lcom/sigmob/wire/okio/ByteString;

    iput-object p8, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->endcard_url:Ljava/lang/String;

    iput-object p9, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->video_md5:Ljava/lang/String;

    iput-object p10, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->endcard_md5:Ljava/lang/String;

    iput-object p11, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->deeplink_url:Ljava/lang/String;

    iput-object p12, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->image_src:Ljava/lang/String;

    iput-object p13, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->image_size:Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->image_md5:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->image_type:Ljava/lang/Integer;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->click_type:Ljava/lang/Integer;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->has_companionEndcard:Ljava/lang/Boolean;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->companion:Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->web_event_handle:Lcom/sigmob/sdk/base/models/sigdsp/pb/WebEventHandle;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->template_type:Ljava/lang/Integer;

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->video_reciprocal_millisecond:Ljava/lang/Integer;

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->html_url:Ljava/lang/String;

    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->enable_collapse_tool_bar:Ljava/lang/Boolean;

    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->open_market_mode:Ljava/lang/Integer;

    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->play_mode:Ljava/lang/Integer;

    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->sub_interaction_type:Ljava/lang/Integer;

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
    instance-of v2, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sigmob/wire/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11f

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->creative_type:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->creative_type:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11f

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->interaction_type:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->interaction_type:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11f

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->landing_page:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->landing_page:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11f

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->video_url:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->video_url:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11f

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->video_duration:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->video_duration:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11f

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->video_size:Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->video_size:Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11f

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->html_snippet:Lcom/sigmob/wire/okio/ByteString;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->html_snippet:Lcom/sigmob/wire/okio/ByteString;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11f

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->endcard_url:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->endcard_url:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11f

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->video_md5:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->video_md5:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11f

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->endcard_md5:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->endcard_md5:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11f

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->deeplink_url:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->deeplink_url:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11f

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->image_src:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->image_src:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11f

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->image_size:Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->image_size:Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11f

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->image_md5:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->image_md5:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11f

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->image_type:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->image_type:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11f

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->click_type:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->click_type:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11f

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->has_companionEndcard:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->has_companionEndcard:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11f

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->companion:Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->companion:Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11f

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->web_event_handle:Lcom/sigmob/sdk/base/models/sigdsp/pb/WebEventHandle;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->web_event_handle:Lcom/sigmob/sdk/base/models/sigdsp/pb/WebEventHandle;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11f

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->template_type:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->template_type:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11f

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->video_reciprocal_millisecond:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->video_reciprocal_millisecond:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11f

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->html_url:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->html_url:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11f

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->enable_collapse_tool_bar:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->enable_collapse_tool_bar:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11f

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->open_market_mode:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->open_market_mode:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11f

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->play_mode:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->play_mode:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11f

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->sub_interaction_type:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->sub_interaction_type:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_11f
    move v0, v1

    goto/16 :goto_4
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget v0, p0, Lcom/sigmob/wire/AndroidMessage;->hashCode:I

    if-nez v0, :cond_161

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->creative_type:Ljava/lang/Integer;

    if-eqz v0, :cond_162

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->creative_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_19
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->interaction_type:Ljava/lang/Integer;

    if-eqz v0, :cond_165

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->interaction_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_26
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->landing_page:Ljava/lang/String;

    if-eqz v0, :cond_168

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->landing_page:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_33
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->video_url:Ljava/lang/String;

    if-eqz v0, :cond_16b

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->video_url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_40
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->video_duration:Ljava/lang/Integer;

    if-eqz v0, :cond_16e

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->video_duration:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_4d
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->video_size:Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

    if-eqz v0, :cond_171

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->video_size:Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;->hashCode()I

    move-result v0

    :goto_5a
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->html_snippet:Lcom/sigmob/wire/okio/ByteString;

    if-eqz v0, :cond_174

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->html_snippet:Lcom/sigmob/wire/okio/ByteString;

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/ByteString;->hashCode()I

    move-result v0

    :goto_67
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->endcard_url:Ljava/lang/String;

    if-eqz v0, :cond_177

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->endcard_url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_74
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->video_md5:Ljava/lang/String;

    if-eqz v0, :cond_17a

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->video_md5:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_81
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->endcard_md5:Ljava/lang/String;

    if-eqz v0, :cond_17d

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->endcard_md5:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_8e
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->deeplink_url:Ljava/lang/String;

    if-eqz v0, :cond_180

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->deeplink_url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_9b
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->image_src:Ljava/lang/String;

    if-eqz v0, :cond_183

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->image_src:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a8
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->image_size:Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

    if-eqz v0, :cond_186

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->image_size:Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;->hashCode()I

    move-result v0

    :goto_b5
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->image_md5:Ljava/lang/String;

    if-eqz v0, :cond_189

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->image_md5:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_c2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->image_type:Ljava/lang/Integer;

    if-eqz v0, :cond_18c

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->image_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_cf
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->click_type:Ljava/lang/Integer;

    if-eqz v0, :cond_18f

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->click_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_dc
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->has_companionEndcard:Ljava/lang/Boolean;

    if-eqz v0, :cond_192

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->has_companionEndcard:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_e9
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->companion:Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;

    if-eqz v0, :cond_195

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->companion:Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->hashCode()I

    move-result v0

    :goto_f6
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->web_event_handle:Lcom/sigmob/sdk/base/models/sigdsp/pb/WebEventHandle;

    if-eqz v0, :cond_198

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->web_event_handle:Lcom/sigmob/sdk/base/models/sigdsp/pb/WebEventHandle;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/WebEventHandle;->hashCode()I

    move-result v0

    :goto_103
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->template_type:Ljava/lang/Integer;

    if-eqz v0, :cond_19b

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->template_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_110
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->video_reciprocal_millisecond:Ljava/lang/Integer;

    if-eqz v0, :cond_19e

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->video_reciprocal_millisecond:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_11d
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->html_url:Ljava/lang/String;

    if-eqz v0, :cond_1a1

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->html_url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_12a
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->enable_collapse_tool_bar:Ljava/lang/Boolean;

    if-eqz v0, :cond_1a3

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->enable_collapse_tool_bar:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_137
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->open_market_mode:Ljava/lang/Integer;

    if-eqz v0, :cond_1a5

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->open_market_mode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_144
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->play_mode:Ljava/lang/Integer;

    if-eqz v0, :cond_1a7

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->play_mode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_151
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->sub_interaction_type:Ljava/lang/Integer;

    if-eqz v2, :cond_15e

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->sub_interaction_type:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_15e
    add-int/2addr v0, v1

    iput v0, p0, Lcom/sigmob/wire/AndroidMessage;->hashCode:I

    :cond_161
    return v0

    :cond_162
    move v0, v1

    goto/16 :goto_19

    :cond_165
    move v0, v1

    goto/16 :goto_26

    :cond_168
    move v0, v1

    goto/16 :goto_33

    :cond_16b
    move v0, v1

    goto/16 :goto_40

    :cond_16e
    move v0, v1

    goto/16 :goto_4d

    :cond_171
    move v0, v1

    goto/16 :goto_5a

    :cond_174
    move v0, v1

    goto/16 :goto_67

    :cond_177
    move v0, v1

    goto/16 :goto_74

    :cond_17a
    move v0, v1

    goto/16 :goto_81

    :cond_17d
    move v0, v1

    goto/16 :goto_8e

    :cond_180
    move v0, v1

    goto/16 :goto_9b

    :cond_183
    move v0, v1

    goto/16 :goto_a8

    :cond_186
    move v0, v1

    goto/16 :goto_b5

    :cond_189
    move v0, v1

    goto/16 :goto_c2

    :cond_18c
    move v0, v1

    goto/16 :goto_cf

    :cond_18f
    move v0, v1

    goto/16 :goto_dc

    :cond_192
    move v0, v1

    goto/16 :goto_e9

    :cond_195
    move v0, v1

    goto/16 :goto_f6

    :cond_198
    move v0, v1

    goto/16 :goto_103

    :cond_19b
    move v0, v1

    goto/16 :goto_110

    :cond_19e
    move v0, v1

    goto/16 :goto_11d

    :cond_1a1
    move v0, v1

    goto :goto_12a

    :cond_1a3
    move v0, v1

    goto :goto_137

    :cond_1a5
    move v0, v1

    goto :goto_144

    :cond_1a7
    move v0, v1

    goto :goto_151
.end method

.method public newBuilder()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;
    .registers 3

    new-instance v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->creative_type:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->creative_type:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->interaction_type:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->interaction_type:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->landing_page:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->landing_page:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->video_url:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->video_url:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->video_duration:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->video_duration:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->video_size:Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->video_size:Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->html_snippet:Lcom/sigmob/wire/okio/ByteString;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->html_snippet:Lcom/sigmob/wire/okio/ByteString;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->endcard_url:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->endcard_url:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->video_md5:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->video_md5:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->endcard_md5:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->endcard_md5:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->deeplink_url:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->deeplink_url:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->image_src:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->image_src:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->image_size:Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->image_size:Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->image_md5:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->image_md5:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->image_type:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->image_type:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->click_type:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->click_type:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->has_companionEndcard:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->has_companionEndcard:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->companion:Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->companion:Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->web_event_handle:Lcom/sigmob/sdk/base/models/sigdsp/pb/WebEventHandle;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->web_event_handle:Lcom/sigmob/sdk/base/models/sigdsp/pb/WebEventHandle;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->template_type:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->template_type:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->video_reciprocal_millisecond:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->video_reciprocal_millisecond:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->html_url:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->html_url:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->enable_collapse_tool_bar:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->enable_collapse_tool_bar:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->open_market_mode:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->open_market_mode:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->play_mode:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->play_mode:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->sub_interaction_type:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->sub_interaction_type:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->addUnknownFields(Lcom/sigmob/wire/okio/ByteString;)Lcom/sigmob/wire/Message$Builder;

    return-object v0
.end method

.method public bridge synthetic newBuilder()Lcom/sigmob/wire/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->newBuilder()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->creative_type:Ljava/lang/Integer;

    if-eqz v1, :cond_14

    const-string v1, ", creative_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->creative_type:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_14
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->interaction_type:Ljava/lang/Integer;

    if-eqz v1, :cond_23

    const-string v1, ", interaction_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->interaction_type:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_23
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->landing_page:Ljava/lang/String;

    if-eqz v1, :cond_32

    const-string v1, ", landing_page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->landing_page:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_32
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->video_url:Ljava/lang/String;

    if-eqz v1, :cond_41

    const-string v1, ", video_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->video_url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_41
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->video_duration:Ljava/lang/Integer;

    if-eqz v1, :cond_50

    const-string v1, ", video_duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->video_duration:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_50
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->video_size:Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

    if-eqz v1, :cond_5f

    const-string v1, ", video_size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->video_size:Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_5f
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->html_snippet:Lcom/sigmob/wire/okio/ByteString;

    if-eqz v1, :cond_6e

    const-string v1, ", html_snippet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->html_snippet:Lcom/sigmob/wire/okio/ByteString;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_6e
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->endcard_url:Ljava/lang/String;

    if-eqz v1, :cond_7d

    const-string v1, ", endcard_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->endcard_url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7d
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->video_md5:Ljava/lang/String;

    if-eqz v1, :cond_8c

    const-string v1, ", video_md5="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->video_md5:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8c
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->endcard_md5:Ljava/lang/String;

    if-eqz v1, :cond_9b

    const-string v1, ", endcard_md5="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->endcard_md5:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9b
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->deeplink_url:Ljava/lang/String;

    if-eqz v1, :cond_aa

    const-string v1, ", deeplink_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->deeplink_url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_aa
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->image_src:Ljava/lang/String;

    if-eqz v1, :cond_b9

    const-string v1, ", image_src="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->image_src:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b9
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->image_size:Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

    if-eqz v1, :cond_c8

    const-string v1, ", image_size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->image_size:Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_c8
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->image_md5:Ljava/lang/String;

    if-eqz v1, :cond_d7

    const-string v1, ", image_md5="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->image_md5:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d7
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->image_type:Ljava/lang/Integer;

    if-eqz v1, :cond_e6

    const-string v1, ", image_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->image_type:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_e6
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->click_type:Ljava/lang/Integer;

    if-eqz v1, :cond_f5

    const-string v1, ", click_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->click_type:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_f5
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->has_companionEndcard:Ljava/lang/Boolean;

    if-eqz v1, :cond_104

    const-string v1, ", has_companionEndcard="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->has_companionEndcard:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_104
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->companion:Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;

    if-eqz v1, :cond_113

    const-string v1, ", companion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->companion:Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_113
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->web_event_handle:Lcom/sigmob/sdk/base/models/sigdsp/pb/WebEventHandle;

    if-eqz v1, :cond_122

    const-string v1, ", web_event_handle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->web_event_handle:Lcom/sigmob/sdk/base/models/sigdsp/pb/WebEventHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_122
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->template_type:Ljava/lang/Integer;

    if-eqz v1, :cond_131

    const-string v1, ", template_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->template_type:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_131
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->video_reciprocal_millisecond:Ljava/lang/Integer;

    if-eqz v1, :cond_140

    const-string v1, ", video_reciprocal_millisecond="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->video_reciprocal_millisecond:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_140
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->html_url:Ljava/lang/String;

    if-eqz v1, :cond_14f

    const-string v1, ", html_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->html_url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14f
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->enable_collapse_tool_bar:Ljava/lang/Boolean;

    if-eqz v1, :cond_15e

    const-string v1, ", enable_collapse_tool_bar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->enable_collapse_tool_bar:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_15e
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->open_market_mode:Ljava/lang/Integer;

    if-eqz v1, :cond_16d

    const-string v1, ", open_market_mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->open_market_mode:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_16d
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->play_mode:Ljava/lang/Integer;

    if-eqz v1, :cond_17c

    const-string v1, ", play_mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->play_mode:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_17c
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->sub_interaction_type:Ljava/lang/Integer;

    if-eqz v1, :cond_18b

    const-string v1, ", sub_interaction_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->sub_interaction_type:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_18b
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "MaterialMeta{"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
