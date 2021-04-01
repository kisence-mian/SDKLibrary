.class public Lcom/mintegral/msdk/nativex/listener/RollingPagerListenrt;
.super Ljava/lang/Object;
.source "RollingPagerListenrt.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/out/Frame;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/mintegral/msdk/base/common/e/b;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/mintegral/msdk/out/NativeListener$FilpListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/listener/RollingPagerListenrt;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 53
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/listener/RollingPagerListenrt;->e:Lcom/mintegral/msdk/out/NativeListener$FilpListener;

    if-eqz v0, :cond_a

    .line 54
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/listener/RollingPagerListenrt;->e:Lcom/mintegral/msdk/out/NativeListener$FilpListener;

    invoke-interface {v0, p1}, Lcom/mintegral/msdk/out/NativeListener$FilpListener;->filpEvent(I)V

    .line 57
    :cond_a
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/listener/RollingPagerListenrt;->d:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 90
    :cond_16
    :goto_16
    return-void

    .line 60
    :cond_17
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/listener/RollingPagerListenrt;->d:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/listener/RollingPagerListenrt;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/out/Frame;

    .line 63
    invoke-virtual {v0}, Lcom/mintegral/msdk/out/Frame;->getCampaigns()Ljava/util/List;

    move-result-object v3

    .line 64
    if-eqz v3, :cond_16

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16

    .line 65
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 66
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    :goto_3f
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_78

    .line 68
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 69
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v2, v5, :cond_5d

    .line 70
    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    :goto_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    .line 72
    :cond_5d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5a

    .line 76
    :cond_78
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 77
    const-string v3, "rid_n"

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v1, "frame_id"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v1, "template"

    invoke-virtual {v0}, Lcom/mintegral/msdk/out/Frame;->getTemplate()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v1, "cids"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v1, "unit_id"

    iget-object v3, p0, Lcom/mintegral/msdk/nativex/listener/RollingPagerListenrt;->c:Ljava/lang/String;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v1, "2000005"

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/common/e/c;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 84
    iget-object v2, p0, Lcom/mintegral/msdk/nativex/listener/RollingPagerListenrt;->b:Lcom/mintegral/msdk/base/common/e/b;

    const-string v3, "native_rollbc"

    iget-object v4, p0, Lcom/mintegral/msdk/nativex/listener/RollingPagerListenrt;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v4, v0}, Lcom/mintegral/msdk/base/common/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mintegral/msdk/out/Frame;)V

    goto/16 :goto_16
.end method

.method public final a(Lcom/mintegral/msdk/out/NativeListener$FilpListener;)V
    .registers 2

    .prologue
    .line 27
    iput-object p1, p0, Lcom/mintegral/msdk/nativex/listener/RollingPagerListenrt;->e:Lcom/mintegral/msdk/out/NativeListener$FilpListener;

    .line 28
    return-void
.end method

.method public final a(Ljava/util/List;Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/out/Frame;",
            ">;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    iput-object p1, p0, Lcom/mintegral/msdk/nativex/listener/RollingPagerListenrt;->a:Ljava/util/List;

    .line 32
    new-instance v0, Lcom/mintegral/msdk/base/common/e/b;

    const/4 v1, 0x2

    invoke-direct {v0, p2, v1}, Lcom/mintegral/msdk/base/common/e/b;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/listener/RollingPagerListenrt;->b:Lcom/mintegral/msdk/base/common/e/b;

    .line 33
    iput-object p3, p0, Lcom/mintegral/msdk/nativex/listener/RollingPagerListenrt;->c:Ljava/lang/String;

    .line 34
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/listener/RollingPagerListenrt;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/nativex/listener/RollingPagerListenrt;->a(I)V

    .line 36
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .registers 2

    .prologue
    .line 40
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    .prologue
    .line 44
    return-void
.end method

.method public onPageSelected(I)V
    .registers 2

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/mintegral/msdk/nativex/listener/RollingPagerListenrt;->a(I)V

    .line 50
    return-void
.end method
