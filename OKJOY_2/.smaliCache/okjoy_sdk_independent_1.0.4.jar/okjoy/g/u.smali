.class public Lokjoy/g/u;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokjoy/h/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lokjoy/h/c<",
        "Lcom/okjoy/okjoysdk/entity/response/OkJoyRealNameResponseModel;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lokjoy/g/v;


# direct methods
.method public constructor <init>(Lokjoy/g/v;Lcom/okjoy/okjoysdk/user/OkJoyUserModel;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lokjoy/g/u;->d:Lokjoy/g/v;

    iput-object p2, p0, Lokjoy/g/u;->a:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    iput-object p3, p0, Lokjoy/g/u;->b:Ljava/lang/String;

    iput-object p4, p0, Lokjoy/g/u;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .registers 4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5b9e\u540d\u8ba4\u8bc1\u5931\u8d25\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    new-instance p1, Lokjoy/t/a;

    iget-object v0, p0, Lokjoy/g/u;->d:Lokjoy/g/v;

    iget-object v0, v0, Lokjoy/c/b;->a:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lokjoy/t/a;-><init>(Landroid/content/Context;)V

    .line 1
    iput-object p2, p1, Lokjoy/t/a;->g:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lokjoy/t/a;->show()V

    new-instance p2, Lokjoy/g/u$a;

    invoke-direct {p2, p0}, Lokjoy/g/u$a;-><init>(Lokjoy/g/u;)V

    .line 3
    iput-object p2, p1, Lokjoy/t/a;->f:Lokjoy/t/a$c;

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 7

    check-cast p1, Lcom/okjoy/okjoysdk/entity/response/OkJoyRealNameResponseModel;

    .line 1
    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/entity/response/OkJoyBaseResponseModel;->getMsg()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/okjoy/okjoysdk/entity/response/OkJoyRealNameResponseModel;->data:Lcom/okjoy/okjoysdk/entity/response/OkJoyRealNameResponseModel$OkJoyDataModel;

    invoke-virtual {v1}, Lcom/okjoy/okjoysdk/entity/response/OkJoyRealNameResponseModel$OkJoyDataModel;->getState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_eb

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "\u5b9e\u540d\u8ba4\u8bc1\u6210\u529f"

    if-eqz v1, :cond_1d

    move-object v0, v2

    :cond_1d
    iget-object v1, p0, Lokjoy/g/u;->a:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->setReal(Z)V

    iget-object v1, p0, Lokjoy/g/u;->a:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    iget-object v4, p0, Lokjoy/g/u;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->setRealName(Ljava/lang/String;)V

    iget-object v1, p0, Lokjoy/g/u;->a:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    iget-object v4, p0, Lokjoy/g/u;->c:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->setIdCard(Ljava/lang/String;)V

    iget-object v1, p0, Lokjoy/g/u;->a:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    iget-object v4, p1, Lcom/okjoy/okjoysdk/entity/response/OkJoyRealNameResponseModel;->data:Lcom/okjoy/okjoysdk/entity/response/OkJoyRealNameResponseModel$OkJoyDataModel;

    invoke-virtual {v4}, Lcom/okjoy/okjoysdk/entity/response/OkJoyRealNameResponseModel$OkJoyDataModel;->getAge()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->setAge(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/okjoy/okjoysdk/entity/response/OkJoyRealNameResponseModel;->data:Lcom/okjoy/okjoysdk/entity/response/OkJoyRealNameResponseModel$OkJoyDataModel;

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/entity/response/OkJoyRealNameResponseModel$OkJoyDataModel;->getAdult()I

    move-result p1

    const/4 v1, 0x0

    if-ne p1, v3, :cond_47

    move p1, v3

    goto :goto_48

    :cond_47
    move p1, v1

    :goto_48
    iget-object v4, p0, Lokjoy/g/u;->a:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    invoke-virtual {v4, p1}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->setAdult(Z)V

    iget-object p1, p0, Lokjoy/g/u;->d:Lokjoy/g/v;

    iget-object p1, p1, Lokjoy/c/b;->a:Landroid/app/Activity;

    iget-object v4, p0, Lokjoy/g/u;->a:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    invoke-static {p1, v4}, Lcom/okjoy/okjoysdk/user/OkJoyCurrentUserManager;->saveUser(Landroid/content/Context;Lcom/okjoy/okjoysdk/user/OkJoyUserModel;)V

    iget-object p1, p0, Lokjoy/g/u;->d:Lokjoy/g/v;

    .line 2
    iget-boolean v4, p1, Lokjoy/g/v;->h:Z

    if-eqz v4, :cond_8a

    .line 3
    sget-boolean v3, Lokjoy/e/b;->e:Z

    if-eqz v3, :cond_7b

    iget-object p1, p0, Lokjoy/g/u;->a:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    .line 4
    sput-object p1, Lokjoy/a/g;->a:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    .line 5
    new-instance p1, Lokjoy/t/a;

    iget-object v1, p0, Lokjoy/g/u;->d:Lokjoy/g/v;

    iget-object v1, v1, Lokjoy/c/b;->a:Landroid/app/Activity;

    invoke-direct {p1, v1}, Lokjoy/t/a;-><init>(Landroid/content/Context;)V

    .line 6
    iput-object v0, p1, Lokjoy/t/a;->g:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lokjoy/t/a;->show()V

    new-instance v0, Lokjoy/g/r;

    invoke-direct {v0, p0}, Lokjoy/g/r;-><init>(Lokjoy/g/u;)V

    .line 8
    iput-object v0, p1, Lokjoy/t/a;->f:Lokjoy/t/a$c;

    goto/16 :goto_10f

    .line 9
    :cond_7b
    iget-object p1, p1, Lokjoy/c/b;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 10
    sget-object p1, Lokjoy/g/v;->k:Lokjoy/g/v$a;

    if-eqz p1, :cond_df

    .line 11
    iget-object v0, p0, Lokjoy/g/u;->a:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    invoke-interface {p1, v0}, Lokjoy/g/v$a;->a(Lcom/okjoy/okjoysdk/user/OkJoyUserModel;)V

    goto :goto_df

    :cond_8a
    sget-boolean v4, Lokjoy/e/b;->e:Z

    if-eqz v4, :cond_a8

    iget-object p1, p0, Lokjoy/g/u;->a:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    .line 12
    sput-object p1, Lokjoy/a/g;->a:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    .line 13
    new-instance p1, Lokjoy/t/a;

    iget-object v1, p0, Lokjoy/g/u;->d:Lokjoy/g/v;

    iget-object v1, v1, Lokjoy/c/b;->a:Landroid/app/Activity;

    invoke-direct {p1, v1}, Lokjoy/t/a;-><init>(Landroid/content/Context;)V

    .line 14
    iput-object v0, p1, Lokjoy/t/a;->g:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Lokjoy/t/a;->show()V

    new-instance v0, Lokjoy/g/s;

    invoke-direct {v0, p0}, Lokjoy/g/s;-><init>(Lokjoy/g/u;)V

    .line 16
    iput-object v0, p1, Lokjoy/t/a;->f:Lokjoy/t/a$c;

    goto :goto_10f

    .line 17
    :cond_a8
    iget-boolean v0, p1, Lokjoy/g/v;->j:Z

    if-eqz v0, :cond_b2

    .line 18
    iget-object p1, p1, Lokjoy/c/b;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_b5

    :cond_b2
    invoke-virtual {p1}, Lokjoy/c/b;->a()V

    :goto_b5
    iget-object p1, p0, Lokjoy/g/u;->a:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->getAge()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_cc

    iget-object p1, p0, Lokjoy/g/u;->a:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->getAge()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_cd

    :cond_cc
    move p1, v1

    :goto_cd
    new-instance v0, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkRealNameCallBackModel;

    iget-object v4, p0, Lokjoy/g/u;->a:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    invoke-virtual {v4}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->isAdult()Z

    move-result v4

    invoke-direct {v0, v3, v4, p1}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkRealNameCallBackModel;-><init>(ZZI)V

    sget-object p1, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->realNameListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkRealNameListener;

    if-eqz p1, :cond_df

    invoke-interface {p1, v0}, Lcom/okjoy/okjoysdk/api/listener/OkJoySdkRealNameListener;->onSuccess(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkRealNameCallBackModel;)V

    :cond_df
    :goto_df
    iget-object p1, p0, Lokjoy/g/u;->d:Lokjoy/g/v;

    iget-object p1, p1, Lokjoy/c/b;->a:Landroid/app/Activity;

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_10f

    :cond_eb
    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/entity/response/OkJoyBaseResponseModel;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f7

    const-string p1, "\u5b9e\u540d\u8ba4\u8bc1\u5931\u8d25"

    :cond_f7
    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    new-instance v0, Lokjoy/t/a;

    iget-object v1, p0, Lokjoy/g/u;->d:Lokjoy/g/v;

    iget-object v1, v1, Lokjoy/c/b;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lokjoy/t/a;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object p1, v0, Lokjoy/t/a;->g:Ljava/lang/String;

    .line 20
    invoke-virtual {v0}, Lokjoy/t/a;->show()V

    new-instance p1, Lokjoy/g/t;

    invoke-direct {p1, p0}, Lokjoy/g/t;-><init>(Lokjoy/g/u;)V

    .line 21
    iput-object p1, v0, Lokjoy/t/a;->f:Lokjoy/t/a$c;

    :goto_10f
    return-void
.end method
