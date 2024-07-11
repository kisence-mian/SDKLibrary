.class final Lcom/anythink/rewardvideo/a/a$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/rewardvideo/a/a$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

.field final synthetic b:Lcom/anythink/rewardvideo/a/a$1;


# direct methods
.method constructor <init>(Lcom/anythink/rewardvideo/a/a$1;Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;)V
    .registers 3

    .line 110
    iput-object p1, p0, Lcom/anythink/rewardvideo/a/a$1$1;->b:Lcom/anythink/rewardvideo/a/a$1;

    iput-object p2, p0, Lcom/anythink/rewardvideo/a/a$1$1;->a:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 113
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/a$1$1;->a:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    iget-object v1, p0, Lcom/anythink/rewardvideo/a/a$1$1;->b:Lcom/anythink/rewardvideo/a/a$1;

    iget-object v1, v1, Lcom/anythink/rewardvideo/a/a$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->setScenario(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/a$1$1;->a:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    iget-object v1, p0, Lcom/anythink/rewardvideo/a/a$1$1;->b:Lcom/anythink/rewardvideo/a/a$1;

    iget-object v1, v1, Lcom/anythink/rewardvideo/a/a$1;->c:Landroid/app/Activity;

    new-instance v2, Lcom/anythink/rewardvideo/a/c;

    iget-object v3, p0, Lcom/anythink/rewardvideo/a/a$1$1;->a:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    iget-object v4, p0, Lcom/anythink/rewardvideo/a/a$1$1;->b:Lcom/anythink/rewardvideo/a/a$1;

    iget-object v4, v4, Lcom/anythink/rewardvideo/a/a$1;->d:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    invoke-direct {v2, v3, v4}, Lcom/anythink/rewardvideo/a/c;-><init>(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;Lcom/anythink/rewardvideo/api/ATRewardVideoListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->internalShow(Landroid/app/Activity;Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;)V

    .line 115
    return-void
.end method
