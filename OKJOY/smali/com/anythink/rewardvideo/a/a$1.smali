.class final Lcom/anythink/rewardvideo/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/rewardvideo/a/a;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/anythink/rewardvideo/a/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/b/c/a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Lcom/anythink/rewardvideo/a/d;

.field final synthetic e:Lcom/anythink/rewardvideo/a/a;


# direct methods
.method constructor <init>(Lcom/anythink/rewardvideo/a/a;Lcom/anythink/core/b/c/a;Ljava/lang/String;Landroid/app/Activity;Lcom/anythink/rewardvideo/a/d;)V
    .registers 6

    .prologue
    .line 80
    iput-object p1, p0, Lcom/anythink/rewardvideo/a/a$1;->e:Lcom/anythink/rewardvideo/a/a;

    iput-object p2, p0, Lcom/anythink/rewardvideo/a/a$1;->a:Lcom/anythink/core/b/c/a;

    iput-object p3, p0, Lcom/anythink/rewardvideo/a/a$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/anythink/rewardvideo/a/a$1;->c:Landroid/app/Activity;

    iput-object p5, p0, Lcom/anythink/rewardvideo/a/a$1;->d:Lcom/anythink/rewardvideo/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 83
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/a$1;->a:Lcom/anythink/core/b/c/a;

    invoke-virtual {v0}, Lcom/anythink/core/b/c/a;->h()Lcom/anythink/core/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/b;->getTrackingInfo()Lcom/anythink/core/b/c/b;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_21

    .line 85
    iget-object v1, p0, Lcom/anythink/rewardvideo/a/a$1;->e:Lcom/anythink/rewardvideo/a/a;

    invoke-static {v1}, Lcom/anythink/rewardvideo/a/a;->a(Lcom/anythink/rewardvideo/a/a;)Ljava/lang/String;

    move-result-object v1

    .line 1334
    iput-object v1, v0, Lcom/anythink/core/b/c/b;->p:Ljava/lang/String;

    .line 86
    iget-object v1, p0, Lcom/anythink/rewardvideo/a/a$1;->b:Ljava/lang/String;

    .line 2182
    iput-object v1, v0, Lcom/anythink/core/b/c/b;->v:Ljava/lang/String;

    .line 88
    iget-object v1, p0, Lcom/anythink/rewardvideo/a/a$1;->e:Lcom/anythink/rewardvideo/a/a;

    invoke-static {v1}, Lcom/anythink/rewardvideo/a/a;->b(Lcom/anythink/rewardvideo/a/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/anythink/core/b/g/m;->a(Landroid/content/Context;Lcom/anythink/core/b/c/b;)V

    .line 91
    :cond_21
    iget-object v1, p0, Lcom/anythink/rewardvideo/a/a$1;->e:Lcom/anythink/rewardvideo/a/a;

    invoke-static {v1}, Lcom/anythink/rewardvideo/a/a;->c(Lcom/anythink/rewardvideo/a/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/b/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/b/f/a;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v0}, Lcom/anythink/core/b/f/a;->a(ILcom/anythink/core/b/c/n;)V

    .line 93
    invoke-static {}, Lcom/anythink/core/b/a;->a()Lcom/anythink/core/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/rewardvideo/a/a$1;->e:Lcom/anythink/rewardvideo/a/a;

    invoke-static {v1}, Lcom/anythink/rewardvideo/a/a;->d(Lcom/anythink/rewardvideo/a/a;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/rewardvideo/a/a$1;->a:Lcom/anythink/core/b/c/a;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/b/a;->a(Landroid/content/Context;Lcom/anythink/core/b/c/a;)V

    .line 96
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/a$1;->a:Lcom/anythink/core/b/c/a;

    invoke-virtual {v0}, Lcom/anythink/core/b/c/a;->h()Lcom/anythink/core/b/a/b;

    move-result-object v0

    check-cast v0, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    .line 97
    iget-object v1, p0, Lcom/anythink/rewardvideo/a/a$1;->c:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->refreshActivityContext(Landroid/app/Activity;)V

    .line 100
    iget-object v1, p0, Lcom/anythink/rewardvideo/a/a$1;->e:Lcom/anythink/rewardvideo/a/a;

    iget-object v1, v1, Lcom/anythink/rewardvideo/a/a;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->setUserId(Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/anythink/rewardvideo/a/a$1;->d:Lcom/anythink/rewardvideo/a/d;

    invoke-virtual {v0, v1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->setAdImpressionListener(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;)V

    .line 103
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v1

    new-instance v2, Lcom/anythink/rewardvideo/a/a$1$1;

    invoke-direct {v2, p0, v0}, Lcom/anythink/rewardvideo/a/a$1$1;-><init>(Lcom/anythink/rewardvideo/a/a$1;Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;)V

    invoke-virtual {v1, v2}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 109
    return-void
.end method
