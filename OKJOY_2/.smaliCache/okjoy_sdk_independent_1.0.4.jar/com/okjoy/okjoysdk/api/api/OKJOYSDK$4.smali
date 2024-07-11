.class public Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager$RightAgeOnListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->login(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;

.field public final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$4;->this$0:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;

    iput-object p2, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$4;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContinue()V
    .registers 7

    iget-object v0, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$4;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/okjoy/okjoysdk/user/OkJoyCurrentUserManager;->getUser(Landroid/content/Context;)Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    move-result-object v0

    if-eqz v0, :cond_52

    invoke-virtual {v0}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_52

    invoke-virtual {v0}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_52

    const-string v1, "token\u767b\u5f55"

    invoke-static {v1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    new-instance v1, Lokjoy/u/a;

    iget-object v2, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$4;->val$activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lokjoy/u/a;-><init>(Landroid/content/Context;)V

    .line 1
    const-string v2, "\u767b\u5f55\u4e2d..."

    iput-object v2, v1, Lokjoy/u/a;->d:Ljava/lang/String;

    .line 2
    invoke-virtual {v1}, Lokjoy/u/a;->show()V

    iget-object v2, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$4;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->getUserName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$4$1;

    invoke-direct {v5, p0, v1, v0}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$4$1;-><init>(Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$4;Lokjoy/u/a;Lcom/okjoy/okjoysdk/user/OkJoyUserModel;)V

    .line 3
    new-instance v0, Lokjoy/h/m;

    invoke-direct {v0, v2, v3, v4}, Lokjoy/h/m;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->getRequestParams()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lokjoy/h/o;

    invoke-direct {v1, v5}, Lokjoy/h/o;-><init>(Lokjoy/h/c;)V

    const-string v2, "https://sdk.ok-joy.com/common/?ct=user&ac=tokenLogin"

    invoke-static {v2, v0, v1}, Lokjoy/a/g;->a(Ljava/lang/String;Ljava/lang/String;Lokjoy/h/b;)V

    goto :goto_66

    .line 4
    :cond_52
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$4;->val$activity:Landroid/app/Activity;

    const-class v2, Lcom/okjoy/okjoysdk/login/activity/OkJoyLoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$4;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$4;->val$activity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :goto_66
    return-void
.end method
