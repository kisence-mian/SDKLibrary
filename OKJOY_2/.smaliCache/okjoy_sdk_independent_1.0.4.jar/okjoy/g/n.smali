.class public Lokjoy/g/n;
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

.field public final synthetic b:Lokjoy/g/l;


# direct methods
.method public constructor <init>(Lokjoy/g/l;Lokjoy/u/a;)V
    .registers 3

    iput-object p1, p0, Lokjoy/g/n;->b:Lokjoy/g/l;

    iput-object p2, p0, Lokjoy/g/n;->a:Lokjoy/u/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .registers 4

    iget-object p1, p0, Lokjoy/g/n;->a:Lokjoy/u/a;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lokjoy/g/n;->a:Lokjoy/u/a;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->cancel()V

    :cond_d
    iget-object p1, p0, Lokjoy/g/n;->b:Lokjoy/g/l;

    iget-object p1, p1, Lokjoy/c/b;->a:Landroid/app/Activity;

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Lcom/okjoy/okjoysdk/entity/response/OkJoyBaseResponseModel;

    .line 1
    iget-object p1, p0, Lokjoy/g/n;->a:Lokjoy/u/a;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lokjoy/g/n;->a:Lokjoy/u/a;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->cancel()V

    :cond_f
    iget-object p1, p0, Lokjoy/g/n;->b:Lokjoy/g/l;

    iget-object p1, p1, Lokjoy/c/b;->a:Landroid/app/Activity;

    const/4 v0, 0x0

    const-string v1, "\u9a8c\u8bc1\u7801\u5df2\u53d1\u9001\u5230\u624b\u673a"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 2
    sget-object p1, Lokjoy/q/c$d;->a:Lokjoy/q/c;

    .line 3
    new-instance v0, Lokjoy/g/m;

    invoke-direct {v0, p0}, Lokjoy/g/m;-><init>(Lokjoy/g/n;)V

    const/16 v1, 0x3c

    invoke-virtual {p1, v1, v0}, Lokjoy/q/c;->a(ILokjoy/q/c$c;)V

    return-void
.end method
