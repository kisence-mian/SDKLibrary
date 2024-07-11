.class public Lokjoy/a/f$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokjoy/h/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokjoy/a/f;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lokjoy/h/c<",
        "Lcom/okjoy/okjoysdk/entity/response/OkJoyAntiAdditionHeartResponseModel;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lokjoy/a/f;


# direct methods
.method public constructor <init>(Lokjoy/a/f;)V
    .registers 2

    iput-object p1, p0, Lokjoy/a/f$a;->a:Lokjoy/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8f6e\u8be2\u5fc3\u8df3\u63a5\u53e3\u5931\u8d25\uff1acode = "

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

    iget-object p1, p0, Lokjoy/a/f$a;->a:Lokjoy/a/f;

    iget-object p1, p1, Lokjoy/a/f;->c:Lokjoy/a/g$a;

    iget-object p2, p1, Lokjoy/a/g$a;->a:Landroid/app/Activity;

    iget-object p1, p1, Lokjoy/a/g$a;->b:Lokjoy/a/g$b;

    .line 1
    invoke-static {p2, p1}, Lokjoy/a/g;->a(Landroid/app/Activity;Lokjoy/a/g$b;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 5

    check-cast p1, Lcom/okjoy/okjoysdk/entity/response/OkJoyAntiAdditionHeartResponseModel;

    .line 1
    iget-object v0, p1, Lcom/okjoy/okjoysdk/entity/response/OkJoyAntiAdditionHeartResponseModel;->data:Lcom/okjoy/okjoysdk/entity/response/OkJoyAntiAdditionHeartResponseModel$OkJoyDataModel;

    invoke-virtual {v0}, Lcom/okjoy/okjoysdk/entity/response/OkJoyAntiAdditionHeartResponseModel$OkJoyDataModel;->getShow()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v2, p1, Lcom/okjoy/okjoysdk/entity/response/OkJoyAntiAdditionHeartResponseModel;->data:Lcom/okjoy/okjoysdk/entity/response/OkJoyAntiAdditionHeartResponseModel$OkJoyDataModel;

    invoke-virtual {v2}, Lcom/okjoy/okjoysdk/entity/response/OkJoyAntiAdditionHeartResponseModel$OkJoyDataModel;->getOffline()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/entity/response/OkJoyBaseResponseModel;->getMsg()Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_36

    new-instance v0, Lokjoy/t/a;

    iget-object v2, p0, Lokjoy/a/f$a;->a:Lokjoy/a/f;

    iget-object v2, v2, Lokjoy/a/f;->c:Lokjoy/a/g$a;

    iget-object v2, v2, Lokjoy/a/g$a;->a:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lokjoy/t/a;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p1, v0, Lokjoy/t/a;->g:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Lokjoy/t/a;->show()V

    new-instance v2, Lokjoy/a/e;

    invoke-direct {v2, p0, v1, p1}, Lokjoy/a/e;-><init>(Lokjoy/a/f$a;ZLjava/lang/String;)V

    .line 4
    iput-object v2, v0, Lokjoy/t/a;->f:Lokjoy/t/a$c;

    goto :goto_54

    :cond_36
    if-eqz v1, :cond_49

    .line 5
    sget-object v0, Lokjoy/a/j$b;->a:Lokjoy/a/j;

    .line 6
    invoke-virtual {v0}, Lokjoy/a/j;->a()V

    iget-object v0, p0, Lokjoy/a/f$a;->a:Lokjoy/a/f;

    iget-object v0, v0, Lokjoy/a/f;->c:Lokjoy/a/g$a;

    iget-object v0, v0, Lokjoy/a/g$a;->b:Lokjoy/a/g$b;

    if-eqz v0, :cond_54

    invoke-interface {v0, p1}, Lokjoy/a/g$b;->onLogout(Ljava/lang/String;)V

    goto :goto_54

    :cond_49
    iget-object p1, p0, Lokjoy/a/f$a;->a:Lokjoy/a/f;

    iget-object p1, p1, Lokjoy/a/f;->c:Lokjoy/a/g$a;

    iget-object v0, p1, Lokjoy/a/g$a;->a:Landroid/app/Activity;

    iget-object p1, p1, Lokjoy/a/g$a;->b:Lokjoy/a/g$b;

    .line 7
    invoke-static {v0, p1}, Lokjoy/a/g;->a(Landroid/app/Activity;Lokjoy/a/g$b;)V

    :cond_54
    :goto_54
    return-void
.end method
