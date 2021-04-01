.class Lcom/sigmob/sdk/a/d;
.super Lcom/sigmob/sdk/base/common/z;


# instance fields
.field e:Ljava/io/File;

.field private f:Lcom/sigmob/volley/toolbox/j;


# direct methods
.method protected constructor <init>(Lcom/sigmob/sdk/base/common/s;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/common/z;-><init>(Lcom/sigmob/sdk/base/common/s;)V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/a/d;)Lcom/sigmob/sdk/base/common/s;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/a/d;->b:Lcom/sigmob/sdk/base/common/s;

    return-object v0
.end method

.method static synthetic b(Lcom/sigmob/sdk/a/d;)Lcom/sigmob/sdk/base/models/BaseAdUnit;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/a/d;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-object v0
.end method

.method static synthetic c(Lcom/sigmob/sdk/a/d;)Lcom/sigmob/sdk/base/common/s;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/a/d;->b:Lcom/sigmob/sdk/base/common/s;

    return-object v0
.end method

.method static synthetic d(Lcom/sigmob/sdk/a/d;)Lcom/sigmob/sdk/base/common/s;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/a/d;->b:Lcom/sigmob/sdk/base/common/s;

    return-object v0
.end method

.method static synthetic e(Lcom/sigmob/sdk/a/d;)Lcom/sigmob/sdk/base/models/BaseAdUnit;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/a/d;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-object v0
.end method

.method static synthetic f(Lcom/sigmob/sdk/a/d;)Lcom/sigmob/sdk/base/common/s;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/a/d;->b:Lcom/sigmob/sdk/base/common/s;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/sigmob/sdk/base/common/s;)V
    .registers 8

    iput-object p2, p0, Lcom/sigmob/sdk/a/d;->b:Lcom/sigmob/sdk/base/common/s;

    iget-object v0, p0, Lcom/sigmob/sdk/a/d;->b:Lcom/sigmob/sdk/base/common/s;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sigmob/sdk/a/d;->b:Lcom/sigmob/sdk/base/common/s;

    iget-object v1, p0, Lcom/sigmob/sdk/a/d;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/base/common/s;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_d
    iget-object v0, p0, Lcom/sigmob/sdk/a/d;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/sigmob/sdk/a/d;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    invoke-static {}, Lcom/sigmob/sdk/base/common/u;->c()Lcom/sigmob/volley/toolbox/i;

    move-result-object v1

    if-eqz v1, :cond_5e

    iget-object v2, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->image_src:Ljava/lang/String;

    invoke-static {v2}, Lcom/sigmob/sdk/base/common/utils/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sigmob/volley/toolbox/d;

    invoke-direct {v3}, Lcom/sigmob/volley/toolbox/d;-><init>()V

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->image_src:Ljava/lang/String;

    iput-object v0, v3, Lcom/sigmob/volley/toolbox/d;->a:Ljava/lang/String;

    sget-object v0, Lcom/sigmob/volley/toolbox/e;->b:Lcom/sigmob/volley/toolbox/e;

    iput-object v0, v3, Lcom/sigmob/volley/toolbox/d;->b:Lcom/sigmob/volley/toolbox/e;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/e;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ".temp"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/sigmob/volley/toolbox/d;->c:Ljava/lang/String;

    new-instance v0, Lcom/sigmob/sdk/a/d$1;

    invoke-direct {v0, p0, v2}, Lcom/sigmob/sdk/a/d$1;-><init>(Lcom/sigmob/sdk/a/d;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v0}, Lcom/sigmob/volley/toolbox/i;->a(Lcom/sigmob/volley/toolbox/d;Lcom/sigmob/volley/toolbox/h;)Lcom/sigmob/volley/toolbox/j;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/a/d;->f:Lcom/sigmob/volley/toolbox/j;

    :cond_5e
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/util/Map;)V
    .registers 8
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

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/sigmob/sdk/a/d;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    :cond_4
    invoke-super {p0, p1, p2, p3}, Lcom/sigmob/sdk/base/common/z;->a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/util/Map;)V

    const-class v0, Lcom/sigmob/sdk/base/common/AdActivity;

    iget-wide v2, p0, Lcom/sigmob/sdk/a/d;->a:J

    invoke-static {p1, v0, p2, v2, v3}, Lcom/sigmob/sdk/base/common/AdActivity;->a(Landroid/content/Context;Ljava/lang/Class;Lcom/sigmob/sdk/base/models/BaseAdUnit;J)V

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

.method public b()V
    .registers 2

    invoke-super {p0}, Lcom/sigmob/sdk/base/common/z;->b()V

    iget-object v0, p0, Lcom/sigmob/sdk/a/d;->f:Lcom/sigmob/volley/toolbox/j;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/sigmob/sdk/a/d;->f:Lcom/sigmob/volley/toolbox/j;

    invoke-virtual {v0}, Lcom/sigmob/volley/toolbox/j;->j()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/a/d;->f:Lcom/sigmob/volley/toolbox/j;

    :cond_f
    return-void
.end method

.method protected b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v1

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCrid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v1, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->image_src:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method

.method public c()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/a/d;->e:Ljava/io/File;

    return-object v0
.end method
