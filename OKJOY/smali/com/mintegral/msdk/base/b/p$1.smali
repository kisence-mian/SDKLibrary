.class final Lcom/mintegral/msdk/base/b/p$1;
.super Ljava/lang/Object;
.source "PBInfoDao.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/base/b/p;->a(Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/mintegral/msdk/base/b/p;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/base/b/p;Ljava/util/List;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 99
    iput-object p1, p0, Lcom/mintegral/msdk/base/b/p$1;->c:Lcom/mintegral/msdk/base/b/p;

    iput-object p2, p0, Lcom/mintegral/msdk/base/b/p$1;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/mintegral/msdk/base/b/p$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mintegral/msdk/base/b/p$1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/m;

    .line 103
    invoke-static {}, Lcom/mintegral/msdk/base/b/p;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "insertOrUpdate strat list size:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mintegral/msdk/base/b/p$1;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uuid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mintegral/msdk/base/b/p$1;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v2, p0, Lcom/mintegral/msdk/base/b/p$1;->c:Lcom/mintegral/msdk/base/b/p;

    iget-object v3, p0, Lcom/mintegral/msdk/base/b/p$1;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/mintegral/msdk/base/b/p;->a(Lcom/mintegral/msdk/base/entity/m;Ljava/lang/String;)J

    goto :goto_6

    .line 106
    :cond_42
    return-void
.end method
