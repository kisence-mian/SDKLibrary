.class Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity$8;
.super Ljava/lang/Object;
.source "TTVideoWebPageActivity.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;)V
    .registers 2

    .line 1306
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity$8;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 1334
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity$8;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;->b:Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;->b()V

    .line 1335
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity$8;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1336
    return-void
.end method

.method public a(ILcom/bytedance/sdk/openadsdk/FilterWord;)V
    .registers 3

    .line 1325
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity$8;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_26

    if-eqz p2, :cond_26

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/FilterWord;->hasSecondOptions()Z

    move-result p1

    if-nez p1, :cond_26

    .line 1326
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity$8;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1327
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity$8;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;->A(Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;)V

    .line 1328
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity$8;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;->b:Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;->a()V

    .line 1330
    :cond_26
    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 3

    .line 1309
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity$8;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1310
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity$8;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;->e()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 1311
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity$8;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;->g:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->h()V

    .line 1313
    :cond_17
    return-void
.end method

.method public b(Landroid/view/View;)V
    .registers 3

    .line 1317
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity$8;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1318
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity$8;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;->f()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 1319
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity$8;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;->g:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->k()V

    .line 1321
    :cond_17
    return-void
.end method
