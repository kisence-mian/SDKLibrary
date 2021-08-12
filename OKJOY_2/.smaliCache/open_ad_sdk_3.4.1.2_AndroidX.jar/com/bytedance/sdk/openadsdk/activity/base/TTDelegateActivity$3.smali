.class Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$3;
.super Ljava/lang/Object;
.source "TTDelegateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 599
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$3;->b:Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 602
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$3;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/g;->b(Ljava/lang/String;)V

    .line 603
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$3;->b:Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->finish()V

    .line 604
    return-void
.end method
