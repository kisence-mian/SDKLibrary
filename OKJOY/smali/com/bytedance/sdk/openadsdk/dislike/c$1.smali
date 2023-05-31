.class Lcom/bytedance/sdk/openadsdk/dislike/c$1;
.super Ljava/lang/Object;
.source "TTDislikeDialogDefault.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/dislike/c;->b()V
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

    .prologue
    .line 111
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c$1;->a:Lcom/bytedance/sdk/openadsdk/dislike/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .registers 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c$1;->a:Lcom/bytedance/sdk/openadsdk/dislike/c;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->a(Lcom/bytedance/sdk/openadsdk/dislike/c;)Lcom/bytedance/sdk/openadsdk/dislike/c$a;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 115
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c$1;->a:Lcom/bytedance/sdk/openadsdk/dislike/c;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->a(Lcom/bytedance/sdk/openadsdk/dislike/c;)Lcom/bytedance/sdk/openadsdk/dislike/c$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/dislike/c$a;->a()V

    .line 117
    :cond_11
    return-void
.end method
