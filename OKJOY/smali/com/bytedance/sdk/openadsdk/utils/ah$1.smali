.class final Lcom/bytedance/sdk/openadsdk/utils/ah$1;
.super Ljava/lang/Object;
.source "ToolUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/d/k;

.field final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/d/k;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 370
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/ah$1;->a:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/utils/ah$1;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 373
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/ah$1;->a:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->P()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ah;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 374
    if-eqz v0, :cond_34

    .line 375
    const-string v1, "rit"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 376
    const-string v2, "req_id"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 377
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->f()Lcom/bytedance/sdk/openadsdk/core/p;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/utils/ah$1;->a:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/k;->M()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/utils/ah$1;->b:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    const/high16 v5, 0x100000

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/ai;->b(Landroid/view/View;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-interface {v2, v1, v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/p;->a(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 379
    :cond_34
    return-void
.end method
