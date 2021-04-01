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

    .prologue
    .line 103
    iput-object p1, p0, Lcom/anythink/rewardvideo/a/a$1$1;->b:Lcom/anythink/rewardvideo/a/a$1;

    iput-object p2, p0, Lcom/anythink/rewardvideo/a/a$1$1;->a:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/a$1$1;->a:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    iget-object v1, p0, Lcom/anythink/rewardvideo/a/a$1$1;->b:Lcom/anythink/rewardvideo/a/a$1;

    iget-object v1, v1, Lcom/anythink/rewardvideo/a/a$1;->c:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->show(Landroid/app/Activity;)V

    .line 107
    return-void
.end method
