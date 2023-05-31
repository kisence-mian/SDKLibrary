.class public final Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;
.super Lcom/sigmob/wire/AndroidMessage;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/AndroidMessage",
        "<",
        "Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;",
        "Lcom/sigmob/sdk/base/models/sigdsp/pb/Color$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter",
            "<",
            "Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;",
            ">;"
        }
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_ALPHA:Ljava/lang/Float;

.field public static final DEFAULT_BLUE:Ljava/lang/Integer;

.field public static final DEFAULT_GREEN:Ljava/lang/Integer;

.field public static final DEFAULT_RED:Ljava/lang/Integer;

.field private static final serialVersionUID:J


# instance fields
.field public final alpha:Ljava/lang/Float;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#FLOAT"
        tag = 0x4
    .end annotation
.end field

.field public final blue:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x3
    .end annotation
.end field

.field public final green:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x2
    .end annotation
.end field

.field public final red:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    new-instance v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color$ProtoAdapter_Color;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color$ProtoAdapter_Color;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-static {v0}, Lcom/sigmob/wire/AndroidMessage;->newCreator(Lcom/sigmob/wire/ProtoAdapter;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;->DEFAULT_RED:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;->DEFAULT_GREEN:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;->DEFAULT_BLUE:Ljava/lang/Integer;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;->DEFAULT_ALPHA:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;)V
    .registers 11

    sget-object v5, Lcom/sigmob/wire/okio/ByteString;->EMPTY:Lcom/sigmob/wire/okio/ByteString;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Lcom/sigmob/wire/okio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Lcom/sigmob/wire/okio/ByteString;)V
    .registers 7

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-direct {p0, v0, p5}, Lcom/sigmob/wire/AndroidMessage;-><init>(Lcom/sigmob/wire/ProtoAdapter;Lcom/sigmob/wire/okio/ByteString;)V

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;->red:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;->green:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;->blue:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;->alpha:Ljava/lang/Float;

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
    instance-of v2, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sigmob/wire/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;->red:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;->red:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;->green:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;->green:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;->blue:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;->blue:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;->alpha:Ljava/lang/Float;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;->alpha:Ljava/lang/Float;

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

    if-nez v0, :cond_43

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;->red:Ljava/lang/Integer;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;->red:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_19
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;->green:Ljava/lang/Integer;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;->green:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_26
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;->blue:Ljava/lang/Integer;

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;->blue:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_33
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;->alpha:Ljava/lang/Float;

    if-eqz v2, :cond_40

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;->alpha:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->hashCode()I

    move-result v1

    :cond_40
    add-int/2addr v0, v1

    iput v0, p0, Lcom/sigmob/wire/AndroidMessage;->hashCode:I

    :cond_43
    return v0

    :cond_44
    move v0, v1

    goto :goto_19

    :cond_46
    move v0, v1

    goto :goto_26

    :cond_48
    move v0, v1

    goto :goto_33
.end method

.method public newBuilder()Lcom/sigmob/sdk/base/models/sigdsp/pb/Color$Builder;
    .registers 3

    new-instance v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color$Builder;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color$Builder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;->red:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color$Builder;->red:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;->green:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color$Builder;->green:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;->blue:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color$Builder;->blue:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;->alpha:Ljava/lang/Float;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color$Builder;->alpha:Ljava/lang/Float;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color$Builder;->addUnknownFields(Lcom/sigmob/wire/okio/ByteString;)Lcom/sigmob/wire/Message$Builder;

    return-object v0
.end method

.method public bridge synthetic newBuilder()Lcom/sigmob/wire/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;->newBuilder()Lcom/sigmob/sdk/base/models/sigdsp/pb/Color$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;->red:Ljava/lang/Integer;

    if-eqz v1, :cond_14

    const-string v1, ", red="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;->red:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_14
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;->green:Ljava/lang/Integer;

    if-eqz v1, :cond_23

    const-string v1, ", green="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;->green:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_23
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;->blue:Ljava/lang/Integer;

    if-eqz v1, :cond_32

    const-string v1, ", blue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;->blue:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_32
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;->alpha:Ljava/lang/Float;

    if-eqz v1, :cond_41

    const-string v1, ", alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;->alpha:Ljava/lang/Float;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_41
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "Color{"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
