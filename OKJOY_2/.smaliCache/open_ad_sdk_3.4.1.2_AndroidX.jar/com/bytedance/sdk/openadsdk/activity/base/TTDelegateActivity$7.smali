.class Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$7;
.super Ljava/lang/Object;
.source "TTDelegateActivity.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/widget/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Z

.field final synthetic e:Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    .line 368
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$7;->e:Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$7;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$7;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$7;->c:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$7;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Dialog;)V
    .registers 2

    .line 371
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$7;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/g;->b(Ljava/lang/String;)V

    .line 372
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$7;->e:Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->finish()V

    .line 373
    return-void
.end method

.method public b(Landroid/app/Dialog;)V
    .registers 6

    .line 377
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$7;->e:Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$7;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$7;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$7;->c:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$7;->d:Z

    invoke-static {p1, v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 378
    return-void
.end method

.method public c(Landroid/app/Dialog;)V
    .registers 2

    .line 382
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$7;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/g;->d(Ljava/lang/String;)V

    .line 383
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$7;->e:Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->finish()V

    .line 384
    return-void
.end method

.method public d(Landroid/app/Dialog;)V
    .registers 3

    .line 388
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$7;->e:Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$7;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;Ljava/lang/String;)V

    .line 389
    return-void
.end method
