.class public final Lcom/mintegral/msdk/interstitial/a/a;
.super Ljava/lang/Object;
.source "IntersAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/interstitial/a/a$b;,
        Lcom/mintegral/msdk/interstitial/a/a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Z

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lcom/mintegral/msdk/interstitial/c/a$a;

.field private j:Lcom/mintegral/msdk/c/d;

.field private k:Landroid/os/Handler;

.field private l:Lcom/mintegral/msdk/interstitial/a/a$b;

.field private m:Z

.field private n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-boolean v0, p0, Lcom/mintegral/msdk/interstitial/a/a;->m:Z

    .line 82
    iput-boolean v0, p0, Lcom/mintegral/msdk/interstitial/a/a;->n:Z

    .line 101
    iput-object p1, p0, Lcom/mintegral/msdk/interstitial/a/a;->a:Landroid/content/Context;

    .line 102
    iput-object p2, p0, Lcom/mintegral/msdk/interstitial/a/a;->b:Ljava/lang/String;

    .line 103
    iput-object p3, p0, Lcom/mintegral/msdk/interstitial/a/a;->h:Ljava/lang/String;

    .line 104
    iput-boolean p4, p0, Lcom/mintegral/msdk/interstitial/a/a;->d:Z

    .line 106
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {v0, p2}, Lcom/mintegral/msdk/c/b;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/mintegral/msdk/c/d;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/interstitial/a/a;->j:Lcom/mintegral/msdk/c/d;

    .line 108
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/a/a;->j:Lcom/mintegral/msdk/c/d;

    if-nez v0, :cond_34

    .line 109
    const-string v0, "IntersAdapter"

    const-string v1, "\u83b7\u53d6\u9ed8\u8ba4\u7684unitsetting"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/a/a;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/mintegral/msdk/c/d;->e(Ljava/lang/String;)Lcom/mintegral/msdk/c/d;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/interstitial/a/a;->j:Lcom/mintegral/msdk/c/d;

    .line 1117
    :cond_34
    new-instance v0, Lcom/mintegral/msdk/interstitial/a/a$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mintegral/msdk/interstitial/a/a$1;-><init>(Lcom/mintegral/msdk/interstitial/a/a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mintegral/msdk/interstitial/a/a;->k:Landroid/os/Handler;

    .line 114
    return-void
.end method

.method static synthetic a(Lcom/mintegral/msdk/interstitial/a/a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/a/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/mintegral/msdk/interstitial/a/a;Ljava/util/List;)Ljava/util/List;
    .registers 3

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/interstitial/a/a;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 648
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 650
    if-eqz p1, :cond_95

    :try_start_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_95

    .line 652
    const-string v0, "IntersAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "onload \u603b\u5171\u8fd4\u56de \u7684compaign\u6709\uff1a"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/a/a;->j:Lcom/mintegral/msdk/c/d;

    invoke-virtual {v0}, Lcom/mintegral/msdk/c/d;->u()I

    move-result v3

    .line 657
    const/4 v0, 0x0

    move v1, v0

    :goto_2e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_a6

    iget v0, p0, Lcom/mintegral/msdk/interstitial/a/a;->e:I

    if-ge v1, v0, :cond_a6

    .line 660
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v3, :cond_a6

    .line 664
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 665
    if-eqz v0, :cond_61

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getOfferType()I

    move-result v4

    if-ne v4, v6, :cond_61

    .line 666
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 667
    const-string v0, "IntersAdapter"

    const-string v4, "offertype=1 \u4f46\u662fvideourl\u4e3a\u7a7a"

    invoke-static {v0, v4}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    :cond_5d
    :goto_5d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2e

    .line 671
    :cond_61
    if-eqz v0, :cond_5d

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getHtmlUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_73

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isMraid()Z

    move-result v4

    if-eqz v4, :cond_5d

    :cond_73
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getOfferType()I

    move-result v4

    const/16 v5, 0x63

    if-eq v4, v5, :cond_5d

    .line 673
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getWtick()I

    move-result v4

    if-eq v4, v6, :cond_8d

    iget-object v4, p0, Lcom/mintegral/msdk/interstitial/a/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mintegral/msdk/base/utils/k;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_96

    .line 674
    :cond_8d
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_90} :catch_91

    goto :goto_5d

    .line 687
    :catch_91
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 690
    :cond_95
    :goto_95
    return-object v2

    .line 677
    :cond_96
    :try_start_96
    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/k;->b(Lcom/mintegral/msdk/base/entity/CampaignEx;)Z

    move-result v4

    if-nez v4, :cond_a2

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/k;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;)Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 678
    :cond_a2
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5d

    .line 684
    :cond_a6
    const-string v0, "IntersAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "onload \u8fd4\u56de\u6709\u4ee5\u4e0b\u6709\u6548\u7684compaign\uff1a"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_be} :catch_91

    goto :goto_95
.end method

.method static synthetic a(Lcom/mintegral/msdk/interstitial/a/a;Lcom/mintegral/msdk/base/entity/CampaignUnit;)V
    .registers 8

    .prologue
    .line 2613
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_18

    .line 2614
    :cond_12
    const-string v0, "no server ads available"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/interstitial/a/a;->a(Ljava/lang/String;)V

    .line 2615
    :goto_17
    return-void

    .line 2617
    :cond_18
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v1

    .line 2619
    invoke-direct {p0, v1}, Lcom/mintegral/msdk/interstitial/a/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 2622
    if-eqz p1, :cond_42

    .line 2623
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getSessionId()Ljava/lang/String;

    move-result-object v0

    .line 2907
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_42

    .line 2908
    const-string v3, "IntersAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onload sessionId:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2909
    sput-object v0, Lcom/mintegral/msdk/interstitial/c/a;->a:Ljava/lang/String;

    .line 3801
    :cond_42
    :try_start_42
    const-string v0, "IntersAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onload offset\u76f8\u52a0\u524d "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/mintegral/msdk/interstitial/a/a;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mTnum:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mintegral/msdk/interstitial/a/a;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3802
    iget v0, p0, Lcom/mintegral/msdk/interstitial/a/a;->c:I

    iget v3, p0, Lcom/mintegral/msdk/interstitial/a/a;->e:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/mintegral/msdk/interstitial/a/a;->c:I

    .line 3803
    invoke-direct {p0}, Lcom/mintegral/msdk/interstitial/a/a;->j()I

    move-result v0

    .line 3804
    iget v3, p0, Lcom/mintegral/msdk/interstitial/a/a;->c:I

    if-le v3, v0, :cond_8a

    .line 3805
    const-string v3, "IntersAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onload \u91cd\u7f6eoffset\u4e3a0 :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3806
    const/4 v0, 0x0

    iput v0, p0, Lcom/mintegral/msdk/interstitial/a/a;->c:I

    .line 3808
    :cond_8a
    const-string v0, "IntersAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onload \u7b97\u51fa \u4e0b\u6b21\u7684offset\u662f:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/mintegral/msdk/interstitial/a/a;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3810
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/a/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_af

    .line 3811
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/a/a;->b:Ljava/lang/String;

    iget v3, p0, Lcom/mintegral/msdk/interstitial/a/a;->c:I

    invoke-static {v0, v3}, Lcom/mintegral/msdk/interstitial/c/a;->a(Ljava/lang/String;I)V
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_af} :catch_e7

    .line 2630
    :cond_af
    :goto_af
    if-eqz v1, :cond_d5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d5

    .line 4525
    const-string v0, "IntersAdapter"

    const-string v3, "\u5728\u4e3b\u7ebf\u7a0b \u5f00\u59cb\u5904\u7406vba"

    invoke-static {v0, v3}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4526
    if-eqz v1, :cond_ce

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_ce

    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/a/a;->j:Lcom/mintegral/msdk/c/d;

    if-eqz v0, :cond_ce

    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/a/a;->a:Landroid/content/Context;

    if-nez v0, :cond_d5

    .line 4527
    :cond_ce
    const-string v0, "IntersAdapter"

    const-string v3, "\u5904\u7406vba null retun"

    invoke-static {v0, v3}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2634
    :cond_d5
    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/k;->a(Ljava/util/List;)V

    .line 4701
    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Lcom/mintegral/msdk/interstitial/a/a$3;

    invoke-direct {v3, p0, v2, v1}, Lcom/mintegral/msdk/interstitial/a/a$3;-><init>(Lcom/mintegral/msdk/interstitial/a/a;Ljava/util/List;Ljava/util/List;)V

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4732
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_17

    .line 3814
    :catch_e7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_af
.end method

.method static synthetic a(Lcom/mintegral/msdk/interstitial/a/a;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/interstitial/a/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 342
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/a/a;->k:Landroid/os/Handler;

    if-eqz v0, :cond_12

    .line 343
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 344
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 345
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 346
    iget-object v1, p0, Lcom/mintegral/msdk/interstitial/a/a;->k:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    .line 352
    :cond_12
    :goto_12
    return-void

    .line 349
    :catch_13
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method

.method static synthetic a(Ljava/lang/String;Ljava/util/List;)V
    .registers 5

    .prologue
    .line 48
    .line 5558
    invoke-static {}, Lcom/mintegral/msdk/interstitial/b/a;->a()Lcom/mintegral/msdk/interstitial/b/a;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 5559
    invoke-static {}, Lcom/mintegral/msdk/interstitial/b/a;->a()Lcom/mintegral/msdk/interstitial/b/a;

    move-result-object v1

    .line 6125
    :try_start_a
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    if-eqz p1, :cond_30

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_30

    .line 6126
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 6127
    invoke-virtual {v1, v0, p0}, Lcom/mintegral/msdk/interstitial/b/a;->b(Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2b} :catch_2c

    goto :goto_1c

    .line 6131
    :catch_2c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 6132
    :cond_30
    return-void
.end method

.method static synthetic b(Lcom/mintegral/msdk/interstitial/a/a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/a/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/mintegral/msdk/interstitial/a/a;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    iput-object p1, p0, Lcom/mintegral/msdk/interstitial/a/a;->f:Ljava/lang/String;

    return-object p1
.end method

.method private b(Ljava/util/List;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 743
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 745
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_eb

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 746
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isMraid()Z

    move-result v1

    if-eqz v1, :cond_e6

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getMraid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e6

    .line 747
    const/4 v2, 0x0

    .line 749
    :try_start_2a
    sget-object v1, Lcom/mintegral/msdk/base/common/b/c;->g:Lcom/mintegral/msdk/base/common/b/c;

    invoke-static {v1}, Lcom/mintegral/msdk/base/common/b/e;->b(Lcom/mintegral/msdk/base/common/b/c;)Ljava/lang/String;

    move-result-object v3

    .line 750
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getMraid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/CommonMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 751
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_46

    .line 752
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    :cond_46
    const-string v6, ".html"

    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 753
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_56} :catch_bb
    .catchall {:try_start_2a .. :try_end_56} :catchall_da

    .line 756
    :try_start_56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 757
    const-string v2, "<script>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v7, Lcom/mintegral/msdk/base/utils/o;->a:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "</script>"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getMraid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 761
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 762
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setMraid(Ljava/lang/String;)V

    .line 763
    const-string v1, ""

    iget-object v2, p0, Lcom/mintegral/msdk/interstitial/a/a;->b:Ljava/lang/String;

    const-string v6, "5"

    invoke-static {v0, v1, v2, v6}, Lcom/mintegral/msdk/base/common/e/a;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_91} :catch_ef
    .catchall {:try_start_56 .. :try_end_91} :catchall_ec

    .line 771
    :try_start_91
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_94} :catch_b6

    .line 778
    :cond_94
    :goto_94
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getMraid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 779
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_af

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_af

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_e6

    .line 780
    :cond_af
    const-string v0, "mraid resource write fail"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/interstitial/a/a;->a(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 774
    :catch_b6
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_94

    .line 764
    :catch_bb
    move-exception v1

    .line 765
    :goto_bc
    :try_start_bc
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 766
    const-string v3, ""

    invoke-virtual {v0, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setMraid(Ljava/lang/String;)V

    .line 767
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/mintegral/msdk/interstitial/a/a;->b:Ljava/lang/String;

    const-string v6, "5"

    invoke-static {v0, v1, v3, v6}, Lcom/mintegral/msdk/base/common/e/a;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_cf
    .catchall {:try_start_bc .. :try_end_cf} :catchall_da

    .line 770
    if-eqz v2, :cond_94

    .line 771
    :try_start_d1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_d4} :catch_d5

    goto :goto_94

    .line 774
    :catch_d5
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_94

    .line 769
    :catchall_da
    move-exception v0

    .line 770
    :goto_db
    if-eqz v2, :cond_e0

    .line 771
    :try_start_dd
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_e0} :catch_e1

    .line 775
    :cond_e0
    :goto_e0
    throw v0

    .line 774
    :catch_e1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e0

    .line 785
    :cond_e6
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 788
    :cond_eb
    return-object v4

    .line 769
    :catchall_ec
    move-exception v0

    move-object v2, v3

    goto :goto_db

    .line 764
    :catch_ef
    move-exception v1

    move-object v2, v3

    goto :goto_bc
.end method

.method static synthetic b(Lcom/mintegral/msdk/interstitial/a/a;Ljava/util/List;)V
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 6472
    const-string v1, "IntersAdapter"

    const-string v2, "onload \u5f00\u59cb \u66f4\u65b0\u672c\u673a\u5df2\u5b89\u88c5\u5e7f\u544a\u5217\u8868"

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6473
    iget-object v1, p0, Lcom/mintegral/msdk/interstitial/a/a;->a:Landroid/content/Context;

    if-eqz v1, :cond_14

    if-eqz p1, :cond_14

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1c

    .line 6474
    :cond_14
    const-string v0, "IntersAdapter"

    const-string v1, "onload \u5217\u8868\u4e3a\u7a7a \u4e0d\u505a\u66f4\u65b0\u672c\u673a\u5df2\u5b89\u88c5\u5e7f\u544a\u5217\u8868"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6475
    :cond_1b
    :goto_1b
    return-void

    .line 6478
    :cond_1c
    iget-object v1, p0, Lcom/mintegral/msdk/interstitial/a/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/b/m;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/m;

    move-result-object v3

    move v1, v0

    move v2, v0

    .line 6480
    :goto_28
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_98

    .line 6481
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 6483
    if-eqz v0, :cond_5d

    .line 6484
    iget-object v4, p0, Lcom/mintegral/msdk/interstitial/a/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mintegral/msdk/base/utils/k;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 6486
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->c()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_5d

    .line 6487
    new-instance v2, Lcom/mintegral/msdk/base/entity/h;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v4, v0}, Lcom/mintegral/msdk/base/entity/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6488
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6490
    const/4 v2, 0x1

    .line 6480
    :cond_5d
    :goto_5d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_28

    .line 6495
    :cond_61
    if-eqz v3, :cond_5d

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mintegral/msdk/base/b/m;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5d

    .line 6496
    new-instance v4, Lcom/mintegral/msdk/base/entity/g;

    invoke-direct {v4}, Lcom/mintegral/msdk/base/entity/g;-><init>()V

    .line 6497
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mintegral/msdk/base/entity/g;->a(Ljava/lang/String;)V

    .line 6498
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getFca()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/mintegral/msdk/base/entity/g;->a(I)V

    .line 6499
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getFcb()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/mintegral/msdk/base/entity/g;->b(I)V

    .line 6500
    invoke-virtual {v4}, Lcom/mintegral/msdk/base/entity/g;->g()V

    .line 6501
    invoke-virtual {v4}, Lcom/mintegral/msdk/base/entity/g;->e()V

    .line 6502
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/mintegral/msdk/base/entity/g;->a(J)V

    .line 6503
    invoke-virtual {v3, v4}, Lcom/mintegral/msdk/base/b/m;->a(Lcom/mintegral/msdk/base/entity/g;)V

    goto :goto_5d

    .line 6509
    :cond_98
    if-eqz v2, :cond_1b

    .line 6510
    const-string v0, "IntersAdapter"

    const-string v1, "\u66f4\u65b0\u5b89\u88c5\u5217\u8868"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6511
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->f()V

    goto/16 :goto_1b
.end method

.method static synthetic c(Lcom/mintegral/msdk/interstitial/a/a;)Lcom/mintegral/msdk/interstitial/c/a$a;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/a/a;->i:Lcom/mintegral/msdk/interstitial/c/a$a;

    return-object v0
.end method

.method static synthetic c(Lcom/mintegral/msdk/interstitial/a/a;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    iput-object p1, p0, Lcom/mintegral/msdk/interstitial/a/a;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/mintegral/msdk/interstitial/a/a;)Z
    .registers 2

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/mintegral/msdk/interstitial/a/a;->d:Z

    return v0
.end method

.method static synthetic e()Ljava/lang/String;
    .registers 1

    .prologue
    .line 48
    invoke-static {}, Lcom/mintegral/msdk/interstitial/a/a;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/mintegral/msdk/interstitial/a/a;)V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/mintegral/msdk/interstitial/a/a;->l()V

    return-void
.end method

.method static synthetic f(Lcom/mintegral/msdk/interstitial/a/a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/a/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method private f()V
    .registers 3

    .prologue
    .line 331
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/a/a;->k:Landroid/os/Handler;

    if-eqz v0, :cond_a

    .line 332
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/a/a;->k:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 334
    :cond_a
    return-void
.end method

.method private static g()Ljava/lang/String;
    .registers 11

    .prologue
    .line 432
    const-string v1, ""

    .line 436
    :try_start_2
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/c/b;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 437
    if-nez v0, :cond_1a

    .line 438
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/c/b;->b()Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 440
    :cond_1a
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 442
    if-eqz v0, :cond_76

    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->aK()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_76

    .line 443
    const-string v3, "IntersAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "excludes cfc:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->aK()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/m;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/m;

    move-result-object v0

    .line 446
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/b/m;->c()[J

    move-result-object v3

    .line 448
    if-eqz v3, :cond_76

    .line 449
    array-length v4, v3

    const/4 v0, 0x0

    :goto_58
    if-ge v0, v4, :cond_76

    aget-wide v6, v3, v0

    .line 450
    const-string v5, "IntersAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "excludes campaignIds:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    invoke-virtual {v2, v6, v7}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 449
    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    .line 455
    :cond_76
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_9f

    .line 456
    invoke-static {v2}, Lcom/mintegral/msdk/base/utils/k;->a(Lorg/json/JSONArray;)Ljava/lang/String;
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7f} :catch_95

    move-result-object v0

    .line 458
    :goto_80
    :try_start_80
    const-string v1, "IntersAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get excludes:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_94} :catch_9d

    .line 462
    :goto_94
    return-object v0

    .line 460
    :catch_95
    move-exception v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    :goto_99
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_94

    :catch_9d
    move-exception v1

    goto :goto_99

    :cond_9f
    move-object v0, v1

    goto :goto_80
.end method

.method static synthetic g(Lcom/mintegral/msdk/interstitial/a/a;)V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/mintegral/msdk/interstitial/a/a;->f()V

    return-void
.end method

.method static synthetic h(Lcom/mintegral/msdk/interstitial/a/a;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/a/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method private h()V
    .registers 5

    .prologue
    .line 568
    :try_start_0
    invoke-static {}, Lcom/mintegral/msdk/interstitial/b/a;->a()Lcom/mintegral/msdk/interstitial/b/a;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 569
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/c/b;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 570
    if-nez v0, :cond_1e

    .line 571
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/c/b;->b()Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 573
    :cond_1e
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->aF()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 574
    invoke-static {}, Lcom/mintegral/msdk/interstitial/b/a;->a()Lcom/mintegral/msdk/interstitial/b/a;

    move-result-object v2

    iget-object v3, p0, Lcom/mintegral/msdk/interstitial/a/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v1, v3}, Lcom/mintegral/msdk/interstitial/b/a;->a(JLjava/lang/String;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_2f

    .line 579
    :cond_2e
    :goto_2e
    return-void

    .line 577
    :catch_2f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2e
.end method

.method private i()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 587
    const/4 v0, 0x0

    .line 589
    :try_start_1
    invoke-static {}, Lcom/mintegral/msdk/interstitial/b/a;->a()Lcom/mintegral/msdk/interstitial/b/a;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 590
    invoke-static {}, Lcom/mintegral/msdk/interstitial/b/a;->a()Lcom/mintegral/msdk/interstitial/b/a;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/interstitial/a/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/interstitial/b/a;->a(Ljava/lang/String;)Ljava/util/List;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_12

    move-result-object v0

    .line 596
    :cond_11
    :goto_11
    return-object v0

    .line 593
    :catch_12
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method

.method static synthetic i(Lcom/mintegral/msdk/interstitial/a/a;)Z
    .registers 2

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/mintegral/msdk/interstitial/a/a;->n:Z

    return v0
.end method

.method private j()I
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 824
    .line 826
    :try_start_1
    sget-object v0, Lcom/mintegral/msdk/interstitial/c/a;->c:Ljava/util/Map;

    .line 827
    iget-object v2, p0, Lcom/mintegral/msdk/interstitial/a/a;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2b

    if-eqz v0, :cond_2b

    iget-object v2, p0, Lcom/mintegral/msdk/interstitial/a/a;->b:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 828
    iget-object v2, p0, Lcom/mintegral/msdk/interstitial/a/a;->b:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_20} :catch_25

    move-result v0

    .line 830
    :goto_21
    if-gtz v0, :cond_24

    move v0, v1

    .line 836
    :cond_24
    :goto_24
    return v0

    .line 834
    :catch_25
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_24

    :cond_2b
    move v0, v1

    goto :goto_21
.end method

.method static synthetic j(Lcom/mintegral/msdk/interstitial/a/a;)Z
    .registers 2

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/mintegral/msdk/interstitial/a/a;->m:Z

    return v0
.end method

.method private k()I
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 847
    .line 850
    :try_start_1
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/a/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 852
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/a/a;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/c/a;->a(Ljava/lang/String;)I

    move-result v0

    .line 855
    :goto_f
    invoke-direct {p0}, Lcom/mintegral/msdk/interstitial/a/a;->j()I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_2b

    move-result v2

    .line 856
    if-le v0, v2, :cond_16

    move v0, v1

    .line 862
    :cond_16
    :try_start_16
    const-string v1, "IntersAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getCurrentOffset:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_2a} :catch_33

    .line 866
    :goto_2a
    return v0

    .line 864
    :catch_2b
    move-exception v0

    move-object v4, v0

    move v0, v1

    move-object v1, v4

    :goto_2f
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2a

    :catch_33
    move-exception v1

    goto :goto_2f

    :cond_35
    move v0, v1

    goto :goto_f
.end method

.method static synthetic k(Lcom/mintegral/msdk/interstitial/a/a;)Lcom/mintegral/msdk/interstitial/a/a$b;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/a/a;->l:Lcom/mintegral/msdk/interstitial/a/a$b;

    return-object v0
.end method

.method static synthetic l(Lcom/mintegral/msdk/interstitial/a/a;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/a/a;->k:Landroid/os/Handler;

    return-object v0
.end method

.method private l()V
    .registers 3

    .prologue
    .line 874
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/a/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 875
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/a/a;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mintegral/msdk/interstitial/c/a;->a(Ljava/lang/String;I)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 880
    :cond_e
    :goto_e
    return-void

    .line 878
    :catch_f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e
.end method

.method private static m()Ljava/lang/String;
    .registers 2

    .prologue
    .line 889
    const-string v0, ""

    .line 891
    :try_start_2
    sget-object v1, Lcom/mintegral/msdk/interstitial/c/a;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 892
    sget-object v0, Lcom/mintegral/msdk/interstitial/c/a;->a:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_d

    .line 898
    :cond_c
    :goto_c
    return-object v0

    .line 895
    :catch_d
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c
.end method

.method static synthetic m(Lcom/mintegral/msdk/interstitial/a/a;)Z
    .registers 2

    .prologue
    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/interstitial/a/a;->m:Z

    return v0
.end method

.method private static n()Ljava/lang/String;
    .registers 6

    .prologue
    .line 920
    const-string v1, ""

    .line 923
    :try_start_2
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 924
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->g()Ljava/util/List;

    move-result-object v0

    .line 925
    if-eqz v0, :cond_34

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_34

    .line 926
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 927
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2d} :catch_2e

    goto :goto_1a

    .line 934
    :catch_2e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_32
    move-object v0, v1

    .line 936
    :goto_33
    return-object v0

    .line 930
    :cond_34
    :try_start_34
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_32

    .line 931
    invoke-static {v2}, Lcom/mintegral/msdk/base/utils/k;->a(Lorg/json/JSONArray;)Ljava/lang/String;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3d} :catch_2e

    move-result-object v0

    goto :goto_33
.end method

.method static synthetic n(Lcom/mintegral/msdk/interstitial/a/a;)Z
    .registers 2

    .prologue
    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/interstitial/a/a;->n:Z

    return v0
.end method


# virtual methods
.method public final a()Lcom/mintegral/msdk/base/entity/CampaignEx;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 188
    :try_start_1
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/a/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    move-object v0, v1

    .line 215
    :goto_a
    return-object v0

    .line 192
    :cond_b
    invoke-direct {p0}, Lcom/mintegral/msdk/interstitial/a/a;->h()V

    .line 194
    invoke-direct {p0}, Lcom/mintegral/msdk/interstitial/a/a;->i()Ljava/util/List;

    move-result-object v3

    .line 195
    if-eqz v3, :cond_1a

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_23

    .line 196
    :cond_1a
    const-string v0, "IntersAdapter"

    const-string v2, "adapter allCamp is null"

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 197
    goto :goto_a

    .line 199
    :cond_23
    const/4 v0, 0x0

    move v2, v0

    :goto_25
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_91

    .line 200
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 201
    const-string v4, "IntersAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "html url:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getHtmlUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    if-eqz v0, :cond_94

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getHtmlUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 205
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getMraid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_94

    .line 207
    :cond_5f
    const-string v2, "IntersAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "adapter htmlurl:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getHtmlUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_85} :catch_86

    goto :goto_a

    .line 212
    :catch_86
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 213
    const-string v0, "IntersAdapter"

    const-string v2, "==getIntersAvaCampaign \u83b7\u53d6campaign \u51fa\u9519"

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_91
    move-object v0, v1

    .line 215
    goto/16 :goto_a

    .line 199
    :cond_94
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_25
.end method

.method public final a(Lcom/mintegral/msdk/interstitial/c/a$a;)V
    .registers 2

    .prologue
    .line 603
    iput-object p1, p0, Lcom/mintegral/msdk/interstitial/a/a;->i:Lcom/mintegral/msdk/interstitial/c/a$a;

    .line 604
    return-void
.end method

.method public final b()V
    .registers 5

    .prologue
    .line 224
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/a/a;->a:Landroid/content/Context;

    if-nez v0, :cond_a

    .line 225
    const-string v0, "context is null"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/interstitial/a/a;->a(Ljava/lang/String;)V

    .line 1171
    :goto_9
    return-void

    .line 228
    :cond_a
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/a/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 229
    const-string v0, "unitid is null"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/interstitial/a/a;->a(Ljava/lang/String;)V

    goto :goto_9

    .line 232
    :cond_18
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/a/a;->j:Lcom/mintegral/msdk/c/d;

    if-nez v0, :cond_22

    .line 233
    const-string v0, "unitSetting is null please call load"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/interstitial/a/a;->a(Ljava/lang/String;)V

    goto :goto_9

    .line 237
    :cond_22
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/a/a;->j:Lcom/mintegral/msdk/c/d;

    invoke-virtual {v0}, Lcom/mintegral/msdk/c/d;->t()I

    move-result v0

    .line 238
    if-gtz v0, :cond_44

    .line 239
    const-string v1, "IntersAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "aqn\u4e3a-1\u548c0 \u4e0d\u8bf7\u6c42 \u76f4\u63a5\u8fd4\u56de\u5931\u8d25 apiRepNum\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v0, "controller don\'t request ad"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/interstitial/a/a;->a(Ljava/lang/String;)V

    goto :goto_9

    .line 244
    :cond_44
    const-string v0, "IntersAdapter"

    const-string v1, "load \u5f00\u59cb\u6e05\u9664\u8fc7\u671f\u6570\u636e"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-direct {p0}, Lcom/mintegral/msdk/interstitial/a/a;->h()V

    .line 249
    invoke-direct {p0}, Lcom/mintegral/msdk/interstitial/a/a;->i()Ljava/util/List;

    move-result-object v0

    .line 250
    if-eqz v0, :cond_76

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_76

    .line 252
    const-string v1, "IntersAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "load \u672c\u5730\u5df2\u6709\u7f13\u5b58\u6570\u91cf\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-direct {p0}, Lcom/mintegral/msdk/interstitial/a/a;->f()V

    goto :goto_9

    .line 1166
    :cond_76
    new-instance v0, Lcom/mintegral/msdk/interstitial/a/a$a;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/interstitial/a/a$a;-><init>(Lcom/mintegral/msdk/interstitial/a/a;)V

    .line 1167
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1169
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/a/a;->k:Landroid/os/Handler;

    if-eqz v0, :cond_9a

    .line 1170
    new-instance v0, Lcom/mintegral/msdk/interstitial/a/a$b;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/interstitial/a/a$b;-><init>(Lcom/mintegral/msdk/interstitial/a/a;)V

    iput-object v0, p0, Lcom/mintegral/msdk/interstitial/a/a;->l:Lcom/mintegral/msdk/interstitial/a/a$b;

    .line 1171
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/a/a;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mintegral/msdk/interstitial/a/a;->l:Lcom/mintegral/msdk/interstitial/a/a$b;

    const-wide/32 v2, 0x15f90

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_9

    .line 1174
    :cond_9a
    const-string v0, "IntersAdapter"

    const-string v1, "handler \u4e3a\u7a7a \u76f4\u63a5load"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    invoke-virtual {p0}, Lcom/mintegral/msdk/interstitial/a/a;->c()V

    goto/16 :goto_9
.end method

.method public final c()V
    .registers 14

    .prologue
    const/4 v0, 0x1

    .line 267
    :try_start_1
    iget-object v1, p0, Lcom/mintegral/msdk/interstitial/a/a;->a:Landroid/content/Context;

    if-nez v1, :cond_b

    .line 268
    const-string v0, "context is null"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/interstitial/a/a;->a(Ljava/lang/String;)V

    .line 323
    :goto_a
    return-void

    .line 271
    :cond_b
    iget-object v1, p0, Lcom/mintegral/msdk/interstitial/a/a;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 272
    const-string v0, "unitid is null"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/interstitial/a/a;->a(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_18} :catch_19

    goto :goto_a

    .line 319
    :catch_19
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 320
    const-string v0, "can\'t show because unknow error"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/interstitial/a/a;->a(Ljava/lang/String;)V

    .line 321
    invoke-direct {p0}, Lcom/mintegral/msdk/interstitial/a/a;->l()V

    goto :goto_a

    .line 275
    :cond_26
    :try_start_26
    iget-object v1, p0, Lcom/mintegral/msdk/interstitial/a/a;->j:Lcom/mintegral/msdk/c/d;

    if-nez v1, :cond_30

    .line 276
    const-string v0, "unitSetting is null please call load"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/interstitial/a/a;->a(Ljava/lang/String;)V

    goto :goto_a

    .line 280
    :cond_30
    const-string v1, "IntersAdapter"

    const-string v2, "load \u5f00\u59cb\u51c6\u5907\u8bf7\u6c42\u53c2\u6570"

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1361
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v2

    .line 1362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/controller/a;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/CommonMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1364
    iget-boolean v1, p0, Lcom/mintegral/msdk/interstitial/a/a;->d:Z

    if-eqz v1, :cond_153

    .line 1365
    const/4 v1, 0x3

    .line 1370
    :goto_69
    const/4 v4, 0x1

    iput v4, p0, Lcom/mintegral/msdk/interstitial/a/a;->e:I

    .line 1371
    iget-object v4, p0, Lcom/mintegral/msdk/interstitial/a/a;->j:Lcom/mintegral/msdk/c/d;

    invoke-virtual {v4}, Lcom/mintegral/msdk/c/d;->u()I

    move-result v4

    if-lez v4, :cond_7c

    .line 1372
    iget-object v4, p0, Lcom/mintegral/msdk/interstitial/a/a;->j:Lcom/mintegral/msdk/c/d;

    invoke-virtual {v4}, Lcom/mintegral/msdk/c/d;->u()I

    move-result v4

    iput v4, p0, Lcom/mintegral/msdk/interstitial/a/a;->e:I

    .line 1376
    :cond_7c
    iget-object v4, p0, Lcom/mintegral/msdk/interstitial/a/a;->j:Lcom/mintegral/msdk/c/d;

    invoke-virtual {v4}, Lcom/mintegral/msdk/c/d;->t()I

    move-result v4

    if-lez v4, :cond_8a

    .line 1377
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/a/a;->j:Lcom/mintegral/msdk/c/d;

    invoke-virtual {v0}, Lcom/mintegral/msdk/c/d;->t()I

    move-result v0

    .line 1381
    :cond_8a
    const-string v4, "1"

    .line 1382
    const-string v5, "1"

    .line 1384
    iget-object v6, p0, Lcom/mintegral/msdk/interstitial/a/a;->g:Ljava/lang/String;

    .line 1385
    iget-object v7, p0, Lcom/mintegral/msdk/interstitial/a/a;->f:Ljava/lang/String;

    .line 1386
    iget-object v8, p0, Lcom/mintegral/msdk/interstitial/a/a;->b:Ljava/lang/String;

    const-string v9, "interstitial"

    invoke-static {v8, v9}, Lcom/mintegral/msdk/base/common/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1387
    invoke-static {}, Lcom/mintegral/msdk/interstitial/a/a;->n()Ljava/lang/String;

    move-result-object v9

    .line 1389
    invoke-direct {p0}, Lcom/mintegral/msdk/interstitial/a/a;->k()I

    move-result v10

    iput v10, p0, Lcom/mintegral/msdk/interstitial/a/a;->c:I

    .line 1391
    invoke-static {}, Lcom/mintegral/msdk/interstitial/a/a;->m()Ljava/lang/String;

    move-result-object v10

    .line 1396
    iget-object v11, p0, Lcom/mintegral/msdk/interstitial/a/a;->h:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_b4

    .line 1397
    const-string v11, "0"

    iput-object v11, p0, Lcom/mintegral/msdk/interstitial/a/a;->h:Ljava/lang/String;

    .line 1400
    :cond_b4
    new-instance v11, Lcom/mintegral/msdk/base/common/net/l;

    invoke-direct {v11}, Lcom/mintegral/msdk/base/common/net/l;-><init>()V

    .line 1402
    const-string v12, "app_id"

    invoke-static {v11, v12, v2}, Lcom/mintegral/msdk/base/utils/n;->a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 1403
    const-string v2, "unit_id"

    iget-object v12, p0, Lcom/mintegral/msdk/interstitial/a/a;->b:Ljava/lang/String;

    invoke-static {v11, v2, v12}, Lcom/mintegral/msdk/base/utils/n;->a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    const-string v2, "sign"

    invoke-static {v11, v2, v3}, Lcom/mintegral/msdk/base/utils/n;->a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 1406
    const-string v2, "category"

    iget-object v3, p0, Lcom/mintegral/msdk/interstitial/a/a;->h:Ljava/lang/String;

    invoke-static {v11, v2, v3}, Lcom/mintegral/msdk/base/utils/n;->a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 1408
    const-string v2, "req_type"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v2, v1}, Lcom/mintegral/msdk/base/utils/n;->a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 1409
    const-string v1, "ad_num"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v1, v0}, Lcom/mintegral/msdk/base/utils/n;->a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 1410
    const-string v0, "tnum"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/mintegral/msdk/interstitial/a/a;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v0, v1}, Lcom/mintegral/msdk/base/utils/n;->a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 1411
    const-string v0, "only_impression"

    invoke-static {v11, v0, v4}, Lcom/mintegral/msdk/base/utils/n;->a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 1412
    const-string v0, "ping_mode"

    invoke-static {v11, v0, v5}, Lcom/mintegral/msdk/base/utils/n;->a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    const-string v0, "ttc_ids"

    invoke-static {v11, v0, v7}, Lcom/mintegral/msdk/base/utils/n;->a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    const-string v0, "display_info"

    invoke-static {v11, v0, v8}, Lcom/mintegral/msdk/base/utils/n;->a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    const-string v0, "exclude_ids"

    invoke-static {v11, v0, v6}, Lcom/mintegral/msdk/base/utils/n;->a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 1416
    const-string v0, "install_ids"

    invoke-static {v11, v0, v9}, Lcom/mintegral/msdk/base/utils/n;->a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 1417
    const-string v0, "ad_source_id"

    const-string v1, "1"

    invoke-static {v11, v0, v1}, Lcom/mintegral/msdk/base/utils/n;->a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    const-string v0, "session_id"

    invoke-static {v11, v0, v10}, Lcom/mintegral/msdk/base/utils/n;->a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 1419
    const-string v0, "ad_type"

    const-string v1, "279"

    invoke-static {v11, v0, v1}, Lcom/mintegral/msdk/base/utils/n;->a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    const-string v0, "offset"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/mintegral/msdk/interstitial/a/a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v0, v1}, Lcom/mintegral/msdk/base/utils/n;->a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    new-instance v0, Lcom/mintegral/msdk/interstitial/d/a;

    iget-object v1, p0, Lcom/mintegral/msdk/interstitial/a/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/interstitial/d/a;-><init>(Landroid/content/Context;)V

    .line 290
    new-instance v1, Lcom/mintegral/msdk/interstitial/a/a$2;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/interstitial/a/a$2;-><init>(Lcom/mintegral/msdk/interstitial/a/a;)V

    .line 315
    iget-object v2, p0, Lcom/mintegral/msdk/interstitial/a/a;->b:Ljava/lang/String;

    .line 2044
    iput-object v2, v1, Lcom/mintegral/msdk/base/common/net/a/a;->d:Ljava/lang/String;

    .line 316
    sget-object v2, Lcom/mintegral/msdk/base/common/a;->k:Ljava/lang/String;

    invoke-virtual {v0, v2, v11, v1}, Lcom/mintegral/msdk/interstitial/d/a;->a(Ljava/lang/String;Lcom/mintegral/msdk/base/common/net/l;Lcom/mintegral/msdk/base/common/net/d;)Lcom/mintegral/msdk/base/common/f/a;
    :try_end_151
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_151} :catch_19

    goto/16 :goto_a

    .line 1367
    :cond_153
    const/4 v1, 0x2

    goto/16 :goto_69
.end method

.method public final d()Z
    .registers 2

    .prologue
    .line 1035
    iget-boolean v0, p0, Lcom/mintegral/msdk/interstitial/a/a;->d:Z

    return v0
.end method
