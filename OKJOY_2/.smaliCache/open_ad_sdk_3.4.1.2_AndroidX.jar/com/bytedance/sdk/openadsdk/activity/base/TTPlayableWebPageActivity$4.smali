.class Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity$4;
.super Ljava/lang/Object;
.source "TTPlayableWebPageActivity.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;)V
    .registers 2

    .line 895
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 919
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->b:Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;->b()V

    .line 920
    return-void
.end method

.method public a(ILcom/bytedance/sdk/openadsdk/FilterWord;)V
    .registers 3

    .line 908
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_2c

    if-eqz p2, :cond_2c

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/FilterWord;->hasSecondOptions()Z

    move-result p1

    if-nez p1, :cond_2c

    .line 909
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 910
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->p(Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;)V

    .line 911
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->b:Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;

    if-eqz p1, :cond_2c

    .line 912
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->b:Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;->a()V

    .line 915
    :cond_2c
    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 3

    .line 898
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 899
    return-void
.end method

.method public b(Landroid/view/View;)V
    .registers 3

    .line 903
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 904
    return-void
.end method
