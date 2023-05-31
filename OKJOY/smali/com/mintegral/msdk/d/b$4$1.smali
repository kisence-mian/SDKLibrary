.class final Lcom/mintegral/msdk/d/b$4$1;
.super Ljava/lang/Object;
.source "ShortCutsManager.java"

# interfaces
.implements Lcom/mintegral/msdk/d/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/d/b$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/c/a;

.field final synthetic b:Lcom/mintegral/msdk/d/b$4;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/d/b$4;Lcom/mintegral/msdk/c/a;)V
    .registers 3

    .prologue
    .line 745
    iput-object p1, p0, Lcom/mintegral/msdk/d/b$4$1;->b:Lcom/mintegral/msdk/d/b$4;

    iput-object p2, p0, Lcom/mintegral/msdk/d/b$4$1;->a:Lcom/mintegral/msdk/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    .prologue
    .line 756
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .registers 5
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
    .line 748
    if-eqz p1, :cond_17

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_17

    .line 749
    iget-object v0, p0, Lcom/mintegral/msdk/d/b$4$1;->b:Lcom/mintegral/msdk/d/b$4;

    iget-object v1, v0, Lcom/mintegral/msdk/d/b$4;->b:Lcom/mintegral/msdk/d/b;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/mintegral/msdk/d/b;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;Landroid/app/Activity;)V

    .line 751
    :cond_17
    return-void
.end method

.method public final b()V
    .registers 4

    .prologue
    .line 760
    iget-object v0, p0, Lcom/mintegral/msdk/d/b$4$1;->b:Lcom/mintegral/msdk/d/b$4;

    iget-object v0, v0, Lcom/mintegral/msdk/d/b$4;->b:Lcom/mintegral/msdk/d/b;

    iget-object v1, p0, Lcom/mintegral/msdk/d/b$4$1;->b:Lcom/mintegral/msdk/d/b$4;

    iget-object v1, v1, Lcom/mintegral/msdk/d/b$4;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/mintegral/msdk/d/b$4$1;->a:Lcom/mintegral/msdk/c/a;

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/d/b;->b(Lcom/mintegral/msdk/d/b;Landroid/content/Context;Lcom/mintegral/msdk/c/a;)V

    .line 761
    return-void
.end method
