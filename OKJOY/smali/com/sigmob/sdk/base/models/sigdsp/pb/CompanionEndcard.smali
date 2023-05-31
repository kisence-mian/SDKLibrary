.class public final Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;
.super Lcom/sigmob/wire/AndroidMessage;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/AndroidMessage",
        "<",
        "Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;",
        "Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter",
            "<",
            "Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;",
            ">;"
        }
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_ANIMATE_DELAY_SECS:Ljava/lang/Integer;

.field public static final DEFAULT_ANIMATE_TYPE:Ljava/lang/Integer;

.field public static final DEFAULT_BUTTON_TEXT:Ljava/lang/String; = ""

.field public static final DEFAULT_CLICK_TYPE:Ljava/lang/Integer;

.field public static final DEFAULT_DESC:Ljava/lang/String; = ""

.field public static final DEFAULT_ICON_URL:Ljava/lang/String; = ""

.field public static final DEFAULT_SCORE:Ljava/lang/Float;

.field public static final DEFAULT_TITLE:Ljava/lang/String; = ""

.field private static final serialVersionUID:J


# instance fields
.field public final animate_delay_secs:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0xb
    .end annotation
.end field

.field public final animate_type:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0xa
    .end annotation
.end field

.field public final bar_color:Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.sigmob.sdk.base.models.sigdsp.pb.Color#ADAPTER"
        tag = 0x8
    .end annotation
.end field

.field public final button_color:Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.sigmob.sdk.base.models.sigdsp.pb.Color#ADAPTER"
        tag = 0x5
    .end annotation
.end field

.field public final button_text:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x4
    .end annotation
.end field

.field public final button_text_color:Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.sigmob.sdk.base.models.sigdsp.pb.Color#ADAPTER"
        tag = 0x6
    .end annotation
.end field

.field public final click_type:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x7
    .end annotation
.end field

.field public final desc:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x9
    .end annotation
.end field

.field public final icon_url:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x1
    .end annotation
.end field

.field public final score:Ljava/lang/Float;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#FLOAT"
        tag = 0x3
    .end annotation
.end field

.field public final title:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x2
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    new-instance v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard$ProtoAdapter_CompanionEndcard;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard$ProtoAdapter_CompanionEndcard;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-static {v0}, Lcom/sigmob/wire/AndroidMessage;->newCreator(Lcom/sigmob/wire/ProtoAdapter;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->DEFAULT_SCORE:Ljava/lang/Float;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->DEFAULT_CLICK_TYPE:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->DEFAULT_ANIMATE_TYPE:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->DEFAULT_ANIMATE_DELAY_SECS:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;Ljava/lang/Integer;Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 25

    sget-object v12, Lcom/sigmob/wire/okio/ByteString;->EMPTY:Lcom/sigmob/wire/okio/ByteString;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v12}, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;Ljava/lang/Integer;Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/sigmob/wire/okio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;Ljava/lang/Integer;Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/sigmob/wire/okio/ByteString;)V
    .registers 14

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-direct {p0, v0, p12}, Lcom/sigmob/wire/AndroidMessage;-><init>(Lcom/sigmob/wire/ProtoAdapter;Lcom/sigmob/wire/okio/ByteString;)V

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->icon_url:Ljava/lang/String;

    iput-object p2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->title:Ljava/lang/String;

    iput-object p3, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->score:Ljava/lang/Float;

    iput-object p4, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->button_text:Ljava/lang/String;

    iput-object p5, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->button_color:Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;

    iput-object p6, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->button_text_color:Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;

    iput-object p7, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->click_type:Ljava/lang/Integer;

    iput-object p8, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->bar_color:Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;

    iput-object p9, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->desc:Ljava/lang/String;

    iput-object p10, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->animate_type:Ljava/lang/Integer;

    iput-object p11, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->animate_delay_secs:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public MraidToString()Ljava/lang/String;
    .registers 5

    const/16 v3, 0x22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->icon_url:Ljava/lang/String;

    if-eqz v1, :cond_1e

    const-string v1, ", \"icon_url\"="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->icon_url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1e
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->title:Ljava/lang/String;

    if-eqz v1, :cond_35

    const-string v1, ", \"title\"="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_35
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->score:Ljava/lang/Float;

    if-eqz v1, :cond_44

    const-string v1, ", \"score\"="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->score:Ljava/lang/Float;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_44
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->button_text:Ljava/lang/String;

    if-eqz v1, :cond_5b

    const-string v1, ", \"button_text\"="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->button_text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5b
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->button_color:Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;

    if-eqz v1, :cond_72

    const-string v1, ", \"button_color\"="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->button_color:Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_72
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->button_text_color:Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;

    if-eqz v1, :cond_89

    const-string v1, ", \"button_text_color\"="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->button_text_color:Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_89
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->click_type:Ljava/lang/Integer;

    if-eqz v1, :cond_98

    const-string v1, ", \"click_type\"="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->click_type:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_98
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->bar_color:Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;

    if-eqz v1, :cond_af

    const-string v1, ", \"bar_color\"="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->bar_color:Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_af
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->desc:Ljava/lang/String;

    if-eqz v1, :cond_c6

    const-string v1, ", \"desc\"="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->desc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_c6
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->animate_type:Ljava/lang/Integer;

    if-eqz v1, :cond_d5

    const-string v1, ", \"animate_type\"="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->animate_type:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_d5
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->animate_delay_secs:Ljava/lang/Integer;

    if-eqz v1, :cond_e4

    const-string v1, ", \"animate_delay_secs\"="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->animate_delay_secs:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_e4
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "\"companion\":{"

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
    instance-of v2, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sigmob/wire/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_89

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->icon_url:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->icon_url:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_89

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->title:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_89

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->score:Ljava/lang/Float;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->score:Ljava/lang/Float;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_89

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->button_text:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->button_text:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_89

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->button_color:Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->button_color:Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_89

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->button_text_color:Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->button_text_color:Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_89

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->click_type:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->click_type:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_89

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->bar_color:Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->bar_color:Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_89

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->desc:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->desc:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_89

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->animate_type:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->animate_type:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_89

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->animate_delay_secs:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->animate_delay_secs:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_89
    move v0, v1

    goto/16 :goto_4
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget v0, p0, Lcom/sigmob/wire/AndroidMessage;->hashCode:I

    if-nez v0, :cond_9e

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->icon_url:Ljava/lang/String;

    if-eqz v0, :cond_9f

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->icon_url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_19
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->title:Ljava/lang/String;

    if-eqz v0, :cond_a2

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_26
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->score:Ljava/lang/Float;

    if-eqz v0, :cond_a4

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->score:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->hashCode()I

    move-result v0

    :goto_33
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->button_text:Ljava/lang/String;

    if-eqz v0, :cond_a6

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->button_text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_40
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->button_color:Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;

    if-eqz v0, :cond_a8

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->button_color:Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;->hashCode()I

    move-result v0

    :goto_4d
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->button_text_color:Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;

    if-eqz v0, :cond_aa

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->button_text_color:Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;->hashCode()I

    move-result v0

    :goto_5a
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->click_type:Ljava/lang/Integer;

    if-eqz v0, :cond_ac

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->click_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_67
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->bar_color:Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;

    if-eqz v0, :cond_ae

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->bar_color:Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;->hashCode()I

    move-result v0

    :goto_74
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->desc:Ljava/lang/String;

    if-eqz v0, :cond_b0

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->desc:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_81
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->animate_type:Ljava/lang/Integer;

    if-eqz v0, :cond_b2

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->animate_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_8e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->animate_delay_secs:Ljava/lang/Integer;

    if-eqz v2, :cond_9b

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->animate_delay_secs:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_9b
    add-int/2addr v0, v1

    iput v0, p0, Lcom/sigmob/wire/AndroidMessage;->hashCode:I

    :cond_9e
    return v0

    :cond_9f
    move v0, v1

    goto/16 :goto_19

    :cond_a2
    move v0, v1

    goto :goto_26

    :cond_a4
    move v0, v1

    goto :goto_33

    :cond_a6
    move v0, v1

    goto :goto_40

    :cond_a8
    move v0, v1

    goto :goto_4d

    :cond_aa
    move v0, v1

    goto :goto_5a

    :cond_ac
    move v0, v1

    goto :goto_67

    :cond_ae
    move v0, v1

    goto :goto_74

    :cond_b0
    move v0, v1

    goto :goto_81

    :cond_b2
    move v0, v1

    goto :goto_8e
.end method

.method public newBuilder()Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard$Builder;
    .registers 3

    new-instance v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard$Builder;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard$Builder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->icon_url:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard$Builder;->icon_url:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard$Builder;->title:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->score:Ljava/lang/Float;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard$Builder;->score:Ljava/lang/Float;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->button_text:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard$Builder;->button_text:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->button_color:Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard$Builder;->button_color:Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->button_text_color:Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard$Builder;->button_text_color:Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->click_type:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard$Builder;->click_type:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->bar_color:Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard$Builder;->bar_color:Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->desc:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard$Builder;->desc:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->animate_type:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard$Builder;->animate_type:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->animate_delay_secs:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard$Builder;->animate_delay_secs:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard$Builder;->addUnknownFields(Lcom/sigmob/wire/okio/ByteString;)Lcom/sigmob/wire/Message$Builder;

    return-object v0
.end method

.method public bridge synthetic newBuilder()Lcom/sigmob/wire/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->newBuilder()Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->icon_url:Ljava/lang/String;

    if-eqz v1, :cond_14

    const-string v1, ", icon_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->icon_url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->title:Ljava/lang/String;

    if-eqz v1, :cond_23

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->score:Ljava/lang/Float;

    if-eqz v1, :cond_32

    const-string v1, ", score="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->score:Ljava/lang/Float;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_32
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->button_text:Ljava/lang/String;

    if-eqz v1, :cond_41

    const-string v1, ", button_text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->button_text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_41
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->button_color:Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;

    if-eqz v1, :cond_50

    const-string v1, ", button_color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->button_color:Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_50
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->button_text_color:Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;

    if-eqz v1, :cond_5f

    const-string v1, ", button_text_color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->button_text_color:Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_5f
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->click_type:Ljava/lang/Integer;

    if-eqz v1, :cond_6e

    const-string v1, ", click_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->click_type:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_6e
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->bar_color:Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;

    if-eqz v1, :cond_7d

    const-string v1, ", bar_color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->bar_color:Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_7d
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->desc:Ljava/lang/String;

    if-eqz v1, :cond_8c

    const-string v1, ", desc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->desc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8c
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->animate_type:Ljava/lang/Integer;

    if-eqz v1, :cond_9b

    const-string v1, ", animate_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->animate_type:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_9b
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->animate_delay_secs:Ljava/lang/Integer;

    if-eqz v1, :cond_aa

    const-string v1, ", animate_delay_secs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->animate_delay_secs:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_aa
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "CompanionEndcard{"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
