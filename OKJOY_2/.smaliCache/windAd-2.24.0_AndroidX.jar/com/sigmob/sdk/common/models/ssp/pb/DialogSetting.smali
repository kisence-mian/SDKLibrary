.class public final Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;
.super Lcom/sigmob/wire/AndroidMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting$ProtoAdapter_DialogSetting;,
        Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/AndroidMessage<",
        "Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;",
        "Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter<",
            "Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;",
            ">;"
        }
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_BODY_TEXT:Ljava/lang/String; = ""

.field public static final DEFAULT_CANCEL_BUTTON_TEXT:Ljava/lang/String; = ""

.field public static final DEFAULT_CLOSE_BUTTON_TEXT:Ljava/lang/String; = ""

.field public static final DEFAULT_TITLE:Ljava/lang/String; = ""

.field private static final serialVersionUID:J


# instance fields
.field public final body_text:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x2
    .end annotation
.end field

.field public final cancel_button_text:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x3
    .end annotation
.end field

.field public final close_button_text:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x4
    .end annotation
.end field

.field public final title:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting$ProtoAdapter_DialogSetting;

    invoke-direct {v0}, Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting$ProtoAdapter_DialogSetting;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-static {v0}, Lcom/sigmob/wire/AndroidMessage;->newCreator(Lcom/sigmob/wire/ProtoAdapter;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    sget-object v5, Lcom/sigmob/wire/okio/ByteString;->EMPTY:Lcom/sigmob/wire/okio/ByteString;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/wire/okio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/wire/okio/ByteString;)V
    .registers 7

    sget-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-direct {p0, v0, p5}, Lcom/sigmob/wire/AndroidMessage;-><init>(Lcom/sigmob/wire/ProtoAdapter;Lcom/sigmob/wire/okio/ByteString;)V

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;->body_text:Ljava/lang/String;

    iput-object p3, p0, Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;->cancel_button_text:Ljava/lang/String;

    iput-object p4, p0, Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;->close_button_text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sigmob/wire/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;->body_text:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;->body_text:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;->cancel_button_text:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;->cancel_button_text:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;->close_button_text:Ljava/lang/String;

    iget-object p1, p1, Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;->close_button_text:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_43

    goto :goto_44

    :cond_43
    move v0, v2

    :goto_44
    return v0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lcom/sigmob/wire/AndroidMessage;->hashCode:I

    if-nez v0, :cond_41

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;->title:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;->body_text:Ljava/lang/String;

    if-eqz v1, :cond_25

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_26

    :cond_25
    move v1, v2

    :goto_26
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;->cancel_button_text:Ljava/lang/String;

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_33

    :cond_32
    move v1, v2

    :goto_33
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;->close_button_text:Ljava/lang/String;

    if-eqz v1, :cond_3e

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_3e
    add-int/2addr v0, v2

    iput v0, p0, Lcom/sigmob/wire/AndroidMessage;->hashCode:I

    :cond_41
    return v0
.end method

.method public newBuilder()Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting$Builder;
    .registers 3

    new-instance v0, Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting$Builder;

    invoke-direct {v0}, Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting$Builder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting$Builder;->title:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;->body_text:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting$Builder;->body_text:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;->cancel_button_text:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting$Builder;->cancel_button_text:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;->close_button_text:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting$Builder;->close_button_text:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting$Builder;->addUnknownFields(Lcom/sigmob/wire/okio/ByteString;)Lcom/sigmob/wire/Message$Builder;

    return-object v0
.end method

.method public bridge synthetic newBuilder()Lcom/sigmob/wire/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;->newBuilder()Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;->title:Ljava/lang/String;

    if-eqz v1, :cond_14

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;->body_text:Ljava/lang/String;

    if-eqz v1, :cond_23

    const-string v1, ", body_text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;->body_text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;->cancel_button_text:Ljava/lang/String;

    if-eqz v1, :cond_32

    const-string v1, ", cancel_button_text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;->cancel_button_text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_32
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;->close_button_text:Ljava/lang/String;

    if-eqz v1, :cond_41

    const-string v1, ", close_button_text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;->close_button_text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_41
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "DialogSetting{"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
