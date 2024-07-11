.class public Lokjoy/a/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokjoy/h/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lokjoy/h/c<",
        "Lcom/okjoy/okjoysdk/entity/response/OkJoyAntiAdditionRemainTimeResponseModel;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lokjoy/a/d;


# direct methods
.method public constructor <init>(Lokjoy/a/d;)V
    .registers 2

    iput-object p1, p0, Lokjoy/a/c;->a:Lokjoy/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u83b7\u53d6\u5269\u4f59\u6e38\u620f\u65f6\u95f4\u5931\u8d25\uff1acode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\uff0cmessage = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lokjoy/a/c;->a:Lokjoy/a/d;

    iget-object p2, p1, Lokjoy/a/d;->f:Lokjoy/a/g$b;

    if-eqz p2, :cond_2b

    iget-object p1, p1, Lokjoy/a/d;->d:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    invoke-interface {p2, p1}, Lokjoy/a/g$b;->onContinueLogin(Lcom/okjoy/okjoysdk/user/OkJoyUserModel;)V

    :cond_2b
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 11

    check-cast p1, Lcom/okjoy/okjoysdk/entity/response/OkJoyAntiAdditionRemainTimeResponseModel;

    .line 1
    iget-object v0, p1, Lcom/okjoy/okjoysdk/entity/response/OkJoyAntiAdditionRemainTimeResponseModel;->data:Lcom/okjoy/okjoysdk/entity/response/OkJoyAntiAdditionRemainTimeResponseModel$OkJoyDataModel;

    invoke-virtual {v0}, Lcom/okjoy/okjoysdk/entity/response/OkJoyAntiAdditionRemainTimeResponseModel$OkJoyDataModel;->getShow()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v2, p1, Lcom/okjoy/okjoysdk/entity/response/OkJoyAntiAdditionRemainTimeResponseModel;->data:Lcom/okjoy/okjoysdk/entity/response/OkJoyAntiAdditionRemainTimeResponseModel$OkJoyDataModel;

    invoke-virtual {v2}, Lcom/okjoy/okjoysdk/entity/response/OkJoyAntiAdditionRemainTimeResponseModel$OkJoyDataModel;->getOffline()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/entity/response/OkJoyBaseResponseModel;->getMsg()Ljava/lang/String;

    move-result-object v7

    if-eqz v0, :cond_34

    new-instance p1, Lokjoy/t/a;

    iget-object v0, p0, Lokjoy/a/c;->a:Lokjoy/a/d;

    iget-object v0, v0, Lokjoy/a/d;->e:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lokjoy/t/a;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object v7, p1, Lokjoy/t/a;->g:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lokjoy/t/a;->show()V

    new-instance v0, Lokjoy/a/b;

    invoke-direct {v0, p0, v6, v7}, Lokjoy/a/b;-><init>(Lokjoy/a/c;ZLjava/lang/String;)V

    .line 4
    iput-object v0, p1, Lokjoy/t/a;->f:Lokjoy/t/a$c;

    goto :goto_41

    .line 5
    :cond_34
    iget-object p1, p0, Lokjoy/a/c;->a:Lokjoy/a/d;

    iget-object v3, p1, Lokjoy/a/d;->e:Landroid/app/Activity;

    iget-object v4, p1, Lokjoy/a/d;->d:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    iget-boolean v5, p1, Lokjoy/a/d;->a:Z

    iget-object v8, p1, Lokjoy/a/d;->f:Lokjoy/a/g$b;

    invoke-static/range {v3 .. v8}, Lokjoy/a/g;->a(Landroid/app/Activity;Lcom/okjoy/okjoysdk/user/OkJoyUserModel;ZZLjava/lang/String;Lokjoy/a/g$b;)V

    :goto_41
    return-void
.end method
