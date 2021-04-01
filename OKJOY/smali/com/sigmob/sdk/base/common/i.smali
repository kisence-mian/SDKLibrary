.class Lcom/sigmob/sdk/base/common/i;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/sigmob/volley/toolbox/d;",
        ">;>;"
    }
.end annotation


# instance fields
.field a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field final synthetic b:Lcom/sigmob/sdk/base/common/e;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/common/e;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 4

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/i;->b:Lcom/sigmob/sdk/base/common/e;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/i;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iput-object p2, p0, Lcom/sigmob/sdk/base/common/i;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sigmob/volley/toolbox/d;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v10, 0x1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/i;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/i;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    if-nez v0, :cond_14

    :cond_13
    :goto_13
    return-object v3

    :cond_14
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/i;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v5

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/i;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->isVideoExist()Z

    move-result v2

    if-eqz v2, :cond_1bc

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/i;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sigmob/sdk/base/common/utils/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/sigmob/sdk/base/common/i;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v6}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideo_OriginMD5()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_104

    iget-object v6, p0, Lcom/sigmob/sdk/base/common/i;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v6}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideo_OriginMD5()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_104

    iget-object v6, p0, Lcom/sigmob/sdk/base/common/i;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v6}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sigmob/sdk/base/common/utils/e;->b(Ljava/lang/String;)Z

    :goto_4f
    iget-object v5, v5, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->creative_type:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-object v6, Lcom/sigmob/sdk/base/common/q;->a:Lcom/sigmob/sdk/base/common/q;

    invoke-virtual {v6}, Lcom/sigmob/sdk/base/common/q;->a()I

    move-result v6

    if-ne v5, v6, :cond_166

    iget-object v5, p0, Lcom/sigmob/sdk/base/common/i;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v5}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->checkVideoValid()Z

    move-result v5

    iget-object v6, p0, Lcom/sigmob/sdk/base/common/i;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v6}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->checkEndCardZipValid()Z

    move-result v6

    new-instance v7, Lcom/sigmob/volley/toolbox/d;

    invoke-direct {v7}, Lcom/sigmob/volley/toolbox/d;-><init>()V

    new-instance v8, Lcom/sigmob/volley/toolbox/d;

    invoke-direct {v8}, Lcom/sigmob/volley/toolbox/d;-><init>()V

    iget-object v9, p0, Lcom/sigmob/sdk/base/common/i;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v9}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->isEndCardIndexExist()Z

    move-result v9

    if-eqz v9, :cond_7d

    if-nez v6, :cond_124

    :cond_7d
    iget-object v6, p0, Lcom/sigmob/sdk/base/common/i;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v6}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getEndcard_url()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Lcom/sigmob/volley/toolbox/d;->a:Ljava/lang/String;

    iget-object v6, p0, Lcom/sigmob/sdk/base/common/i;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v6}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getEndCardZipPath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Lcom/sigmob/volley/toolbox/d;->c:Ljava/lang/String;

    sget-object v6, Lcom/sigmob/volley/toolbox/e;->c:Lcom/sigmob/volley/toolbox/e;

    iput-object v6, v7, Lcom/sigmob/volley/toolbox/d;->b:Lcom/sigmob/volley/toolbox/e;

    iget-object v6, p0, Lcom/sigmob/sdk/base/common/i;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v6}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getEndCard_OriginMD5()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Lcom/sigmob/volley/toolbox/d;->d:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_9c
    if-eqz v5, :cond_145

    iget-object v5, p0, Lcom/sigmob/sdk/base/common/i;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v5}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideo_url()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v8, Lcom/sigmob/volley/toolbox/d;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/sigmob/sdk/base/common/i;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v5}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoPath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v8, Lcom/sigmob/volley/toolbox/d;->c:Ljava/lang/String;

    sget-object v5, Lcom/sigmob/volley/toolbox/e;->a:Lcom/sigmob/volley/toolbox/e;

    iput-object v5, v8, Lcom/sigmob/volley/toolbox/d;->b:Lcom/sigmob/volley/toolbox/e;

    iput-object v2, v8, Lcom/sigmob/volley/toolbox/d;->d:Ljava/lang/String;

    iput-wide v0, v8, Lcom/sigmob/volley/toolbox/d;->e:J

    iput v10, v8, Lcom/sigmob/volley/toolbox/d;->g:I

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/i;->b:Lcom/sigmob/sdk/base/common/e;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/i;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v0, v8, v1, v3, v10}, Lcom/sigmob/sdk/base/common/e;->a(Lcom/sigmob/sdk/base/common/e;Lcom/sigmob/volley/toolbox/d;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;I)V

    :goto_bf
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cache() adUnit = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/i;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCrid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] videoUrl = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/i;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideo_url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] endcardUrl = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/i;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getEndcard_url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    move-object v3, v4

    goto/16 :goto_13

    :cond_104
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/i;->b:Lcom/sigmob/sdk/base/common/e;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/e;->a(Lcom/sigmob/sdk/base/common/e;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/i;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/i;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    goto/16 :goto_4f

    :cond_124
    iget-object v6, p0, Lcom/sigmob/sdk/base/common/i;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v6}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getEndcard_url()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Lcom/sigmob/volley/toolbox/d;->a:Ljava/lang/String;

    iget-object v6, p0, Lcom/sigmob/sdk/base/common/i;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v6}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getEndCardZipPath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Lcom/sigmob/volley/toolbox/d;->c:Ljava/lang/String;

    sget-object v6, Lcom/sigmob/volley/toolbox/e;->c:Lcom/sigmob/volley/toolbox/e;

    iput-object v6, v7, Lcom/sigmob/volley/toolbox/d;->b:Lcom/sigmob/volley/toolbox/e;

    iget-object v6, p0, Lcom/sigmob/sdk/base/common/i;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v6}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getEndCard_OriginMD5()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Lcom/sigmob/volley/toolbox/d;->d:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9c

    :cond_145
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/i;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideo_url()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sigmob/volley/toolbox/d;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/i;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sigmob/volley/toolbox/d;->c:Ljava/lang/String;

    sget-object v0, Lcom/sigmob/volley/toolbox/e;->a:Lcom/sigmob/volley/toolbox/e;

    iput-object v0, v8, Lcom/sigmob/volley/toolbox/d;->b:Lcom/sigmob/volley/toolbox/e;

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/i;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideo_OriginMD5()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sigmob/volley/toolbox/d;->d:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_bf

    :cond_166
    iget-object v5, p0, Lcom/sigmob/sdk/base/common/i;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v5}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->isVideoExist()Z

    move-result v5

    if-eqz v5, :cond_196

    new-instance v5, Lcom/sigmob/volley/toolbox/d;

    invoke-direct {v5}, Lcom/sigmob/volley/toolbox/d;-><init>()V

    iget-object v6, p0, Lcom/sigmob/sdk/base/common/i;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v6}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideo_url()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/sigmob/volley/toolbox/d;->a:Ljava/lang/String;

    iget-object v6, p0, Lcom/sigmob/sdk/base/common/i;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v6}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoPath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/sigmob/volley/toolbox/d;->c:Ljava/lang/String;

    sget-object v6, Lcom/sigmob/volley/toolbox/e;->a:Lcom/sigmob/volley/toolbox/e;

    iput-object v6, v5, Lcom/sigmob/volley/toolbox/d;->b:Lcom/sigmob/volley/toolbox/e;

    iput-object v2, v5, Lcom/sigmob/volley/toolbox/d;->d:Ljava/lang/String;

    iput-wide v0, v5, Lcom/sigmob/volley/toolbox/d;->e:J

    iput v10, v5, Lcom/sigmob/volley/toolbox/d;->g:I

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/i;->b:Lcom/sigmob/sdk/base/common/e;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/i;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v0, v5, v1, v3, v10}, Lcom/sigmob/sdk/base/common/e;->a(Lcom/sigmob/sdk/base/common/e;Lcom/sigmob/volley/toolbox/d;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;I)V

    goto/16 :goto_bf

    :cond_196
    new-instance v0, Lcom/sigmob/volley/toolbox/d;

    invoke-direct {v0}, Lcom/sigmob/volley/toolbox/d;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/i;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideo_url()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/volley/toolbox/d;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/i;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/volley/toolbox/d;->c:Ljava/lang/String;

    sget-object v1, Lcom/sigmob/volley/toolbox/e;->a:Lcom/sigmob/volley/toolbox/e;

    iput-object v1, v0, Lcom/sigmob/volley/toolbox/d;->b:Lcom/sigmob/volley/toolbox/e;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/i;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideo_OriginMD5()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/volley/toolbox/d;->d:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_bf

    :cond_1bc
    move-object v2, v3

    goto/16 :goto_4f
.end method

.method protected a(Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sigmob/volley/toolbox/d;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/i;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-nez v0, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/i;->b:Lcom/sigmob/sdk/base/common/e;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/e;->c(Lcom/sigmob/sdk/base/common/e;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/i;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequest_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_10f

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/common/g;

    :goto_23
    if-eqz p1, :cond_2b

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_65

    :cond_2b
    iget-object v1, p0, Lcom/sigmob/sdk/base/common/i;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->isEndCardIndexExist()Z

    move-result v1

    if-eqz v1, :cond_59

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/i;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->isVideoExist()Z

    move-result v1

    if-eqz v1, :cond_59

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/i;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v1

    iget-object v1, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->play_mode:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_51

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/i;->b:Lcom/sigmob/sdk/base/common/e;

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/i;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v1, v2, v0}, Lcom/sigmob/sdk/base/common/e;->a(Lcom/sigmob/sdk/base/common/e;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/g;)V

    goto :goto_7

    :cond_51
    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/i;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/base/common/g;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    goto :goto_7

    :cond_59
    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/i;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    sget-object v2, Lcom/sigmob/sdk/base/models/SigmobError;->ERROR_SIGMOB_FILE_DOWNLOAD:Lcom/sigmob/sdk/base/models/SigmobError;

    const-string v3, "endCardIndexFile not exist"

    invoke-interface {v0, v1, v2, v3}, Lcom/sigmob/sdk/base/common/g;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/models/SigmobError;Ljava/lang/String;)V

    goto :goto_7

    :cond_65
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/i;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->play_mode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_106

    invoke-static {}, Lcom/sigmob/sdk/base/common/u;->b()Lcom/sigmob/volley/toolbox/i;

    move-result-object v0

    move-object v1, v0

    :goto_78
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/i;->b:Lcom/sigmob/sdk/base/common/e;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/e;->b(Lcom/sigmob/sdk/base/common/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_83
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequest_id()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/sigmob/sdk/base/common/i;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v4}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequest_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    const/4 v0, 0x1

    :goto_a0
    if-nez v0, :cond_ad

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/i;->b:Lcom/sigmob/sdk/base/common/e;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/e;->b(Lcom/sigmob/sdk/base/common/e;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/i;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ad
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b1
    :goto_b1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/volley/toolbox/d;

    iget-object v3, v0, Lcom/sigmob/volley/toolbox/d;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/sigmob/sdk/base/common/utils/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "downloader add  item "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/sigmob/volley/toolbox/d;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/sigmob/sdk/base/common/e;->j()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_f3

    invoke-static {}, Lcom/sigmob/sdk/base/common/e;->j()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {}, Lcom/sigmob/sdk/base/common/e;->i()Ljava/lang/Integer;

    move-result-object v5

    if-ne v4, v5, :cond_b1

    :cond_f3
    invoke-static {}, Lcom/sigmob/sdk/base/common/e;->j()Ljava/util/HashMap;

    move-result-object v4

    invoke-static {}, Lcom/sigmob/sdk/base/common/e;->l()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/i;->b:Lcom/sigmob/sdk/base/common/e;

    iget-object v3, v3, Lcom/sigmob/sdk/base/common/e;->a:Lcom/sigmob/volley/toolbox/h;

    invoke-virtual {v1, v0, v3}, Lcom/sigmob/volley/toolbox/i;->a(Lcom/sigmob/volley/toolbox/d;Lcom/sigmob/volley/toolbox/h;)Lcom/sigmob/volley/toolbox/j;

    goto :goto_b1

    :cond_106
    invoke-static {}, Lcom/sigmob/sdk/base/common/u;->a()Lcom/sigmob/volley/toolbox/i;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_78

    :cond_10d
    move v0, v2

    goto :goto_a0

    :cond_10f
    move-object v0, v1

    goto/16 :goto_23
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/common/i;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/common/i;->a(Ljava/util/ArrayList;)V

    return-void
.end method
