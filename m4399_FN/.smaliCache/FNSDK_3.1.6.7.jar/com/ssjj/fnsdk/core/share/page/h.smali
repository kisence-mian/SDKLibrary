.class Lcom/ssjj/fnsdk/core/share/page/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/share/page/SelectTextView;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/share/page/SelectTextView;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/h;->a:Lcom/ssjj/fnsdk/core/share/page/SelectTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/h;->a:Lcom/ssjj/fnsdk/core/share/page/SelectTextView;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->i(Lcom/ssjj/fnsdk/core/share/page/SelectTextView;)Lcom/ssjj/fnsdk/core/share/page/SelectTextView$SelectTextListener;

    move-result-object p1

    if-eqz p1, :cond_59

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/h;->a:Lcom/ssjj/fnsdk/core/share/page/SelectTextView;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->j(Lcom/ssjj/fnsdk/core/share/page/SelectTextView;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_26

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/h;->a:Lcom/ssjj/fnsdk/core/share/page/SelectTextView;

    const-string v0, "\u81ea\u5b9a\u4e49\u6587\u672c\u957f\u5ea6\u4e0d\u53ef\u4ee5\u8d85\u8fc720\u54df~"

    :goto_22
    invoke-static {p1, v0}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->a(Lcom/ssjj/fnsdk/core/share/page/SelectTextView;Ljava/lang/String;)V

    return-void

    :cond_26
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4e

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/h;->a:Lcom/ssjj/fnsdk/core/share/page/SelectTextView;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->k(Lcom/ssjj/fnsdk/core/share/page/SelectTextView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/h;->a:Lcom/ssjj/fnsdk/core/share/page/SelectTextView;

    const-string v0, "\u6587\u6848\u5df2\u5b58\u5728"

    goto :goto_22

    :cond_41
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/h;->a:Lcom/ssjj/fnsdk/core/share/page/SelectTextView;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->i(Lcom/ssjj/fnsdk/core/share/page/SelectTextView;)Lcom/ssjj/fnsdk/core/share/page/SelectTextView$SelectTextListener;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView$SelectTextListener;->onInputintCompelete(Ljava/lang/String;)V

    :cond_4e
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/h;->a:Lcom/ssjj/fnsdk/core/share/page/SelectTextView;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->j(Lcom/ssjj/fnsdk/core/share/page/SelectTextView;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_59
    return-void
.end method
