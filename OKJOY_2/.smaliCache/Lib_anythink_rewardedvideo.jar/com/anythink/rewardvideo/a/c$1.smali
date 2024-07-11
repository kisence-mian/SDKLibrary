.class final Lcom/anythink/rewardvideo/a/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/rewardvideo/a/c;->onRewardedVideoAdPlayFailed(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/rewardvideo/a/c;


# direct methods
.method constructor <init>(Lcom/anythink/rewardvideo/a/c;)V
    .registers 2

    .line 95
    iput-object p1, p0, Lcom/anythink/rewardvideo/a/c$1;->a:Lcom/anythink/rewardvideo/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/c$1;->a:Lcom/anythink/rewardvideo/a/c;

    invoke-static {v0}, Lcom/anythink/rewardvideo/a/c;->a(Lcom/anythink/rewardvideo/a/c;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->clearImpressionListener()V

    .line 99
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/c$1;->a:Lcom/anythink/rewardvideo/a/c;

    invoke-static {v0}, Lcom/anythink/rewardvideo/a/c;->a(Lcom/anythink/rewardvideo/a/c;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->destory()V

    .line 100
    return-void
.end method
