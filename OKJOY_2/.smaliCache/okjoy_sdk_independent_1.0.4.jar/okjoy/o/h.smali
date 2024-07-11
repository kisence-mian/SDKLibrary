.class public Lokjoy/o/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokjoy/q/c$c;


# instance fields
.field public final synthetic a:Lokjoy/o/i;


# direct methods
.method public constructor <init>(Lokjoy/o/i;)V
    .registers 2

    iput-object p1, p0, Lokjoy/o/h;->a:Lokjoy/o/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lokjoy/o/h;->a:Lokjoy/o/i;

    iget-object v0, v0, Lokjoy/o/i;->b:Lokjoy/o/g;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lokjoy/o/h;->a:Lokjoy/o/i;

    iget-object v0, v0, Lokjoy/o/i;->b:Lokjoy/o/g;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "joy_btn_get_code"

    invoke-static {v0, v1}, Lokjoy/a/g;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lokjoy/o/h;->a:Lokjoy/o/i;

    iget-object v1, v1, Lokjoy/o/i;->b:Lokjoy/o/g;

    iget-object v1, v1, Lokjoy/o/g;->f:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomCodeEditText;

    iget-object v1, v1, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomCodeEditText;->d:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lokjoy/o/h;->a:Lokjoy/o/i;

    iget-object v0, v0, Lokjoy/o/i;->b:Lokjoy/o/g;

    iget-object v0, v0, Lokjoy/o/g;->f:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomCodeEditText;

    iget-object v0, v0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomCodeEditText;->d:Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lokjoy/o/h;->a:Lokjoy/o/i;

    iget-object v0, v0, Lokjoy/o/i;->b:Lokjoy/o/g;

    iget-object v0, v0, Lokjoy/o/g;->f:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomCodeEditText;

    iget-object v0, v0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomCodeEditText;->d:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_3c
    return-void
.end method

.method public a(I)V
    .registers 5

    iget-object v0, p0, Lokjoy/o/h;->a:Lokjoy/o/i;

    iget-object v0, v0, Lokjoy/o/i;->b:Lokjoy/o/g;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lokjoy/o/h;->a:Lokjoy/o/i;

    iget-object v0, v0, Lokjoy/o/i;->b:Lokjoy/o/g;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "joy_btn_get_code_border"

    invoke-static {v0, v1}, Lokjoy/a/g;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lokjoy/o/h;->a:Lokjoy/o/i;

    iget-object v1, v1, Lokjoy/o/i;->b:Lokjoy/o/g;

    iget-object v1, v1, Lokjoy/o/g;->f:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomCodeEditText;

    iget-object v1, v1, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomCodeEditText;->d:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lokjoy/o/h;->a:Lokjoy/o/i;

    iget-object v0, v0, Lokjoy/o/i;->b:Lokjoy/o/g;

    iget-object v0, v0, Lokjoy/o/g;->f:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomCodeEditText;

    iget-object v0, v0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomCodeEditText;->d:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lokjoy/o/h;->a:Lokjoy/o/i;

    iget-object v0, v0, Lokjoy/o/i;->b:Lokjoy/o/g;

    iget-object v0, v0, Lokjoy/o/g;->f:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomCodeEditText;

    iget-object v0, v0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomCodeEditText;->d:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_4d
    return-void
.end method
