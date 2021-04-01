.class final Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$5;
.super Ljava/lang/Object;
.source "MTGRewardVideoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)V
    .registers 2

    .prologue
    .line 764
    iput-object p1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$5;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 767
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$5;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->a(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 768
    return-void
.end method
