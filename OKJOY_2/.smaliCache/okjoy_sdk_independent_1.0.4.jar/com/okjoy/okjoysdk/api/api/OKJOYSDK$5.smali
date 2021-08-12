.class public Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokjoy/h/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->submitRoleInfo(Landroid/app/Activity;Ljava/lang/String;Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lokjoy/h/c<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;


# direct methods
.method public constructor <init>(Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$5;->this$0:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u89d2\u8272\u4fe1\u606f\u63d0\u4ea4\u5931\u8d25\uff0ccode = "

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

    sget-object p1, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->roleListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkSubmitRoleListener;

    if-eqz p1, :cond_3f

    new-instance v0, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkSubmitRoleCallBackModel;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u89d2\u8272\u4fe1\u606f\u63d0\u4ea4\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkSubmitRoleCallBackModel;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/okjoy/okjoysdk/api/listener/OkJoySdkSubmitRoleListener;->onFailure(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkSubmitRoleCallBackModel;)V

    :cond_3f
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$5;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .registers 4

    sget-object p1, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->roleListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkSubmitRoleListener;

    if-eqz p1, :cond_e

    new-instance v0, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkSubmitRoleCallBackModel;

    const-string v1, "\u89d2\u8272\u4fe1\u606f\u63d0\u4ea4\u6210\u529f"

    invoke-direct {v0, v1}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkSubmitRoleCallBackModel;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/okjoy/okjoysdk/api/listener/OkJoySdkSubmitRoleListener;->onSuccess(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkSubmitRoleCallBackModel;)V

    :cond_e
    return-void
.end method
