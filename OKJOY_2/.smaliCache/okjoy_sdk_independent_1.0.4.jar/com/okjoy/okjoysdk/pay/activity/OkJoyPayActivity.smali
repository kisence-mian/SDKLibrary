.class public Lcom/okjoy/okjoysdk/pay/activity/OkJoyPayActivity;
.super Lcom/okjoy/okjoysdk/base/OkJoyBaseActivity;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/okjoy/okjoysdk/base/OkJoyBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/okjoy/okjoysdk/base/OkJoyBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "payModel"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;

    const-string v1, "productInfo"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/okjoy/okjoysdk/entity/response/OkJoyProductInfoResponseModel;

    new-instance v1, Lokjoy/j/c;

    invoke-direct {v1}, Lokjoy/j/c;-><init>()V

    iput-object v0, v1, Lokjoy/j/c;->b:Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;

    iput-object p1, v1, Lokjoy/j/c;->c:Lcom/okjoy/okjoysdk/entity/response/OkJoyProductInfoResponseModel;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    const-string v0, "contentFrame"

    invoke-static {p0, v0}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const-string v2, "kPayCenterFragment"

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method
