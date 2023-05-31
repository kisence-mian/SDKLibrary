.class final Lcom/mintegral/msdk/base/b/f$2;
.super Ljava/lang/Object;
.source "CampaignDao.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/base/b/f;->b(Ljava/util/List;Ljava/lang/String;)V
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
    .line 726
    iput-object p1, p0, Lcom/mintegral/msdk/base/b/f$2;->c:Lcom/mintegral/msdk/base/b/f;

    iput-object p2, p0, Lcom/mintegral/msdk/base/b/f$2;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/mintegral/msdk/base/b/f$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 730
    iget-object v0, p0, Lcom/mintegral/msdk/base/b/f$2;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 731
    iget-object v2, p0, Lcom/mintegral/msdk/base/b/f$2;->c:Lcom/mintegral/msdk/base/b/f;

    iget-object v3, p0, Lcom/mintegral/msdk/base/b/f$2;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/mintegral/msdk/base/b/f;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;)J

    goto :goto_6

    .line 734
    :cond_1a
    return-void
.end method
