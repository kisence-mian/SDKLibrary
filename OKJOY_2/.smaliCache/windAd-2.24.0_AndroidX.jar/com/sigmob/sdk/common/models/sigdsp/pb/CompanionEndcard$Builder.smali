.class public final Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard$Builder;
.super Lcom/sigmob/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/Message$Builder<",
        "Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;",
        "Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public animate_type:Ljava/lang/Integer;

.field public bar_color:Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;

.field public button_color:Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;

.field public button_text:Ljava/lang/String;

.field public button_text_color:Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;

.field public click_type:Ljava/lang/Integer;

.field public desc:Ljava/lang/String;

.field public icon_url:Ljava/lang/String;

.field public score:Ljava/lang/Float;

.field public show_delay_secs:Ljava/lang/Integer;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/sigmob/wire/Message$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard$Builder;->icon_url:Ljava/lang/String;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard$Builder;->title:Ljava/lang/String;

    sget-object v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->DEFAULT_SCORE:Ljava/lang/Float;

    iput-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard$Builder;->score:Ljava/lang/Float;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard$Builder;->button_text:Ljava/lang/String;

    sget-object v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->DEFAULT_ANIMATE_TYPE:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard$Builder;->animate_type:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->DEFAULT_SHOW_DELAY_SECS:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard$Builder;->show_delay_secs:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public animate_type(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard$Builder;->animate_type:Ljava/lang/Integer;

    return-object p0
.end method

.method public bar_color(Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;)Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard$Builder;->bar_color:Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;

    return-object p0
.end method

.method public build()Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;
    .registers 15

    new-instance v13, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard$Builder;->icon_url:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard$Builder;->title:Ljava/lang/String;

    iget-object v3, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard$Builder;->score:Ljava/lang/Float;

    iget-object v4, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard$Builder;->button_text:Ljava/lang/String;

    iget-object v5, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard$Builder;->button_color:Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;

    iget-object v6, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard$Builder;->button_text_color:Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;

    iget-object v7, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard$Builder;->click_type:Ljava/lang/Integer;

    iget-object v8, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard$Builder;->bar_color:Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;

    iget-object v9, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard$Builder;->desc:Ljava/lang/String;

    iget-object v10, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard$Builder;->animate_type:Ljava/lang/Integer;

    iget-object v11, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard$Builder;->show_delay_secs:Ljava/lang/Integer;

    invoke-super {p0}, Lcom/sigmob/wire/Message$Builder;->buildUnknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v12

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;Ljava/lang/Integer;Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/sigmob/wire/okio/ByteString;)V

    return-object v13
.end method

.method public bridge synthetic build()Lcom/sigmob/wire/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard$Builder;->build()Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;

    move-result-object v0

    return-object v0
.end method

.method public button_color(Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;)Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard$Builder;->button_color:Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;

    return-object p0
.end method

.method public button_text(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard$Builder;->button_text:Ljava/lang/String;

    return-object p0
.end method

.method public button_text_color(Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;)Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard$Builder;->button_text_color:Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;

    return-object p0
.end method

.method public click_type(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard$Builder;->click_type:Ljava/lang/Integer;

    return-object p0
.end method

.method public desc(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard$Builder;->desc:Ljava/lang/String;

    return-object p0
.end method

.method public icon_url(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard$Builder;->icon_url:Ljava/lang/String;

    return-object p0
.end method

.method public score(Ljava/lang/Float;)Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard$Builder;->score:Ljava/lang/Float;

    return-object p0
.end method

.method public show_delay_secs(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard$Builder;->show_delay_secs:Ljava/lang/Integer;

    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard$Builder;->title:Ljava/lang/String;

    return-object p0
.end method
