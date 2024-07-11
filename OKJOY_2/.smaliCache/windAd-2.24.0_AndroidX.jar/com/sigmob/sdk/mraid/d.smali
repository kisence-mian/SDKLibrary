.class public Lcom/sigmob/sdk/mraid/d;
.super Lcom/sigmob/sdk/base/common/r;


# direct methods
.method protected constructor <init>(Lcom/sigmob/sdk/base/common/k$a;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/common/r;-><init>(Lcom/sigmob/sdk/base/common/k$a;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/sigmob/sdk/base/common/k$a;)V
    .registers 3

    iput-object p2, p0, Lcom/sigmob/sdk/mraid/d;->b:Lcom/sigmob/sdk/base/common/k$a;

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/d;->b:Lcom/sigmob/sdk/base/common/k$a;

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/d;->b:Lcom/sigmob/sdk/base/common/k$a;

    iget-object p2, p0, Lcom/sigmob/sdk/mraid/d;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-interface {p1, p2}, Lcom/sigmob/sdk/base/common/k$a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_d
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/util/Map;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/sigmob/sdk/base/models/BaseAdUnit;",
            ")V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/sigmob/sdk/base/common/r;->a(Landroid/content/Context;Ljava/util/Map;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-void
.end method

.method protected a(Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;)Z
    .registers 4

    iget-object v0, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->creative_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/sigmob/sdk/base/common/j;->h:Lcom/sigmob/sdk/base/common/j;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/j;->a()I

    move-result v1

    if-ne v0, v1, :cond_26

    iget-object v0, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->html_url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->html_snippet:Lcom/sigmob/wire/okio/ByteString;

    if-eqz v0, :cond_26

    iget-object p1, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->html_snippet:Lcom/sigmob/wire/okio/ByteString;

    invoke-virtual {p1}, Lcom/sigmob/wire/okio/ByteString;->size()I

    move-result p1

    const/16 v0, 0xa

    if-le p1, v0, :cond_26

    :cond_24
    const/4 p1, 0x1

    goto :goto_27

    :cond_26
    const/4 p1, 0x0

    :goto_27
    return p1
.end method

.method public b()V
    .registers 1

    invoke-super {p0}, Lcom/sigmob/sdk/base/common/r;->b()V

    return-void
.end method

.method protected b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z
    .registers 3

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCrid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x1

    return p1

    :cond_13
    :goto_13
    const/4 p1, 0x0

    return p1
.end method
