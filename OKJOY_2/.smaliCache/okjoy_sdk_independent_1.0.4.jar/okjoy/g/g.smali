.class public Lokjoy/g/g;
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

.field public final synthetic c:Lokjoy/g/c;


# direct methods
.method public constructor <init>(Lokjoy/g/c;Lokjoy/u/a;Lcom/okjoy/okjoysdk/user/OkJoyUserModel;)V
    .registers 4

    iput-object p1, p0, Lokjoy/g/g;->c:Lokjoy/g/c;

    iput-object p2, p0, Lokjoy/g/g;->a:Lokjoy/u/a;

    iput-object p3, p0, Lokjoy/g/g;->b:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .registers 4

    iget-object p1, p0, Lokjoy/g/g;->a:Lokjoy/u/a;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lokjoy/g/g;->a:Lokjoy/u/a;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->cancel()V

    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u89e3\u7ed1\u624b\u673a\u5931\u8d25\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object p2, p0, Lokjoy/g/g;->c:Lokjoy/g/c;

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
    const-string p1, "\u89e3\u7ed1\u624b\u673a\u6210\u529f"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lokjoy/g/g;->a:Lokjoy/u/a;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lokjoy/g/g;->a:Lokjoy/u/a;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    :cond_14
    iget-object v0, p0, Lokjoy/g/g;->b:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->setPhone(Ljava/lang/String;)V

    iget-object v0, p0, Lokjoy/g/g;->c:Lokjoy/g/c;

    iget-object v0, v0, Lokjoy/c/b;->a:Landroid/app/Activity;

    iget-object v1, p0, Lokjoy/g/g;->b:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    invoke-static {v0, v1}, Lcom/okjoy/okjoysdk/user/OkJoyCurrentUserManager;->saveUser(Landroid/content/Context;Lcom/okjoy/okjoysdk/user/OkJoyUserModel;)V

    iget-object v0, p0, Lokjoy/g/g;->c:Lokjoy/g/c;

    invoke-virtual {v0}, Lokjoy/c/b;->a()V

    iget-object v0, p0, Lokjoy/g/g;->c:Lokjoy/g/c;

    iget-object v0, v0, Lokjoy/c/b;->a:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
