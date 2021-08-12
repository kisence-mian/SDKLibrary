.class public Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$3$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokjoy/h/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$3$1;->onContinueLogin(Lcom/okjoy/okjoysdk/user/OkJoyUserModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lokjoy/h/c<",
        "Lcom/okjoy/okjoysdk/entity/response/OkJoyUserInfoResponseModel;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$2:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$3$1;

.field public final synthetic val$userModel:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;


# direct methods
.method public constructor <init>(Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$3$1;Lcom/okjoy/okjoysdk/user/OkJoyUserModel;)V
    .registers 3

    iput-object p1, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$3$1$1;->this$2:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$3$1;

    iput-object p2, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$3$1$1;->val$userModel:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .registers 3

    iget-object p1, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$3$1$1;->this$2:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$3$1;

    iget-object p1, p1, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$3$1;->this$1:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$3;

    iget-object p1, p1, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$3;->val$activity:Landroid/app/Activity;

    iget-object p2, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$3$1$1;->val$userModel:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    invoke-static {p1, p2}, Lcom/okjoy/okjoysdk/user/OkJoyCurrentUserManager;->saveUser(Landroid/content/Context;Lcom/okjoy/okjoysdk/user/OkJoyUserModel;)V

    return-void
.end method

.method public onSuccess(Lcom/okjoy/okjoysdk/entity/response/OkJoyUserInfoResponseModel;)V
    .registers 3

    iget-object v0, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$3$1$1;->val$userModel:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    iget-object p1, p1, Lcom/okjoy/okjoysdk/entity/response/OkJoyUserInfoResponseModel;->data:Lcom/okjoy/okjoysdk/entity/response/OkJoyUserInfoResponseModel$OkJoyDataModel;

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/entity/response/OkJoyUserInfoResponseModel$OkJoyDataModel;->getPhone()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->setPhone(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$3$1$1;->this$2:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$3$1;

    iget-object p1, p1, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$3$1;->this$1:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$3;

    iget-object p1, p1, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$3;->val$activity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$3$1$1;->val$userModel:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    invoke-static {p1, v0}, Lcom/okjoy/okjoysdk/user/OkJoyCurrentUserManager;->saveUser(Landroid/content/Context;Lcom/okjoy/okjoysdk/user/OkJoyUserModel;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/okjoy/okjoysdk/entity/response/OkJoyUserInfoResponseModel;

    invoke-virtual {p0, p1}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$3$1$1;->onSuccess(Lcom/okjoy/okjoysdk/entity/response/OkJoyUserInfoResponseModel;)V

    return-void
.end method
