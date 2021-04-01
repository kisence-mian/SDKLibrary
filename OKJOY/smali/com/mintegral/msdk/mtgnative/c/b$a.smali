.class public final Lcom/mintegral/msdk/mtgnative/c/b$a;
.super Lcom/mintegral/msdk/mtgnative/f/a/b;
.source "NativeController.java"

# interfaces
.implements Lcom/mintegral/msdk/base/common/f/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/mtgnative/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/mtgnative/c/b;

.field private b:Z

.field private c:Ljava/lang/Runnable;

.field private e:Z

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/mtgnative/c/b;)V
    .registers 3

    .prologue
    .line 1961
    iput-object p1, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-direct {p0}, Lcom/mintegral/msdk/mtgnative/f/a/b;-><init>()V

    .line 1962
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->b:Z

    .line 1965
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->e:Z

    .line 1967
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .registers 6

    .prologue
    .line 2170
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/b;->k(Lcom/mintegral/msdk/mtgnative/c/b;)Z

    .line 2171
    iget-boolean v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->b:Z

    if-nez v0, :cond_56

    .line 2172
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1d

    .line 2173
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/b;->r(Lcom/mintegral/msdk/mtgnative/c/b;)I

    move-result v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mintegral/msdk/mtgnative/c/c;->b(ILjava/lang/String;)V

    .line 2174
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mintegral/msdk/mtgnative/c/b;->b(Lcom/mintegral/msdk/mtgnative/c/b;I)I

    .line 2176
    :cond_1d
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_35

    .line 2177
    invoke-static {}, Lcom/mintegral/msdk/mtgnative/c/b;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "REMOVE CANCEL TASK ON onFailed"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2178
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/b;->m(Lcom/mintegral/msdk/mtgnative/c/b;)Lcom/mintegral/msdk/mtgnative/c/b$e;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgnative/c/b$e;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2180
    :cond_35
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/b;->f(Lcom/mintegral/msdk/mtgnative/c/b;)Z

    move-result v0

    if-nez v0, :cond_55

    invoke-virtual {p0}, Lcom/mintegral/msdk/mtgnative/c/b$a;->i()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_48

    iget-boolean v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->e:Z

    if-eqz v0, :cond_55

    .line 2181
    :cond_48
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-virtual {p0}, Lcom/mintegral/msdk/mtgnative/c/b$a;->i()I

    move-result v1

    invoke-virtual {p0}, Lcom/mintegral/msdk/mtgnative/c/b$a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2}, Lcom/mintegral/msdk/mtgnative/c/b;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 2189
    :cond_55
    :goto_55
    return-void

    .line 2184
    :cond_56
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/b;->f(Lcom/mintegral/msdk/mtgnative/c/b;)Z

    move-result v0

    if-nez v0, :cond_55

    iget-boolean v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->e:Z

    if-eqz v0, :cond_55

    .line 2185
    invoke-static {}, Lcom/mintegral/msdk/mtgnative/c/b;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onFailed onnative fail"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2186
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-virtual {p0}, Lcom/mintegral/msdk/mtgnative/c/b$a;->i()I

    move-result v1

    invoke-virtual {p0}, Lcom/mintegral/msdk/mtgnative/c/b$a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2}, Lcom/mintegral/msdk/mtgnative/c/b;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_55
.end method

.method public final a(Lcom/mintegral/msdk/base/entity/CampaignUnit;)V
    .registers 16

    .prologue
    const/4 v13, 0x0

    const/16 v12, 0x63

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 1995
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/b;->k(Lcom/mintegral/msdk/mtgnative/c/b;)Z

    .line 1997
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/b;->j(Lcom/mintegral/msdk/mtgnative/c/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/m;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/m;

    move-result-object v5

    .line 1998
    invoke-virtual {v5}, Lcom/mintegral/msdk/base/b/m;->d()V

    .line 2000
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_33

    .line 2001
    invoke-static {}, Lcom/mintegral/msdk/mtgnative/c/b;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "REMOVE CANCEL TASK ON SUCCESS"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2002
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/b;->m(Lcom/mintegral/msdk/mtgnative/c/b;)Lcom/mintegral/msdk/mtgnative/c/b$e;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgnative/c/b$e;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2004
    :cond_33
    invoke-static {}, Lcom/mintegral/msdk/mtgnative/c/b;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSuccess"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2006
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/k;->a(Ljava/util/List;)V

    .line 2007
    if-eqz p1, :cond_2ce

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2ce

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2ce

    .line 2009
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/mtgnative/c/b;->a(Lcom/mintegral/msdk/mtgnative/c/b;Ljava/lang/String;)Ljava/lang/String;

    .line 2010
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2011
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2012
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2013
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/b;->n(Lcom/mintegral/msdk/mtgnative/c/b;)I

    move-result v0

    if-gtz v0, :cond_bf

    .line 2014
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/b;->n(Lcom/mintegral/msdk/mtgnative/c/b;)I

    move-result v0

    const/4 v1, -0x3

    if-ne v0, v1, :cond_19d

    .line 2015
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/mtgnative/c/b;->a(Lcom/mintegral/msdk/mtgnative/c/b;I)I

    .line 2019
    :goto_8b
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/b;->o(Lcom/mintegral/msdk/mtgnative/c/b;)I

    move-result v0

    if-eqz v0, :cond_a5

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getTemplate()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a5

    .line 2020
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v1}, Lcom/mintegral/msdk/mtgnative/c/b;->o(Lcom/mintegral/msdk/mtgnative/c/b;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/mtgnative/c/b;->a(Lcom/mintegral/msdk/mtgnative/c/b;I)I

    .line 2023
    :cond_a5
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/b;->p(Lcom/mintegral/msdk/mtgnative/c/b;)I

    move-result v0

    if-eqz v0, :cond_bf

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getTemplate()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_bf

    .line 2024
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v1}, Lcom/mintegral/msdk/mtgnative/c/b;->p(Lcom/mintegral/msdk/mtgnative/c/b;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/mtgnative/c/b;->a(Lcom/mintegral/msdk/mtgnative/c/b;I)I

    :cond_bf
    move v1, v2

    move v3, v2

    .line 2029
    :goto_c1
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1d7

    .line 2030
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 2031
    iget-object v9, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v9}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setCampaignUnitId(Ljava/lang/String;)V

    .line 2032
    iget-object v9, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v9}, Lcom/mintegral/msdk/mtgnative/c/b;->e(Lcom/mintegral/msdk/mtgnative/c/b;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_f2

    .line 2033
    iget-object v9, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v9}, Lcom/mintegral/msdk/mtgnative/c/b;->e(Lcom/mintegral/msdk/mtgnative/c/b;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setBidToken(Ljava/lang/String;)V

    .line 2034
    invoke-virtual {v0, v4}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setIsBidCampaign(Z)V

    .line 2036
    :cond_f2
    invoke-static {}, Lcom/mintegral/msdk/mtgnative/c/b;->d()Z

    move-result v9

    if-eqz v9, :cond_fe

    .line 2037
    invoke-virtual {v0, v13}, Lcom/mintegral/msdk/base/entity/CampaignEx;->loadIconUrlAsyncWithBlock(Lcom/mintegral/msdk/out/OnImageLoadListener;)V

    .line 2038
    invoke-virtual {v0, v13}, Lcom/mintegral/msdk/base/entity/CampaignEx;->loadImageUrlAsyncWithBlock(Lcom/mintegral/msdk/out/OnImageLoadListener;)V

    .line 2041
    :cond_fe
    if-eqz v0, :cond_198

    .line 2042
    iget-object v9, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v9}, Lcom/mintegral/msdk/mtgnative/c/b;->j(Lcom/mintegral/msdk/mtgnative/c/b;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mintegral/msdk/base/utils/k;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    .line 2043
    if-eqz v9, :cond_12b

    .line 2044
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->c()Ljava/util/Set;

    move-result-object v10

    if-eqz v10, :cond_12b

    .line 2045
    new-instance v3, Lcom/mintegral/msdk/base/entity/h;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v10, v11}, Lcom/mintegral/msdk/base/entity/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2046
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->c()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v3, v4

    .line 2064
    :cond_12b
    iget-object v10, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v10}, Lcom/mintegral/msdk/mtgnative/c/b;->d(Lcom/mintegral/msdk/mtgnative/c/b;)I

    move-result v10

    if-ge v1, v10, :cond_151

    .line 2065
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getOfferType()I

    move-result v10

    if-eq v10, v12, :cond_151

    .line 2066
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getWtick()I

    move-result v10

    if-eq v10, v4, :cond_141

    if-nez v9, :cond_1aa

    .line 2067
    :cond_141
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2068
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_151

    .line 2069
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2084
    :cond_151
    :goto_151
    iget-object v10, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v10}, Lcom/mintegral/msdk/mtgnative/c/b;->n(Lcom/mintegral/msdk/mtgnative/c/b;)I

    move-result v10

    if-ge v1, v10, :cond_164

    .line 2085
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getOfferType()I

    move-result v10

    if-eq v10, v12, :cond_164

    .line 2086
    if-nez v9, :cond_1c7

    .line 2087
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2101
    :cond_164
    :goto_164
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/mintegral/msdk/base/b/m;->a(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_198

    .line 2103
    new-instance v9, Lcom/mintegral/msdk/base/entity/g;

    invoke-direct {v9}, Lcom/mintegral/msdk/base/entity/g;-><init>()V

    .line 2104
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/mintegral/msdk/base/entity/g;->a(Ljava/lang/String;)V

    .line 2105
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getFca()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/mintegral/msdk/base/entity/g;->a(I)V

    .line 2106
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getFcb()I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/mintegral/msdk/base/entity/g;->b(I)V

    .line 2107
    invoke-virtual {v9}, Lcom/mintegral/msdk/base/entity/g;->g()V

    .line 2108
    invoke-virtual {v9}, Lcom/mintegral/msdk/base/entity/g;->e()V

    .line 2109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/mintegral/msdk/base/entity/g;->a(J)V

    .line 2110
    invoke-virtual {v5, v9}, Lcom/mintegral/msdk/base/b/m;->a(Lcom/mintegral/msdk/base/entity/g;)V

    .line 2029
    :cond_198
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_c1

    .line 2017
    :cond_19d
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v1}, Lcom/mintegral/msdk/mtgnative/c/b;->d(Lcom/mintegral/msdk/mtgnative/c/b;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/mtgnative/c/b;->a(Lcom/mintegral/msdk/mtgnative/c/b;I)I

    goto/16 :goto_8b

    .line 2073
    :cond_1aa
    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/k;->b(Lcom/mintegral/msdk/base/entity/CampaignEx;)Z

    move-result v10

    if-nez v10, :cond_1b6

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/k;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;)Z

    move-result v10

    if-eqz v10, :cond_151

    .line 2074
    :cond_1b6
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2075
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_151

    .line 2076
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_151

    .line 2089
    :cond_1c7
    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/k;->b(Lcom/mintegral/msdk/base/entity/CampaignEx;)Z

    move-result v9

    if-nez v9, :cond_1d3

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/k;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;)Z

    move-result v9

    if-eqz v9, :cond_164

    .line 2090
    :cond_1d3
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_164

    .line 2118
    :cond_1d7
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v0, v8}, Lcom/mintegral/msdk/mtgnative/c/b;->b(Lcom/mintegral/msdk/mtgnative/c/b;Ljava/util/List;)V

    .line 2122
    if-eqz v3, :cond_1e5

    .line 2123
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->f()V

    .line 2126
    :cond_1e5
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2f5

    .line 2127
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getType()I

    move-result v0

    .line 2129
    :goto_1fd
    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/a/f;->a(I)Lcom/mintegral/msdk/mtgnative/a/b;

    move-result-object v1

    .line 2130
    if-eqz v1, :cond_20e

    .line 2131
    iget-object v3, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v5}, Lcom/mintegral/msdk/mtgnative/c/b;->e(Lcom/mintegral/msdk/mtgnative/c/b;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v7, v5}, Lcom/mintegral/msdk/mtgnative/a/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 2134
    :cond_20e
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_22e

    .line 2135
    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v1}, Lcom/mintegral/msdk/mtgnative/c/b;->l(Lcom/mintegral/msdk/mtgnative/c/b;)Z

    move-result v1

    if-nez v1, :cond_21e

    if-eq v0, v4, :cond_22d

    .line 2136
    :cond_21e
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    const-string v1, "APP ALREADY INSTALLED"

    invoke-virtual {p0}, Lcom/mintegral/msdk/mtgnative/c/b$a;->i()I

    move-result v2

    invoke-virtual {p0}, Lcom/mintegral/msdk/mtgnative/c/b$a;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/mintegral/msdk/mtgnative/c/b;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 2167
    :cond_22d
    :goto_22d
    return-void

    .line 2140
    :cond_22e
    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v1}, Lcom/mintegral/msdk/mtgnative/c/b;->l(Lcom/mintegral/msdk/mtgnative/c/b;)Z

    move-result v1

    if-nez v1, :cond_238

    if-eq v0, v4, :cond_249

    .line 2141
    :cond_238
    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    iget-object v3, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    iget-object v5, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v5, v6}, Lcom/mintegral/msdk/mtgnative/c/b;->c(Lcom/mintegral/msdk/mtgnative/c/b;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v0, v5}, Lcom/mintegral/msdk/mtgnative/c/b;->a(Lcom/mintegral/msdk/mtgnative/c/b;ILjava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mintegral/msdk/mtgnative/c/b;->a(Lcom/mintegral/msdk/mtgnative/c/b;Ljava/util/List;)Z

    .line 2143
    :cond_249
    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v1}, Lcom/mintegral/msdk/mtgnative/c/b;->f(Lcom/mintegral/msdk/mtgnative/c/b;)Z

    move-result v1

    if-nez v1, :cond_272

    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v1}, Lcom/mintegral/msdk/mtgnative/c/b;->q(Lcom/mintegral/msdk/mtgnative/c/b;)Z

    move-result v1

    if-eqz v1, :cond_272

    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v1}, Lcom/mintegral/msdk/mtgnative/c/b;->l(Lcom/mintegral/msdk/mtgnative/c/b;)Z

    move-result v1

    if-nez v1, :cond_272

    .line 2144
    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    iget-object v3, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    iget-object v5, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v5, v6}, Lcom/mintegral/msdk/mtgnative/c/b;->c(Lcom/mintegral/msdk/mtgnative/c/b;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v0, v5}, Lcom/mintegral/msdk/mtgnative/c/b;->a(Lcom/mintegral/msdk/mtgnative/c/b;ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/mtgnative/c/b;->a(Lcom/mintegral/msdk/mtgnative/c/b;Ljava/util/List;)Z

    .line 2147
    :cond_272
    invoke-static {}, Lcom/mintegral/msdk/mtgnative/c/c;->b()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29c

    .line 2148
    invoke-static {}, Lcom/mintegral/msdk/mtgnative/c/c;->b()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_29c

    .line 2149
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/b;->r(Lcom/mintegral/msdk/mtgnative/c/b;)I

    move-result v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mintegral/msdk/mtgnative/c/c;->a(ILjava/lang/String;)V

    goto :goto_22d

    .line 2152
    :cond_29c
    invoke-static {}, Lcom/mintegral/msdk/mtgnative/c/c;->e()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b8

    .line 2153
    invoke-static {}, Lcom/mintegral/msdk/mtgnative/c/c;->e()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2155
    :cond_2b8
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/b;->d(Lcom/mintegral/msdk/mtgnative/c/b;)I

    move-result v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v1}, Lcom/mintegral/msdk/mtgnative/c/b;->s(Lcom/mintegral/msdk/mtgnative/c/b;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2156
    if-le v0, v4, :cond_2f3

    .line 2160
    :goto_2c7
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v0, v2}, Lcom/mintegral/msdk/mtgnative/c/b;->b(Lcom/mintegral/msdk/mtgnative/c/b;I)I

    goto/16 :goto_22d

    .line 2163
    :cond_2ce
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->d:Ljava/lang/String;

    .line 2164
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/b;->r(Lcom/mintegral/msdk/mtgnative/c/b;)I

    move-result v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mintegral/msdk/mtgnative/c/c;->b(ILjava/lang/String;)V

    .line 2165
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v0, v2}, Lcom/mintegral/msdk/mtgnative/c/b;->b(Lcom/mintegral/msdk/mtgnative/c/b;I)I

    goto/16 :goto_22d

    :cond_2f3
    move v2, v0

    goto :goto_2c7

    :cond_2f5
    move v0, v4

    goto/16 :goto_1fd
.end method

.method public final a(Ljava/lang/Runnable;)V
    .registers 2

    .prologue
    .line 2196
    iput-object p1, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->c:Ljava/lang/Runnable;

    .line 2197
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1985
    iput-object p1, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->f:Ljava/util/List;

    .line 1986
    return-void
.end method

.method public final a(Z)V
    .registers 2

    .prologue
    .line 1976
    iput-boolean p1, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->e:Z

    .line 1977
    return-void
.end method

.method public final a_()V
    .registers 2

    .prologue
    .line 1981
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->b:Z

    .line 1982
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/out/Frame;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2201
    iget-boolean v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->b:Z

    if-nez v0, :cond_3d

    .line 2202
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_1d

    .line 2203
    invoke-static {}, Lcom/mintegral/msdk/mtgnative/c/b;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "REMOVE CANCEL TASK ON onAdLoaded"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2204
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/b;->m(Lcom/mintegral/msdk/mtgnative/c/b;)Lcom/mintegral/msdk/mtgnative/c/b$e;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgnative/c/b$e;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2206
    :cond_1d
    if-eqz p1, :cond_25

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3e

    .line 2207
    :cond_25
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/b;->h(Lcom/mintegral/msdk/mtgnative/c/b;)Lcom/mintegral/msdk/mtgnative/d/a;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 2208
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/b;->t(Lcom/mintegral/msdk/mtgnative/c/b;)Z

    .line 2209
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/b;->h(Lcom/mintegral/msdk/mtgnative/c/b;)Lcom/mintegral/msdk/mtgnative/d/a;

    move-result-object v0

    const-string v1, "frame is empty"

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgnative/d/a;->onAdLoadError(Ljava/lang/String;)V

    .line 2238
    :cond_3d
    :goto_3d
    return-void

    .line 2215
    :cond_3e
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_42
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_90

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/out/Frame;

    .line 2216
    invoke-virtual {v0}, Lcom/mintegral/msdk/out/Frame;->getCampaigns()Ljava/util/List;

    move-result-object v0

    .line 2217
    if-eqz v0, :cond_5a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_73

    .line 2218
    :cond_5a
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/b;->h(Lcom/mintegral/msdk/mtgnative/c/b;)Lcom/mintegral/msdk/mtgnative/d/a;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 2219
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/b;->t(Lcom/mintegral/msdk/mtgnative/c/b;)Z

    .line 2220
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/b;->h(Lcom/mintegral/msdk/mtgnative/c/b;)Lcom/mintegral/msdk/mtgnative/d/a;

    move-result-object v0

    const-string v1, "ads in frame is empty"

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgnative/d/a;->onAdLoadError(Ljava/lang/String;)V

    goto :goto_3d

    .line 2224
    :cond_73
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_77
    :goto_77
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/out/Campaign;

    .line 2225
    invoke-static {}, Lcom/mintegral/msdk/mtgnative/c/b;->d()Z

    move-result v3

    if-eqz v3, :cond_77

    .line 2226
    invoke-virtual {v0, v4}, Lcom/mintegral/msdk/out/Campaign;->loadImageUrlAsyncWithBlock(Lcom/mintegral/msdk/out/OnImageLoadListener;)V

    .line 2227
    invoke-virtual {v0, v4}, Lcom/mintegral/msdk/out/Campaign;->loadIconUrlAsyncWithBlock(Lcom/mintegral/msdk/out/OnImageLoadListener;)V

    goto :goto_77

    .line 2233
    :cond_90
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/b;->h(Lcom/mintegral/msdk/mtgnative/c/b;)Lcom/mintegral/msdk/mtgnative/d/a;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 2234
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$a;->a:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/b;->h(Lcom/mintegral/msdk/mtgnative/c/b;)Lcom/mintegral/msdk/mtgnative/d/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/mtgnative/d/a;->onAdFramesLoaded(Ljava/util/List;)V

    goto :goto_3d
.end method
