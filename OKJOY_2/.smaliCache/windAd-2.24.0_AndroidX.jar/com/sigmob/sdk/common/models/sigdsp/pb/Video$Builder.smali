.class public final Lcom/sigmob/sdk/common/models/sigdsp/pb/Video$Builder;
.super Lcom/sigmob/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/common/models/sigdsp/pb/Video;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/Message$Builder<",
        "Lcom/sigmob/sdk/common/models/sigdsp/pb/Video;",
        "Lcom/sigmob/sdk/common/models/sigdsp/pb/Video$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public max_duration:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/sigmob/sdk/common/models/sigdsp/pb/Video;
    .registers 4

    new-instance v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Video;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Video$Builder;->max_duration:Ljava/lang/Integer;

    invoke-super {p0}, Lcom/sigmob/wire/Message$Builder;->buildUnknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Video;-><init>(Ljava/lang/Integer;Lcom/sigmob/wire/okio/ByteString;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/sigmob/wire/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Video$Builder;->build()Lcom/sigmob/sdk/common/models/sigdsp/pb/Video;

    move-result-object v0

    return-object v0
.end method

.method public max_duration(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Video$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Video$Builder;->max_duration:Ljava/lang/Integer;

    return-object p0
.end method
