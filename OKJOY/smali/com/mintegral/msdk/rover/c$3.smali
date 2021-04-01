.class final Lcom/mintegral/msdk/rover/c$3;
.super Ljava/lang/Object;
.source "RoverDoing.java"

# interfaces
.implements Lcom/mintegral/msdk/click/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/rover/c;-><init>(Lcom/mintegral/msdk/base/entity/CampaignEx;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/rover/c;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/rover/c;)V
    .registers 2

    .prologue
    .line 125
    iput-object p1, p0, Lcom/mintegral/msdk/rover/c$3;->a:Lcom/mintegral/msdk/rover/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 137
    iget-object v0, p0, Lcom/mintegral/msdk/rover/c$3;->a:Lcom/mintegral/msdk/rover/c;

    invoke-static {v0}, Lcom/mintegral/msdk/rover/c;->a(Lcom/mintegral/msdk/rover/c;)Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/mintegral/msdk/rover/c$3;->a:Lcom/mintegral/msdk/rover/c;

    invoke-static {v0}, Lcom/mintegral/msdk/rover/c;->a(Lcom/mintegral/msdk/rover/c;)Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRoverIsPost()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    .line 138
    iget-object v0, p0, Lcom/mintegral/msdk/rover/c$3;->a:Lcom/mintegral/msdk/rover/c;

    invoke-static {v0}, Lcom/mintegral/msdk/rover/c;->b(Lcom/mintegral/msdk/rover/c;)V

    .line 140
    :cond_1a
    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 144
    iget-object v0, p0, Lcom/mintegral/msdk/rover/c$3;->a:Lcom/mintegral/msdk/rover/c;

    invoke-static {v0}, Lcom/mintegral/msdk/rover/c;->a(Lcom/mintegral/msdk/rover/c;)Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/mintegral/msdk/rover/c$3;->a:Lcom/mintegral/msdk/rover/c;

    invoke-static {v0}, Lcom/mintegral/msdk/rover/c;->a(Lcom/mintegral/msdk/rover/c;)Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRoverIsPost()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    .line 145
    iget-object v0, p0, Lcom/mintegral/msdk/rover/c$3;->a:Lcom/mintegral/msdk/rover/c;

    invoke-static {v0}, Lcom/mintegral/msdk/rover/c;->b(Lcom/mintegral/msdk/rover/c;)V

    .line 147
    :cond_1a
    return-void
.end method
