.class public final Lokjoy/a/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokjoy/h/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lokjoy/h/c<",
        "Lcom/okjoy/okjoysdk/entity/response/OkJoyOnlineVerifyResponseModel;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lokjoy/a/n;


# direct methods
.method public constructor <init>(Lokjoy/a/n;)V
    .registers 2

    iput-object p1, p0, Lokjoy/a/m;->a:Lokjoy/a/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .registers 3

    iget-object p1, p0, Lokjoy/a/m;->a:Lokjoy/a/n;

    if-eqz p1, :cond_17

    check-cast p1, Lokjoy/a/f;

    if-eqz p1, :cond_15

    .line 1
    invoke-static {p2}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object p1, p1, Lokjoy/a/f;->c:Lokjoy/a/g$a;

    iget-object p2, p1, Lokjoy/a/g$a;->a:Landroid/app/Activity;

    iget-object p1, p1, Lokjoy/a/g$a;->b:Lokjoy/a/g$b;

    .line 2
    invoke-static {p2, p1}, Lokjoy/a/g;->a(Landroid/app/Activity;Lokjoy/a/g$b;)V

    goto :goto_17

    :cond_15
    const/4 p1, 0x0

    .line 3
    throw p1

    :cond_17
    :goto_17
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lcom/okjoy/okjoysdk/entity/response/OkJoyOnlineVerifyResponseModel;

    .line 1
    iget-object v0, p1, Lcom/okjoy/okjoysdk/entity/response/OkJoyOnlineVerifyResponseModel;->data:Lcom/okjoy/okjoysdk/entity/response/OkJoyOnlineVerifyResponseModel$OkJoyDataModel;

    invoke-virtual {v0}, Lcom/okjoy/okjoysdk/entity/response/OkJoyOnlineVerifyResponseModel$OkJoyDataModel;->getVerify()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lokjoy/e/b;->f:Ljava/lang/String;

    iget-object v0, p0, Lokjoy/a/m;->a:Lokjoy/a/n;

    if-eqz v0, :cond_19

    iget-object p1, p1, Lcom/okjoy/okjoysdk/entity/response/OkJoyOnlineVerifyResponseModel;->data:Lcom/okjoy/okjoysdk/entity/response/OkJoyOnlineVerifyResponseModel$OkJoyDataModel;

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/entity/response/OkJoyOnlineVerifyResponseModel$OkJoyDataModel;->getVerify()Ljava/lang/String;

    move-result-object p1

    check-cast v0, Lokjoy/a/f;

    invoke-virtual {v0, p1}, Lokjoy/a/f;->a(Ljava/lang/String;)V

    :cond_19
    return-void
.end method
