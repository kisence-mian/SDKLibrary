.class public final Lcom/sigmob/sdk/base/models/sigdsp/pb/App;
.super Lcom/sigmob/wire/AndroidMessage;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/AndroidMessage",
        "<",
        "Lcom/sigmob/sdk/base/models/sigdsp/pb/App;",
        "Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter",
            "<",
            "Lcom/sigmob/sdk/base/models/sigdsp/pb/App;",
            ">;"
        }
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sigmob/sdk/base/models/sigdsp/pb/App;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_APP_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_APP_PACKAGE:Ljava/lang/String; = ""

.field public static final DEFAULT_CHANNEL_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_IDFV:Ljava/lang/String; = ""

.field public static final DEFAULT_NAME:Ljava/lang/String; = ""

.field public static final DEFAULT_ORIENTATION:Ljava/lang/Integer;

.field public static final DEFAULT_PRODUCT_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_SUPPORT_HTTP:Ljava/lang/Boolean;

.field private static final serialVersionUID:J


# instance fields
.field public final app_id:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x1
    .end annotation
.end field

.field public final app_package:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x3
    .end annotation
.end field

.field public final app_version:Lcom/sigmob/sdk/base/models/sigdsp/pb/Version;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.sigmob.sdk.base.models.sigdsp.pb.Version#ADAPTER"
        tag = 0x2
    .end annotation
.end field

.field public final channel_id:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x7
    .end annotation
.end field

.field public final idfv:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x6
    .end annotation
.end field

.field public final name:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x5
    .end annotation
.end field

.field public final orientation:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x4
    .end annotation
.end field

.field public final product_id:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x8
    .end annotation
.end field

.field public final support_http:Ljava/lang/Boolean;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x9
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    new-instance v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App$ProtoAdapter_App;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/App$ProtoAdapter_App;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-static {v0}, Lcom/sigmob/wire/AndroidMessage;->newCreator(Lcom/sigmob/wire/ProtoAdapter;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->DEFAULT_ORIENTATION:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->DEFAULT_SUPPORT_HTTP:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sigmob/sdk/base/models/sigdsp/pb/Version;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 21

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

    invoke-direct/range {v0 .. v10}, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;-><init>(Ljava/lang/String;Lcom/sigmob/sdk/base/models/sigdsp/pb/Version;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/sigmob/wire/okio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sigmob/sdk/base/models/sigdsp/pb/Version;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/sigmob/wire/okio/ByteString;)V
    .registers 12

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-direct {p0, v0, p10}, Lcom/sigmob/wire/AndroidMessage;-><init>(Lcom/sigmob/wire/ProtoAdapter;Lcom/sigmob/wire/okio/ByteString;)V

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->app_id:Ljava/lang/String;

    iput-object p2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->app_version:Lcom/sigmob/sdk/base/models/sigdsp/pb/Version;

    iput-object p3, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->app_package:Ljava/lang/String;

    iput-object p4, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->orientation:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->name:Ljava/lang/String;

    iput-object p6, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->idfv:Ljava/lang/String;

    iput-object p7, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->channel_id:Ljava/lang/String;

    iput-object p8, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->product_id:Ljava/lang/String;

    iput-object p9, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->support_http:Ljava/lang/Boolean;

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
    instance-of v2, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sigmob/wire/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->app_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->app_id:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->app_version:Lcom/sigmob/sdk/base/models/sigdsp/pb/Version;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->app_version:Lcom/sigmob/sdk/base/models/sigdsp/pb/Version;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->app_package:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->app_package:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->orientation:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->orientation:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->idfv:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->idfv:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->channel_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->channel_id:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->product_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->product_id:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->support_http:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->support_http:Ljava/lang/Boolean;

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

    if-nez v0, :cond_84

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->app_id:Ljava/lang/String;

    if-eqz v0, :cond_85

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->app_id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_19
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->app_version:Lcom/sigmob/sdk/base/models/sigdsp/pb/Version;

    if-eqz v0, :cond_87

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->app_version:Lcom/sigmob/sdk/base/models/sigdsp/pb/Version;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Version;->hashCode()I

    move-result v0

    :goto_26
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->app_package:Ljava/lang/String;

    if-eqz v0, :cond_89

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->app_package:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_33
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->orientation:Ljava/lang/Integer;

    if-eqz v0, :cond_8b

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->orientation:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_40
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->name:Ljava/lang/String;

    if-eqz v0, :cond_8d

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4d
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->idfv:Ljava/lang/String;

    if-eqz v0, :cond_8f

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->idfv:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5a
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->channel_id:Ljava/lang/String;

    if-eqz v0, :cond_91

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->channel_id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_67
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->product_id:Ljava/lang/String;

    if-eqz v0, :cond_93

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->product_id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_74
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->support_http:Ljava/lang/Boolean;

    if-eqz v2, :cond_81

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->support_http:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :cond_81
    add-int/2addr v0, v1

    iput v0, p0, Lcom/sigmob/wire/AndroidMessage;->hashCode:I

    :cond_84
    return v0

    :cond_85
    move v0, v1

    goto :goto_19

    :cond_87
    move v0, v1

    goto :goto_26

    :cond_89
    move v0, v1

    goto :goto_33

    :cond_8b
    move v0, v1

    goto :goto_40

    :cond_8d
    move v0, v1

    goto :goto_4d

    :cond_8f
    move v0, v1

    goto :goto_5a

    :cond_91
    move v0, v1

    goto :goto_67

    :cond_93
    move v0, v1

    goto :goto_74
.end method

.method public newBuilder()Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;
    .registers 3

    new-instance v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->app_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;->app_id:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->app_version:Lcom/sigmob/sdk/base/models/sigdsp/pb/Version;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;->app_version:Lcom/sigmob/sdk/base/models/sigdsp/pb/Version;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->app_package:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;->app_package:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->orientation:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;->orientation:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->idfv:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;->idfv:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->channel_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;->channel_id:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->product_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;->product_id:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->support_http:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;->support_http:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;->addUnknownFields(Lcom/sigmob/wire/okio/ByteString;)Lcom/sigmob/wire/Message$Builder;

    return-object v0
.end method

.method public bridge synthetic newBuilder()Lcom/sigmob/wire/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->newBuilder()Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->app_id:Ljava/lang/String;

    if-eqz v1, :cond_14

    const-string v1, ", app_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->app_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->app_version:Lcom/sigmob/sdk/base/models/sigdsp/pb/Version;

    if-eqz v1, :cond_23

    const-string v1, ", app_version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->app_version:Lcom/sigmob/sdk/base/models/sigdsp/pb/Version;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_23
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->app_package:Ljava/lang/String;

    if-eqz v1, :cond_32

    const-string v1, ", app_package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->app_package:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_32
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->orientation:Ljava/lang/Integer;

    if-eqz v1, :cond_41

    const-string v1, ", orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->orientation:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_41
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->name:Ljava/lang/String;

    if-eqz v1, :cond_50

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_50
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->idfv:Ljava/lang/String;

    if-eqz v1, :cond_5f

    const-string v1, ", idfv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->idfv:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5f
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->channel_id:Ljava/lang/String;

    if-eqz v1, :cond_6e

    const-string v1, ", channel_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->channel_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6e
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->product_id:Ljava/lang/String;

    if-eqz v1, :cond_7d

    const-string v1, ", product_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->product_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7d
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->support_http:Ljava/lang/Boolean;

    if-eqz v1, :cond_8c

    const-string v1, ", support_http="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->support_http:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_8c
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "App{"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
