.class public Lokjoy/g/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokjoy/h/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lokjoy/h/c<",
        "Lcom/okjoy/okjoysdk/entity/response/OkJoyBaseResponseModel;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lokjoy/u/a;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lokjoy/g/i;


# direct methods
.method public constructor <init>(Lokjoy/g/i;Lokjoy/u/a;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lokjoy/g/k;->c:Lokjoy/g/i;

    iput-object p2, p0, Lokjoy/g/k;->a:Lokjoy/u/a;

    iput-object p3, p0, Lokjoy/g/k;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .registers 4

    iget-object p1, p0, Lokjoy/g/k;->a:Lokjoy/u/a;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lokjoy/g/k;->a:Lokjoy/u/a;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->cancel()V

    :cond_d
    iget-object p1, p0, Lokjoy/g/k;->c:Lokjoy/g/i;

    iget-object p1, p1, Lokjoy/c/b;->a:Landroid/app/Activity;

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 5

    check-cast p1, Lcom/okjoy/okjoysdk/entity/response/OkJoyBaseResponseModel;

    .line 1
    iget-object p1, p0, Lokjoy/g/k;->a:Lokjoy/u/a;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lokjoy/g/k;->a:Lokjoy/u/a;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->cancel()V

    :cond_f
    new-instance p1, Lokjoy/g/l;

    invoke-direct {p1}, Lokjoy/g/l;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lokjoy/g/k;->b:Ljava/lang/String;

    const-string v2, "phone"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 2
    sget-object v0, Lokjoy/q/c$d;->a:Lokjoy/q/c;

    const/16 v1, 0x3c

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Lokjoy/q/c;->a(ILokjoy/q/c$c;)V

    iget-object v0, p0, Lokjoy/g/k;->c:Lokjoy/g/i;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, v1}, Lokjoy/c/b;->a(Landroid/app/Fragment;Z)V

    .line 5
    iget-object p1, p0, Lokjoy/g/k;->c:Lokjoy/g/i;

    iget-object p1, p1, Lokjoy/c/b;->a:Landroid/app/Activity;

    const/4 v0, 0x0

    const-string v1, "\u9a8c\u8bc1\u7801\u5df2\u53d1\u9001\u5230\u624b\u673a"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
