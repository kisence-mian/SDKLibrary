.class Lcom/bytedance/sdk/openadsdk/dislike/c$3;
.super Ljava/lang/Object;
.source "TTCommentDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    .line 106
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c$3;->a:Lcom/bytedance/sdk/openadsdk/dislike/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    .line 127
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 109
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 113
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 114
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 115
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/dislike/c$3;->a:Lcom/bytedance/sdk/openadsdk/dislike/c;

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/dislike/c;->d(Lcom/bytedance/sdk/openadsdk/dislike/c;)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    if-lez p1, :cond_3d

    .line 117
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c$3;->a:Lcom/bytedance/sdk/openadsdk/dislike/c;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/dislike/c;->e(Lcom/bytedance/sdk/openadsdk/dislike/c;)Landroid/widget/TextView;

    move-result-object p1

    const/high16 p2, -0x1000000

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 118
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c$3;->a:Lcom/bytedance/sdk/openadsdk/dislike/c;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/dislike/c;->e(Lcom/bytedance/sdk/openadsdk/dislike/c;)Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_53

    .line 120
    :cond_3d
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c$3;->a:Lcom/bytedance/sdk/openadsdk/dislike/c;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/dislike/c;->e(Lcom/bytedance/sdk/openadsdk/dislike/c;)Landroid/widget/TextView;

    move-result-object p1

    const p2, -0x777778

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c$3;->a:Lcom/bytedance/sdk/openadsdk/dislike/c;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/dislike/c;->e(Lcom/bytedance/sdk/openadsdk/dislike/c;)Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 123
    :goto_53
    return-void
.end method
