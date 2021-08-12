.class public Lokjoy/g/s;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokjoy/t/a$c;


# instance fields
.field public final synthetic a:Lokjoy/g/u;


# direct methods
.method public constructor <init>(Lokjoy/g/u;)V
    .registers 2

    iput-object p1, p0, Lokjoy/g/s;->a:Lokjoy/g/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelButtonClick(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onSureButtonClick(Landroid/view/View;)V
    .registers 5

    iget-object p1, p0, Lokjoy/g/s;->a:Lokjoy/g/u;

    iget-object p1, p1, Lokjoy/g/u;->d:Lokjoy/g/v;

    .line 1
    iget-boolean v0, p1, Lokjoy/g/v;->j:Z

    if-eqz v0, :cond_e

    .line 2
    iget-object p1, p1, Lokjoy/c/b;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_11

    :cond_e
    invoke-virtual {p1}, Lokjoy/c/b;->a()V

    :goto_11
    const/4 p1, 0x0

    iget-object v0, p0, Lokjoy/g/s;->a:Lokjoy/g/u;

    iget-object v0, v0, Lokjoy/g/u;->a:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    invoke-virtual {v0}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->getAge()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object p1, p0, Lokjoy/g/s;->a:Lokjoy/g/u;

    iget-object p1, p1, Lokjoy/g/u;->a:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->getAge()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    :cond_2c
    new-instance v0, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkRealNameCallBackModel;

    iget-object v1, p0, Lokjoy/g/s;->a:Lokjoy/g/u;

    iget-object v1, v1, Lokjoy/g/u;->a:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    invoke-virtual {v1}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->isAdult()Z

    move-result v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1, p1}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkRealNameCallBackModel;-><init>(ZZI)V

    sget-object p1, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->realNameListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkRealNameListener;

    if-eqz p1, :cond_41

    invoke-interface {p1, v0}, Lcom/okjoy/okjoysdk/api/listener/OkJoySdkRealNameListener;->onSuccess(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkRealNameCallBackModel;)V

    :cond_41
    return-void
.end method
