.class Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$5;
.super Ljava/lang/Object;
.source "TTDelegateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;Ljava/lang/String;)V
    .registers 3

    .line 611
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$5;->b:Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$5;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2

    .line 614
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$5;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/g;->d(Ljava/lang/String;)V

    .line 615
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$5;->b:Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->finish()V

    .line 616
    return-void
.end method
