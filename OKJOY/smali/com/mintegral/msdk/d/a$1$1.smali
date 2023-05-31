.class final Lcom/mintegral/msdk/d/a$1$1;
.super Lcom/mintegral/msdk/d/b/b;
.source "ShortCutsDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/d/a$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/d/a$1;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/d/a$1;)V
    .registers 2

    .prologue
    .line 82
    iput-object p1, p0, Lcom/mintegral/msdk/d/a$1$1;->a:Lcom/mintegral/msdk/d/a$1;

    invoke-direct {p0}, Lcom/mintegral/msdk/d/b/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/mintegral/msdk/base/entity/CampaignUnit;)V
    .registers 6

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mintegral/msdk/d/a$1$1;->a:Lcom/mintegral/msdk/d/a$1;

    iget-object v0, v0, Lcom/mintegral/msdk/d/a$1;->b:Lcom/mintegral/msdk/d/a/a;

    if-nez v0, :cond_7

    .line 93
    :goto_6
    return-void

    .line 88
    :cond_7
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getJmDo()I

    move-result v0

    sget v1, Lcom/mintegral/msdk/d/a;->a:I

    if-ne v0, v1, :cond_17

    .line 89
    iget-object v0, p0, Lcom/mintegral/msdk/d/a$1$1;->a:Lcom/mintegral/msdk/d/a$1;

    iget-object v0, v0, Lcom/mintegral/msdk/d/a$1;->b:Lcom/mintegral/msdk/d/a/a;

    invoke-interface {v0}, Lcom/mintegral/msdk/d/a/a;->b()V

    goto :goto_6

    .line 92
    :cond_17
    iget-object v0, p0, Lcom/mintegral/msdk/d/a$1$1;->a:Lcom/mintegral/msdk/d/a$1;

    iget-object v0, v0, Lcom/mintegral/msdk/d/a$1;->b:Lcom/mintegral/msdk/d/a/a;

    iget-object v1, p0, Lcom/mintegral/msdk/d/a$1$1;->a:Lcom/mintegral/msdk/d/a$1;

    iget-object v1, v1, Lcom/mintegral/msdk/d/a$1;->d:Lcom/mintegral/msdk/d/a;

    iget-object v2, p0, Lcom/mintegral/msdk/d/a$1$1;->a:Lcom/mintegral/msdk/d/a$1;

    iget-object v2, v2, Lcom/mintegral/msdk/d/a$1;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mintegral/msdk/d/a;->a(Lcom/mintegral/msdk/d/a;Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/d/a/a;->a(Ljava/util/List;)V

    goto :goto_6
.end method

.method public final b(Lcom/mintegral/msdk/base/entity/CampaignUnit;)V
    .registers 4

    .prologue
    .line 97
    iget-object v0, p0, Lcom/mintegral/msdk/d/a$1$1;->a:Lcom/mintegral/msdk/d/a$1;

    iget-object v0, v0, Lcom/mintegral/msdk/d/a$1;->b:Lcom/mintegral/msdk/d/a/a;

    if-nez v0, :cond_7

    .line 105
    :goto_6
    return-void

    .line 100
    :cond_7
    if-eqz p1, :cond_19

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getJmDo()I

    move-result v0

    sget v1, Lcom/mintegral/msdk/d/a;->a:I

    if-ne v0, v1, :cond_19

    .line 101
    iget-object v0, p0, Lcom/mintegral/msdk/d/a$1$1;->a:Lcom/mintegral/msdk/d/a$1;

    iget-object v0, v0, Lcom/mintegral/msdk/d/a$1;->b:Lcom/mintegral/msdk/d/a/a;

    invoke-interface {v0}, Lcom/mintegral/msdk/d/a/a;->b()V

    goto :goto_6

    .line 104
    :cond_19
    iget-object v0, p0, Lcom/mintegral/msdk/d/a$1$1;->a:Lcom/mintegral/msdk/d/a$1;

    iget-object v0, v0, Lcom/mintegral/msdk/d/a$1;->b:Lcom/mintegral/msdk/d/a/a;

    invoke-interface {v0}, Lcom/mintegral/msdk/d/a/a;->a()V

    goto :goto_6
.end method
