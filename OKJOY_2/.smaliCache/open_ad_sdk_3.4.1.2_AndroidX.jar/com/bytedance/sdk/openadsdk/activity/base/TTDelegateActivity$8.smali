.class Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$8;
.super Ljava/lang/Object;
.source "TTDelegateActivity.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/widget/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 407
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$8;->c:Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$8;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$8;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Dialog;)V
    .registers 2

    .line 410
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$8;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/g;->b(Ljava/lang/String;)V

    .line 411
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$8;->c:Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->finish()V

    .line 412
    return-void
.end method

.method public b(Landroid/app/Dialog;)V
    .registers 2

    .line 416
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$8;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/g;->d(Ljava/lang/String;)V

    .line 417
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$8;->c:Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->finish()V

    .line 418
    return-void
.end method

.method public c(Landroid/app/Dialog;)V
    .registers 3

    .line 422
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$8;->c:Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$8;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;Ljava/lang/String;)V

    .line 423
    return-void
.end method
