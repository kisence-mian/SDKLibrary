.class Lcom/bytedance/sdk/openadsdk/dislike/d$2;
.super Ljava/lang/Object;
.source "TTDislikeDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    .line 147
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/d$2;->a:Lcom/bytedance/sdk/openadsdk/dislike/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .line 150
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/d$2;->a:Lcom/bytedance/sdk/openadsdk/dislike/d;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/dislike/d;->a(Lcom/bytedance/sdk/openadsdk/dislike/d;)Lcom/bytedance/sdk/openadsdk/dislike/d$a;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 151
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/d$2;->a:Lcom/bytedance/sdk/openadsdk/dislike/d;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/dislike/d;->a(Lcom/bytedance/sdk/openadsdk/dislike/d;)Lcom/bytedance/sdk/openadsdk/dislike/d$a;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/d$2;->a:Lcom/bytedance/sdk/openadsdk/dislike/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/dislike/d;->e(Lcom/bytedance/sdk/openadsdk/dislike/d;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/dislike/d$a;->a(Z)V

    .line 153
    :cond_17
    return-void
.end method
