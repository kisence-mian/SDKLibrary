.class public final Lcom/sigmob/sdk/common/models/sigdsp/pb/Size$Builder;
.super Lcom/sigmob/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/Message$Builder<",
        "Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;",
        "Lcom/sigmob/sdk/common/models/sigdsp/pb/Size$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public height:Ljava/lang/Integer;

.field public width:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/sigmob/wire/Message$Builder;-><init>()V

    sget-object v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;->DEFAULT_WIDTH:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Size$Builder;->width:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;->DEFAULT_HEIGHT:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Size$Builder;->height:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public build()Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;
    .registers 5

    new-instance v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Size$Builder;->width:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Size$Builder;->height:Ljava/lang/Integer;

    invoke-super {p0}, Lcom/sigmob/wire/Message$Builder;->buildUnknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/sigmob/wire/okio/ByteString;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/sigmob/wire/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Size$Builder;->build()Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;

    move-result-object v0

    return-object v0
.end method

.method public height(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Size$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Size$Builder;->height:Ljava/lang/Integer;

    return-object p0
.end method

.method public width(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Size$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Size$Builder;->width:Ljava/lang/Integer;

    return-object p0
.end method
