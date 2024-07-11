.class public Lokjoy/g/l$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokjoy/q/c$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokjoy/g/l;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lokjoy/g/l;


# direct methods
.method public constructor <init>(Lokjoy/g/l;)V
    .registers 2

    iput-object p1, p0, Lokjoy/g/l$a;->a:Lokjoy/g/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lokjoy/g/l$a;->a:Lokjoy/g/l;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lokjoy/g/l$a;->a:Lokjoy/g/l;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "joy_btn_get_code"

    invoke-static {v0, v1}, Lokjoy/a/g;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lokjoy/g/l$a;->a:Lokjoy/g/l;

    .line 1
    iget-object v1, v1, Lokjoy/g/l;->g:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomCodeEditText;

    .line 2
    iget-object v1, v1, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomCodeEditText;->d:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lokjoy/g/l$a;->a:Lokjoy/g/l;

    .line 3
    iget-object v0, v0, Lokjoy/g/l;->g:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomCodeEditText;

    .line 4
    iget-object v0, v0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomCodeEditText;->d:Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lokjoy/g/l$a;->a:Lokjoy/g/l;

    .line 5
    iget-object v0, v0, Lokjoy/g/l;->g:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomCodeEditText;

    .line 6
    iget-object v0, v0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomCodeEditText;->d:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_32
    return-void
.end method

.method public a(I)V
    .registers 5

    iget-object v0, p0, Lokjoy/g/l$a;->a:Lokjoy/g/l;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lokjoy/g/l$a;->a:Lokjoy/g/l;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "joy_btn_get_code_border"

    invoke-static {v0, v1}, Lokjoy/a/g;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lokjoy/g/l$a;->a:Lokjoy/g/l;

    .line 7
    iget-object v1, v1, Lokjoy/g/l;->g:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomCodeEditText;

    .line 8
    iget-object v1, v1, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomCodeEditText;->d:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lokjoy/g/l$a;->a:Lokjoy/g/l;

    .line 9
    iget-object v0, v0, Lokjoy/g/l;->g:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomCodeEditText;

    .line 10
    iget-object v0, v0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomCodeEditText;->d:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lokjoy/g/l$a;->a:Lokjoy/g/l;

    .line 11
    iget-object v0, v0, Lokjoy/g/l;->g:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomCodeEditText;

    .line 12
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

    :cond_43
    return-void
.end method
