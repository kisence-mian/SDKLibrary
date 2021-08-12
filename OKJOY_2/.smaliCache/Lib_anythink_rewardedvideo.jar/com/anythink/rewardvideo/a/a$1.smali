.class final Lcom/anythink/rewardvideo/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/rewardvideo/a/a;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/anythink/rewardvideo/api/ATRewardVideoListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/d/b;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

.field final synthetic e:Lcom/anythink/rewardvideo/a/a;


# direct methods
.method constructor <init>(Lcom/anythink/rewardvideo/a/a;Lcom/anythink/core/common/d/b;Ljava/lang/String;Landroid/app/Activity;Lcom/anythink/rewardvideo/api/ATRewardVideoListener;)V
    .registers 6

    .line 85
    iput-object p1, p0, Lcom/anythink/rewardvideo/a/a$1;->e:Lcom/anythink/rewardvideo/a/a;

    iput-object p2, p0, Lcom/anythink/rewardvideo/a/a$1;->a:Lcom/anythink/core/common/d/b;

    iput-object p3, p0, Lcom/anythink/rewardvideo/a/a$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/anythink/rewardvideo/a/a$1;->c:Landroid/app/Activity;

    iput-object p5, p0, Lcom/anythink/rewardvideo/a/a$1;->d:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 88
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/a$1;->a:Lcom/anythink/core/common/d/b;

    invoke-virtual {v0}, Lcom/anythink/core/common/d/b;->g()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/api/ATBaseAdAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object v0

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 91
    if-eqz v0, :cond_34

    .line 92
    iget-object v3, p0, Lcom/anythink/rewardvideo/a/a$1;->e:Lcom/anythink/rewardvideo/a/a;

    invoke-static {v3}, Lcom/anythink/rewardvideo/a/a;->a(Lcom/anythink/rewardvideo/a/a;)Ljava/lang/String;

    move-result-object v3

    .line 1389
    iput-object v3, v0, Lcom/anythink/core/common/d/d;->r:Ljava/lang/String;

    .line 93
    iget-object v3, p0, Lcom/anythink/rewardvideo/a/a$1;->b:Ljava/lang/String;

    .line 2229
    iput-object v3, v0, Lcom/anythink/core/common/d/d;->y:Ljava/lang/String;

    .line 94
    invoke-virtual {v0}, Lcom/anythink/core/common/d/d;->F()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/anythink/core/common/d/d;->o()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1, v2}, Lcom/anythink/core/common/g/g;->a(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/anythink/core/common/d/d;->d(Ljava/lang/String;)V

    .line 97
    iget-object v3, p0, Lcom/anythink/rewardvideo/a/a$1;->e:Lcom/anythink/rewardvideo/a/a;

    invoke-static {v3}, Lcom/anythink/rewardvideo/a/a;->b(Lcom/anythink/rewardvideo/a/a;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/anythink/core/common/g/n;->a(Landroid/content/Context;Lcom/anythink/core/common/d/d;)V

    .line 100
    :cond_34
    iget-object v3, p0, Lcom/anythink/rewardvideo/a/a$1;->e:Lcom/anythink/rewardvideo/a/a;

    invoke-static {v3}, Lcom/anythink/rewardvideo/a/a;->c(Lcom/anythink/rewardvideo/a/a;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/anythink/core/common/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/common/f/a;

    move-result-object v3

    const/16 v4, 0xd

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/anythink/core/common/f/a;->a(ILcom/anythink/core/common/d/aa;J)V

    .line 102
    invoke-static {}, Lcom/anythink/core/common/a;->a()Lcom/anythink/core/common/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/rewardvideo/a/a$1;->e:Lcom/anythink/rewardvideo/a/a;

    invoke-static {v1}, Lcom/anythink/rewardvideo/a/a;->d(Lcom/anythink/rewardvideo/a/a;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/rewardvideo/a/a$1;->a:Lcom/anythink/core/common/d/b;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/common/a;->a(Landroid/content/Context;Lcom/anythink/core/common/d/b;)V

    .line 105
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/a$1;->a:Lcom/anythink/core/common/d/b;

    invoke-virtual {v0}, Lcom/anythink/core/common/d/b;->g()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v0

    check-cast v0, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    .line 106
    iget-object v1, p0, Lcom/anythink/rewardvideo/a/a$1;->c:Landroid/app/Activity;

    if-eqz v1, :cond_61

    .line 107
    invoke-virtual {v0, v1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->refreshActivityContext(Landroid/app/Activity;)V

    .line 110
    :cond_61
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    new-instance v2, Lcom/anythink/rewardvideo/a/a$1$1;

    invoke-direct {v2, p0, v0}, Lcom/anythink/rewardvideo/a/a$1$1;-><init>(Lcom/anythink/rewardvideo/a/a$1;Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;)V

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 117
    return-void
.end method
