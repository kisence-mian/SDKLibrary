.class public Lokjoy/o/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokjoy/h/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lokjoy/h/c<",
        "Lcom/okjoy/okjoysdk/entity/response/OkJoyProtocolResponseModel;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lokjoy/u/a;

.field public final synthetic b:Lokjoy/o/f;


# direct methods
.method public constructor <init>(Lokjoy/o/f;Lokjoy/u/a;)V
    .registers 3

    iput-object p1, p0, Lokjoy/o/b;->b:Lokjoy/o/f;

    iput-object p2, p0, Lokjoy/o/b;->a:Lokjoy/u/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .registers 4

    iget-object p1, p0, Lokjoy/o/b;->a:Lokjoy/u/a;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lokjoy/o/b;->a:Lokjoy/u/a;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->cancel()V

    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u83b7\u53d6\u534f\u8bae\u5931\u8d25\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 6

    check-cast p1, Lcom/okjoy/okjoysdk/entity/response/OkJoyProtocolResponseModel;

    .line 1
    iget-object v0, p0, Lokjoy/o/b;->a:Lokjoy/u/a;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lokjoy/o/b;->a:Lokjoy/u/a;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    :cond_f
    iget-object v0, p1, Lcom/okjoy/okjoysdk/entity/response/OkJoyProtocolResponseModel;->data:Lcom/okjoy/okjoysdk/entity/response/OkJoyProtocolResponseModel$OkJoyDataModel;

    invoke-virtual {v0}, Lcom/okjoy/okjoysdk/entity/response/OkJoyProtocolResponseModel$OkJoyDataModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/okjoy/okjoysdk/entity/response/OkJoyProtocolResponseModel;->data:Lcom/okjoy/okjoysdk/entity/response/OkJoyProtocolResponseModel$OkJoyDataModel;

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/entity/response/OkJoyProtocolResponseModel$OkJoyDataModel;->getUrl()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6807\u9898\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u94fe\u63a5\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    new-instance v1, Lokjoy/g/q;

    invoke-direct {v1}, Lokjoy/g/q;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "title"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    iget-object p1, p0, Lokjoy/o/b;->b:Lokjoy/o/f;

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v1, v0}, Lokjoy/c/b;->a(Landroid/app/Fragment;Z)V

    return-void
.end method
