.class public final Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;
.super Lcom/sigmob/wire/AndroidMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig$ProtoAdapter_SplashConfig;,
        Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/AndroidMessage<",
        "Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;",
        "Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter<",
            "Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_CACHETOP:Ljava/lang/Integer;

.field public static final DEFAULT_MATERIAL_EXPIRED_TIME:Ljava/lang/Integer;

.field public static final DEFAULT_SHOWDURATION:Ljava/lang/Integer;

.field private static final serialVersionUID:J


# instance fields
.field public final cacheTop:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT32"
        tag = 0x2
    .end annotation
.end field

.field public final material_expired_time:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT32"
        tag = 0x3
    .end annotation
.end field

.field public final showDuration:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig$ProtoAdapter_SplashConfig;

    invoke-direct {v0}, Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig$ProtoAdapter_SplashConfig;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-static {v0}, Lcom/sigmob/wire/AndroidMessage;->newCreator(Lcom/sigmob/wire/ProtoAdapter;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;->DEFAULT_SHOWDURATION:Ljava/lang/Integer;

    const/16 v0, 0x32

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;->DEFAULT_CACHETOP:Ljava/lang/Integer;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;->DEFAULT_MATERIAL_EXPIRED_TIME:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 5

    sget-object v0, Lcom/sigmob/wire/okio/ByteString;->EMPTY:Lcom/sigmob/wire/okio/ByteString;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/sigmob/wire/okio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/sigmob/wire/okio/ByteString;)V
    .registers 6

    sget-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-direct {p0, v0, p4}, Lcom/sigmob/wire/AndroidMessage;-><init>(Lcom/sigmob/wire/ProtoAdapter;Lcom/sigmob/wire/okio/ByteString;)V

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;->showDuration:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;->cacheTop:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;->material_expired_time:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sigmob/wire/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;->showDuration:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;->showDuration:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;->cacheTop:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;->cacheTop:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;->material_expired_time:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;->material_expired_time:Ljava/lang/Integer;

    invoke-static {v1, p1}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_39

    goto :goto_3a

    :cond_39
    move v0, v2

    :goto_3a
    return v0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lcom/sigmob/wire/AndroidMessage;->hashCode:I

    if-nez v0, :cond_34

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;->showDuration:Ljava/lang/Integer;

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

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;->cacheTop:Ljava/lang/Integer;

    if-eqz v1, :cond_25

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_26

    :cond_25
    move v1, v2

    :goto_26
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;->material_expired_time:Ljava/lang/Integer;

    if-eqz v1, :cond_31

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :cond_31
    add-int/2addr v0, v2

    iput v0, p0, Lcom/sigmob/wire/AndroidMessage;->hashCode:I

    :cond_34
    return v0
.end method

.method public newBuilder()Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig$Builder;
    .registers 3

    new-instance v0, Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig$Builder;

    invoke-direct {v0}, Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig$Builder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;->showDuration:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig$Builder;->showDuration:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;->cacheTop:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig$Builder;->cacheTop:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;->material_expired_time:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig$Builder;->material_expired_time:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig$Builder;->addUnknownFields(Lcom/sigmob/wire/okio/ByteString;)Lcom/sigmob/wire/Message$Builder;

    return-object v0
.end method

.method public bridge synthetic newBuilder()Lcom/sigmob/wire/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;->newBuilder()Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;->showDuration:Ljava/lang/Integer;

    if-eqz v1, :cond_14

    const-string v1, ", showDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;->showDuration:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_14
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;->cacheTop:Ljava/lang/Integer;

    if-eqz v1, :cond_23

    const-string v1, ", cacheTop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;->cacheTop:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_23
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;->material_expired_time:Ljava/lang/Integer;

    if-eqz v1, :cond_32

    const-string v1, ", material_expired_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;->material_expired_time:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_32
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "SplashConfig{"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
