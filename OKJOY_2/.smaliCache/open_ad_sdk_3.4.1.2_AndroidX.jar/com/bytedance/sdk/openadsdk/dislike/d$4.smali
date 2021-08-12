.class Lcom/bytedance/sdk/openadsdk/dislike/d$4;
.super Ljava/lang/Object;
.source "TTDislikeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/dislike/d;->c()V
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

    .line 183
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/d$4;->a:Lcom/bytedance/sdk/openadsdk/dislike/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 186
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/d$4;->a:Lcom/bytedance/sdk/openadsdk/dislike/d;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/dislike/d;->a(Lcom/bytedance/sdk/openadsdk/dislike/d;)Lcom/bytedance/sdk/openadsdk/dislike/d$a;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 187
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/d$4;->a:Lcom/bytedance/sdk/openadsdk/dislike/d;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/dislike/d;->a(Lcom/bytedance/sdk/openadsdk/dislike/d;Z)Z

    .line 188
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/d$4;->a:Lcom/bytedance/sdk/openadsdk/dislike/d;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/dislike/d;->dismiss()V

    .line 189
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/d$4;->a:Lcom/bytedance/sdk/openadsdk/dislike/d;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/dislike/d;->a(Lcom/bytedance/sdk/openadsdk/dislike/d;)Lcom/bytedance/sdk/openadsdk/dislike/d$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/dislike/d$a;->b()V

    .line 191
    :cond_1c
    return-void
.end method
