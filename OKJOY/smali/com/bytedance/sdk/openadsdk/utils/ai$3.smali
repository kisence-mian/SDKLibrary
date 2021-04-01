.class final Lcom/bytedance/sdk/openadsdk/utils/ai$3;
.super Ljava/lang/Object;
.source "UIUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/WebView;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/core/d/k;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 789
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/ai$3;->a:Landroid/webkit/WebView;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/utils/ai$3;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/utils/ai$3;->c:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/utils/ai$3;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 792
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/ai$3;->a:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ai;->b(Landroid/view/View;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 794
    if-nez v0, :cond_f

    .line 796
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/ai$3;->a:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->b(Landroid/webkit/WebView;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 801
    :cond_f
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a;->a()Lcom/bytedance/sdk/openadsdk/i/a;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/utils/ai$3$1;

    invoke-direct {v2, p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ai$3$1;-><init>(Lcom/bytedance/sdk/openadsdk/utils/ai$3;Landroid/graphics/Bitmap;)V

    const/4 v0, 0x5

    invoke-virtual {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/i/a;->c(Ljava/lang/Runnable;I)V

    .line 807
    return-void
.end method
