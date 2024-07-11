.class Lcom/bytedance/sdk/openadsdk/component/a/c$1;
.super Ljava/lang/Object;
.source "TTFeedAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/a/c;->getAdView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/a/c;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/a/c;)V
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/a/c$1;->a:Lcom/bytedance/sdk/openadsdk/component/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .registers 4

    .line 80
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c$1;->a:Lcom/bytedance/sdk/openadsdk/component/a/c;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/a/c;->a(Lcom/bytedance/sdk/openadsdk/component/a/c;)Lcom/bytedance/sdk/openadsdk/core/o;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 81
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c$1;->a:Lcom/bytedance/sdk/openadsdk/component/a/c;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/a/c;->b(Lcom/bytedance/sdk/openadsdk/component/a/c;)Lcom/bytedance/sdk/openadsdk/core/o;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/o;->a(Landroid/view/View;I)V

    .line 83
    :cond_11
    return-void
.end method
