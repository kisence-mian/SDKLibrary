.class public final Lcom/mintegral/msdk/videofeeds/a/a;
.super Ljava/lang/Object;
.source "VideofeedsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/videofeeds/a/a$b;,
        Lcom/mintegral/msdk/videofeeds/a/a$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;


# instance fields
.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:Z

.field private i:I

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/mintegral/msdk/videofeeds/c/d;

.field private o:Lcom/mintegral/msdk/videofeeds/c/b;

.field private p:Lcom/mintegral/msdk/c/d;

.field private q:Lcom/mintegral/msdk/videofeeds/a/a$b;

.field private r:Z

.field private s:Z

.field private t:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 94
    const-string v0, "campaignTask"

    sput-object v0, Lcom/mintegral/msdk/videofeeds/a/a;->a:Ljava/lang/String;

    .line 96
    const-string v0, "showVfInnerListener"

    sput-object v0, Lcom/mintegral/msdk/videofeeds/a/a;->b:Ljava/lang/String;

    .line 98
    const-string v0, "unitSetting"

    sput-object v0, Lcom/mintegral/msdk/videofeeds/a/a;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/a/a;->r:Z

    .line 81
    iput-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/a/a;->s:Z

    .line 119
    new-instance v0, Lcom/mintegral/msdk/videofeeds/a/a$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mintegral/msdk/videofeeds/a/a$1;-><init>(Lcom/mintegral/msdk/videofeeds/a/a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/a/a;->t:Landroid/os/Handler;

    .line 163
    iput-object p1, p0, Lcom/mintegral/msdk/videofeeds/a/a;->d:Landroid/content/Context;

    .line 164
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/a/a;->d:Landroid/content/Context;

    if-eqz v0, :cond_30

    .line 165
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/a/a;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/controller/a;->a(Landroid/content/Context;)V

    .line 167
    :cond_30
    iput-object p2, p0, Lcom/mintegral/msdk/videofeeds/a/a;->e:Ljava/lang/String;

    .line 168
    iput-object p3, p0, Lcom/mintegral/msdk/videofeeds/a/a;->m:Ljava/util/Map;

    .line 170
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {v0, p2}, Lcom/mintegral/msdk/c/b;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/mintegral/msdk/c/d;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/a/a;->p:Lcom/mintegral/msdk/c/d;

    .line 172
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/a/a;->p:Lcom/mintegral/msdk/c/d;

    if-nez v0, :cond_58

    .line 173
    const-string v0, "VideofeedsAdapter"

    const-string v1, "\u83b7\u53d6\u9ed8\u8ba4\u7684unitsetting"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/a/a;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/mintegral/msdk/c/d;->c(Ljava/lang/String;)Lcom/mintegral/msdk/c/d;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/a/a;->p:Lcom/mintegral/msdk/c/d;

    .line 176
    :cond_58
    return-void
.end method

.method static synthetic a(Lcom/mintegral/msdk/videofeeds/a/a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/a/a;->k:Ljava/lang/String;

    return-object v0
.end method

.method private a(Lcom/mintegral/msdk/base/entity/CampaignUnit;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mintegral/msdk/base/entity/CampaignUnit;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 723
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 725
    if-eqz p1, :cond_eb

    :try_start_7
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_eb

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_eb

    .line 726
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v4

    .line 727
    const-string v0, "VideofeedsAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "onload \u603b\u5171\u8fd4\u56de \u7684compaign\u6709\uff1a"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/a/a;->p:Lcom/mintegral/msdk/c/d;

    invoke-virtual {v0}, Lcom/mintegral/msdk/c/d;->u()I

    move-result v0

    .line 730
    if-eqz v0, :cond_3e

    const/4 v1, -0x1

    if-ne v0, v1, :cond_54

    .line 732
    :cond_3e
    const-string v1, "VideofeedsAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "acn\u4e3a-1\u6216\u80050 \u76f4\u63a5\u8fd4\u56de acn:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 765
    :goto_53
    return-object v0

    .line 734
    :cond_54
    const/4 v1, -0x2

    if-ne v0, v1, :cond_b6

    .line 735
    const-string v0, "VideofeedsAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "acn\u4e3atnum\uff1a"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/mintegral/msdk/videofeeds/a/a;->j:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    iget v0, p0, Lcom/mintegral/msdk/videofeeds/a/a;->j:I

    move v1, v0

    .line 743
    :goto_70
    const/4 v0, 0x0

    move v3, v0

    :goto_72
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_ee

    iget v0, p0, Lcom/mintegral/msdk/videofeeds/a/a;->j:I

    if-ge v3, v0, :cond_ee

    .line 746
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v1, :cond_ee

    .line 749
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 750
    if-eqz v0, :cond_b2

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b2

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getOfferType()I

    move-result v5

    const/16 v6, 0x63

    if-eq v5, v6, :cond_b2

    .line 751
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getWtick()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_af

    iget-object v5, p0, Lcom/mintegral/msdk/videofeeds/a/a;->d:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mintegral/msdk/base/utils/k;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d7

    .line 752
    :cond_af
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 743
    :cond_b2
    :goto_b2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_72

    .line 737
    :cond_b6
    const/4 v1, -0x3

    if-ne v0, v1, :cond_107

    .line 738
    const-string v0, "VideofeedsAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "acn\u4e3a-3 \u76f4\u63a5\u8fd4\u56de allCampaignExList.size():"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v0

    goto :goto_70

    .line 754
    :cond_d7
    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/k;->b(Lcom/mintegral/msdk/base/entity/CampaignEx;)Z

    move-result v5

    if-nez v5, :cond_e3

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/k;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;)Z

    move-result v5

    if-eqz v5, :cond_b2

    .line 755
    :cond_e3
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_e6} :catch_e7

    goto :goto_b2

    .line 763
    :catch_e7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_eb
    :goto_eb
    move-object v0, v2

    .line 765
    goto/16 :goto_53

    .line 760
    :cond_ee
    :try_start_ee
    const-string v0, "VideofeedsAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "onload \u8fd4\u56de\u6709\u4ee5\u4e0b\u5e26\u6709\u89c6\u9891\u7d20\u6750\u7684compaign\uff1a"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_106} :catch_e7

    goto :goto_eb

    :cond_107
    move v1, v0

    goto/16 :goto_70
.end method

.method static synthetic a(Lcom/mintegral/msdk/videofeeds/a/a;Lcom/mintegral/msdk/base/entity/CampaignUnit;)V
    .registers 7

    .prologue
    .line 4680
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/k;->a(Ljava/util/List;)V

    .line 4682
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/videofeeds/a/a;->a(Lcom/mintegral/msdk/base/entity/CampaignUnit;)Ljava/util/List;

    move-result-object v1

    .line 4685
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_cc

    .line 4686
    const-string v0, "VideofeedsAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onload load\u6210\u529f size:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4687
    invoke-direct {p0}, Lcom/mintegral/msdk/videofeeds/a/a;->d()V

    .line 4694
    :goto_2c
    if-eqz p1, :cond_4e

    .line 4695
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getSessionId()Ljava/lang/String;

    move-result-object v0

    .line 4940
    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 4941
    const-string v2, "VideofeedsAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onload sessionId:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4942
    sput-object v0, Lcom/mintegral/msdk/videofeeds/b/a;->a:Ljava/lang/String;

    .line 5836
    :cond_4e
    :try_start_4e
    const-string v0, "VideofeedsAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onload offset\u76f8\u52a0\u524d "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/mintegral/msdk/videofeeds/a/a;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mTnum:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mintegral/msdk/videofeeds/a/a;->j:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5837
    iget v0, p0, Lcom/mintegral/msdk/videofeeds/a/a;->f:I

    iget v2, p0, Lcom/mintegral/msdk/videofeeds/a/a;->j:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/mintegral/msdk/videofeeds/a/a;->f:I

    .line 5838
    invoke-direct {p0}, Lcom/mintegral/msdk/videofeeds/a/a;->g()I

    move-result v0

    .line 5839
    iget v2, p0, Lcom/mintegral/msdk/videofeeds/a/a;->f:I

    if-le v2, v0, :cond_96

    .line 5840
    const-string v2, "VideofeedsAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onload \u91cd\u7f6eoffset\u4e3a0 :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5841
    const/4 v0, 0x0

    iput v0, p0, Lcom/mintegral/msdk/videofeeds/a/a;->f:I

    .line 5843
    :cond_96
    const-string v0, "VideofeedsAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onload \u7b97\u51fa \u4e0b\u6b21\u7684offset\u662f:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/mintegral/msdk/videofeeds/a/a;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5845
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/a/a;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 5846
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/a/a;->e:Ljava/lang/String;

    iget v2, p0, Lcom/mintegral/msdk/videofeeds/a/a;->f:I

    invoke-static {v0, v2}, Lcom/mintegral/msdk/videofeeds/b/a;->a(Ljava/lang/String;I)V
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_bb} :catch_da

    .line 6801
    :cond_bb
    :goto_bb
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/mintegral/msdk/videofeeds/a/a$3;

    invoke-direct {v2, p0, v1, p1}, Lcom/mintegral/msdk/videofeeds/a/a$3;-><init>(Lcom/mintegral/msdk/videofeeds/a/a;Ljava/util/List;Lcom/mintegral/msdk/base/entity/CampaignUnit;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 6824
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4710
    invoke-direct {p0, v1}, Lcom/mintegral/msdk/videofeeds/a/a;->a(Ljava/util/List;)V

    .line 45
    return-void

    .line 4689
    :cond_cc
    const-string v0, "VideofeedsAdapter"

    const-string v2, "onload load\u5931\u8d25 \u8fd4\u56de\u7684compaign \u6ca1\u6709\u5e26\u89c6\u9891\u7d20\u6750"

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4690
    const-string v0, "no ads available"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/videofeeds/a/a;->a(Ljava/lang/String;)V

    goto/16 :goto_2c

    .line 5849
    :catch_da
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_bb
.end method

.method static synthetic a(Lcom/mintegral/msdk/videofeeds/a/a;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/videofeeds/a/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/mintegral/msdk/videofeeds/a/a;Ljava/util/List;)V
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 8541
    const-string v1, "VideofeedsAdapter"

    const-string v2, "onload \u5f00\u59cb \u66f4\u65b0\u672c\u673a\u5df2\u5b89\u88c5\u5e7f\u544a\u5217\u8868"

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 8542
    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/a/a;->d:Landroid/content/Context;

    if-eqz v1, :cond_14

    if-eqz p1, :cond_14

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1c

    .line 8543
    :cond_14
    const-string v0, "VideofeedsAdapter"

    const-string v1, "onload \u5217\u8868\u4e3a\u7a7a \u4e0d\u505a\u66f4\u65b0\u672c\u673a\u5df2\u5b89\u88c5\u5e7f\u544a\u5217\u8868"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 8544
    :cond_1b
    :goto_1b
    return-void

    .line 8547
    :cond_1c
    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/a/a;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/b/m;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/m;

    move-result-object v3

    move v1, v0

    move v2, v0

    .line 8549
    :goto_28
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_98

    .line 8550
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 8552
    if-eqz v0, :cond_5d

    .line 8553
    iget-object v4, p0, Lcom/mintegral/msdk/videofeeds/a/a;->d:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mintegral/msdk/base/utils/k;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 8555
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->c()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_5d

    .line 8556
    new-instance v2, Lcom/mintegral/msdk/base/entity/h;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v4, v0}, Lcom/mintegral/msdk/base/entity/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8557
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8559
    const/4 v2, 0x1

    .line 8549
    :cond_5d
    :goto_5d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_28

    .line 8564
    :cond_61
    if-eqz v3, :cond_5d

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mintegral/msdk/base/b/m;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5d

    .line 8565
    new-instance v4, Lcom/mintegral/msdk/base/entity/g;

    invoke-direct {v4}, Lcom/mintegral/msdk/base/entity/g;-><init>()V

    .line 8566
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mintegral/msdk/base/entity/g;->a(Ljava/lang/String;)V

    .line 8567
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getFca()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/mintegral/msdk/base/entity/g;->a(I)V

    .line 8568
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getFcb()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/mintegral/msdk/base/entity/g;->b(I)V

    .line 8569
    invoke-virtual {v4}, Lcom/mintegral/msdk/base/entity/g;->g()V

    .line 8570
    invoke-virtual {v4}, Lcom/mintegral/msdk/base/entity/g;->e()V

    .line 8571
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/mintegral/msdk/base/entity/g;->a(J)V

    .line 8572
    invoke-virtual {v3, v4}, Lcom/mintegral/msdk/base/b/m;->a(Lcom/mintegral/msdk/base/entity/g;)V

    goto :goto_5d

    .line 8578
    :cond_98
    if-eqz v2, :cond_1b

    .line 8579
    const-string v0, "VideofeedsAdapter"

    const-string v1, "\u66f4\u65b0\u5b89\u88c5\u5217\u8868"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 8580
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->f()V

    goto/16 :goto_1b
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 419
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/a/a;->t:Landroid/os/Handler;

    if-eqz v0, :cond_12

    .line 420
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 421
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 422
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 423
    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/a/a;->t:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    .line 429
    :cond_12
    :goto_12
    return-void

    .line 426
    :catch_13
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method

.method static synthetic a(Ljava/lang/String;Ljava/util/List;)V
    .registers 3

    .prologue
    .line 45
    .line 7629
    invoke-static {}, Lcom/mintegral/msdk/videocommon/a/a;->a()Lcom/mintegral/msdk/videocommon/a/a;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 7630
    invoke-static {}, Lcom/mintegral/msdk/videocommon/a/a;->a()Lcom/mintegral/msdk/videocommon/a/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mintegral/msdk/videocommon/a/a;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 45
    :cond_d
    return-void
.end method

.method private a(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 776
    :try_start_0
    const-string v0, "VideofeedsAdapter"

    const-string v1, "===\u51c6\u5907\u4e0b\u8f7d"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    if-eqz p1, :cond_45

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_45

    .line 778
    const-string v0, "VideofeedsAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onload \u5f00\u59cb\u4e0b\u8f7d\u89c6\u9891\u7d20\u6750 size:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    invoke-static {}, Lcom/mintegral/msdk/videocommon/download/c;->getInstance()Lcom/mintegral/msdk/videocommon/download/c;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 781
    invoke-static {}, Lcom/mintegral/msdk/videocommon/download/c;->getInstance()Lcom/mintegral/msdk/videocommon/download/c;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/a/a;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/mintegral/msdk/videofeeds/a/a;->e:Ljava/lang/String;

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/mintegral/msdk/videocommon/download/c;->createUnitCache(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ILcom/mintegral/msdk/videocommon/listener/a;)Lcom/mintegral/msdk/videocommon/download/k;

    .line 782
    invoke-static {}, Lcom/mintegral/msdk/videocommon/download/c;->getInstance()Lcom/mintegral/msdk/videocommon/download/c;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/a/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/videocommon/download/c;->load(Ljava/lang/String;)V

    .line 791
    :cond_44
    :goto_44
    return-void

    .line 786
    :cond_45
    const-string v0, "VideofeedsAdapter"

    const-string v1, "onload \u4e0d\u7528\u4e0b\u8f7d\u89c6\u9891\u7d20\u6750 size\u4e3a0"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4c} :catch_4d

    goto :goto_44

    .line 789
    :catch_4d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_44
.end method

.method static synthetic b(Lcom/mintegral/msdk/videofeeds/a/a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/a/a;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/mintegral/msdk/videofeeds/a/a;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iput-object p1, p0, Lcom/mintegral/msdk/videofeeds/a/a;->k:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/mintegral/msdk/videofeeds/a/a;)Lcom/mintegral/msdk/videofeeds/c/b;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/a/a;->o:Lcom/mintegral/msdk/videofeeds/c/b;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .registers 1

    .prologue
    .line 45
    invoke-static {}, Lcom/mintegral/msdk/videofeeds/a/a;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/mintegral/msdk/videofeeds/a/a;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iput-object p1, p0, Lcom/mintegral/msdk/videofeeds/a/a;->l:Ljava/lang/String;

    return-object p1
.end method

.method private d()V
    .registers 3

    .prologue
    .line 408
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/a/a;->t:Landroid/os/Handler;

    if-eqz v0, :cond_a

    .line 409
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/a/a;->t:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 411
    :cond_a
    return-void
.end method

.method static synthetic d(Lcom/mintegral/msdk/videofeeds/a/a;)V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/mintegral/msdk/videofeeds/a/a;->i()V

    return-void
.end method

.method private static e()Ljava/lang/String;
    .registers 11

    .prologue
    .line 500
    const-string v1, ""

    .line 504
    :try_start_2
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/c/b;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 505
    if-nez v0, :cond_1a

    .line 506
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/c/b;->b()Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 509
    :cond_1a
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 511
    if-eqz v0, :cond_76

    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->aK()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_76

    .line 512
    const-string v3, "VideofeedsAdapter"

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

    .line 514
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/m;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/m;

    move-result-object v0

    .line 515
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/b/m;->c()[J

    move-result-object v3

    .line 517
    if-eqz v3, :cond_76

    .line 518
    array-length v4, v3

    const/4 v0, 0x0

    :goto_58
    if-ge v0, v4, :cond_76

    aget-wide v6, v3, v0

    .line 519
    const-string v5, "VideofeedsAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "excludes campaignIds:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    invoke-virtual {v2, v6, v7}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 518
    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    .line 524
    :cond_76
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_9f

    .line 525
    invoke-static {v2}, Lcom/mintegral/msdk/base/utils/k;->a(Lorg/json/JSONArray;)Ljava/lang/String;
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7f} :catch_95

    move-result-object v0

    .line 527
    :goto_80
    :try_start_80
    const-string v1, "VideofeedsAdapter"

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

    .line 531
    :goto_94
    return-object v0

    .line 529
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

.method static synthetic e(Lcom/mintegral/msdk/videofeeds/a/a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/a/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/mintegral/msdk/videofeeds/a/a;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/a/a;->d:Landroid/content/Context;

    return-object v0
.end method

.method private f()Ljava/util/List;
    .registers 5
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
    .line 654
    const/4 v0, 0x0

    .line 656
    :try_start_1
    invoke-static {}, Lcom/mintegral/msdk/videocommon/a/a;->a()Lcom/mintegral/msdk/videocommon/a/a;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 657
    invoke-static {}, Lcom/mintegral/msdk/videocommon/a/a;->a()Lcom/mintegral/msdk/videocommon/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/videofeeds/a/a;->e:Ljava/lang/String;

    iget v3, p0, Lcom/mintegral/msdk/videofeeds/a/a;->g:I

    invoke-virtual {v1, v2, v3}, Lcom/mintegral/msdk/videocommon/a/a;->a(Ljava/lang/String;I)Ljava/util/List;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_14

    move-result-object v0

    .line 663
    :cond_13
    :goto_13
    return-object v0

    .line 660
    :catch_14
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13
.end method

.method private g()I
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 859
    .line 861
    :try_start_1
    sget-object v0, Lcom/mintegral/msdk/videofeeds/b/a;->c:Ljava/util/Map;

    .line 862
    iget-object v2, p0, Lcom/mintegral/msdk/videofeeds/a/a;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    if-eqz v0, :cond_2b

    iget-object v2, p0, Lcom/mintegral/msdk/videofeeds/a/a;->e:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 863
    iget-object v2, p0, Lcom/mintegral/msdk/videofeeds/a/a;->e:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_20} :catch_25

    move-result v0

    .line 865
    :goto_21
    if-gtz v0, :cond_24

    move v0, v1

    .line 871
    :cond_24
    :goto_24
    return v0

    .line 869
    :catch_25
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_24

    :cond_2b
    move v0, v1

    goto :goto_21
.end method

.method static synthetic g(Lcom/mintegral/msdk/videofeeds/a/a;)Z
    .registers 2

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/a/a;->s:Z

    return v0
.end method

.method private h()I
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 880
    .line 883
    :try_start_1
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/a/a;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 885
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/a/a;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/b/a;->a(Ljava/lang/String;)I

    move-result v0

    .line 888
    :goto_f
    invoke-direct {p0}, Lcom/mintegral/msdk/videofeeds/a/a;->g()I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_2b

    move-result v2

    .line 889
    if-le v0, v2, :cond_16

    move v0, v1

    .line 895
    :cond_16
    :try_start_16
    const-string v1, "VideofeedsAdapter"

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

    .line 899
    :goto_2a
    return v0

    .line 897
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

.method static synthetic h(Lcom/mintegral/msdk/videofeeds/a/a;)Z
    .registers 2

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/a/a;->r:Z

    return v0
.end method

.method static synthetic i(Lcom/mintegral/msdk/videofeeds/a/a;)Lcom/mintegral/msdk/videofeeds/a/a$b;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/a/a;->q:Lcom/mintegral/msdk/videofeeds/a/a$b;

    return-object v0
.end method

.method private i()V
    .registers 3

    .prologue
    .line 907
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/a/a;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 908
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/a/a;->e:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mintegral/msdk/videofeeds/b/a;->a(Ljava/lang/String;I)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 913
    :cond_e
    :goto_e
    return-void

    .line 911
    :catch_f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e
.end method

.method static synthetic j(Lcom/mintegral/msdk/videofeeds/a/a;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/a/a;->t:Landroid/os/Handler;

    return-object v0
.end method

.method private static j()Ljava/lang/String;
    .registers 2

    .prologue
    .line 922
    const-string v0, ""

    .line 924
    :try_start_2
    sget-object v1, Lcom/mintegral/msdk/videofeeds/b/a;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 925
    sget-object v0, Lcom/mintegral/msdk/videofeeds/b/a;->a:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_d

    .line 931
    :cond_c
    :goto_c
    return-object v0

    .line 928
    :catch_d
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c
.end method

.method private static k()Ljava/lang/String;
    .registers 6

    .prologue
    .line 953
    const-string v1, ""

    .line 956
    :try_start_2
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 957
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->g()Ljava/util/List;

    move-result-object v0

    .line 958
    if-eqz v0, :cond_34

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_34

    .line 959
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

    .line 960
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2d} :catch_2e

    goto :goto_1a

    .line 967
    :catch_2e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_32
    move-object v0, v1

    .line 969
    :goto_33
    return-object v0

    .line 963
    :cond_34
    :try_start_34
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_32

    .line 964
    invoke-static {v2}, Lcom/mintegral/msdk/base/utils/k;->a(Lorg/json/JSONArray;)Ljava/lang/String;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3d} :catch_2e

    move-result-object v0

    goto :goto_33
.end method

.method static synthetic k(Lcom/mintegral/msdk/videofeeds/a/a;)Z
    .registers 2

    .prologue
    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/a/a;->r:Z

    return v0
.end method

.method static synthetic l(Lcom/mintegral/msdk/videofeeds/a/a;)Z
    .registers 2

    .prologue
    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/a/a;->s:Z

    return v0
.end method


# virtual methods
.method public final a(Lcom/mintegral/msdk/videofeeds/c/d;)Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 213
    :try_start_1
    const-string v1, "VideofeedsAdapter"

    const-string v2, "show \u8fdb\u6765"

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iput-object p1, p0, Lcom/mintegral/msdk/videofeeds/a/a;->n:Lcom/mintegral/msdk/videofeeds/c/d;

    .line 215
    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/a/a;->d:Landroid/content/Context;

    if-nez v1, :cond_21

    .line 216
    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/a/a;->n:Lcom/mintegral/msdk/videofeeds/c/d;

    if-eqz v1, :cond_19

    .line 217
    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/a/a;->n:Lcom/mintegral/msdk/videofeeds/c/d;

    const-string v2, "context is null"

    invoke-interface {v1, v2}, Lcom/mintegral/msdk/videofeeds/c/d;->a(Ljava/lang/String;)V

    .line 219
    :cond_19
    const-string v1, "VideofeedsAdapter"

    const-string v2, "show context null"

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :cond_20
    :goto_20
    return-object v0

    .line 223
    :cond_21
    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/a/a;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/s;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 224
    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/a/a;->n:Lcom/mintegral/msdk/videofeeds/c/d;

    if-eqz v1, :cond_34

    .line 225
    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/a/a;->n:Lcom/mintegral/msdk/videofeeds/c/d;

    const-string v2, "unitid is null"

    invoke-interface {v1, v2}, Lcom/mintegral/msdk/videofeeds/c/d;->a(Ljava/lang/String;)V

    .line 227
    :cond_34
    const-string v1, "VideofeedsAdapter"

    const-string v2, "show unitid null"

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3b} :catch_3c

    goto :goto_20

    .line 256
    :catch_3c
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 257
    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/a/a;->n:Lcom/mintegral/msdk/videofeeds/c/d;

    if-eqz v1, :cond_20

    .line 258
    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/a/a;->n:Lcom/mintegral/msdk/videofeeds/c/d;

    const-string v2, "can\'t show because unknow error"

    invoke-interface {v1, v2}, Lcom/mintegral/msdk/videofeeds/c/d;->a(Ljava/lang/String;)V

    goto :goto_20

    .line 231
    :cond_4c
    :try_start_4c
    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/a/a;->m:Ljava/util/Map;

    if-nez v1, :cond_5c

    .line 232
    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/a/a;->n:Lcom/mintegral/msdk/videofeeds/c/d;

    if-eqz v1, :cond_20

    .line 233
    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/a/a;->n:Lcom/mintegral/msdk/videofeeds/c/d;

    const-string v2, "devmap is null"

    invoke-interface {v1, v2}, Lcom/mintegral/msdk/videofeeds/c/d;->a(Ljava/lang/String;)V

    goto :goto_20

    .line 237
    :cond_5c
    invoke-static {}, Lcom/mintegral/msdk/videocommon/download/c;->getInstance()Lcom/mintegral/msdk/videocommon/download/c;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/videofeeds/a/a;->e:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/mintegral/msdk/videocommon/download/c;->a(Ljava/lang/String;Z)Lcom/mintegral/msdk/videocommon/download/a;

    move-result-object v2

    .line 238
    if-nez v2, :cond_75

    .line 239
    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/a/a;->n:Lcom/mintegral/msdk/videofeeds/c/d;

    if-eqz v1, :cond_20

    .line 240
    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/a/a;->n:Lcom/mintegral/msdk/videofeeds/c/d;

    const-string v2, "campaingDownTask is null"

    invoke-interface {v1, v2}, Lcom/mintegral/msdk/videofeeds/c/d;->a(Ljava/lang/String;)V

    goto :goto_20

    .line 245
    :cond_75
    const-string v1, "VideofeedsAdapter"

    const-string v3, "show isReady true \u5f00\u59cb\u7ec4\u88c5adView"

    invoke-static {v1, v3}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    new-instance v1, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;

    iget-object v3, p0, Lcom/mintegral/msdk/videofeeds/a/a;->d:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;-><init>(Landroid/content/Context;)V

    .line 249
    iget-object v3, p0, Lcom/mintegral/msdk/videofeeds/a/a;->m:Ljava/util/Map;

    sget-object v4, Lcom/mintegral/msdk/videofeeds/a/a;->a:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object v2, p0, Lcom/mintegral/msdk/videofeeds/a/a;->m:Ljava/util/Map;

    sget-object v3, Lcom/mintegral/msdk/videofeeds/a/a;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/mintegral/msdk/videofeeds/a/a;->n:Lcom/mintegral/msdk/videofeeds/c/d;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iget-object v2, p0, Lcom/mintegral/msdk/videofeeds/a/a;->m:Ljava/util/Map;

    sget-object v3, Lcom/mintegral/msdk/videofeeds/a/a;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/mintegral/msdk/videofeeds/a/a;->p:Lcom/mintegral/msdk/c/d;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iget-object v2, p0, Lcom/mintegral/msdk/videofeeds/a/a;->m:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->setDatas(Ljava/util/Map;)V
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_a1} :catch_3c

    move-object v0, v1

    .line 254
    goto/16 :goto_20
.end method

.method public final a(IIZ)V
    .registers 8

    .prologue
    .line 295
    iput p1, p0, Lcom/mintegral/msdk/videofeeds/a/a;->g:I

    .line 296
    iput-boolean p3, p0, Lcom/mintegral/msdk/videofeeds/a/a;->h:Z

    .line 297
    iput p2, p0, Lcom/mintegral/msdk/videofeeds/a/a;->i:I

    .line 299
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/a/a;->d:Landroid/content/Context;

    if-nez v0, :cond_10

    .line 300
    const-string v0, "context is null"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/videofeeds/a/a;->a(Ljava/lang/String;)V

    .line 3275
    :goto_f
    return-void

    .line 303
    :cond_10
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/a/a;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/s;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 304
    const-string v0, "unitid is null"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/videofeeds/a/a;->a(Ljava/lang/String;)V

    goto :goto_f

    .line 307
    :cond_1e
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/a/a;->p:Lcom/mintegral/msdk/c/d;

    if-nez v0, :cond_28

    .line 308
    const-string v0, "unitSetting is null please call load"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/videofeeds/a/a;->a(Ljava/lang/String;)V

    goto :goto_f

    .line 312
    :cond_28
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/a/a;->p:Lcom/mintegral/msdk/c/d;

    invoke-virtual {v0}, Lcom/mintegral/msdk/c/d;->t()I

    move-result v0

    .line 313
    const/4 v1, -0x1

    if-eq v0, v1, :cond_33

    if-nez v0, :cond_4d

    .line 314
    :cond_33
    const-string v1, "VideofeedsAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "aqn\u4e3a-1\u548c0 \u4e0d\u8bf7\u6c42 \u76f4\u63a5\u8fd4\u56de\u5931\u8d25 apiRepNum\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string v0, "controller don\'t request ad"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/videofeeds/a/a;->a(Ljava/lang/String;)V

    goto :goto_f

    .line 1978
    :cond_4d
    :try_start_4d
    sget-object v0, Lcom/mintegral/msdk/videofeeds/b/a;->d:Ljava/util/Map;

    if-eqz v0, :cond_5e

    .line 1979
    sget-object v0, Lcom/mintegral/msdk/videofeeds/b/a;->d:Ljava/util/Map;

    .line 1980
    if-eqz v0, :cond_5e

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_5e

    .line 1981
    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_5e} :catch_bf

    .line 322
    :cond_5e
    :goto_5e
    const-string v0, "VideofeedsAdapter"

    const-string v1, "load \u5f00\u59cb\u6e05\u9664\u8fc7\u671f\u6570\u636e"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2638
    invoke-static {}, Lcom/mintegral/msdk/videocommon/a/a;->a()Lcom/mintegral/msdk/videocommon/a/a;

    move-result-object v0

    if-eqz v0, :cond_93

    .line 2639
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/c/b;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 2640
    if-nez v0, :cond_83

    .line 2641
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/c/b;->b()Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 2643
    :cond_83
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->aF()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 2644
    invoke-static {}, Lcom/mintegral/msdk/videocommon/a/a;->a()Lcom/mintegral/msdk/videocommon/a/a;

    move-result-object v2

    iget-object v3, p0, Lcom/mintegral/msdk/videofeeds/a/a;->e:Ljava/lang/String;

    invoke-virtual {v2, v0, v1, v3}, Lcom/mintegral/msdk/videocommon/a/a;->a(JLjava/lang/String;)V

    .line 327
    :cond_93
    invoke-direct {p0}, Lcom/mintegral/msdk/videofeeds/a/a;->f()Ljava/util/List;

    move-result-object v0

    .line 328
    if-eqz v0, :cond_c4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_c4

    .line 330
    const-string v1, "VideofeedsAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "load \u672c\u5730\u5df2\u6709\u7f13\u5b58\u6570\u91cf\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-direct {p0}, Lcom/mintegral/msdk/videofeeds/a/a;->d()V

    .line 332
    invoke-direct {p0, v0}, Lcom/mintegral/msdk/videofeeds/a/a;->a(Ljava/util/List;)V

    goto/16 :goto_f

    .line 1985
    :catch_bf
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5e

    .line 3270
    :cond_c4
    new-instance v0, Lcom/mintegral/msdk/videofeeds/a/a$a;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/videofeeds/a/a$a;-><init>(Lcom/mintegral/msdk/videofeeds/a/a;)V

    .line 3271
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 3273
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/a/a;->t:Landroid/os/Handler;

    if-eqz v0, :cond_e8

    .line 3274
    new-instance v0, Lcom/mintegral/msdk/videofeeds/a/a$b;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/videofeeds/a/a$b;-><init>(Lcom/mintegral/msdk/videofeeds/a/a;)V

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/a/a;->q:Lcom/mintegral/msdk/videofeeds/a/a$b;

    .line 3275
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/a/a;->t:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/a/a;->q:Lcom/mintegral/msdk/videofeeds/a/a$b;

    const-wide/32 v2, 0x15f90

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_f

    .line 3278
    :cond_e8
    const-string v0, "VideofeedsAdapter"

    const-string v1, "handler \u4e3a\u7a7a \u76f4\u63a5load"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3279
    invoke-virtual {p0}, Lcom/mintegral/msdk/videofeeds/a/a;->b()V

    goto/16 :goto_f
.end method

.method public final a(Lcom/mintegral/msdk/videofeeds/c/b;)V
    .registers 2

    .prologue
    .line 670
    iput-object p1, p0, Lcom/mintegral/msdk/videofeeds/a/a;->o:Lcom/mintegral/msdk/videofeeds/c/b;

    .line 671
    return-void
.end method

.method public final a()Z
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 183
    .line 185
    :try_start_1
    const-string v0, "VideofeedsAdapter"

    const-string v1, "\u8fdb\u6765 isReady"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-static {}, Lcom/mintegral/msdk/videocommon/download/c;->getInstance()Lcom/mintegral/msdk/videocommon/download/c;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/a/a;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5b

    if-eqz v0, :cond_5b

    .line 190
    invoke-static {}, Lcom/mintegral/msdk/videocommon/a/a;->a()Lcom/mintegral/msdk/videocommon/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/videofeeds/a/a;->e:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/mintegral/msdk/videocommon/a/a;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 192
    if-eqz v3, :cond_32

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_32

    .line 193
    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/a/a;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/mintegral/msdk/videofeeds/a/a;->e:Ljava/lang/String;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/mintegral/msdk/videocommon/download/c;->createUnitCache(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ILcom/mintegral/msdk/videocommon/listener/a;)Lcom/mintegral/msdk/videocommon/download/k;

    .line 195
    :cond_32
    const/16 v1, 0x5f

    iget-object v2, p0, Lcom/mintegral/msdk/videofeeds/a/a;->e:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/mintegral/msdk/videocommon/download/c;->a(ILjava/lang/String;Z)Z
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3a} :catch_50

    move-result v0

    .line 201
    :goto_3b
    const-string v1, "VideofeedsAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u7ed3\u679c isReady\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return v0

    .line 198
    :catch_50
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 199
    const-string v0, "VideofeedsAdapter"

    const-string v1, "isReady \u51fa\u9519"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5b
    move v0, v6

    goto :goto_3b
.end method

.method public final b()V
    .registers 15

    .prologue
    .line 346
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/a/a;->d:Landroid/content/Context;

    if-nez v0, :cond_a

    .line 347
    const-string v0, "context is null"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/videofeeds/a/a;->a(Ljava/lang/String;)V

    .line 402
    :goto_9
    return-void

    .line 350
    :cond_a
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/a/a;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/s;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 351
    const-string v0, "unitid is null"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/videofeeds/a/a;->a(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    goto :goto_9

    .line 398
    :catch_18
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 399
    const-string v0, "can\'t show because unknow error"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/videofeeds/a/a;->a(Ljava/lang/String;)V

    .line 400
    invoke-direct {p0}, Lcom/mintegral/msdk/videofeeds/a/a;->i()V

    goto :goto_9

    .line 354
    :cond_25
    :try_start_25
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/a/a;->p:Lcom/mintegral/msdk/c/d;

    if-nez v0, :cond_2f

    .line 355
    const-string v0, "unitSetting is null please call load"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/videofeeds/a/a;->a(Ljava/lang/String;)V

    goto :goto_9

    .line 359
    :cond_2f
    const-string v0, "VideofeedsAdapter"

    const-string v1, "load \u5f00\u59cb\u51c6\u5907\u8bf7\u6c42\u53c2\u6570"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3438
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v2

    .line 3439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/CommonMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3441
    iget-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/a/a;->h:Z

    if-eqz v0, :cond_132

    .line 3442
    const/4 v0, 0x2

    move v1, v0

    .line 3447
    :goto_69
    iget v0, p0, Lcom/mintegral/msdk/videofeeds/a/a;->i:I

    iput v0, p0, Lcom/mintegral/msdk/videofeeds/a/a;->j:I

    .line 3448
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/a/a;->p:Lcom/mintegral/msdk/c/d;

    invoke-virtual {v0}, Lcom/mintegral/msdk/c/d;->t()I

    move-result v0

    .line 3449
    const/4 v4, -0x2

    if-ne v0, v4, :cond_78

    .line 3450
    iget v0, p0, Lcom/mintegral/msdk/videofeeds/a/a;->j:I

    .line 3454
    :cond_78
    const-string v4, "1"

    .line 3455
    const-string v5, "1"

    .line 3457
    iget-object v6, p0, Lcom/mintegral/msdk/videofeeds/a/a;->l:Ljava/lang/String;

    .line 3458
    iget-object v7, p0, Lcom/mintegral/msdk/videofeeds/a/a;->k:Ljava/lang/String;

    .line 3459
    iget-object v8, p0, Lcom/mintegral/msdk/videofeeds/a/a;->e:Ljava/lang/String;

    const-string v9, "videofeeds"

    invoke-static {v8, v9}, Lcom/mintegral/msdk/base/common/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3460
    invoke-static {}, Lcom/mintegral/msdk/videofeeds/a/a;->k()Ljava/lang/String;

    move-result-object v9

    .line 3462
    invoke-direct {p0}, Lcom/mintegral/msdk/videofeeds/a/a;->h()I

    move-result v10

    iput v10, p0, Lcom/mintegral/msdk/videofeeds/a/a;->f:I

    .line 3464
    invoke-static {}, Lcom/mintegral/msdk/videofeeds/a/a;->j()Ljava/lang/String;

    move-result-object v10

    .line 3466
    iget v11, p0, Lcom/mintegral/msdk/videofeeds/a/a;->g:I

    .line 3469
    new-instance v12, Lcom/mintegral/msdk/base/common/net/l;

    invoke-direct {v12}, Lcom/mintegral/msdk/base/common/net/l;-><init>()V

    .line 3471
    const-string v13, "app_id"

    invoke-static {v12, v13, v2}, Lcom/mintegral/msdk/base/utils/n;->a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 3472
    const-string v2, "unit_id"

    iget-object v13, p0, Lcom/mintegral/msdk/videofeeds/a/a;->e:Ljava/lang/String;

    invoke-static {v12, v2, v13}, Lcom/mintegral/msdk/base/utils/n;->a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 3474
    const-string v2, "sign"

    invoke-static {v12, v2, v3}, Lcom/mintegral/msdk/base/utils/n;->a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 3476
    const-string v2, "req_type"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v2, v1}, Lcom/mintegral/msdk/base/utils/n;->a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 3477
    const-string v1, "ad_num"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v1, v0}, Lcom/mintegral/msdk/base/utils/n;->a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 3478
    const-string v0, "tnum"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/mintegral/msdk/videofeeds/a/a;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v0, v1}, Lcom/mintegral/msdk/base/utils/n;->a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 3479
    const-string v0, "only_impression"

    invoke-static {v12, v0, v4}, Lcom/mintegral/msdk/base/utils/n;->a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 3480
    const-string v0, "ping_mode"

    invoke-static {v12, v0, v5}, Lcom/mintegral/msdk/base/utils/n;->a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 3481
    const-string v0, "ttc_ids"

    invoke-static {v12, v0, v7}, Lcom/mintegral/msdk/base/utils/n;->a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 3482
    const-string v0, "display_info"

    invoke-static {v12, v0, v8}, Lcom/mintegral/msdk/base/utils/n;->a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 3483
    const-string v0, "exclude_ids"

    invoke-static {v12, v0, v6}, Lcom/mintegral/msdk/base/utils/n;->a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 3484
    const-string v0, "install_ids"

    invoke-static {v12, v0, v9}, Lcom/mintegral/msdk/base/utils/n;->a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 3485
    const-string v0, "ad_source_id"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v0, v1}, Lcom/mintegral/msdk/base/utils/n;->a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 3486
    const-string v0, "session_id"

    invoke-static {v12, v0, v10}, Lcom/mintegral/msdk/base/utils/n;->a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 3487
    const-string v0, "ad_type"

    const-string v1, "95"

    invoke-static {v12, v0, v1}, Lcom/mintegral/msdk/base/utils/n;->a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 3488
    const-string v0, "offset"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/mintegral/msdk/videofeeds/a/a;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v0, v1}, Lcom/mintegral/msdk/base/utils/n;->a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    new-instance v0, Lcom/mintegral/msdk/videofeeds/d/a;

    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/a/a;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/videofeeds/d/a;-><init>(Landroid/content/Context;)V

    .line 369
    new-instance v1, Lcom/mintegral/msdk/videofeeds/a/a$2;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/videofeeds/a/a$2;-><init>(Lcom/mintegral/msdk/videofeeds/a/a;)V

    .line 394
    iget-object v2, p0, Lcom/mintegral/msdk/videofeeds/a/a;->e:Ljava/lang/String;

    .line 4044
    iput-object v2, v1, Lcom/mintegral/msdk/base/common/net/a/a;->d:Ljava/lang/String;

    .line 395
    sget-object v2, Lcom/mintegral/msdk/base/common/a;->k:Ljava/lang/String;

    invoke-virtual {v0, v2, v12, v1}, Lcom/mintegral/msdk/videofeeds/d/a;->a(Ljava/lang/String;Lcom/mintegral/msdk/base/common/net/l;Lcom/mintegral/msdk/base/common/net/d;)Lcom/mintegral/msdk/base/common/f/a;
    :try_end_130
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_130} :catch_18

    goto/16 :goto_9

    .line 3444
    :cond_132
    const/4 v0, 0x3

    move v1, v0

    goto/16 :goto_69
.end method
