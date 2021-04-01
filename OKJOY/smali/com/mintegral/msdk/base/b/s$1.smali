.class final Lcom/mintegral/msdk/base/b/s$1;
.super Ljava/lang/Object;
.source "SCDao.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/base/b/s;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/mintegral/msdk/base/b/s;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/base/b/s;Ljava/util/List;)V
    .registers 3

    .prologue
    .line 147
    iput-object p1, p0, Lcom/mintegral/msdk/base/b/s$1;->b:Lcom/mintegral/msdk/base/b/s;

    iput-object p2, p0, Lcom/mintegral/msdk/base/b/s$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 151
    iget-object v0, p0, Lcom/mintegral/msdk/base/b/s$1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 152
    iget-object v2, p0, Lcom/mintegral/msdk/base/b/s$1;->b:Lcom/mintegral/msdk/base/b/s;

    invoke-virtual {v2, v0}, Lcom/mintegral/msdk/base/b/s;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;)J

    goto :goto_6

    .line 155
    :cond_18
    return-void
.end method
