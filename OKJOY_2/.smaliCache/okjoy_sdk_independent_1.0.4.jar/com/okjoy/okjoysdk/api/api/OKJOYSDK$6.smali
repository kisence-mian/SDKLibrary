.class public Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokjoy/a/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->pay(Landroid/app/Activity;Ljava/lang/String;Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;

.field public final synthetic val$activity:Landroid/app/Activity;

.field public final synthetic val$finalExtraInfo:Ljava/lang/String;

.field public final synthetic val$finalGameOrderId:Ljava/lang/String;

.field public final synthetic val$finalProductId:Ljava/lang/String;

.field public final synthetic val$finalRoleId:Ljava/lang/String;

.field public final synthetic val$finalRoleLevel:Ljava/lang/String;

.field public final synthetic val$finalRoleName:Ljava/lang/String;

.field public final synthetic val$finalServerId:Ljava/lang/String;

.field public final synthetic val$finalServerName:Ljava/lang/String;

.field public final synthetic val$finalUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    iput-object p1, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6;->this$0:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;

    iput-object p2, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6;->val$finalUserId:Ljava/lang/String;

    iput-object p4, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6;->val$finalProductId:Ljava/lang/String;

    iput-object p5, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6;->val$finalGameOrderId:Ljava/lang/String;

    iput-object p6, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6;->val$finalRoleId:Ljava/lang/String;

    iput-object p7, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6;->val$finalRoleName:Ljava/lang/String;

    iput-object p8, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6;->val$finalServerId:Ljava/lang/String;

    iput-object p9, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6;->val$finalServerName:Ljava/lang/String;

    iput-object p10, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6;->val$finalRoleLevel:Ljava/lang/String;

    iput-object p11, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6;->val$finalExtraInfo:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelPay(Ljava/lang/String;)V
    .registers 6

    sget-object v0, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->payListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkPayListener;

    if-eqz v0, :cond_10

    new-instance v1, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;

    iget-object v2, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6;->val$finalGameOrderId:Ljava/lang/String;

    iget-object v3, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6;->val$finalProductId:Ljava/lang/String;

    invoke-direct {v1, v2, v3, p1}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/okjoy/okjoysdk/api/listener/OkJoySdkPayListener;->onFailure(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;)V

    :cond_10
    return-void
.end method

.method public onContinuePay()V
    .registers 3

    new-instance v0, Lokjoy/t/a;

    iget-object v1, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lokjoy/t/a;-><init>(Landroid/content/Context;)V

    .line 1
    const-string v1, "\u662f\u5426\u786e\u5b9a\u652f\u4ed8\uff1f"

    iput-object v1, v0, Lokjoy/t/a;->g:Ljava/lang/String;

    .line 2
    const/4 v1, 0x1

    iput-boolean v1, v0, Lokjoy/t/a;->h:Z

    .line 3
    invoke-virtual {v0}, Lokjoy/t/a;->show()V

    new-instance v1, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6$1;

    invoke-direct {v1, p0}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6$1;-><init>(Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6;)V

    .line 4
    iput-object v1, v0, Lokjoy/t/a;->f:Lokjoy/t/a$c;

    return-void
.end method
