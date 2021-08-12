.class public final Lcom/sigmob/sdk/common/models/sigdsp/pb/ClickAreaSetting$Builder;
.super Lcom/sigmob/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/common/models/sigdsp/pb/ClickAreaSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/Message$Builder<",
        "Lcom/sigmob/sdk/common/models/sigdsp/pb/ClickAreaSetting;",
        "Lcom/sigmob/sdk/common/models/sigdsp/pb/ClickAreaSetting$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public bottom:Ljava/lang/Float;

.field public left:Ljava/lang/Float;

.field public right:Ljava/lang/Float;

.field public top:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/sigmob/wire/Message$Builder;-><init>()V

    sget-object v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/ClickAreaSetting;->DEFAULT_TOP:Ljava/lang/Float;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/ClickAreaSetting$Builder;->top:Ljava/lang/Float;

    sget-object v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/ClickAreaSetting;->DEFAULT_LEFT:Ljava/lang/Float;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/ClickAreaSetting$Builder;->left:Ljava/lang/Float;

    sget-object v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/ClickAreaSetting;->DEFAULT_BOTTOM:Ljava/lang/Float;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/ClickAreaSetting$Builder;->bottom:Ljava/lang/Float;

    sget-object v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/ClickAreaSetting;->DEFAULT_RIGHT:Ljava/lang/Float;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/ClickAreaSetting$Builder;->right:Ljava/lang/Float;

    return-void
.end method


# virtual methods
.method public bottom(Ljava/lang/Float;)Lcom/sigmob/sdk/common/models/sigdsp/pb/ClickAreaSetting$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/ClickAreaSetting$Builder;->bottom:Ljava/lang/Float;

    return-object p0
.end method

.method public build()Lcom/sigmob/sdk/common/models/sigdsp/pb/ClickAreaSetting;
    .registers 8

    new-instance v6, Lcom/sigmob/sdk/common/models/sigdsp/pb/ClickAreaSetting;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/ClickAreaSetting$Builder;->top:Ljava/lang/Float;

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/ClickAreaSetting$Builder;->left:Ljava/lang/Float;

    iget-object v3, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/ClickAreaSetting$Builder;->bottom:Ljava/lang/Float;

    iget-object v4, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/ClickAreaSetting$Builder;->right:Ljava/lang/Float;

    invoke-super {p0}, Lcom/sigmob/wire/Message$Builder;->buildUnknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/sdk/common/models/sigdsp/pb/ClickAreaSetting;-><init>(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Lcom/sigmob/wire/okio/ByteString;)V

    return-object v6
.end method

.method public bridge synthetic build()Lcom/sigmob/wire/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/ClickAreaSetting$Builder;->build()Lcom/sigmob/sdk/common/models/sigdsp/pb/ClickAreaSetting;

    move-result-object v0

    return-object v0
.end method

.method public left(Ljava/lang/Float;)Lcom/sigmob/sdk/common/models/sigdsp/pb/ClickAreaSetting$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/ClickAreaSetting$Builder;->left:Ljava/lang/Float;

    return-object p0
.end method

.method public right(Ljava/lang/Float;)Lcom/sigmob/sdk/common/models/sigdsp/pb/ClickAreaSetting$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/ClickAreaSetting$Builder;->right:Ljava/lang/Float;

    return-object p0
.end method

.method public top(Ljava/lang/Float;)Lcom/sigmob/sdk/common/models/sigdsp/pb/ClickAreaSetting$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/ClickAreaSetting$Builder;->top:Ljava/lang/Float;

    return-object p0
.end method
