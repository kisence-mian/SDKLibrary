.class final Lcom/mintegral/msdk/d/b$5;
.super Ljava/lang/Object;
.source "ShortCutsManager.java"

# interfaces
.implements Lcom/mintegral/msdk/d/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/d/b;->b(Lcom/mintegral/msdk/base/entity/CampaignEx;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/mintegral/msdk/c/a;

.field final synthetic d:Lcom/mintegral/msdk/d/b;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/d/b;Landroid/app/Activity;Landroid/content/Context;Lcom/mintegral/msdk/c/a;)V
    .registers 5

    .prologue
    .line 812
    iput-object p1, p0, Lcom/mintegral/msdk/d/b$5;->d:Lcom/mintegral/msdk/d/b;

    iput-object p2, p0, Lcom/mintegral/msdk/d/b$5;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/mintegral/msdk/d/b$5;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/mintegral/msdk/d/b$5;->c:Lcom/mintegral/msdk/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 828
    iget-object v0, p0, Lcom/mintegral/msdk/d/b$5;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/mintegral/msdk/d/b;->a(Landroid/app/Activity;)V

    .line 829
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
    .line 815
    if-eqz p1, :cond_28

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_28

    .line 816
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/mintegral/msdk/d/b$5;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 817
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 818
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 819
    iget-object v2, p0, Lcom/mintegral/msdk/d/b$5;->d:Lcom/mintegral/msdk/d/b;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v2, v1, v0}, Lcom/mintegral/msdk/d/b;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;Landroid/app/Activity;)V

    .line 824
    :cond_27
    :goto_27
    return-void

    .line 822
    :cond_28
    iget-object v0, p0, Lcom/mintegral/msdk/d/b$5;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/mintegral/msdk/d/b;->a(Landroid/app/Activity;)V

    goto :goto_27
.end method

.method public final b()V
    .registers 4

    .prologue
    .line 833
    iget-object v0, p0, Lcom/mintegral/msdk/d/b$5;->d:Lcom/mintegral/msdk/d/b;

    iget-object v1, p0, Lcom/mintegral/msdk/d/b$5;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/mintegral/msdk/d/b$5;->c:Lcom/mintegral/msdk/c/a;

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/d/b;->b(Lcom/mintegral/msdk/d/b;Landroid/content/Context;Lcom/mintegral/msdk/c/a;)V

    .line 834
    iget-object v0, p0, Lcom/mintegral/msdk/d/b$5;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/mintegral/msdk/d/b;->a(Landroid/app/Activity;)V

    .line 835
    return-void
.end method
