.class public final Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;
.super Lcom/sigmob/wire/AndroidMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse$ProtoAdapter_StrategyResponse;,
        Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/AndroidMessage<",
        "Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;",
        "Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter<",
            "Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_CODE:Ljava/lang/Integer;

.field public static final DEFAULT_ERROR_MESSAGE:Ljava/lang/String; = ""

.field public static final DEFAULT_MAX_CONCURRENT_OPERATION_COUNT:Ljava/lang/Integer;

.field public static final DEFAULT_SINGLE_CHANNEL_TIMEOUT:Ljava/lang/Integer;

.field public static final DEFAULT_UID:Ljava/lang/String; = ""

.field private static final serialVersionUID:J


# instance fields
.field public final code:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x1
    .end annotation
.end field

.field public final error_message:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x2
    .end annotation
.end field

.field public final max_concurrent_operation_count:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x6
    .end annotation
.end field

.field public final single_channel_timeout:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x7
    .end annotation
.end field

.field public final slots:Ljava/util/List;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.sigmob.sdk.common.models.sigdsp.pb.AdSlot#ADAPTER"
        label = .enum Lcom/sigmob/wire/WireField$Label;->REPEATED:Lcom/sigmob/wire/WireField$Label;
        tag = 0x5
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;",
            ">;"
        }
    .end annotation
.end field

.field public final strategy:Ljava/util/List;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.sigmob.sdk.base.models.ssp.pb.Strategy#ADAPTER"
        label = .enum Lcom/sigmob/wire/WireField$Label;->REPEATED:Lcom/sigmob/wire/WireField$Label;
        tag = 0x3
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/common/models/ssp/pb/Strategy;",
            ">;"
        }
    .end annotation
.end field

.field public final uid:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x4
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse$ProtoAdapter_StrategyResponse;

    invoke-direct {v0}, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse$ProtoAdapter_StrategyResponse;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-static {v0}, Lcom/sigmob/wire/AndroidMessage;->newCreator(Lcom/sigmob/wire/ProtoAdapter;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->DEFAULT_CODE:Ljava/lang/Integer;

    sput-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->DEFAULT_MAX_CONCURRENT_OPERATION_COUNT:Ljava/lang/Integer;

    sput-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->DEFAULT_SINGLE_CHANNEL_TIMEOUT:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/common/models/ssp/pb/Strategy;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    sget-object v8, Lcom/sigmob/wire/okio/ByteString;->EMPTY:Lcom/sigmob/wire/okio/ByteString;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/sigmob/wire/okio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/sigmob/wire/okio/ByteString;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/common/models/ssp/pb/Strategy;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/sigmob/wire/okio/ByteString;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-direct {p0, v0, p8}, Lcom/sigmob/wire/AndroidMessage;-><init>(Lcom/sigmob/wire/ProtoAdapter;Lcom/sigmob/wire/okio/ByteString;)V

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->code:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->error_message:Ljava/lang/String;

    const-string p1, "strategy"

    invoke-static {p1, p3}, Lcom/sigmob/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->strategy:Ljava/util/List;

    iput-object p4, p0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->uid:Ljava/lang/String;

    const-string p1, "slots"

    invoke-static {p1, p5}, Lcom/sigmob/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->slots:Ljava/util/List;

    iput-object p6, p0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->max_concurrent_operation_count:Ljava/lang/Integer;

    iput-object p7, p0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->single_channel_timeout:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sigmob/wire/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->code:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->code:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->error_message:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->error_message:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->strategy:Ljava/util/List;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->strategy:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->uid:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->uid:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->slots:Ljava/util/List;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->slots:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->max_concurrent_operation_count:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->max_concurrent_operation_count:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->single_channel_timeout:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->single_channel_timeout:Ljava/lang/Integer;

    invoke-static {v1, p1}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_61

    goto :goto_62

    :cond_61
    move v0, v2

    :goto_62
    return v0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lcom/sigmob/wire/AndroidMessage;->hashCode:I

    if-nez v0, :cond_60

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->code:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_19

    :cond_18
    move v1, v2

    :goto_19
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->error_message:Ljava/lang/String;

    if-eqz v1, :cond_25

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_26

    :cond_25
    move v1, v2

    :goto_26
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->strategy:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->uid:Ljava/lang/String;

    if-eqz v1, :cond_3b

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3c

    :cond_3b
    move v1, v2

    :goto_3c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->slots:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->max_concurrent_operation_count:Ljava/lang/Integer;

    if-eqz v1, :cond_51

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_52

    :cond_51
    move v1, v2

    :goto_52
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->single_channel_timeout:Ljava/lang/Integer;

    if-eqz v1, :cond_5d

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :cond_5d
    add-int/2addr v0, v2

    iput v0, p0, Lcom/sigmob/wire/AndroidMessage;->hashCode:I

    :cond_60
    return v0
.end method

.method public newBuilder()Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse$Builder;
    .registers 4

    new-instance v0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse$Builder;

    invoke-direct {v0}, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse$Builder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->code:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse$Builder;->code:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->error_message:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse$Builder;->error_message:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->strategy:Ljava/util/List;

    const-string v2, "strategy"

    invoke-static {v2, v1}, Lcom/sigmob/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse$Builder;->strategy:Ljava/util/List;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->uid:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse$Builder;->uid:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->slots:Ljava/util/List;

    const-string v2, "slots"

    invoke-static {v2, v1}, Lcom/sigmob/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse$Builder;->slots:Ljava/util/List;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->max_concurrent_operation_count:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse$Builder;->max_concurrent_operation_count:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->single_channel_timeout:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse$Builder;->single_channel_timeout:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse$Builder;->addUnknownFields(Lcom/sigmob/wire/okio/ByteString;)Lcom/sigmob/wire/Message$Builder;

    return-object v0
.end method

.method public bridge synthetic newBuilder()Lcom/sigmob/wire/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->newBuilder()Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->code:Ljava/lang/Integer;

    if-eqz v1, :cond_14

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->code:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_14
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->error_message:Ljava/lang/String;

    if-eqz v1, :cond_23

    const-string v1, ", error_message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->error_message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->strategy:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_36

    const-string v1, ", strategy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->strategy:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_36
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->uid:Ljava/lang/String;

    if-eqz v1, :cond_45

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->uid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_45
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->slots:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_58

    const-string v1, ", slots="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->slots:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_58
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->max_concurrent_operation_count:Ljava/lang/Integer;

    if-eqz v1, :cond_67

    const-string v1, ", max_concurrent_operation_count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->max_concurrent_operation_count:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_67
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->single_channel_timeout:Ljava/lang/Integer;

    if-eqz v1, :cond_76

    const-string v1, ", single_channel_timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->single_channel_timeout:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_76
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "StrategyResponse{"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
