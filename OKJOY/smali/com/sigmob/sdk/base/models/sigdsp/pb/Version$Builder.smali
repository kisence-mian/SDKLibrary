.class public final Lcom/sigmob/sdk/base/models/sigdsp/pb/Version$Builder;
.super Lcom/sigmob/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/Message$Builder",
        "<",
        "Lcom/sigmob/sdk/base/models/sigdsp/pb/Version;",
        "Lcom/sigmob/sdk/base/models/sigdsp/pb/Version$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public major:Ljava/lang/Integer;

.field public micro:Ljava/lang/Integer;

.field public minor:Ljava/lang/Integer;

.field public version_str:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/sigmob/wire/Message$Builder;-><init>()V

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Version;->DEFAULT_MINOR:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Version$Builder;->major:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Version;->DEFAULT_MAJOR:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Version$Builder;->minor:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Version;->DEFAULT_MICRO:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Version$Builder;->micro:Ljava/lang/Integer;

    const-string v0, ""

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Version$Builder;->version_str:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/sigmob/sdk/base/models/sigdsp/pb/Version;
    .registers 7

    new-instance v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Version;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Version$Builder;->major:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Version$Builder;->minor:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Version$Builder;->micro:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Version$Builder;->version_str:Ljava/lang/String;

    invoke-super {p0}, Lcom/sigmob/wire/Message$Builder;->buildUnknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Version;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lcom/sigmob/wire/okio/ByteString;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/sigmob/wire/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Version$Builder;->build()Lcom/sigmob/sdk/base/models/sigdsp/pb/Version;

    move-result-object v0

    return-object v0
.end method

.method public major(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Version$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Version$Builder;->major:Ljava/lang/Integer;

    return-object p0
.end method

.method public micro(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Version$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Version$Builder;->micro:Ljava/lang/Integer;

    return-object p0
.end method

.method public minor(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Version$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Version$Builder;->minor:Ljava/lang/Integer;

    return-object p0
.end method

.method public version_str(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Version$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Version$Builder;->version_str:Ljava/lang/String;

    return-object p0
.end method
