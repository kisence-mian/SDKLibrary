.class Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog$2;
.super Ljava/lang/Object;
.source "LandingCommentDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;)V
    .registers 2

    .line 105
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog$2;->a:Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 108
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog$2;->a:Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;->a(Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 110
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4b

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 111
    new-instance v0, Lcom/bytedance/sdk/openadsdk/FilterWord;

    const-string v1, "0:00"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/FilterWord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 113
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog$2;->a:Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;->b(Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/util/List;)V

    .line 115
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog$2;->a:Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;->c(Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;)Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog$a;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 117
    :try_start_3a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog$2;->a:Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;->c(Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;)Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog$a;->a(Ljava/lang/String;Z)V
    :try_end_44
    .catchall {:try_start_3a .. :try_end_44} :catchall_45

    .line 119
    goto :goto_46

    .line 118
    :catchall_45
    move-exception p1

    .line 121
    :cond_46
    :goto_46
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog$2;->a:Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;->a()V

    .line 122
    :cond_4b
    return-void
.end method
