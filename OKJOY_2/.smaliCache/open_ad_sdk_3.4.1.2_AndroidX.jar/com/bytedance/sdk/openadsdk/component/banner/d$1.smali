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

    .line 88
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/d$1;->a:Lcom/bytedance/sdk/openadsdk/component/banner/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 91
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/d$1;->a:Lcom/bytedance/sdk/openadsdk/component/banner/d;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/banner/d;->a(Lcom/bytedance/sdk/openadsdk/component/banner/d;)Lcom/bytedance/sdk/openadsdk/dislike/b;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 92
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/d$1;->a:Lcom/bytedance/sdk/openadsdk/component/banner/d;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/banner/d;->a(Lcom/bytedance/sdk/openadsdk/component/banner/d;)Lcom/bytedance/sdk/openadsdk/dislike/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/dislike/b;->showDislikeDialog()V

    .line 94
    :cond_11
    return-void
.end method
