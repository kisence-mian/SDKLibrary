.class final Lcom/mintegral/msdk/mtgnative/c/b$f;
.super Lcom/mintegral/msdk/base/common/f/a;
.source "NativeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/mtgnative/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field private a:Lcom/mintegral/msdk/base/entity/CampaignEx;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/mintegral/msdk/mtgnative/c/b;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/iab/omid/library/mintegral/adsession/AdSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/base/entity/CampaignEx;Landroid/view/View;Ljava/util/List;Lcom/mintegral/msdk/mtgnative/c/b;Lcom/iab/omid/library/mintegral/adsession/AdSession;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Lcom/mintegral/msdk/mtgnative/c/b;",
            "Lcom/iab/omid/library/mintegral/adsession/AdSession;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1685
    invoke-direct {p0}, Lcom/mintegral/msdk/base/common/f/a;-><init>()V

    .line 1686
    iput-object p1, p0, Lcom/mintegral/msdk/mtgnative/c/b$f;->a:Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 1687
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$f;->b:Ljava/lang/ref/WeakReference;

    .line 1688
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$f;->c:Ljava/lang/ref/WeakReference;

    .line 1689
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$f;->d:Ljava/lang/ref/WeakReference;

    .line 1690
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$f;->e:Ljava/lang/ref/WeakReference;

    .line 1691
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 6

    .prologue
    .line 1705
    invoke-static {}, Lcom/mintegral/msdk/mtgnative/c/b;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "waitSomeTimeToReport run"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1707
    :try_start_9
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$f;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_43

    .line 1708
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$f;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$f;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_43

    .line 1709
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$f;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1710
    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b$f;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1711
    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/b$f;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mintegral/msdk/mtgnative/c/b;

    .line 1712
    const/4 v3, 0x0

    .line 1713
    iget-object v4, p0, Lcom/mintegral/msdk/mtgnative/c/b$f;->e:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_3a

    .line 1714
    iget-object v3, p0, Lcom/mintegral/msdk/mtgnative/c/b$f;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iab/omid/library/mintegral/adsession/AdSession;

    .line 1716
    :cond_3a
    if-eqz v0, :cond_43

    if-eqz v2, :cond_43

    .line 1717
    iget-object v4, p0, Lcom/mintegral/msdk/mtgnative/c/b$f;->a:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-static {v2, v4, v0, v1, v3}, Lcom/mintegral/msdk/mtgnative/c/b;->a(Lcom/mintegral/msdk/mtgnative/c/b;Lcom/mintegral/msdk/base/entity/CampaignEx;Landroid/view/View;Ljava/util/List;Lcom/iab/omid/library/mintegral/adsession/AdSession;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_43} :catch_44

    .line 1724
    :cond_43
    :goto_43
    return-void

    .line 1721
    :catch_44
    move-exception v0

    .line 1722
    invoke-static {}, Lcom/mintegral/msdk/mtgnative/c/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/b/a;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_43
.end method

.method public final b()V
    .registers 1

    .prologue
    .line 1701
    return-void
.end method
