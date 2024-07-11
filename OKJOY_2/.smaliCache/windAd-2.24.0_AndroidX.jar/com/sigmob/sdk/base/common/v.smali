.class public abstract Lcom/sigmob/sdk/base/common/v;
.super Lcom/sigmob/sdk/mraid/d;

# interfaces
.implements Lcom/sigmob/sdk/base/common/d$b;


# direct methods
.method protected constructor <init>(Lcom/sigmob/sdk/base/common/k$a;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/mraid/d;-><init>(Lcom/sigmob/sdk/base/common/k$a;)V

    return-void
.end method

.method private b(Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;)Z
    .registers 4

    iget-object v0, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->creative_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/sigmob/sdk/base/common/j;->a:Lcom/sigmob/sdk/base/common/j;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/j;->a()I

    move-result v1

    if-ne v0, v1, :cond_28

    iget-object v0, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->endcard_md5:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->endcard_url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object p1, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->video_url:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_28

    const/4 p1, 0x1

    goto :goto_29

    :cond_28
    const/4 p1, 0x0

    :goto_29
    return p1
.end method

.method private c(Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;)Z
    .registers 4

    iget-object v0, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->creative_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/sigmob/sdk/base/common/j;->c:Lcom/sigmob/sdk/base/common/j;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/j;->a()I

    move-result v1

    if-eq v0, v1, :cond_1c

    iget-object v0, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->creative_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/sigmob/sdk/base/common/j;->e:Lcom/sigmob/sdk/base/common/j;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/j;->a()I

    move-result v1

    if-ne v0, v1, :cond_34

    :cond_1c
    iget-object v0, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->html_snippet:Lcom/sigmob/wire/okio/ByteString;

    if-eqz v0, :cond_34

    iget-object v0, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->html_snippet:Lcom/sigmob/wire/okio/ByteString;

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/ByteString;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_34

    iget-object p1, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->video_url:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_34

    const/4 p1, 0x1

    goto :goto_35

    :cond_34
    const/4 p1, 0x0

    :goto_35
    return p1
.end method

.method private d(Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;)Z
    .registers 4

    iget-object v0, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->creative_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/sigmob/sdk/base/common/j;->f:Lcom/sigmob/sdk/base/common/j;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/j;->a()I

    move-result v1

    if-ne v0, v1, :cond_20

    iget-object v0, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->html_url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object p1, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->video_url:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_20

    const/4 p1, 0x1

    goto :goto_21

    :cond_20
    const/4 p1, 0x0

    :goto_21
    return p1
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/sigmob/sdk/base/common/k$a;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/sigmob/sdk/mraid/d;->a(Landroid/content/Context;Lcom/sigmob/sdk/base/common/k$a;)V

    invoke-static {}, Lcom/sigmob/sdk/base/common/d;->e()Lcom/sigmob/sdk/base/common/d;

    move-result-object p1

    iget-object p2, p0, Lcom/sigmob/sdk/base/common/v;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1, p2, p0}, Lcom/sigmob/sdk/base/common/d;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/d$b;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sigmob/sdk/base/models/BaseAdUnit;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {p2}, Lcom/sigmob/sdk/base/common/d;->c(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-super {p0, p1, p2, p3}, Lcom/sigmob/sdk/mraid/d;->a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/util/Map;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/v;->b:Lcom/sigmob/sdk/base/common/k$a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/v;->b:Lcom/sigmob/sdk/base/common/k$a;

    invoke-interface {v0, p1}, Lcom/sigmob/sdk/base/common/k$a;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_9
    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/common/models/SigmobError;Ljava/lang/String;)V
    .registers 4

    iget-object p2, p0, Lcom/sigmob/sdk/base/common/v;->b:Lcom/sigmob/sdk/base/common/k$a;

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/sigmob/sdk/base/common/v;->b:Lcom/sigmob/sdk/base/common/k$a;

    invoke-interface {p2, p1, p3}, Lcom/sigmob/sdk/base/common/k$a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/d;->c(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-super {p0}, Lcom/sigmob/sdk/mraid/d;->b()V

    return-void
.end method

.method protected b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z
    .registers 7

    invoke-super {p0, p1}, Lcom/sigmob/sdk/mraid/d;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z

    move-result v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCreativeType()I

    move-result p1

    sget-object v2, Lcom/sigmob/sdk/base/common/j;->h:Lcom/sigmob/sdk/base/common/j;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/common/j;->a()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v2, :cond_1b

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/base/common/v;->a(Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;)Z

    move-result p1

    goto :goto_31

    :cond_1b
    invoke-direct {p0, v1}, Lcom/sigmob/sdk/base/common/v;->b(Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;)Z

    move-result p1

    if-nez p1, :cond_30

    invoke-direct {p0, v1}, Lcom/sigmob/sdk/base/common/v;->c(Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;)Z

    move-result p1

    if-nez p1, :cond_30

    invoke-direct {p0, v1}, Lcom/sigmob/sdk/base/common/v;->d(Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;)Z

    move-result p1

    if-eqz p1, :cond_2e

    goto :goto_30

    :cond_2e
    move p1, v3

    goto :goto_31

    :cond_30
    :goto_30
    move p1, v4

    :goto_31
    if-eqz v0, :cond_36

    if-eqz p1, :cond_36

    move v3, v4

    :cond_36
    return v3
.end method
