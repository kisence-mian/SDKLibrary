.class final Lcom/anythink/rewardvideo/a/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/rewardvideo/a/a/a;->a(Landroid/app/Activity;Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;Ljava/util/Map;Lcom/anythink/core/api/ATMediationSetting;Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lcom/anythink/core/api/ATMediationSetting;

.field final synthetic e:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;


# direct methods
.method constructor <init>(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;Landroid/app/Activity;Ljava/util/Map;Lcom/anythink/core/api/ATMediationSetting;Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;)V
    .registers 6

    .prologue
    .line 32
    iput-object p1, p0, Lcom/anythink/rewardvideo/a/a/a$1;->a:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    iput-object p2, p0, Lcom/anythink/rewardvideo/a/a/a$1;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/anythink/rewardvideo/a/a/a$1;->c:Ljava/util/Map;

    iput-object p4, p0, Lcom/anythink/rewardvideo/a/a/a$1;->d:Lcom/anythink/core/api/ATMediationSetting;

    iput-object p5, p0, Lcom/anythink/rewardvideo/a/a/a$1;->e:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .prologue
    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/a/a$1;->a:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    iget-object v1, p0, Lcom/anythink/rewardvideo/a/a/a$1;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/anythink/rewardvideo/a/a/a$1;->c:Ljava/util/Map;

    iget-object v3, p0, Lcom/anythink/rewardvideo/a/a/a$1;->d:Lcom/anythink/core/api/ATMediationSetting;

    iget-object v4, p0, Lcom/anythink/rewardvideo/a/a/a$1;->e:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->loadRewardVideoAd(Landroid/app/Activity;Ljava/util/Map;Lcom/anythink/core/api/ATMediationSetting;Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_e

    .line 45
    :goto_d
    return-void

    .line 40
    :catch_e
    move-exception v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 42
    const-string v1, "2006"

    const-string v2, ""

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/anythink/rewardvideo/a/a/a$1;->e:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    iget-object v2, p0, Lcom/anythink/rewardvideo/a/a/a$1;->a:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    invoke-interface {v1, v2, v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;->onRewardedVideoAdFailed(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;Lcom/anythink/core/api/AdError;)V

    goto :goto_d
.end method
