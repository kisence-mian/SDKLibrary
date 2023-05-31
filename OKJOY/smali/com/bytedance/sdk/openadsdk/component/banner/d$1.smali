.class Lcom/bytedance/sdk/openadsdk/component/banner/d$1;
.super Ljava/lang/Object;
.source "BannerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/banner/d;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/banner/d;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/banner/d;)V
    .registers 2

    .prologue
    .line 88
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/d$1;->a:Lcom/bytedance/sdk/openadsdk/component/banner/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/d$1;->a:Lcom/bytedance/sdk/openadsdk/component/banner/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/banner/d;->a(Lcom/bytedance/sdk/openadsdk/component/banner/d;)Lcom/bytedance/sdk/openadsdk/dislike/b;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 92
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/d$1;->a:Lcom/bytedance/sdk/openadsdk/component/banner/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/banner/d;->a(Lcom/bytedance/sdk/openadsdk/component/banner/d;)Lcom/bytedance/sdk/openadsdk/dislike/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/dislike/b;->showDislikeDialog()V

    .line 94
    :cond_11
    return-void
.end method
