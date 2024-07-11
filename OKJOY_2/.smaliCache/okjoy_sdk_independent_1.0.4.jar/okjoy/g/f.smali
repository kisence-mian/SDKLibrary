.class public Lokjoy/g/f;
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

.field public final synthetic b:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lokjoy/g/c;


# direct methods
.method public constructor <init>(Lokjoy/g/c;Lokjoy/u/a;Lcom/okjoy/okjoysdk/user/OkJoyUserModel;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lokjoy/g/f;->d:Lokjoy/g/c;

    iput-object p2, p0, Lokjoy/g/f;->a:Lokjoy/u/a;

    iput-object p3, p0, Lokjoy/g/f;->b:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    iput-object p4, p0, Lokjoy/g/f;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .registers 4

    iget-object p1, p0, Lokjoy/g/f;->a:Lokjoy/u/a;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lokjoy/g/f;->a:Lokjoy/u/a;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->cancel()V

    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u7ed1\u5b9a\u624b\u673a\u5931\u8d25\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object p2, p0, Lokjoy/g/f;->d:Lokjoy/g/c;

    iget-object p2, p2, Lokjoy/c/b;->a:Landroid/app/Activity;

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Lcom/okjoy/okjoysdk/entity/response/OkJoyBaseResponseModel;

    .line 1
    const-string p1, "\u7528\u6237\u7ed1\u5b9a\u624b\u673a\u6210\u529f"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lokjoy/g/f;->a:Lokjoy/u/a;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lokjoy/g/f;->a:Lokjoy/u/a;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->cancel()V

    :cond_14
    iget-object p1, p0, Lokjoy/g/f;->b:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    iget-object v0, p0, Lokjoy/g/f;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->setPhone(Ljava/lang/String;)V

    iget-object p1, p0, Lokjoy/g/f;->d:Lokjoy/g/c;

    iget-object p1, p1, Lokjoy/c/b;->a:Landroid/app/Activity;

    iget-object v0, p0, Lokjoy/g/f;->b:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    invoke-static {p1, v0}, Lcom/okjoy/okjoysdk/user/OkJoyCurrentUserManager;->saveUser(Landroid/content/Context;Lcom/okjoy/okjoysdk/user/OkJoyUserModel;)V

    iget-object p1, p0, Lokjoy/g/f;->d:Lokjoy/g/c;

    invoke-virtual {p1}, Lokjoy/c/b;->a()V

    iget-object p1, p0, Lokjoy/g/f;->d:Lokjoy/g/c;

    iget-object p1, p1, Lokjoy/c/b;->a:Landroid/app/Activity;

    const/4 v0, 0x0

    const-string v1, "\u7ed1\u5b9a\u624b\u673a\u6210\u529f"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
