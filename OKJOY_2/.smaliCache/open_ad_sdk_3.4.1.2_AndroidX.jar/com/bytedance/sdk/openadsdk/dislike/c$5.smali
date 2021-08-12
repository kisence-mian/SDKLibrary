.class Lcom/bytedance/sdk/openadsdk/dislike/c$5;
.super Ljava/lang/Object;
.source "TTCommentDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/dislike/c;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/dislike/c;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/dislike/c;)V
    .registers 2

    .line 165
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c$5;->a:Lcom/bytedance/sdk/openadsdk/dislike/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 2

    .line 168
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c$5;->a:Lcom/bytedance/sdk/openadsdk/dislike/c;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/dislike/c;->c(Lcom/bytedance/sdk/openadsdk/dislike/c;)Lcom/bytedance/sdk/openadsdk/dislike/c$a;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 169
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c$5;->a:Lcom/bytedance/sdk/openadsdk/dislike/c;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/dislike/c;->c(Lcom/bytedance/sdk/openadsdk/dislike/c;)Lcom/bytedance/sdk/openadsdk/dislike/c$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/dislike/c$a;->b()V

    .line 171
    :cond_11
    return-void
.end method
