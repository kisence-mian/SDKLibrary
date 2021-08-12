.class Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity$11;
.super Ljava/lang/Object;
.source "TTVideoWebPageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;)V
    .registers 2

    .line 383
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity$11;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 386
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity$11;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;->g(Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    .line 387
    return-void
.end method
