.class public final Lcom/sigmob/sdk/base/models/sigdsp/pb/Color$Builder;
.super Lcom/sigmob/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/Message$Builder",
        "<",
        "Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;",
        "Lcom/sigmob/sdk/base/models/sigdsp/pb/Color$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public alpha:Ljava/lang/Float;

.field public blue:Ljava/lang/Integer;

.field public green:Ljava/lang/Integer;

.field public red:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public alpha(Ljava/lang/Float;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Color$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color$Builder;->alpha:Ljava/lang/Float;

    return-object p0
.end method

.method public blue(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Color$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color$Builder;->blue:Ljava/lang/Integer;

    return-object p0
.end method

.method public build()Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;
    .registers 7

    new-instance v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color$Builder;->red:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color$Builder;->green:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color$Builder;->blue:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color$Builder;->alpha:Ljava/lang/Float;

    invoke-super {p0}, Lcom/sigmob/wire/Message$Builder;->buildUnknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Lcom/sigmob/wire/okio/ByteString;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/sigmob/wire/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color$Builder;->build()Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;

    move-result-object v0

    return-object v0
.end method

.method public green(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Color$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color$Builder;->green:Ljava/lang/Integer;

    return-object p0
.end method

.method public red(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Color$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color$Builder;->red:Ljava/lang/Integer;

    return-object p0
.end method
