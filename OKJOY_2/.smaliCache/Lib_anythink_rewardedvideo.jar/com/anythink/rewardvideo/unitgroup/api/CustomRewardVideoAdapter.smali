.class public abstract Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;
.super Lcom/anythink/core/api/ATBaseAdAdapter;


# instance fields
.field protected mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Lcom/anythink/core/api/ATBaseAdAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public clearImpressionListener()V
    .registers 2

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 27
    return-void
.end method

.method public final internalShow(Landroid/app/Activity;Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;)V
    .registers 3

    .line 21
    iput-object p2, p0, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 22
    invoke-virtual {p0, p1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->show(Landroid/app/Activity;)V

    .line 23
    return-void
.end method

.method public abstract show(Landroid/app/Activity;)V
.end method
