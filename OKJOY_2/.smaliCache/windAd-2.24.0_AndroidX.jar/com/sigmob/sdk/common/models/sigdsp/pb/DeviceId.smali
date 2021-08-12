.class public final Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;
.super Lcom/sigmob/wire/AndroidMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$ProtoAdapter_DeviceId;,
        Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/AndroidMessage<",
        "Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;",
        "Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter<",
            "Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;",
            ">;"
        }
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_AAID:Ljava/lang/String; = ""

.field public static final DEFAULT_ANDROID_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_ANDROID_UUID:Ljava/lang/String; = ""

.field public static final DEFAULT_BRAND:Ljava/lang/String; = ""

.field public static final DEFAULT_GAID:Ljava/lang/String; = ""

.field public static final DEFAULT_IDFA:Ljava/lang/String; = ""

.field public static final DEFAULT_IMEI:Ljava/lang/String; = ""

.field public static final DEFAULT_IMEI1:Ljava/lang/String; = ""

.field public static final DEFAULT_IMEI2:Ljava/lang/String; = ""

.field public static final DEFAULT_IMSI:Ljava/lang/String; = ""

.field public static final DEFAULT_MSA_UDID:Ljava/lang/String; = ""

.field public static final DEFAULT_OAID:Ljava/lang/String; = ""

.field public static final DEFAULT_UDID:Ljava/lang/String; = ""

.field public static final DEFAULT_UID:Ljava/lang/String; = ""

.field public static final DEFAULT_USER_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_VAID:Ljava/lang/String; = ""

.field private static final serialVersionUID:J


# instance fields
.field public final aaid:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0xf
    .end annotation
.end field

.field public final android_id:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x5
    .end annotation
.end field

.field public final android_uuid:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x6
    .end annotation
.end field

.field public final brand:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0xa
    .end annotation
.end field

.field public final gaid:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x8
    .end annotation
.end field

.field public final idfa:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x1
    .end annotation
.end field

.field public final imei:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x4
    .end annotation
.end field

.field public final imei1:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0xb
    .end annotation
.end field

.field public final imei2:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0xc
    .end annotation
.end field

.field public final imsi:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x7
    .end annotation
.end field

.field public final msa_udid:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x10
    .end annotation
.end field

.field public final oaid:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0xd
    .end annotation
.end field

.field public final udid:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x2
    .end annotation
.end field

.field public final uid:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x9
    .end annotation
.end field

.field public final user_id:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x3
    .end annotation
.end field

.field public final vaid:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0xe
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$ProtoAdapter_DeviceId;

    invoke-direct {v0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$ProtoAdapter_DeviceId;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-static {v0}, Lcom/sigmob/wire/AndroidMessage;->newCreator(Lcom/sigmob/wire/ProtoAdapter;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 35

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

    sget-object v17, Lcom/sigmob/wire/okio/ByteString;->EMPTY:Lcom/sigmob/wire/okio/ByteString;

    invoke-direct/range {v0 .. v17}, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/wire/okio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/wire/okio/ByteString;)V
    .registers 21

    move-object v0, p0

    sget-object v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    move-object/from16 v2, p17

    invoke-direct {p0, v1, v2}, Lcom/sigmob/wire/AndroidMessage;-><init>(Lcom/sigmob/wire/ProtoAdapter;Lcom/sigmob/wire/okio/ByteString;)V

    move-object v1, p1

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->idfa:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->udid:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->user_id:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->imei:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->android_id:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->android_uuid:Ljava/lang/String;

    move-object v1, p7

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->imsi:Ljava/lang/String;

    move-object v1, p8

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->gaid:Ljava/lang/String;

    move-object v1, p9

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->uid:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->brand:Ljava/lang/String;

    move-object v1, p11

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->imei1:Ljava/lang/String;

    move-object v1, p12

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->imei2:Ljava/lang/String;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->oaid:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->vaid:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->aaid:Ljava/lang/String;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->msa_udid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sigmob/wire/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bb

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->idfa:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->idfa:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bb

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->udid:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->udid:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bb

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->user_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->user_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bb

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->imei:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->imei:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bb

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->android_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->android_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bb

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->android_uuid:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->android_uuid:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bb

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->imsi:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->imsi:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bb

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->gaid:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->gaid:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bb

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->uid:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->uid:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bb

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->brand:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->brand:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bb

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->imei1:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->imei1:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bb

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->imei2:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->imei2:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bb

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->oaid:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->oaid:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bb

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->vaid:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->vaid:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bb

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->aaid:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->aaid:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bb

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->msa_udid:Ljava/lang/String;

    iget-object p1, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->msa_udid:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_bb

    goto :goto_bc

    :cond_bb
    move v0, v2

    :goto_bc
    return v0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lcom/sigmob/wire/AndroidMessage;->hashCode:I

    if-nez v0, :cond_dd

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->idfa:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->udid:Ljava/lang/String;

    if-eqz v1, :cond_25

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_26

    :cond_25
    move v1, v2

    :goto_26
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->user_id:Ljava/lang/String;

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_33

    :cond_32
    move v1, v2

    :goto_33
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->imei:Ljava/lang/String;

    if-eqz v1, :cond_3f

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_40

    :cond_3f
    move v1, v2

    :goto_40
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->android_id:Ljava/lang/String;

    if-eqz v1, :cond_4c

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4d

    :cond_4c
    move v1, v2

    :goto_4d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->android_uuid:Ljava/lang/String;

    if-eqz v1, :cond_59

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_5a

    :cond_59
    move v1, v2

    :goto_5a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->imsi:Ljava/lang/String;

    if-eqz v1, :cond_66

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_67

    :cond_66
    move v1, v2

    :goto_67
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->gaid:Ljava/lang/String;

    if-eqz v1, :cond_73

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_74

    :cond_73
    move v1, v2

    :goto_74
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->uid:Ljava/lang/String;

    if-eqz v1, :cond_80

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_81

    :cond_80
    move v1, v2

    :goto_81
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->brand:Ljava/lang/String;

    if-eqz v1, :cond_8d

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_8e

    :cond_8d
    move v1, v2

    :goto_8e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->imei1:Ljava/lang/String;

    if-eqz v1, :cond_9a

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_9b

    :cond_9a
    move v1, v2

    :goto_9b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->imei2:Ljava/lang/String;

    if-eqz v1, :cond_a7

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_a8

    :cond_a7
    move v1, v2

    :goto_a8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->oaid:Ljava/lang/String;

    if-eqz v1, :cond_b4

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_b5

    :cond_b4
    move v1, v2

    :goto_b5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->vaid:Ljava/lang/String;

    if-eqz v1, :cond_c1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_c2

    :cond_c1
    move v1, v2

    :goto_c2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->aaid:Ljava/lang/String;

    if-eqz v1, :cond_ce

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_cf

    :cond_ce
    move v1, v2

    :goto_cf
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->msa_udid:Ljava/lang/String;

    if-eqz v1, :cond_da

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_da
    add-int/2addr v0, v2

    iput v0, p0, Lcom/sigmob/wire/AndroidMessage;->hashCode:I

    :cond_dd
    return v0
.end method

.method public newBuilder()Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;
    .registers 3

    new-instance v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;

    invoke-direct {v0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->idfa:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->idfa:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->udid:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->udid:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->user_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->user_id:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->imei:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->imei:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->android_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->android_id:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->android_uuid:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->android_uuid:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->imsi:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->imsi:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->gaid:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->gaid:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->uid:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->uid:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->brand:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->brand:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->imei1:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->imei1:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->imei2:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->imei2:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->oaid:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->oaid:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->vaid:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->vaid:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->aaid:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->aaid:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->msa_udid:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->msa_udid:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->addUnknownFields(Lcom/sigmob/wire/okio/ByteString;)Lcom/sigmob/wire/Message$Builder;

    return-object v0
.end method

.method public bridge synthetic newBuilder()Lcom/sigmob/wire/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->newBuilder()Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->idfa:Ljava/lang/String;

    if-eqz v1, :cond_14

    const-string v1, ", idfa="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->idfa:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->udid:Ljava/lang/String;

    if-eqz v1, :cond_23

    const-string v1, ", udid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->udid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->user_id:Ljava/lang/String;

    if-eqz v1, :cond_32

    const-string v1, ", user_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->user_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_32
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->imei:Ljava/lang/String;

    if-eqz v1, :cond_41

    const-string v1, ", imei="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->imei:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_41
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->android_id:Ljava/lang/String;

    if-eqz v1, :cond_50

    const-string v1, ", android_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->android_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_50
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->android_uuid:Ljava/lang/String;

    if-eqz v1, :cond_5f

    const-string v1, ", android_uuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->android_uuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5f
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->imsi:Ljava/lang/String;

    if-eqz v1, :cond_6e

    const-string v1, ", imsi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->imsi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6e
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->gaid:Ljava/lang/String;

    if-eqz v1, :cond_7d

    const-string v1, ", gaid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->gaid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7d
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->uid:Ljava/lang/String;

    if-eqz v1, :cond_8c

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->uid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8c
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->brand:Ljava/lang/String;

    if-eqz v1, :cond_9b

    const-string v1, ", brand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->brand:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9b
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->imei1:Ljava/lang/String;

    if-eqz v1, :cond_aa

    const-string v1, ", imei1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->imei1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_aa
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->imei2:Ljava/lang/String;

    if-eqz v1, :cond_b9

    const-string v1, ", imei2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->imei2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b9
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->oaid:Ljava/lang/String;

    if-eqz v1, :cond_c8

    const-string v1, ", oaid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->oaid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c8
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->vaid:Ljava/lang/String;

    if-eqz v1, :cond_d7

    const-string v1, ", vaid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->vaid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d7
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->aaid:Ljava/lang/String;

    if-eqz v1, :cond_e6

    const-string v1, ", aaid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->aaid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e6
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->msa_udid:Ljava/lang/String;

    if-eqz v1, :cond_f5

    const-string v1, ", msa_udid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->msa_udid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f5
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "DeviceId{"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
