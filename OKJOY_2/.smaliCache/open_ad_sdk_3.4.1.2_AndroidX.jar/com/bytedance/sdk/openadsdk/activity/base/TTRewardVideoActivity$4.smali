.class Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity$4;
.super Ljava/lang/Object;
.source "TTRewardVideoActivity.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/widget/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->f(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/widget/c;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;ZLcom/bytedance/sdk/openadsdk/core/widget/c;)V
    .registers 4

    .line 453
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity$4;->c:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity$4;->a:Z

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity$4;->b:Lcom/bytedance/sdk/openadsdk/core/widget/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 456
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity$4;->c:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-eqz v0, :cond_d

    .line 457
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity$4;->c:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->k()V

    .line 459
    :cond_d
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity$4;->a:Z

    if-eqz v0, :cond_16

    .line 460
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity$4;->c:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->H()V

    .line 462
    :cond_16
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity$4;->b:Lcom/bytedance/sdk/openadsdk/core/widget/c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/c;->dismiss()V

    .line 463
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity$4;->c:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->aa:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 464
    return-void
.end method

.method public b()V
    .registers 3

    .line 468
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity$4;->b:Lcom/bytedance/sdk/openadsdk/core/widget/c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/c;->dismiss()V

    .line 469
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity$4;->c:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->aa:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 471
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity$4;->c:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;

    const v1, 0x7fffffff

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->ay:I

    .line 472
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity$4;->a:Z

    if-eqz v0, :cond_23

    .line 473
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity$4;->c:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->b(Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;)V

    .line 474
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity$4;->c:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->finish()V

    .line 475
    return-void

    .line 477
    :cond_23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity$4;->c:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->c(Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;)V

    .line 478
    return-void
.end method
