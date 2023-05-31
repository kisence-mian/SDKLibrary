.class final Lcom/mintegral/msdk/base/b/q$1;
.super Ljava/lang/Object;
.source "PInfoDao.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/base/b/q;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/mintegral/msdk/base/b/q;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/base/b/q;Ljava/util/List;)V
    .registers 3

    .prologue
    .line 133
    iput-object p1, p0, Lcom/mintegral/msdk/base/b/q$1;->b:Lcom/mintegral/msdk/base/b/q;

    iput-object p2, p0, Lcom/mintegral/msdk/base/b/q$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 137
    iget-object v0, p0, Lcom/mintegral/msdk/base/b/q$1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/n;

    .line 138
    iget-object v2, p0, Lcom/mintegral/msdk/base/b/q$1;->b:Lcom/mintegral/msdk/base/b/q;

    invoke-virtual {v2, v0}, Lcom/mintegral/msdk/base/b/q;->a(Lcom/mintegral/msdk/base/entity/n;)J

    goto :goto_6

    .line 141
    :cond_18
    return-void
.end method
