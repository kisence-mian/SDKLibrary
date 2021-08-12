.class Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$9;
.super Ljava/lang/Object;
.source "TTDelegateActivity.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/widget/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;)V
    .registers 2

    .line 437
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$9;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Dialog;)V
    .registers 2

    .line 440
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$9;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;)Lcom/bytedance/sdk/openadsdk/core/widget/b;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 441
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$9;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;)Lcom/bytedance/sdk/openadsdk/core/widget/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/b;->dismiss()V

    .line 443
    :cond_11
    return-void
.end method
