.class public final Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;
.super Lcom/sigmob/wire/AndroidMessage;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/AndroidMessage",
        "<",
        "Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;",
        "Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter",
            "<",
            "Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_ANDROID_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_COUNTRY:Ljava/lang/String; = ""

.field public static final DEFAULT_GAID:Ljava/lang/String; = ""

.field public static final DEFAULT_IDFA:Ljava/lang/String; = ""

.field public static final DEFAULT_IDFV:Ljava/lang/String; = ""

.field public static final DEFAULT_IMEI:Ljava/lang/String; = ""

.field public static final DEFAULT_LANGUAGE:Ljava/lang/String; = ""

.field private static final serialVersionUID:J


# instance fields
.field public final android_id:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x6
    .end annotation
.end field

.field public final country:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x4
    .end annotation
.end field

.field public final gaid:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x8
    .end annotation
.end field

.field public final geo:Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.sigmob.sdk.base.models.sigdsp.pb.Geo#ADAPTER"
        tag = 0x5
    .end annotation
.end field

.field public final idfa:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x2
    .end annotation
.end field

.field public final idfv:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x3
    .end annotation
.end field

.field public final imei:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x7
    .end annotation
.end field

.field public final language:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$ProtoAdapter_SdkConfigRequest;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$ProtoAdapter_SdkConfigRequest;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    sget-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-static {v0}, Lcom/sigmob/wire/AndroidMessage;->newCreator(Lcom/sigmob/wire/ProtoAdapter;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 19

    sget-object v9, Lcom/sigmob/wire/okio/ByteString;->EMPTY:Lcom/sigmob/wire/okio/ByteString;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/wire/okio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/wire/okio/ByteString;)V
    .registers 11

    sget-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-direct {p0, v0, p9}, Lcom/sigmob/wire/AndroidMessage;-><init>(Lcom/sigmob/wire/ProtoAdapter;Lcom/sigmob/wire/okio/ByteString;)V

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->language:Ljava/lang/String;

    iput-object p2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->idfa:Ljava/lang/String;

    iput-object p3, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->idfv:Ljava/lang/String;

    iput-object p4, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->country:Ljava/lang/String;

    iput-object p5, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->geo:Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;

    iput-object p6, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->android_id:Ljava/lang/String;

    iput-object p7, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->imei:Ljava/lang/String;

    iput-object p8, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->gaid:Ljava/lang/String;

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
    instance-of v2, p1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sigmob/wire/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->language:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->language:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->idfa:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->idfa:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->idfv:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->idfv:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->country:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->country:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->geo:Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->geo:Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->android_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->android_id:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->imei:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->imei:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->gaid:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->gaid:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_6b
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget v0, p0, Lcom/sigmob/wire/AndroidMessage;->hashCode:I

    if-nez v0, :cond_77

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->language:Ljava/lang/String;

    if-eqz v0, :cond_78

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->language:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_19
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->idfa:Ljava/lang/String;

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->idfa:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_26
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->idfv:Ljava/lang/String;

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->idfv:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_33
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->country:Ljava/lang/String;

    if-eqz v0, :cond_7e

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->country:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_40
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->geo:Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;

    if-eqz v0, :cond_80

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->geo:Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->hashCode()I

    move-result v0

    :goto_4d
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->android_id:Ljava/lang/String;

    if-eqz v0, :cond_82

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->android_id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5a
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->imei:Ljava/lang/String;

    if-eqz v0, :cond_84

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->imei:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_67
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->gaid:Ljava/lang/String;

    if-eqz v2, :cond_74

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->gaid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_74
    add-int/2addr v0, v1

    iput v0, p0, Lcom/sigmob/wire/AndroidMessage;->hashCode:I

    :cond_77
    return v0

    :cond_78
    move v0, v1

    goto :goto_19

    :cond_7a
    move v0, v1

    goto :goto_26

    :cond_7c
    move v0, v1

    goto :goto_33

    :cond_7e
    move v0, v1

    goto :goto_40

    :cond_80
    move v0, v1

    goto :goto_4d

    :cond_82
    move v0, v1

    goto :goto_5a

    :cond_84
    move v0, v1

    goto :goto_67
.end method

.method public newBuilder()Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;
    .registers 3

    new-instance v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->language:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;->language:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->idfa:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;->idfa:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->idfv:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;->idfv:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->country:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;->country:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->geo:Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;->geo:Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->android_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;->android_id:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->imei:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;->imei:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->gaid:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;->gaid:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;->addUnknownFields(Lcom/sigmob/wire/okio/ByteString;)Lcom/sigmob/wire/Message$Builder;

    return-object v0
.end method

.method public bridge synthetic newBuilder()Lcom/sigmob/wire/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->newBuilder()Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->language:Ljava/lang/String;

    if-eqz v1, :cond_14

    const-string v1, ", language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->language:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->idfa:Ljava/lang/String;

    if-eqz v1, :cond_23

    const-string v1, ", idfa="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->idfa:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->idfv:Ljava/lang/String;

    if-eqz v1, :cond_32

    const-string v1, ", idfv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->idfv:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_32
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->country:Ljava/lang/String;

    if-eqz v1, :cond_41

    const-string v1, ", country="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->country:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_41
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->geo:Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;

    if-eqz v1, :cond_50

    const-string v1, ", geo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->geo:Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_50
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->android_id:Ljava/lang/String;

    if-eqz v1, :cond_5f

    const-string v1, ", android_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->android_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5f
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->imei:Ljava/lang/String;

    if-eqz v1, :cond_6e

    const-string v1, ", imei="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->imei:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6e
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->gaid:Ljava/lang/String;

    if-eqz v1, :cond_7d

    const-string v1, ", gaid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->gaid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7d
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "SdkConfigRequest{"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
