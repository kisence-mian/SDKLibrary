.class Lcom/sigmob/sdk/a/d;
.super Lcom/sigmob/sdk/base/common/r;


# instance fields
.field e:Ljava/io/File;

.field private f:Lcom/sigmob/volley/toolbox/g$a;


# direct methods
.method protected constructor <init>(Lcom/sigmob/sdk/base/common/k$a;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/common/r;-><init>(Lcom/sigmob/sdk/base/common/k$a;)V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/a/d;)Lcom/sigmob/sdk/base/common/k$a;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/a/d;->b:Lcom/sigmob/sdk/base/common/k$a;

    return-object p0
.end method

.method static synthetic b(Lcom/sigmob/sdk/a/d;)Lcom/sigmob/sdk/base/models/BaseAdUnit;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/a/d;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-object p0
.end method

.method static synthetic c(Lcom/sigmob/sdk/a/d;)Lcom/sigmob/sdk/base/common/k$a;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/a/d;->b:Lcom/sigmob/sdk/base/common/k$a;

    return-object p0
.end method

.method static synthetic d(Lcom/sigmob/sdk/a/d;)Lcom/sigmob/sdk/base/common/k$a;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/a/d;->b:Lcom/sigmob/sdk/base/common/k$a;

    return-object p0
.end method

.method static synthetic e(Lcom/sigmob/sdk/a/d;)Lcom/sigmob/sdk/base/models/BaseAdUnit;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/a/d;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-object p0
.end method

.method static synthetic f(Lcom/sigmob/sdk/a/d;)Lcom/sigmob/sdk/base/common/k$a;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/a/d;->b:Lcom/sigmob/sdk/base/common/k$a;

    return-object p0
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/sigmob/sdk/base/common/k$a;)V
    .registers 6

    iput-object p2, p0, Lcom/sigmob/sdk/a/d;->b:Lcom/sigmob/sdk/base/common/k$a;

    iget-object p1, p0, Lcom/sigmob/sdk/a/d;->b:Lcom/sigmob/sdk/base/common/k$a;

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/sigmob/sdk/a/d;->b:Lcom/sigmob/sdk/base/common/k$a;

    iget-object p2, p0, Lcom/sigmob/sdk/a/d;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-interface {p1, p2}, Lcom/sigmob/sdk/base/common/k$a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_d
    iget-object p1, p0, Lcom/sigmob/sdk/a/d;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-eqz p1, :cond_5e

    iget-object p1, p0, Lcom/sigmob/sdk/a/d;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object p1

    invoke-static {}, Lcom/sigmob/sdk/base/common/n;->c()Lcom/sigmob/volley/toolbox/g;

    move-result-object p2

    if-eqz p2, :cond_5e

    iget-object v0, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->image_src:Ljava/lang/String;

    invoke-static {v0}, Lcom/sigmob/sdk/common/f/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/sigmob/volley/toolbox/d;

    invoke-direct {v1}, Lcom/sigmob/volley/toolbox/d;-><init>()V

    iget-object p1, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->image_src:Ljava/lang/String;

    iput-object p1, v1, Lcom/sigmob/volley/toolbox/d;->a:Ljava/lang/String;

    sget-object p1, Lcom/sigmob/volley/toolbox/d$a;->b:Lcom/sigmob/volley/toolbox/d$a;

    iput-object p1, v1, Lcom/sigmob/volley/toolbox/d;->b:Lcom/sigmob/volley/toolbox/d$a;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sigmob/sdk/common/f/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ".temp"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/sigmob/volley/toolbox/d;->c:Ljava/lang/String;

    new-instance p1, Lcom/sigmob/sdk/a/d$1;

    invoke-direct {p1, p0, v0}, Lcom/sigmob/sdk/a/d$1;-><init>(Lcom/sigmob/sdk/a/d;Ljava/lang/String;)V

    invoke-virtual {p2, v1, p1}, Lcom/sigmob/volley/toolbox/g;->a(Lcom/sigmob/volley/toolbox/d;Lcom/sigmob/volley/toolbox/f$a;)Lcom/sigmob/volley/toolbox/g$a;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/a/d;->f:Lcom/sigmob/volley/toolbox/g$a;

    :cond_5e
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/util/Map;)V
    .registers 6
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

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/sigmob/sdk/a/d;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    :cond_4
    invoke-super {p0, p1, p2, p3}, Lcom/sigmob/sdk/base/common/r;->a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/util/Map;)V

    const-class p3, Lcom/sigmob/sdk/base/common/AdActivity;

    iget-wide v0, p0, Lcom/sigmob/sdk/a/d;->a:J

    invoke-static {p1, p3, p2, v0, v1}, Lcom/sigmob/sdk/base/common/AdActivity;->a(Landroid/content/Context;Ljava/lang/Class;Lcom/sigmob/sdk/base/models/BaseAdUnit;J)V

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

.method public b()V
    .registers 2

    invoke-super {p0}, Lcom/sigmob/sdk/base/common/r;->b()V

    iget-object v0, p0, Lcom/sigmob/sdk/a/d;->f:Lcom/sigmob/volley/toolbox/g$a;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/sigmob/volley/toolbox/g$a;->g()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/a/d;->f:Lcom/sigmob/volley/toolbox/g$a;

    :cond_d
    return-void
.end method

.method protected b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z
    .registers 4

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCrid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_21

    iget-object p1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->image_src:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p1, 0x1

    return p1

    :cond_21
    :goto_21
    return v1
.end method

.method public c()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/a/d;->e:Ljava/io/File;

    return-object v0
.end method
