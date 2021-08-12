.class Lcom/bytedance/sdk/openadsdk/core/o$1;
.super Ljava/lang/Object;
.source "InteractionManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/a/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/o;->a(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/o;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/o;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V
    .registers 3

    .line 107
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o$1;->b:Lcom/bytedance/sdk/openadsdk/core/o;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/o$1;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .registers 4

    .line 110
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/o$1;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;

    if-eqz p2, :cond_d

    .line 111
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o$1;->b:Lcom/bytedance/sdk/openadsdk/core/o;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/o;->a(Lcom/bytedance/sdk/openadsdk/core/o;)Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;->onAdClicked(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V

    .line 113
    :cond_d
    return-void
.end method
