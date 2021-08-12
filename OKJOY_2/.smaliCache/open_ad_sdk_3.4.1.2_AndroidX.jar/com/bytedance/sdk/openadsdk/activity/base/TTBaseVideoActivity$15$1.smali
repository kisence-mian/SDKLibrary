.class Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$15$1;
.super Ljava/lang/Object;
.source "TTBaseVideoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$15;->onSystemUiVisibilityChange(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$15;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$15;)V
    .registers 2

    .line 2543
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$15$1;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 2546
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$15$1;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$15;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$15;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/app/Activity;)V

    .line 2547
    return-void
.end method
