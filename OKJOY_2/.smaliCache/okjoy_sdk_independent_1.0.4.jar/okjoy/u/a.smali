.class public Lokjoy/u/a;
.super Landroid/app/ProgressDialog;
.source ""


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/view/View;

.field public c:Landroid/widget/TextView;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "OkJoyCustomTipsDialogStyle"

    invoke-static {p1, v0}, Lokjoy/a/g;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lokjoy/u/a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/ProgressDialog;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lokjoy/u/a;->a:Landroid/content/Context;

    const-string v0, "joy_dialog_progress_loading_layout"

    invoke-static {p1, v0}, Lokjoy/a/g;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lokjoy/u/a;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lokjoy/u/a;->b:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/app/ProgressDialog;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    invoke-virtual {p0, p1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object p1, p0, Lokjoy/u/a;->b:Landroid/view/View;

    iget-object v0, p0, Lokjoy/u/a;->a:Landroid/content/Context;

    const-string v1, "textView"

    invoke-static {v0, v1}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lokjoy/u/a;->c:Landroid/widget/TextView;

    return-void
.end method

.method public show()V
    .registers 3

    invoke-super {p0}, Landroid/app/ProgressDialog;->show()V

    .line 1
    iget-object v0, p0, Lokjoy/u/a;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lokjoy/u/a;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lokjoy/u/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_12
    return-void
.end method
