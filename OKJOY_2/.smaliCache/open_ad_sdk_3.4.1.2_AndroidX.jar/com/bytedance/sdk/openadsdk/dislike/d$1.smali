.class Lcom/bytedance/sdk/openadsdk/dislike/d$1;
.super Ljava/lang/Object;
.source "TTDislikeDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/dislike/d;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/dislike/d;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/dislike/d;)V
    .registers 2

    .line 135
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/d$1;->a:Lcom/bytedance/sdk/openadsdk/dislike/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .registers 5

    .line 138
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/d$1;->a:Lcom/bytedance/sdk/openadsdk/dislike/d;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/dislike/d;->a(Lcom/bytedance/sdk/openadsdk/dislike/d;)Lcom/bytedance/sdk/openadsdk/dislike/d$a;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 139
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/d$1;->a:Lcom/bytedance/sdk/openadsdk/dislike/d;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/dislike/d;->a(Lcom/bytedance/sdk/openadsdk/dislike/d;Z)Z

    .line 140
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/d$1;->a:Lcom/bytedance/sdk/openadsdk/dislike/d;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/dislike/d;->a(Lcom/bytedance/sdk/openadsdk/dislike/d;)Lcom/bytedance/sdk/openadsdk/dislike/d$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/dislike/d$a;->a()V

    .line 142
    :cond_17
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/d$1;->a:Lcom/bytedance/sdk/openadsdk/dislike/d;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/dislike/d;->b(Lcom/bytedance/sdk/openadsdk/dislike/d;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 143
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/d$1;->a:Lcom/bytedance/sdk/openadsdk/dislike/d;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/dislike/d;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/d$1;->a:Lcom/bytedance/sdk/openadsdk/dislike/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/dislike/d;->c(Lcom/bytedance/sdk/openadsdk/dislike/d;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/dislike/d$1;->a:Lcom/bytedance/sdk/openadsdk/dislike/d;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/dislike/d;->d(Lcom/bytedance/sdk/openadsdk/dislike/d;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ad_explation_show"

    invoke-static {p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/c/d;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_3a
    return-void
.end method
