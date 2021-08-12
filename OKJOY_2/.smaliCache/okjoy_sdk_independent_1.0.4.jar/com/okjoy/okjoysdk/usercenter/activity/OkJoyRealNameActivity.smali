.class public Lcom/okjoy/okjoysdk/usercenter/activity/OkJoyRealNameActivity;
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
    .registers 9

    invoke-super {p0, p1}, Lcom/okjoy/okjoysdk/base/OkJoyBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "isMust"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "isLogin"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "isPay"

    invoke-virtual {p1, v5, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    new-instance v1, Lokjoy/g/v;

    invoke-direct {v1}, Lokjoy/g/v;-><init>()V

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v6, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v6, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v6, v5, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1, v6}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    const-string v0, "contentFrame"

    invoke-static {p0, v0}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const-string v2, "kyRealNameFragment"

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method
