.class public final Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;
.super Lcom/sigmob/wire/AndroidMessage;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/AndroidMessage",
        "<",
        "Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;",
        "Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter",
            "<",
            "Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_ERROR_CODE:Ljava/lang/Long;

.field public static final DEFAULT_EXPIRATION_TIME:Ljava/lang/Integer;

.field public static final DEFAULT_PCTR_VALID_CHECK:Ljava/lang/Integer;

.field public static final DEFAULT_PCTR_VERSION:Ljava/lang/String; = ""

.field public static final DEFAULT_PROCESS_TIME_MS_DSP:Ljava/lang/Long;

.field public static final DEFAULT_PROCESS_TIME_MS_SSP:Ljava/lang/Long;

.field public static final DEFAULT_REQUEST_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_UID:Ljava/lang/String; = ""

.field private static final serialVersionUID:J


# instance fields
.field public final ads:Ljava/util/List;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.sigmob.sdk.base.models.sigdsp.pb.Ad#ADAPTER"
        label = .enum Lcom/sigmob/wire/WireField$Label;->REPEATED:Lcom/sigmob/wire/WireField$Label;
        tag = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;",
            ">;"
        }
    .end annotation
.end field

.field public final error_code:Ljava/lang/Long;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT64"
        tag = 0x3
    .end annotation
.end field

.field public final expiration_time:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x9
    .end annotation
.end field

.field public final pctr_valid_check:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x6
    .end annotation
.end field

.field public final pctr_version:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x7
    .end annotation
.end field

.field public final process_time_ms_dsp:Ljava/lang/Long;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT64"
        tag = 0x4
    .end annotation
.end field

.field public final process_time_ms_ssp:Ljava/lang/Long;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT64"
        tag = 0x5
    .end annotation
.end field

.field public final request_id:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x1
    .end annotation
.end field

.field public final uid:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x8
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    new-instance v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse$ProtoAdapter_BidResponse;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse$ProtoAdapter_BidResponse;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-static {v0}, Lcom/sigmob/wire/AndroidMessage;->newCreator(Lcom/sigmob/wire/ProtoAdapter;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->DEFAULT_ERROR_CODE:Ljava/lang/Long;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->DEFAULT_PROCESS_TIME_MS_DSP:Ljava/lang/Long;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->DEFAULT_PROCESS_TIME_MS_SSP:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->DEFAULT_PCTR_VALID_CHECK:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->DEFAULT_EXPIRATION_TIME:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;",
            ">;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    sget-object v10, Lcom/sigmob/wire/okio/ByteString;->EMPTY:Lcom/sigmob/wire/okio/ByteString;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/sigmob/wire/okio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/sigmob/wire/okio/ByteString;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;",
            ">;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Lcom/sigmob/wire/okio/ByteString;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-direct {p0, v0, p10}, Lcom/sigmob/wire/AndroidMessage;-><init>(Lcom/sigmob/wire/ProtoAdapter;Lcom/sigmob/wire/okio/ByteString;)V

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->request_id:Ljava/lang/String;

    const-string v0, "ads"

    invoke-static {v0, p2}, Lcom/sigmob/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->ads:Ljava/util/List;

    iput-object p3, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->error_code:Ljava/lang/Long;

    iput-object p4, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->process_time_ms_dsp:Ljava/lang/Long;

    iput-object p5, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->process_time_ms_ssp:Ljava/lang/Long;

    iput-object p6, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->pctr_valid_check:Ljava/lang/Integer;

    iput-object p7, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->pctr_version:Ljava/lang/String;

    iput-object p8, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->uid:Ljava/lang/String;

    iput-object p9, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->expiration_time:Ljava/lang/Integer;

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
    instance-of v2, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sigmob/wire/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->request_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->request_id:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->ads:Ljava/util/List;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->ads:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->error_code:Ljava/lang/Long;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->error_code:Ljava/lang/Long;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->process_time_ms_dsp:Ljava/lang/Long;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->process_time_ms_dsp:Ljava/lang/Long;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->process_time_ms_ssp:Ljava/lang/Long;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->process_time_ms_ssp:Ljava/lang/Long;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->pctr_valid_check:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->pctr_valid_check:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->pctr_version:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->pctr_version:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->uid:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->uid:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->expiration_time:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->expiration_time:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_75
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget v0, p0, Lcom/sigmob/wire/AndroidMessage;->hashCode:I

    if-nez v0, :cond_80

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->request_id:Ljava/lang/String;

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->request_id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_19
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->ads:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->error_code:Ljava/lang/Long;

    if-eqz v0, :cond_83

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->error_code:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_2f
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->process_time_ms_dsp:Ljava/lang/Long;

    if-eqz v0, :cond_85

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->process_time_ms_dsp:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_3c
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->process_time_ms_ssp:Ljava/lang/Long;

    if-eqz v0, :cond_87

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->process_time_ms_ssp:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_49
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->pctr_valid_check:Ljava/lang/Integer;

    if-eqz v0, :cond_89

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->pctr_valid_check:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_56
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->pctr_version:Ljava/lang/String;

    if-eqz v0, :cond_8b

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->pctr_version:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_63
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->uid:Ljava/lang/String;

    if-eqz v0, :cond_8d

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->uid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_70
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->expiration_time:Ljava/lang/Integer;

    if-eqz v2, :cond_7d

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->expiration_time:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_7d
    add-int/2addr v0, v1

    iput v0, p0, Lcom/sigmob/wire/AndroidMessage;->hashCode:I

    :cond_80
    return v0

    :cond_81
    move v0, v1

    goto :goto_19

    :cond_83
    move v0, v1

    goto :goto_2f

    :cond_85
    move v0, v1

    goto :goto_3c

    :cond_87
    move v0, v1

    goto :goto_49

    :cond_89
    move v0, v1

    goto :goto_56

    :cond_8b
    move v0, v1

    goto :goto_63

    :cond_8d
    move v0, v1

    goto :goto_70
.end method

.method public newBuilder()Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse$Builder;
    .registers 4

    new-instance v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse$Builder;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse$Builder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->request_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse$Builder;->request_id:Ljava/lang/String;

    const-string v1, "ads"

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->ads:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/sigmob/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse$Builder;->ads:Ljava/util/List;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->error_code:Ljava/lang/Long;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse$Builder;->error_code:Ljava/lang/Long;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->process_time_ms_dsp:Ljava/lang/Long;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse$Builder;->process_time_ms_dsp:Ljava/lang/Long;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->process_time_ms_ssp:Ljava/lang/Long;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse$Builder;->process_time_ms_ssp:Ljava/lang/Long;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->pctr_valid_check:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse$Builder;->pctr_valid_check:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->pctr_version:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse$Builder;->pctr_version:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->uid:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse$Builder;->uid:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->expiration_time:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse$Builder;->expiration_time:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse$Builder;->addUnknownFields(Lcom/sigmob/wire/okio/ByteString;)Lcom/sigmob/wire/Message$Builder;

    return-object v0
.end method

.method public bridge synthetic newBuilder()Lcom/sigmob/wire/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->newBuilder()Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->request_id:Ljava/lang/String;

    if-eqz v1, :cond_14

    const-string v1, ", request_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->request_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->ads:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, ", ads="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->ads:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_27
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->error_code:Ljava/lang/Long;

    if-eqz v1, :cond_36

    const-string v1, ", error_code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->error_code:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_36
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->process_time_ms_dsp:Ljava/lang/Long;

    if-eqz v1, :cond_45

    const-string v1, ", process_time_ms_dsp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->process_time_ms_dsp:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_45
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->process_time_ms_ssp:Ljava/lang/Long;

    if-eqz v1, :cond_54

    const-string v1, ", process_time_ms_ssp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->process_time_ms_ssp:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_54
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->pctr_valid_check:Ljava/lang/Integer;

    if-eqz v1, :cond_63

    const-string v1, ", pctr_valid_check="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->pctr_valid_check:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_63
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->pctr_version:Ljava/lang/String;

    if-eqz v1, :cond_72

    const-string v1, ", pctr_version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->pctr_version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_72
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->uid:Ljava/lang/String;

    if-eqz v1, :cond_81

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->uid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_81
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->expiration_time:Ljava/lang/Integer;

    if-eqz v1, :cond_90

    const-string v1, ", expiration_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->expiration_time:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_90
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "BidResponse{"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
