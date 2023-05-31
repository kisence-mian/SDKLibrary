.class public final Lcom/sigmob/sdk/base/models/ssp/pb/Strategy;
.super Lcom/sigmob/wire/AndroidMessage;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/AndroidMessage",
        "<",
        "Lcom/sigmob/sdk/base/models/ssp/pb/Strategy;",
        "Lcom/sigmob/sdk/base/models/ssp/pb/Strategy$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter",
            "<",
            "Lcom/sigmob/sdk/base/models/ssp/pb/Strategy;",
            ">;"
        }
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sigmob/sdk/base/models/ssp/pb/Strategy;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_ADAPTER:Ljava/lang/String; = ""

.field public static final DEFAULT_CHANNEL_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_NAME:Ljava/lang/String; = ""

.field private static final serialVersionUID:J


# instance fields
.field public final adapter:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x3
    .end annotation
.end field

.field public final channel_id:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x4
    .end annotation
.end field

.field public final name:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x1
    .end annotation
.end field

.field public final options:Ljava/util/Map;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        keyAdapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy$ProtoAdapter_Strategy;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy$ProtoAdapter_Strategy;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    sget-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-static {v0}, Lcom/sigmob/wire/AndroidMessage;->newCreator(Lcom/sigmob/wire/ProtoAdapter;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    sget-object v5, Lcom/sigmob/wire/okio/ByteString;->EMPTY:Lcom/sigmob/wire/okio/ByteString;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/wire/okio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/wire/okio/ByteString;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sigmob/wire/okio/ByteString;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-direct {p0, v0, p5}, Lcom/sigmob/wire/AndroidMessage;-><init>(Lcom/sigmob/wire/ProtoAdapter;Lcom/sigmob/wire/okio/ByteString;)V

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy;->name:Ljava/lang/String;

    const-string v0, "options"

    invoke-static {v0, p2}, Lcom/sigmob/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy;->options:Ljava/util/Map;

    iput-object p3, p0, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy;->adapter:Ljava/lang/String;

    iput-object p4, p0, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy;->channel_id:Ljava/lang/String;

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
    instance-of v2, p1, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sigmob/wire/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy;->options:Ljava/util/Map;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy;->options:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy;->adapter:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy;->adapter:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy;->channel_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy;->channel_id:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_43
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget v0, p0, Lcom/sigmob/wire/AndroidMessage;->hashCode:I

    if-nez v0, :cond_3f

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy;->name:Ljava/lang/String;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_19
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy;->options:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy;->adapter:Ljava/lang/String;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy;->adapter:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy;->channel_id:Ljava/lang/String;

    if-eqz v2, :cond_3c

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy;->channel_id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_3c
    add-int/2addr v0, v1

    iput v0, p0, Lcom/sigmob/wire/AndroidMessage;->hashCode:I

    :cond_3f
    return v0

    :cond_40
    move v0, v1

    goto :goto_19

    :cond_42
    move v0, v1

    goto :goto_2f
.end method

.method public newBuilder()Lcom/sigmob/sdk/base/models/ssp/pb/Strategy$Builder;
    .registers 4

    new-instance v0, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy$Builder;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy$Builder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy$Builder;->name:Ljava/lang/String;

    const-string v1, "options"

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy;->options:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/sigmob/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy$Builder;->options:Ljava/util/Map;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy;->adapter:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy$Builder;->adapter:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy;->channel_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy$Builder;->channel_id:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy$Builder;->addUnknownFields(Lcom/sigmob/wire/okio/ByteString;)Lcom/sigmob/wire/Message$Builder;

    return-object v0
.end method

.method public bridge synthetic newBuilder()Lcom/sigmob/wire/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy;->newBuilder()Lcom/sigmob/sdk/base/models/ssp/pb/Strategy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy;->name:Ljava/lang/String;

    if-eqz v1, :cond_14

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy;->options:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, ", options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy;->options:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_27
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy;->adapter:Ljava/lang/String;

    if-eqz v1, :cond_36

    const-string v1, ", adapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy;->adapter:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_36
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy;->channel_id:Ljava/lang/String;

    if-eqz v1, :cond_45

    const-string v1, ", channel_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy;->channel_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_45
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "Strategy{"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
