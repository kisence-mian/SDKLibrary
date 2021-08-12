.class Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$14;
.super Ljava/lang/Object;
.source "TTBaseVideoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->onStop()V
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

    .line 2338
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$14;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 2341
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$14;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->au:Lcom/bytedance/sdk/openadsdk/f/g;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/g;->b()I

    move-result v0

    if-lez v0, :cond_12

    .line 2342
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$14;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->au:Lcom/bytedance/sdk/openadsdk/f/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/g;->a(Z)V

    .line 2344
    :cond_12
    return-void
.end method
