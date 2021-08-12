.class Lcom/kwad/sdk/core/g/d$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/g/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/g/d;->loadConfigFeedAd(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$FeedAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/api/KsLoadManager$FeedAdListener;

.field final synthetic b:Lcom/kwad/sdk/api/KsScene;

.field final synthetic c:Lcom/kwad/sdk/core/g/d;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/g/d;Lcom/kwad/sdk/api/KsLoadManager$FeedAdListener;Lcom/kwad/sdk/api/KsScene;)V
    .registers 4

    iput-object p1, p0, Lcom/kwad/sdk/core/g/d$5;->c:Lcom/kwad/sdk/core/g/d;

    iput-object p2, p0, Lcom/kwad/sdk/core/g/d$5;->a:Lcom/kwad/sdk/api/KsLoadManager$FeedAdListener;

    iput-object p3, p0, Lcom/kwad/sdk/core/g/d$5;->b:Lcom/kwad/sdk/api/KsScene;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/kwad/sdk/core/g/d;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kwad/sdk/core/g/d$5$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/kwad/sdk/core/g/d$5$1;-><init>(Lcom/kwad/sdk/core/g/d$5;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Lcom/kwad/sdk/core/response/model/AdResultData;)V
    .registers 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p1, p1, Lcom/kwad/sdk/core/response/model/AdResultData;->adTemplateList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kwad/sdk/core/response/model/AdTemplate;

    if-nez v2, :cond_1b

    goto :goto_c

    :cond_1b
    invoke-static {v2}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v3

    invoke-static {v2}, Lcom/kwad/sdk/feed/FeedType;->checkTypeValid(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_43

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v3}, Lcom/kwad/sdk/core/response/b/a;->E(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    iget v2, v2, Lcom/kwad/sdk/core/response/model/AdTemplate;->type:I

    invoke-static {v2}, Lcom/kwad/sdk/feed/FeedType;->fromInt(I)Lcom/kwad/sdk/feed/FeedType;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "(\u6a21\u677f\u4e0d\u5339\u914dmaterialType:%s_feedType:%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_43
    new-instance v3, Lcom/kwad/sdk/feed/b;

    iget-object v4, p0, Lcom/kwad/sdk/core/g/d$5;->b:Lcom/kwad/sdk/api/KsScene;

    invoke-interface {v4}, Lcom/kwad/sdk/api/KsScene;->getWidth()I

    move-result v4

    invoke-direct {v3, v2, v4, v5}, Lcom/kwad/sdk/feed/b;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;IZ)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_52
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_75

    sget-object p1, Lcom/kwad/sdk/core/network/f;->c:Lcom/kwad/sdk/core/network/f;

    iget p1, p1, Lcom/kwad/sdk/core/network/f;->k:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/kwad/sdk/core/network/f;->c:Lcom/kwad/sdk/core/network/f;

    iget-object v2, v2, Lcom/kwad/sdk/core/network/f;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/kwad/sdk/core/g/d$5;->a(ILjava/lang/String;)V

    goto :goto_81

    :cond_75
    invoke-static {}, Lcom/kwad/sdk/core/g/d;->a()Landroid/os/Handler;

    move-result-object p1

    new-instance v1, Lcom/kwad/sdk/core/g/d$5$2;

    invoke-direct {v1, p0, v0}, Lcom/kwad/sdk/core/g/d$5$2;-><init>(Lcom/kwad/sdk/core/g/d$5;Ljava/util/List;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_81
    return-void
.end method
