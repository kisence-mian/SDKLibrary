.class public Lcom/okjoy/okjoysdk/usercenter/activity/OkJoyUserCenterActivity;
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

    new-instance p1, Lokjoy/o/k;

    invoke-direct {p1}, Lokjoy/o/k;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "contentFrame"

    invoke-static {p0, v1}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const-string v2, "kyUserCenterFragment"

    invoke-virtual {v0, v1, p1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method
