.class final Lcom/mintegral/msdk/base/b/f$1;
.super Ljava/lang/Object;
.source "CampaignDao.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/base/b/f;->a(Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/mintegral/msdk/base/b/f;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/base/b/f;Ljava/util/List;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 706
    iput-object p1, p0, Lcom/mintegral/msdk/base/b/f$1;->c:Lcom/mintegral/msdk/base/b/f;

    iput-object p2, p0, Lcom/mintegral/msdk/base/b/f$1;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/mintegral/msdk/base/b/f$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .prologue
    .line 710
    iget-object v0, p0, Lcom/mintegral/msdk/base/b/f$1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 711
    iget-object v2, p0, Lcom/mintegral/msdk/base/b/f$1;->c:Lcom/mintegral/msdk/base/b/f;

    iget-object v3, p0, Lcom/mintegral/msdk/base/b/f$1;->b:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Lcom/mintegral/msdk/base/b/f;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;I)J

    goto :goto_6

    .line 714
    :cond_1b
    return-void
.end method
