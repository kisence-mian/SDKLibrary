.class final Lcom/mintegral/msdk/rover/b$2;
.super Lcom/mintegral/msdk/rover/h;
.source "RoverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/rover/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/rover/b;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/rover/b;)V
    .registers 2

    .prologue
    .line 71
    iput-object p1, p0, Lcom/mintegral/msdk/rover/b$2;->a:Lcom/mintegral/msdk/rover/b;

    invoke-direct {p0}, Lcom/mintegral/msdk/rover/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/mintegral/msdk/rover/RoverCampaignUnit;)V
    .registers 6

    .prologue
    .line 75
    iget-object v0, p1, Lcom/mintegral/msdk/rover/RoverCampaignUnit;->ads:Ljava/util/ArrayList;

    .line 76
    if-eqz v0, :cond_20

    .line 77
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 78
    if-eqz v0, :cond_8

    .line 79
    new-instance v2, Lcom/mintegral/msdk/rover/c;

    iget-object v3, p0, Lcom/mintegral/msdk/rover/b$2;->a:Lcom/mintegral/msdk/rover/b;

    iget-object v3, v3, Lcom/mintegral/msdk/rover/b;->a:Landroid/content/Context;

    invoke-direct {v2, v0, v3}, Lcom/mintegral/msdk/rover/c;-><init>(Lcom/mintegral/msdk/base/entity/CampaignEx;Landroid/content/Context;)V

    goto :goto_8

    .line 84
    :cond_20
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 89
    return-void
.end method
