.class Lcom/bytedance/sdk/openadsdk/dislike/c$1;
.super Ljava/lang/Object;
.source "TTCommentDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/dislike/c;->a(Landroid/content/Context;)V
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

    .line 78
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c$1;->a:Lcom/bytedance/sdk/openadsdk/dislike/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 81
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c$1;->a:Lcom/bytedance/sdk/openadsdk/dislike/c;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/dislike/c;->a(Lcom/bytedance/sdk/openadsdk/dislike/c;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 82
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4b

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 83
    new-instance v0, Lcom/bytedance/sdk/openadsdk/FilterWord;

    const-string v1, "0:00"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/FilterWord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 85
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c$1;->a:Lcom/bytedance/sdk/openadsdk/dislike/c;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/dislike/c;->b(Lcom/bytedance/sdk/openadsdk/dislike/c;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/util/List;)V

    .line 87
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c$1;->a:Lcom/bytedance/sdk/openadsdk/dislike/c;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/dislike/c;->c(Lcom/bytedance/sdk/openadsdk/dislike/c;)Lcom/bytedance/sdk/openadsdk/dislike/c$a;

    move-result-object p1

    if-eqz p1, :cond_46

    .line 89
    :try_start_3a
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c$1;->a:Lcom/bytedance/sdk/openadsdk/dislike/c;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/dislike/c;->c(Lcom/bytedance/sdk/openadsdk/dislike/c;)Lcom/bytedance/sdk/openadsdk/dislike/c$a;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/dislike/c$a;->a(ILcom/bytedance/sdk/openadsdk/FilterWord;)V
    :try_end_44
    .catchall {:try_start_3a .. :try_end_44} :catchall_45

    .line 91
    goto :goto_46

    .line 90
    :catchall_45
    move-exception p1

    .line 93
    :cond_46
    :goto_46
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c$1;->a:Lcom/bytedance/sdk/openadsdk/dislike/c;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/dislike/c;->dismiss()V

    .line 95
    :cond_4b
    return-void
.end method
