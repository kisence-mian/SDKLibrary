.class public abstract Lcom/sigmob/sdk/base/common/ad;
.super Lcom/sigmob/sdk/mraid/p;

# interfaces
.implements Lcom/sigmob/sdk/base/common/g;


# direct methods
.method protected constructor <init>(Lcom/sigmob/sdk/base/common/s;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/mraid/p;-><init>(Lcom/sigmob/sdk/base/common/s;)V

    return-void
.end method

.method private b(Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;)Z
    .registers 4

    iget-object v0, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->creative_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/sigmob/sdk/base/common/q;->a:Lcom/sigmob/sdk/base/common/q;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/q;->a()I

    move-result v1

    if-ne v0, v1, :cond_28

    iget-object v0, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->endcard_md5:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->endcard_url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->video_url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    const/4 v0, 0x1

    :goto_27
    return v0

    :cond_28
    const/4 v0, 0x0

    goto :goto_27
.end method

.method private c(Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;)Z
    .registers 4

    iget-object v0, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->creative_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/sigmob/sdk/base/common/q;->c:Lcom/sigmob/sdk/base/common/q;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/q;->a()I

    move-result v1

    if-eq v0, v1, :cond_1c

    iget-object v0, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->creative_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/sigmob/sdk/base/common/q;->e:Lcom/sigmob/sdk/base/common/q;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/q;->a()I

    move-result v1

    if-ne v0, v1, :cond_34

    :cond_1c
    iget-object v0, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->html_snippet:Lcom/sigmob/wire/okio/ByteString;

    if-eqz v0, :cond_34

    iget-object v0, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->html_snippet:Lcom/sigmob/wire/okio/ByteString;

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/ByteString;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_34

    iget-object v0, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->video_url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    const/4 v0, 0x1

    :goto_33
    return v0

    :cond_34
    const/4 v0, 0x0

    goto :goto_33
.end method

.method private d(Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;)Z
    .registers 4

    iget-object v0, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->creative_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/sigmob/sdk/base/common/q;->f:Lcom/sigmob/sdk/base/common/q;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/q;->a()I

    move-result v1

    if-ne v0, v1, :cond_20

    iget-object v0, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->html_url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->video_url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/sigmob/sdk/base/common/s;)V
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/sigmob/sdk/mraid/p;->a(Landroid/content/Context;Lcom/sigmob/sdk/base/common/s;)V

    invoke-static {}, Lcom/sigmob/sdk/base/common/e;->e()Lcom/sigmob/sdk/base/common/e;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/ad;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0, v1, p0}, Lcom/sigmob/sdk/base/common/e;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/g;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sigmob/sdk/base/models/BaseAdUnit;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {p2}, Lcom/sigmob/sdk/base/common/e;->c(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-super {p0, p1, p2, p3}, Lcom/sigmob/sdk/mraid/p;->a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/util/Map;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/ad;->b:Lcom/sigmob/sdk/base/common/s;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/ad;->b:Lcom/sigmob/sdk/base/common/s;

    invoke-interface {v0, p1}, Lcom/sigmob/sdk/base/common/s;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_9
    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/models/SigmobError;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/ad;->b:Lcom/sigmob/sdk/base/common/s;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/ad;->b:Lcom/sigmob/sdk/base/common/s;

    invoke-interface {v0, p1, p3}, Lcom/sigmob/sdk/base/common/s;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/e;->c(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-super {p0}, Lcom/sigmob/sdk/mraid/p;->b()V

    return-void
.end method

.method protected b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z
    .registers 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/sigmob/sdk/mraid/p;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z

    move-result v3

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCreativeType()I

    move-result v4

    sget-object v5, Lcom/sigmob/sdk/base/common/q;->h:Lcom/sigmob/sdk/base/common/q;

    invoke-virtual {v5}, Lcom/sigmob/sdk/base/common/q;->a()I

    move-result v5

    if-ne v4, v5, :cond_1f

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/common/ad;->a(Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;)Z

    move-result v0

    :goto_1a
    if-eqz v3, :cond_35

    if-eqz v0, :cond_35

    :goto_1e
    return v2

    :cond_1f
    invoke-direct {p0, v0}, Lcom/sigmob/sdk/base/common/ad;->b(Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;)Z

    move-result v4

    if-nez v4, :cond_31

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/base/common/ad;->c(Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;)Z

    move-result v4

    if-nez v4, :cond_31

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/base/common/ad;->d(Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;)Z

    move-result v0

    if-eqz v0, :cond_33

    :cond_31
    move v0, v2

    goto :goto_1a

    :cond_33
    move v0, v1

    goto :goto_1a

    :cond_35
    move v2, v1

    goto :goto_1e
.end method
