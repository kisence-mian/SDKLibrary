.class Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast$1;
.super Ljava/lang/Object;
.source "LandingDislikeToast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast;Ljava/lang/String;)V
    .registers 3

    .line 75
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast$1;->b:Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 78
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast$1;->b:Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast;->a(Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 79
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast$1;->b:Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast;->a(Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast$1;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    :cond_17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast$1;->b:Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast;->setVisibility(I)V

    .line 82
    return-void
.end method
