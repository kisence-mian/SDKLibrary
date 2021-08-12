.class public final Lcom/sigmob/sdk/common/models/sigdsp/pb/Video;
.super Lcom/sigmob/wire/AndroidMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/common/models/sigdsp/pb/Video$ProtoAdapter_Video;,
        Lcom/sigmob/sdk/common/models/sigdsp/pb/Video$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/AndroidMessage<",
        "Lcom/sigmob/sdk/common/models/sigdsp/pb/Video;",
        "Lcom/sigmob/sdk/common/models/sigdsp/pb/Video$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter<",
            "Lcom/sigmob/sdk/common/models/sigdsp/pb/Video;",
            ">;"
        }
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sigmob/sdk/common/models/sigdsp/pb/Video;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_MAX_DURATION:Ljava/lang/Integer;

.field private static final serialVersionUID:J


# instance fields
.field public final max_duration:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Video$ProtoAdapter_Video;

    invoke-direct {v0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Video$ProtoAdapter_Video;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Video;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-static {v0}, Lcom/sigmob/wire/AndroidMessage;->newCreator(Lcom/sigmob/wire/ProtoAdapter;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Video;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Video;->DEFAULT_MAX_DURATION:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .registers 3

    sget-object v0, Lcom/sigmob/wire/okio/ByteString;->EMPTY:Lcom/sigmob/wire/okio/ByteString;

    invoke-direct {p0, p1, v0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Video;-><init>(Ljava/lang/Integer;Lcom/sigmob/wire/okio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Lcom/sigmob/wire/okio/ByteString;)V
    .registers 4

    sget-object v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Video;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-direct {p0, v0, p2}, Lcom/sigmob/wire/AndroidMessage;-><init>(Lcom/sigmob/wire/ProtoAdapter;Lcom/sigmob/wire/okio/ByteString;)V

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Video;->max_duration:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Video;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Video;

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Video;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Video;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sigmob/wire/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Video;->max_duration:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Video;->max_duration:Ljava/lang/Integer;

    invoke-static {v1, p1}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    goto :goto_26

    :cond_25
    move v0, v2

    :goto_26
    return v0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/sigmob/wire/AndroidMessage;->hashCode:I

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Video;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Video;->max_duration:Ljava/lang/Integer;

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    add-int/2addr v0, v1

    iput v0, p0, Lcom/sigmob/wire/AndroidMessage;->hashCode:I

    :cond_1b
    return v0
.end method

.method public newBuilder()Lcom/sigmob/sdk/common/models/sigdsp/pb/Video$Builder;
    .registers 3

    new-instance v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Video$Builder;

    invoke-direct {v0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Video$Builder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Video;->max_duration:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Video$Builder;->max_duration:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Video;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Video$Builder;->addUnknownFields(Lcom/sigmob/wire/okio/ByteString;)Lcom/sigmob/wire/Message$Builder;

    return-object v0
.end method

.method public bridge synthetic newBuilder()Lcom/sigmob/wire/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Video;->newBuilder()Lcom/sigmob/sdk/common/models/sigdsp/pb/Video$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Video;->max_duration:Ljava/lang/Integer;

    if-eqz v1, :cond_14

    const-string v1, ", max_duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Video;->max_duration:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_14
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "Video{"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
