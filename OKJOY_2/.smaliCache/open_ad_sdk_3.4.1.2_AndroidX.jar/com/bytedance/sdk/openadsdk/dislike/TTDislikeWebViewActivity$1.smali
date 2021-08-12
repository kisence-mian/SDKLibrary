.class Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity$1;
.super Ljava/lang/Object;
.source "TTDislikeWebViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity;)V
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity$1;->a:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 56
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity$1;->a:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity;->onBackPressed()V

    .line 57
    return-void
.end method
