.class public final Lcom/sigmob/sdk/base/models/ssp/pb/DialogSetting$Builder;
.super Lcom/sigmob/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/Message$Builder",
        "<",
        "Lcom/sigmob/sdk/base/models/ssp/pb/DialogSetting;",
        "Lcom/sigmob/sdk/base/models/ssp/pb/DialogSetting$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public body_text:Ljava/lang/String;

.field public cancel_button_text:Ljava/lang/String;

.field public close_button_text:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public body_text(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/ssp/pb/DialogSetting$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/DialogSetting$Builder;->body_text:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/sigmob/sdk/base/models/ssp/pb/DialogSetting;
    .registers 7

    new-instance v0, Lcom/sigmob/sdk/base/models/ssp/pb/DialogSetting;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/DialogSetting$Builder;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/DialogSetting$Builder;->body_text:Ljava/lang/String;

    iget-object v3, p0, Lcom/sigmob/sdk/base/models/ssp/pb/DialogSetting$Builder;->cancel_button_text:Ljava/lang/String;

    iget-object v4, p0, Lcom/sigmob/sdk/base/models/ssp/pb/DialogSetting$Builder;->close_button_text:Ljava/lang/String;

    invoke-super {p0}, Lcom/sigmob/wire/Message$Builder;->buildUnknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/sdk/base/models/ssp/pb/DialogSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/wire/okio/ByteString;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/sigmob/wire/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/ssp/pb/DialogSetting$Builder;->build()Lcom/sigmob/sdk/base/models/ssp/pb/DialogSetting;

    move-result-object v0

    return-object v0
.end method

.method public cancel_button_text(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/ssp/pb/DialogSetting$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/DialogSetting$Builder;->cancel_button_text:Ljava/lang/String;

    return-object p0
.end method

.method public close_button_text(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/ssp/pb/DialogSetting$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/DialogSetting$Builder;->close_button_text:Ljava/lang/String;

    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/ssp/pb/DialogSetting$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/DialogSetting$Builder;->title:Ljava/lang/String;

    return-object p0
.end method
