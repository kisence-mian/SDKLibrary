.class Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$19;
.super Ljava/lang/Object;
.source "TTBaseVideoActivity.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/f/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;)V
    .registers 2

    .line 3021
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$19;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .line 3024
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$19;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3025
    return-void

    .line 3027
    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$19;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$19;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->A()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 3029
    return-void

    .line 3032
    :cond_1a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$19;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$19;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->B()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 3033
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$19;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->I:Lcom/bytedance/sdk/openadsdk/utils/al;

    const/16 v1, 0x320

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/al;->removeMessages(I)V

    .line 3034
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$19;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->I:Lcom/bytedance/sdk/openadsdk/utils/al;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$19;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/al;->sendMessage(Landroid/os/Message;)Z

    .line 3036
    :cond_41
    return-void
.end method
