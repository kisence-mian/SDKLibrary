.class Lcom/kwad/sdk/reward/KSRewardVideoActivity$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/core/download/g/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/reward/KSRewardVideoActivity;->onClick(Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivity$e;->a:Lcom/kwad/sdk/reward/KSRewardVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivity$e;->a:Lcom/kwad/sdk/reward/KSRewardVideoActivity;

    const/16 v1, 0x23

    invoke-static {v0, v1}, Lcom/kwad/sdk/reward/KSRewardVideoActivity;->b(Lcom/kwad/sdk/reward/KSRewardVideoActivity;I)V

    return-void
.end method
