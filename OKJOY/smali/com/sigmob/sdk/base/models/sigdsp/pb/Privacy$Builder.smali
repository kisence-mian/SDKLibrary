.class public final Lcom/sigmob/sdk/base/models/sigdsp/pb/Privacy$Builder;
.super Lcom/sigmob/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/Message$Builder",
        "<",
        "Lcom/sigmob/sdk/base/models/sigdsp/pb/Privacy;",
        "Lcom/sigmob/sdk/base/models/sigdsp/pb/Privacy$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public age:Ljava/lang/Integer;

.field public child_protection:Ljava/lang/Integer;

.field public gdpr_consent:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/sigmob/wire/Message$Builder;-><init>()V

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Privacy;->DEFAULT_GDPR_CONSENT:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Privacy$Builder;->gdpr_consent:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Privacy;->DEFAULT_CHILD_PROTECTION:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Privacy$Builder;->child_protection:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Privacy;->DEFAULT_AGE:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Privacy$Builder;->age:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public age(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Privacy$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Privacy$Builder;->age:Ljava/lang/Integer;

    return-object p0
.end method

.method public build()Lcom/sigmob/sdk/base/models/sigdsp/pb/Privacy;
    .registers 6

    new-instance v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Privacy;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Privacy$Builder;->gdpr_consent:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Privacy$Builder;->child_protection:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Privacy$Builder;->age:Ljava/lang/Integer;

    invoke-super {p0}, Lcom/sigmob/wire/Message$Builder;->buildUnknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Privacy;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/sigmob/wire/okio/ByteString;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/sigmob/wire/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Privacy$Builder;->build()Lcom/sigmob/sdk/base/models/sigdsp/pb/Privacy;

    move-result-object v0

    return-object v0
.end method

.method public child_protection(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Privacy$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Privacy$Builder;->child_protection:Ljava/lang/Integer;

    return-object p0
.end method

.method public gdpr_consent(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Privacy$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Privacy$Builder;->gdpr_consent:Ljava/lang/Integer;

    return-object p0
.end method
