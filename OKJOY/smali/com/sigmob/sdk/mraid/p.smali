.class public Lcom/sigmob/sdk/mraid/p;
.super Lcom/sigmob/sdk/base/common/z;


# direct methods
.method protected constructor <init>(Lcom/sigmob/sdk/base/common/s;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/common/z;-><init>(Lcom/sigmob/sdk/base/common/s;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/sigmob/sdk/base/common/s;)V
    .registers 5

    iput-object p2, p0, Lcom/sigmob/sdk/mraid/p;->b:Lcom/sigmob/sdk/base/common/s;

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/p;->b:Lcom/sigmob/sdk/base/common/s;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/p;->b:Lcom/sigmob/sdk/base/common/s;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/p;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/base/common/s;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_d
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/util/Map;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/sigmob/sdk/base/models/BaseAdUnit;",
            ")V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/sigmob/sdk/base/common/z;->a(Landroid/content/Context;Ljava/util/Map;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-void
.end method

.method protected a(Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;)Z
    .registers 4

    iget-object v0, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->creative_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/sigmob/sdk/base/common/q;->h:Lcom/sigmob/sdk/base/common/q;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/q;->a()I

    move-result v1

    if-ne v0, v1, :cond_26

    iget-object v0, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->html_url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->html_snippet:Lcom/sigmob/wire/okio/ByteString;

    if-eqz v0, :cond_26

    iget-object v0, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->html_snippet:Lcom/sigmob/wire/okio/ByteString;

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/ByteString;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_26

    :cond_24
    const/4 v0, 0x1

    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public b()V
    .registers 1

    invoke-super {p0}, Lcom/sigmob/sdk/base/common/z;->b()V

    return-void
.end method

.method protected b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z
    .registers 3

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCrid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
.end method
