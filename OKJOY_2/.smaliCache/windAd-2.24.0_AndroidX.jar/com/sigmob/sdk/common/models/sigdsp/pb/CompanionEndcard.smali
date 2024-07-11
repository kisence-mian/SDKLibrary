.class public final Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;
.super Lcom/sigmob/wire/AndroidMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard$ProtoAdapter_CompanionEndcard;,
        Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/AndroidMessage<",
        "Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;",
        "Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter<",
            "Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;",
            ">;"
        }
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_ANIMATE_TYPE:Ljava/lang/Integer;

.field public static final DEFAULT_BUTTON_TEXT:Ljava/lang/String; = ""

.field public static final DEFAULT_CLICK_TYPE:Ljava/lang/Integer;

.field public static final DEFAULT_DESC:Ljava/lang/String; = ""

.field public static final DEFAULT_ICON_URL:Ljava/lang/String; = ""

.field public static final DEFAULT_SCORE:Ljava/lang/Float;

.field public static final DEFAULT_SHOW_DELAY_SECS:Ljava/lang/Integer;

.field public static final DEFAULT_TITLE:Ljava/lang/String; = ""

.field private static final serialVersionUID:J


# instance fields
.field public final animate_type:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0xa
    .end annotation
.end field

.field public final bar_color:Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.sigmob.sdk.common.models.sigdsp.pb.Color#ADAPTER"
        tag = 0x8
    .end annotation
.end field

.field public final button_color:Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.sigmob.sdk.common.models.sigdsp.pb.Color#ADAPTER"
        tag = 0x5
    .end annotation
.end field

.field public final button_text:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x4
    .end annotation
.end field

.field public final button_text_color:Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.sigmob.sdk.common.models.sigdsp.pb.Color#ADAPTER"
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

.field public final show_delay_secs:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0xb
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
    .registers 1

    new-instance v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard$ProtoAdapter_CompanionEndcard;

    invoke-direct {v0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard$ProtoAdapter_CompanionEndcard;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-static {v0}, Lcom/sigmob/wire/AndroidMessage;->newCreator(Lcom/sigmob/wire/ProtoAdapter;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->DEFAULT_SCORE:Ljava/lang/Float;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->DEFAULT_CLICK_TYPE:Ljava/lang/Integer;

    sput-object v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->DEFAULT_ANIMATE_TYPE:Ljava/lang/Integer;

    sput-object v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->DEFAULT_SHOW_DELAY_SECS:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;Ljava/lang/Integer;Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
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

    invoke-direct/range {v0 .. v12}, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;Ljava/lang/Integer;Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/sigmob/wire/okio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;Ljava/lang/Integer;Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/sigmob/wire/okio/ByteString;)V
    .registers 14

    sget-object v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-direct {p0, v0, p12}, Lcom/sigmob/wire/AndroidMessage;-><init>(Lcom/sigmob/wire/ProtoAdapter;Lcom/sigmob/wire/okio/ByteString;)V

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->icon_url:Ljava/lang/String;

    iput-object p2, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->title:Ljava/lang/String;

    iput-object p3, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->score:Ljava/lang/Float;

    iput-object p4, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->button_text:Ljava/lang/String;

    iput-object p5, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->button_color:Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;

    iput-object p6, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->button_text_color:Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;

    iput-object p7, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->click_type:Ljava/lang/Integer;

    iput-object p8, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->bar_color:Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;

    iput-object p9, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->desc:Ljava/lang/String;

    iput-object p10, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->animate_type:Ljava/lang/Integer;

    iput-object p11, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->show_delay_secs:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sigmob/wire/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->icon_url:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->icon_url:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->score:Ljava/lang/Float;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->score:Ljava/lang/Float;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->button_text:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->button_text:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->button_color:Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->button_color:Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->button_text_color:Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->button_text_color:Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->click_type:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->click_type:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->bar_color:Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->bar_color:Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->desc:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->desc:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->animate_type:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->animate_type:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->show_delay_secs:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->show_delay_secs:Ljava/lang/Integer;

    invoke-static {v1, p1}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_89

    goto :goto_8a

    :cond_89
    move v0, v2

    :goto_8a
    return v0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lcom/sigmob/wire/AndroidMessage;->hashCode:I

    if-nez v0, :cond_9c

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->icon_url:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_19

    :cond_18
    move v1, v2

    :goto_19
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->title:Ljava/lang/String;

    if-eqz v1, :cond_25

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_26

    :cond_25
    move v1, v2

    :goto_26
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->score:Ljava/lang/Float;

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Ljava/lang/Float;->hashCode()I

    move-result v1

    goto :goto_33

    :cond_32
    move v1, v2

    :goto_33
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->button_text:Ljava/lang/String;

    if-eqz v1, :cond_3f

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_40

    :cond_3f
    move v1, v2

    :goto_40
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->button_color:Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;

    if-eqz v1, :cond_4c

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;->hashCode()I

    move-result v1

    goto :goto_4d

    :cond_4c
    move v1, v2

    :goto_4d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->button_text_color:Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;

    if-eqz v1, :cond_59

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;->hashCode()I

    move-result v1

    goto :goto_5a

    :cond_59
    move v1, v2

    :goto_5a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->click_type:Ljava/lang/Integer;

    if-eqz v1, :cond_66

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_67

    :cond_66
    move v1, v2

    :goto_67
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->bar_color:Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;

    if-eqz v1, :cond_73

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;->hashCode()I

    move-result v1

    goto :goto_74

    :cond_73
    move v1, v2

    :goto_74
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->desc:Ljava/lang/String;

    if-eqz v1, :cond_80

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_81

    :cond_80
    move v1, v2

    :goto_81
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->animate_type:Ljava/lang/Integer;

    if-eqz v1, :cond_8d

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_8e

    :cond_8d
    move v1, v2

    :goto_8e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->show_delay_secs:Ljava/lang/Integer;

    if-eqz v1, :cond_99

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :cond_99
    add-int/2addr v0, v2

    iput v0, p0, Lcom/sigmob/wire/AndroidMessage;->hashCode:I

    :cond_9c
    return v0
.end method

.method public newBuilder()Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard$Builder;
    .registers 3

    new-instance v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard$Builder;

    invoke-direct {v0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard$Builder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->icon_url:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard$Builder;->icon_url:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard$Builder;->title:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->score:Ljava/lang/Float;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard$Builder;->score:Ljava/lang/Float;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->button_text:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard$Builder;->button_text:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->button_color:Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard$Builder;->button_color:Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->button_text_color:Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard$Builder;->button_text_color:Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->click_type:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard$Builder;->click_type:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->bar_color:Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard$Builder;->bar_color:Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->desc:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard$Builder;->desc:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->animate_type:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard$Builder;->animate_type:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->show_delay_secs:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard$Builder;->show_delay_secs:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard$Builder;->addUnknownFields(Lcom/sigmob/wire/okio/ByteString;)Lcom/sigmob/wire/Message$Builder;

    return-object v0
.end method

.method public bridge synthetic newBuilder()Lcom/sigmob/wire/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->newBuilder()Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->icon_url:Ljava/lang/String;

    if-eqz v1, :cond_14

    const-string v1, ", icon_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->icon_url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->title:Ljava/lang/String;

    if-eqz v1, :cond_23

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->score:Ljava/lang/Float;

    if-eqz v1, :cond_32

    const-string v1, ", score="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->score:Ljava/lang/Float;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_32
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->button_text:Ljava/lang/String;

    if-eqz v1, :cond_41

    const-string v1, ", button_text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->button_text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_41
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->button_color:Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;

    if-eqz v1, :cond_50

    const-string v1, ", button_color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->button_color:Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_50
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->button_text_color:Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;

    if-eqz v1, :cond_5f

    const-string v1, ", button_text_color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->button_text_color:Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_5f
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->click_type:Ljava/lang/Integer;

    if-eqz v1, :cond_6e

    const-string v1, ", click_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->click_type:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_6e
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->bar_color:Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;

    if-eqz v1, :cond_7d

    const-string v1, ", bar_color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->bar_color:Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_7d
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->desc:Ljava/lang/String;

    if-eqz v1, :cond_8c

    const-string v1, ", desc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->desc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8c
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->animate_type:Ljava/lang/Integer;

    if-eqz v1, :cond_9b

    const-string v1, ", animate_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->animate_type:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_9b
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->show_delay_secs:Ljava/lang/Integer;

    if-eqz v1, :cond_aa

    const-string v1, ", show_delay_secs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->show_delay_secs:Ljava/lang/Integer;

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
