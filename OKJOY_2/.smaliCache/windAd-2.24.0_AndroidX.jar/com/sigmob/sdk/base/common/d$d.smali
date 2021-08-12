.class Lcom/sigmob/sdk/base/common/d$d;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/base/common/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList<",
        "Lcom/sigmob/volley/toolbox/d;",
        ">;>;"
    }
.end annotation


# instance fields
.field a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field final synthetic b:Lcom/sigmob/sdk/base/common/d;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/common/d;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/d$d;->b:Lcom/sigmob/sdk/base/common/d;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/d$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iput-object p2, p0, Lcom/sigmob/sdk/base/common/d$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Ljava/util/ArrayList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/sigmob/volley/toolbox/d;",
            ">;"
        }
    .end annotation

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/d$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const/4 v1, 0x0

    if-eqz v0, :cond_18e

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    if-nez v0, :cond_12

    goto/16 :goto_18e

    :cond_12
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/d$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/sigmob/sdk/base/common/d$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v4}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->isVideoExist()Z

    move-result v4

    if-eqz v4, :cond_6d

    iget-object v4, p0, Lcom/sigmob/sdk/base/common/d$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v4}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sigmob/sdk/common/f/k;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sigmob/sdk/base/common/d$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v5}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideo_OriginMD5()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4e

    iget-object v5, p0, Lcom/sigmob/sdk/base/common/d$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v5}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideo_OriginMD5()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4e

    iget-object v5, p0, Lcom/sigmob/sdk/base/common/d$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v5}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sigmob/sdk/common/f/e;->b(Ljava/lang/String;)Z

    goto :goto_6e

    :cond_4e
    iget-object v2, p0, Lcom/sigmob/sdk/base/common/d$d;->b:Lcom/sigmob/sdk/base/common/d;

    invoke-static {v2}, Lcom/sigmob/sdk/base/common/d;->a(Lcom/sigmob/sdk/base/common/d;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/d$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/d$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    goto :goto_6e

    :cond_6d
    move-object v4, v1

    :goto_6e
    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->creative_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v5, Lcom/sigmob/sdk/base/common/j;->a:Lcom/sigmob/sdk/base/common/j;

    invoke-virtual {v5}, Lcom/sigmob/sdk/base/common/j;->a()I

    move-result v5

    const/4 v6, 0x1

    if-ne v0, v5, :cond_fa

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/d$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->checkVideoValid()Z

    move-result v0

    iget-object v5, p0, Lcom/sigmob/sdk/base/common/d$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v5}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->checkEndCardZipValid()Z

    move-result v5

    new-instance v7, Lcom/sigmob/volley/toolbox/d;

    invoke-direct {v7}, Lcom/sigmob/volley/toolbox/d;-><init>()V

    new-instance v8, Lcom/sigmob/volley/toolbox/d;

    invoke-direct {v8}, Lcom/sigmob/volley/toolbox/d;-><init>()V

    iget-object v9, p0, Lcom/sigmob/sdk/base/common/d$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v9}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->isEndCardIndexExist()Z

    move-result v9

    iget-object v5, p0, Lcom/sigmob/sdk/base/common/d$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v5}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getEndcard_url()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v7, Lcom/sigmob/volley/toolbox/d;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/sigmob/sdk/base/common/d$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v5}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getEndCardZipPath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v7, Lcom/sigmob/volley/toolbox/d;->c:Ljava/lang/String;

    sget-object v5, Lcom/sigmob/volley/toolbox/d$a;->c:Lcom/sigmob/volley/toolbox/d$a;

    iput-object v5, v7, Lcom/sigmob/volley/toolbox/d;->b:Lcom/sigmob/volley/toolbox/d$a;

    iget-object v5, p0, Lcom/sigmob/sdk/base/common/d$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v5}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getEndCard_OriginMD5()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v7, Lcom/sigmob/volley/toolbox/d;->d:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_da

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/d$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideo_url()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sigmob/volley/toolbox/d;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/d$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sigmob/volley/toolbox/d;->c:Ljava/lang/String;

    sget-object v0, Lcom/sigmob/volley/toolbox/d$a;->a:Lcom/sigmob/volley/toolbox/d$a;

    iput-object v0, v8, Lcom/sigmob/volley/toolbox/d;->b:Lcom/sigmob/volley/toolbox/d$a;

    iput-object v4, v8, Lcom/sigmob/volley/toolbox/d;->d:Ljava/lang/String;

    iput-wide v2, v8, Lcom/sigmob/volley/toolbox/d;->e:J

    iput v6, v8, Lcom/sigmob/volley/toolbox/d;->g:I

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/d$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v8, v0, v1, v6}, Lcom/sigmob/sdk/base/common/s;->a(Lcom/sigmob/volley/toolbox/d;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Z)V

    goto :goto_14b

    :cond_da
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/d$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideo_url()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sigmob/volley/toolbox/d;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/d$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sigmob/volley/toolbox/d;->c:Ljava/lang/String;

    sget-object v0, Lcom/sigmob/volley/toolbox/d$a;->a:Lcom/sigmob/volley/toolbox/d$a;

    iput-object v0, v8, Lcom/sigmob/volley/toolbox/d;->b:Lcom/sigmob/volley/toolbox/d$a;

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/d$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideo_OriginMD5()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sigmob/volley/toolbox/d;->d:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14b

    :cond_fa
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/d$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->isVideoExist()Z

    move-result v0

    if-eqz v0, :cond_127

    new-instance v0, Lcom/sigmob/volley/toolbox/d;

    invoke-direct {v0}, Lcom/sigmob/volley/toolbox/d;-><init>()V

    iget-object v5, p0, Lcom/sigmob/sdk/base/common/d$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v5}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideo_url()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/sigmob/volley/toolbox/d;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/sigmob/sdk/base/common/d$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v5}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoPath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/sigmob/volley/toolbox/d;->c:Ljava/lang/String;

    sget-object v5, Lcom/sigmob/volley/toolbox/d$a;->a:Lcom/sigmob/volley/toolbox/d$a;

    iput-object v5, v0, Lcom/sigmob/volley/toolbox/d;->b:Lcom/sigmob/volley/toolbox/d$a;

    iput-object v4, v0, Lcom/sigmob/volley/toolbox/d;->d:Ljava/lang/String;

    iput-wide v2, v0, Lcom/sigmob/volley/toolbox/d;->e:J

    iput v6, v0, Lcom/sigmob/volley/toolbox/d;->g:I

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/d$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v0, v2, v1, v6}, Lcom/sigmob/sdk/base/common/s;->a(Lcom/sigmob/volley/toolbox/d;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Z)V

    goto :goto_14b

    :cond_127
    new-instance v0, Lcom/sigmob/volley/toolbox/d;

    invoke-direct {v0}, Lcom/sigmob/volley/toolbox/d;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/d$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideo_url()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/volley/toolbox/d;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/d$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/volley/toolbox/d;->c:Ljava/lang/String;

    sget-object v1, Lcom/sigmob/volley/toolbox/d$a;->a:Lcom/sigmob/volley/toolbox/d$a;

    iput-object v1, v0, Lcom/sigmob/volley/toolbox/d;->b:Lcom/sigmob/volley/toolbox/d$a;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/d$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideo_OriginMD5()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/volley/toolbox/d;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_14b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cache() adUnit = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/d$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCrid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] videoUrl = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/d$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideo_url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] endcardUrl = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/d$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getEndcard_url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    return-object p1

    :cond_18e
    :goto_18e
    return-object v1
.end method

.method protected a(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sigmob/volley/toolbox/d;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/d$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-nez v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/d$d;->b:Lcom/sigmob/sdk/base/common/d;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/d;->c(Lcom/sigmob/sdk/base/common/d;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/d$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequest_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/sigmob/sdk/base/common/d$b;

    :cond_24
    if-eqz p1, :cond_cd

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2e

    goto/16 :goto_cd

    :cond_2e
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/d$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getPlayMode()I

    move-result v0

    if-eqz v0, :cond_3b

    invoke-static {}, Lcom/sigmob/sdk/base/common/n;->b()Lcom/sigmob/volley/toolbox/g;

    move-result-object v0

    goto :goto_3f

    :cond_3b
    invoke-static {}, Lcom/sigmob/sdk/base/common/n;->a()Lcom/sigmob/volley/toolbox/g;

    move-result-object v0

    :goto_3f
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/d$d;->b:Lcom/sigmob/sdk/base/common/d;

    invoke-static {v2}, Lcom/sigmob/sdk/base/common/d;->b(Lcom/sigmob/sdk/base/common/d;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_67

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequest_id()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sigmob/sdk/base/common/d$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v4}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequest_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    const/4 v1, 0x1

    :cond_67
    if-nez v1, :cond_74

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/d$d;->b:Lcom/sigmob/sdk/base/common/d;

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/d;->b(Lcom/sigmob/sdk/base/common/d;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/d$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_74
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_78
    :goto_78
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_100

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/volley/toolbox/d;

    iget-object v2, v1, Lcom/sigmob/volley/toolbox/d;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/sigmob/sdk/common/f/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downloader add  item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/sigmob/volley/toolbox/d;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/sigmob/sdk/base/common/d;->i()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_ba

    invoke-static {}, Lcom/sigmob/sdk/base/common/d;->i()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {}, Lcom/sigmob/sdk/base/common/d;->h()Ljava/lang/Integer;

    move-result-object v4

    if-ne v3, v4, :cond_78

    :cond_ba
    invoke-static {}, Lcom/sigmob/sdk/base/common/d;->i()Ljava/util/HashMap;

    move-result-object v3

    invoke-static {}, Lcom/sigmob/sdk/base/common/d;->k()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/d$d;->b:Lcom/sigmob/sdk/base/common/d;

    iget-object v2, v2, Lcom/sigmob/sdk/base/common/d;->a:Lcom/sigmob/volley/toolbox/f$a;

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/volley/toolbox/g;->a(Lcom/sigmob/volley/toolbox/d;Lcom/sigmob/volley/toolbox/f$a;)Lcom/sigmob/volley/toolbox/g$a;

    goto :goto_78

    :cond_cd
    :goto_cd
    iget-object p1, p0, Lcom/sigmob/sdk/base/common/d$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->isEndCardIndexExist()Z

    move-result p1

    if-eqz p1, :cond_f5

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/d$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->isVideoExist()Z

    move-result p1

    if-eqz p1, :cond_f5

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/d$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getPlayMode()I

    move-result p1

    if-nez p1, :cond_ed

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/d$d;->b:Lcom/sigmob/sdk/base/common/d;

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/d$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {p1, v0, v1}, Lcom/sigmob/sdk/base/common/d;->a(Lcom/sigmob/sdk/base/common/d;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/d$b;)V

    goto :goto_100

    :cond_ed
    if-eqz v1, :cond_100

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/d$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-interface {v1, p1}, Lcom/sigmob/sdk/base/common/d$b;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    goto :goto_100

    :cond_f5
    if-eqz v1, :cond_100

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/d$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    sget-object v0, Lcom/sigmob/sdk/common/models/SigmobError;->ERROR_SIGMOB_FILE_DOWNLOAD:Lcom/sigmob/sdk/common/models/SigmobError;

    const-string v2, "endCardIndexFile not exist"

    invoke-interface {v1, p1, v0, v2}, Lcom/sigmob/sdk/base/common/d$b;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/common/models/SigmobError;Ljava/lang/String;)V

    :cond_100
    :goto_100
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/common/d$d;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/common/d$d;->a(Ljava/util/ArrayList;)V

    return-void
.end method
