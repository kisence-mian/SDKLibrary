.class final Lcom/anythink/rewardvideo/a/c$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/rewardvideo/a/c;->onRewardedVideoAdClosed()V
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

    .line 128
    iput-object p1, p0, Lcom/anythink/rewardvideo/a/c$2;->a:Lcom/anythink/rewardvideo/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/c$2;->a:Lcom/anythink/rewardvideo/a/c;

    invoke-static {v0}, Lcom/anythink/rewardvideo/a/c;->a(Lcom/anythink/rewardvideo/a/c;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->clearImpressionListener()V

    .line 133
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/c$2;->a:Lcom/anythink/rewardvideo/a/c;

    invoke-static {v0}, Lcom/anythink/rewardvideo/a/c;->a(Lcom/anythink/rewardvideo/a/c;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->destory()V
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_13

    .line 136
    return-void

    .line 134
    :catchall_13
    move-exception v0

    .line 137
    return-void
.end method
