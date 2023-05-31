.class Lcom/kwad/sdk/reward/KSRewardVideoActivity$l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/reward/b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/reward/KSRewardVideoActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/reward/KSRewardVideoActivity;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/reward/KSRewardVideoActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivity$l;->a:Lcom/kwad/sdk/reward/KSRewardVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivity$l;->a:Lcom/kwad/sdk/reward/KSRewardVideoActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kwad/sdk/reward/KSRewardVideoActivity;->a(Lcom/kwad/sdk/reward/KSRewardVideoActivity;I)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivity$l;->a:Lcom/kwad/sdk/reward/KSRewardVideoActivity;

    invoke-virtual {v0}, Lcom/kwad/sdk/reward/KSRewardVideoActivity;->finish()V

    return-void
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivity$l;->a:Lcom/kwad/sdk/reward/KSRewardVideoActivity;

    invoke-static {v0}, Lcom/kwad/sdk/reward/KSRewardVideoActivity;->b(Lcom/kwad/sdk/reward/KSRewardVideoActivity;)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivity$l;->a:Lcom/kwad/sdk/reward/KSRewardVideoActivity;

    invoke-static {v0}, Lcom/kwad/sdk/reward/KSRewardVideoActivity;->i(Lcom/kwad/sdk/reward/KSRewardVideoActivity;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivity$l;->a:Lcom/kwad/sdk/reward/KSRewardVideoActivity;

    invoke-static {v1}, Lcom/kwad/sdk/reward/KSRewardVideoActivity;->a(Lcom/kwad/sdk/reward/KSRewardVideoActivity;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/f/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;)V

    return-void
.end method

.method public c()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivity$l;->a:Lcom/kwad/sdk/reward/KSRewardVideoActivity;

    invoke-static {v0}, Lcom/kwad/sdk/reward/KSRewardVideoActivity;->h(Lcom/kwad/sdk/reward/KSRewardVideoActivity;)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivity$l;->a:Lcom/kwad/sdk/reward/KSRewardVideoActivity;

    invoke-static {v0}, Lcom/kwad/sdk/reward/KSRewardVideoActivity;->i(Lcom/kwad/sdk/reward/KSRewardVideoActivity;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivity$l;->a:Lcom/kwad/sdk/reward/KSRewardVideoActivity;

    invoke-static {v1}, Lcom/kwad/sdk/reward/KSRewardVideoActivity;->a(Lcom/kwad/sdk/reward/KSRewardVideoActivity;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/f/b;->b(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;)V

    return-void
.end method
