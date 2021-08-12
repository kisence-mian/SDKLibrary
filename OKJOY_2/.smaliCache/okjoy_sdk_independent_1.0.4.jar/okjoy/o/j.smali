.class public Lokjoy/o/j;
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

.field public final synthetic d:Lokjoy/o/g;


# direct methods
.method public constructor <init>(Lokjoy/o/g;Lokjoy/u/a;Lcom/okjoy/okjoysdk/user/OkJoyUserModel;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lokjoy/o/j;->d:Lokjoy/o/g;

    iput-object p2, p0, Lokjoy/o/j;->a:Lokjoy/u/a;

    iput-object p3, p0, Lokjoy/o/j;->b:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    iput-object p4, p0, Lokjoy/o/j;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lokjoy/o/j;->a:Lokjoy/u/a;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lokjoy/o/j;->a:Lokjoy/u/a;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5bc6\u7801\u4fee\u6539\u5931\u8d25\uff0ccode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " message = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5bc6\u7801\u4fee\u6539\u5931\u8d25\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lokjoy/o/j;->d:Lokjoy/o/g;

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
    iget-object p1, p0, Lokjoy/o/j;->a:Lokjoy/u/a;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lokjoy/o/j;->a:Lokjoy/u/a;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->cancel()V

    :cond_f
    iget-object p1, p0, Lokjoy/o/j;->b:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    iget-object v0, p0, Lokjoy/o/j;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->setPassWord(Ljava/lang/String;)V

    iget-object p1, p0, Lokjoy/o/j;->d:Lokjoy/o/g;

    iget-object p1, p1, Lokjoy/c/b;->a:Landroid/app/Activity;

    iget-object v0, p0, Lokjoy/o/j;->b:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    invoke-static {p1, v0}, Lcom/okjoy/okjoysdk/user/OkJoyCurrentUserManager;->saveUser(Landroid/content/Context;Lcom/okjoy/okjoysdk/user/OkJoyUserModel;)V

    iget-object p1, p0, Lokjoy/o/j;->d:Lokjoy/o/g;

    invoke-virtual {p1}, Lokjoy/c/b;->a()V

    const-string p1, "\u5bc6\u7801\u4fee\u6539\u6210\u529f"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lokjoy/o/j;->d:Lokjoy/o/g;

    iget-object v0, v0, Lokjoy/c/b;->a:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
