.class final Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$3;
.super Ljava/lang/Object;
.source "MTGRewardVideoActivity.java"

# interfaces
.implements Lcom/mintegral/msdk/f/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->loadModuleDatas()V
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
    .line 374
    iput-object p1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$3;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCacheAvailable(Ljava/io/File;Ljava/lang/String;I)V
    .registers 8

    .prologue
    .line 377
    const-string v0, "============"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reward------"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const/16 v0, 0x64

    if-ne p3, v0, :cond_33

    .line 381
    :try_start_18
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$3;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->j(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)Lcom/mintegral/msdk/videocommon/download/a;

    move-result-object v0

    invoke-static {p1}, Lcom/mintegral/msdk/base/utils/k;->a(Ljava/io/File;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$3;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-static {v1}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->b(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoMD5Value()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/mintegral/msdk/videocommon/download/a;->a(JZ)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_33} :catch_34

    .line 386
    :cond_33
    :goto_33
    return-void

    .line 383
    :catch_34
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_33
.end method

.method public final onCacheError(Ljava/lang/Throwable;)V
    .registers 4

    .prologue
    .line 389
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$3;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->j(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)Lcom/mintegral/msdk/videocommon/download/a;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/videocommon/download/a;->a(Ljava/lang/String;)V

    .line 390
    return-void
.end method
