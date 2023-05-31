.class public final Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;
.super Lcom/sigmob/wire/AndroidMessage;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/AndroidMessage",
        "<",
        "Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;",
        "Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter",
            "<",
            "Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;",
            ">;"
        }
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_CITY_CODE:Ljava/lang/Long;

.field public static final DEFAULT_COUNTRY:Ljava/lang/String; = ""

.field public static final DEFAULT_LANGUAGE:Ljava/lang/String; = ""

.field public static final DEFAULT_LAT:Ljava/lang/Float;

.field public static final DEFAULT_LON:Ljava/lang/Float;

.field public static final DEFAULT_REGION_CODE:Ljava/lang/String; = ""

.field public static final DEFAULT_TIMEZONE:Ljava/lang/String; = ""

.field private static final serialVersionUID:J


# instance fields
.field public final city_code:Ljava/lang/Long;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT64"
        tag = 0x5
    .end annotation
.end field

.field public final country:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x6
    .end annotation
.end field

.field public final language:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x3
    .end annotation
.end field

.field public final lat:Ljava/lang/Float;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#FLOAT"
        tag = 0x1
    .end annotation
.end field

.field public final lon:Ljava/lang/Float;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#FLOAT"
        tag = 0x2
    .end annotation
.end field

.field public final region_code:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x7
    .end annotation
.end field

.field public final timeZone:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x4
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    new-instance v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo$ProtoAdapter_Geo;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo$ProtoAdapter_Geo;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-static {v0}, Lcom/sigmob/wire/AndroidMessage;->newCreator(Lcom/sigmob/wire/ProtoAdapter;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->DEFAULT_LAT:Ljava/lang/Float;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->DEFAULT_LON:Ljava/lang/Float;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->DEFAULT_CITY_CODE:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V
    .registers 17

    sget-object v8, Lcom/sigmob/wire/okio/ByteString;->EMPTY:Lcom/sigmob/wire/okio/ByteString;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;-><init>(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/wire/okio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/wire/okio/ByteString;)V
    .registers 10

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-direct {p0, v0, p8}, Lcom/sigmob/wire/AndroidMessage;-><init>(Lcom/sigmob/wire/ProtoAdapter;Lcom/sigmob/wire/okio/ByteString;)V

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->lat:Ljava/lang/Float;

    iput-object p2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->lon:Ljava/lang/Float;

    iput-object p3, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->language:Ljava/lang/String;

    iput-object p4, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->timeZone:Ljava/lang/String;

    iput-object p5, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->city_code:Ljava/lang/Long;

    iput-object p6, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->country:Ljava/lang/String;

    iput-object p7, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->region_code:Ljava/lang/String;

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
    instance-of v2, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sigmob/wire/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_61

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->lat:Ljava/lang/Float;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->lat:Ljava/lang/Float;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_61

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->lon:Ljava/lang/Float;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->lon:Ljava/lang/Float;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_61

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->language:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->language:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_61

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->timeZone:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->timeZone:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_61

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->city_code:Ljava/lang/Long;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->city_code:Ljava/lang/Long;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_61

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->country:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->country:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_61

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->region_code:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->region_code:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_61
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget v0, p0, Lcom/sigmob/wire/AndroidMessage;->hashCode:I

    if-nez v0, :cond_6a

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->lat:Ljava/lang/Float;

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->lat:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->hashCode()I

    move-result v0

    :goto_19
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->lon:Ljava/lang/Float;

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->lon:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->hashCode()I

    move-result v0

    :goto_26
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->language:Ljava/lang/String;

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->language:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_33
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->timeZone:Ljava/lang/String;

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->timeZone:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_40
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->city_code:Ljava/lang/Long;

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->city_code:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_4d
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->country:Ljava/lang/String;

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->country:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->region_code:Ljava/lang/String;

    if-eqz v2, :cond_67

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->region_code:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_67
    add-int/2addr v0, v1

    iput v0, p0, Lcom/sigmob/wire/AndroidMessage;->hashCode:I

    :cond_6a
    return v0

    :cond_6b
    move v0, v1

    goto :goto_19

    :cond_6d
    move v0, v1

    goto :goto_26

    :cond_6f
    move v0, v1

    goto :goto_33

    :cond_71
    move v0, v1

    goto :goto_40

    :cond_73
    move v0, v1

    goto :goto_4d

    :cond_75
    move v0, v1

    goto :goto_5a
.end method

.method public newBuilder()Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo$Builder;
    .registers 3

    new-instance v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo$Builder;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo$Builder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->lat:Ljava/lang/Float;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo$Builder;->lat:Ljava/lang/Float;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->lon:Ljava/lang/Float;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo$Builder;->lon:Ljava/lang/Float;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->language:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo$Builder;->language:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->timeZone:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo$Builder;->timeZone:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->city_code:Ljava/lang/Long;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo$Builder;->city_code:Ljava/lang/Long;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->country:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo$Builder;->country:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->region_code:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo$Builder;->region_code:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo$Builder;->addUnknownFields(Lcom/sigmob/wire/okio/ByteString;)Lcom/sigmob/wire/Message$Builder;

    return-object v0
.end method

.method public bridge synthetic newBuilder()Lcom/sigmob/wire/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->newBuilder()Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->lat:Ljava/lang/Float;

    if-eqz v1, :cond_14

    const-string v1, ", lat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->lat:Ljava/lang/Float;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_14
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->lon:Ljava/lang/Float;

    if-eqz v1, :cond_23

    const-string v1, ", lon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->lon:Ljava/lang/Float;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_23
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->language:Ljava/lang/String;

    if-eqz v1, :cond_32

    const-string v1, ", language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->language:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_32
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->timeZone:Ljava/lang/String;

    if-eqz v1, :cond_41

    const-string v1, ", timeZone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->timeZone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_41
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->city_code:Ljava/lang/Long;

    if-eqz v1, :cond_50

    const-string v1, ", city_code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->city_code:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_50
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->country:Ljava/lang/String;

    if-eqz v1, :cond_5f

    const-string v1, ", country="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->country:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5f
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->region_code:Ljava/lang/String;

    if-eqz v1, :cond_6e

    const-string v1, ", region_code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->region_code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6e
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "Geo{"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
