.class final Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/network/toutiao/TTATInitManager$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->loadRewardVideoAd(Landroid/app/Activity;Ljava/util/Map;Lcom/anythink/core/api/ATMediationSetting;Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/anythink/network/toutiao/TTRewardedVideoSetting;

.field final synthetic c:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;Landroid/app/Activity;Lcom/anythink/network/toutiao/TTRewardedVideoSetting;)V
    .registers 4

    .prologue
    .line 148
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$3;->c:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    iput-object p2, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$3;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$3;->b:Lcom/anythink/network/toutiao/TTRewardedVideoSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .registers 4

    .prologue
    .line 151
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$3;->c:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$3;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$3;->b:Lcom/anythink/network/toutiao/TTRewardedVideoSetting;

    invoke-static {v0, v1, v2}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->a(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;Landroid/content/Context;Lcom/anythink/network/toutiao/TTRewardedVideoSetting;)V

    .line 152
    return-void
.end method
