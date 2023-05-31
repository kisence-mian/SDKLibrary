.class public Lcom/tds/common/permission/ForwardSettingDialog;
.super Landroid/app/DialogFragment;
.source "ForwardSettingDialog.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mCallback:Lcom/tds/common/permission/ForwardSettingCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    nop

    .line 21
    const-class v0, Lcom/tds/common/permission/ForwardSettingDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tds/common/permission/ForwardSettingDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/tds/common/permission/ForwardSettingDialog;)Lcom/tds/common/permission/ForwardSettingCallback;
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/permission/ForwardSettingDialog;

    .line 19
    iget-object v0, p0, Lcom/tds/common/permission/ForwardSettingDialog;->mCallback:Lcom/tds/common/permission/ForwardSettingCallback;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tds/common/permission/ForwardSettingCallback;)Lcom/tds/common/permission/ForwardSettingDialog;
    .registers 6
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "confirm"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/tds/common/permission/ForwardSettingCallback;

    .line 26
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 27
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "title"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string v1, "content"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string v1, "confirm"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    new-instance v1, Lcom/tds/common/permission/ForwardSettingDialog;

    invoke-direct {v1}, Lcom/tds/common/permission/ForwardSettingDialog;-><init>()V

    .line 31
    .local v1, "dialog":Lcom/tds/common/permission/ForwardSettingDialog;
    invoke-virtual {v1, v0}, Lcom/tds/common/permission/ForwardSettingDialog;->setArguments(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {v1, p3}, Lcom/tds/common/permission/ForwardSettingDialog;->setForwardSettingCallback(Lcom/tds/common/permission/ForwardSettingCallback;)V

    .line 33
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 42
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    nop

    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/tds/common/permission/ForwardSettingDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "tds_common_permission_dialog"

    invoke-static {v1, v2}, Lcom/tds/common/permission/PermissionResHelper;->getStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/tds/common/permission/ForwardSettingDialog;->setStyle(II)V

    .line 45
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 50
    nop

    .line 51
    invoke-virtual {p0}, Lcom/tds/common/permission/ForwardSettingDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "tds_common_permission_forward_setting"

    invoke-static {v0, v1}, Lcom/tds/common/permission/PermissionResHelper;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onStart()V
    .registers 3

    .line 56
    invoke-virtual {p0}, Lcom/tds/common/permission/ForwardSettingDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 57
    invoke-virtual {p0}, Lcom/tds/common/permission/ForwardSettingDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 58
    invoke-virtual {p0}, Lcom/tds/common/permission/ForwardSettingDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/tds/common/permission/ForwardSettingDialog$1;

    invoke-direct {v1, p0}, Lcom/tds/common/permission/ForwardSettingDialog$1;-><init>(Lcom/tds/common/permission/ForwardSettingDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 64
    invoke-virtual {p0}, Lcom/tds/common/permission/ForwardSettingDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/tds/common/utils/NavigationBarUtil;->focusNotAle(Landroid/view/Window;)V

    .line 65
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 66
    invoke-virtual {p0}, Lcom/tds/common/permission/ForwardSettingDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/tds/common/utils/NavigationBarUtil;->hideNavigationBar(Landroid/view/Window;)V

    .line 67
    invoke-virtual {p0}, Lcom/tds/common/permission/ForwardSettingDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/tds/common/utils/NavigationBarUtil;->clearFocusNotAle(Landroid/view/Window;)V

    .line 69
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 73
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/tds/common/permission/ForwardSettingDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 75
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_7a

    invoke-virtual {p0}, Lcom/tds/common/permission/ForwardSettingDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_10

    goto :goto_7a

    .line 79
    :cond_10
    invoke-virtual {p0}, Lcom/tds/common/permission/ForwardSettingDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "tv_permission_title"

    invoke-static {v1, v2}, Lcom/tds/common/permission/PermissionResHelper;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 80
    .local v1, "tvTitle":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/tds/common/permission/ForwardSettingDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "tv_permission_content"

    invoke-static {v2, v3}, Lcom/tds/common/permission/PermissionResHelper;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 81
    .local v2, "tvContent":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/tds/common/permission/ForwardSettingDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "tv_permission_setting"

    invoke-static {v3, v4}, Lcom/tds/common/permission/PermissionResHelper;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 82
    .local v3, "tvConfirm":Landroid/widget/TextView;
    const-string v4, "title"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    const-string v4, "content"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    const-string v4, "confirm"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    new-instance v4, Lcom/tds/common/permission/ForwardSettingDialog$2;

    invoke-direct {v4, p0}, Lcom/tds/common/permission/ForwardSettingDialog$2;-><init>(Lcom/tds/common/permission/ForwardSettingDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    invoke-virtual {p0}, Lcom/tds/common/permission/ForwardSettingDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "iv_permission_close"

    invoke-static {v4, v5}, Lcom/tds/common/permission/PermissionResHelper;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/tds/common/permission/ForwardSettingDialog$3;

    invoke-direct {v5, p0}, Lcom/tds/common/permission/ForwardSettingDialog$3;-><init>(Lcom/tds/common/permission/ForwardSettingDialog;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    return-void

    .line 76
    .end local v1    # "tvTitle":Landroid/widget/TextView;
    .end local v2    # "tvContent":Landroid/widget/TextView;
    .end local v3    # "tvConfirm":Landroid/widget/TextView;
    :cond_7a
    :goto_7a
    invoke-virtual {p0}, Lcom/tds/common/permission/ForwardSettingDialog;->dismiss()V

    .line 77
    return-void
.end method

.method public setForwardSettingCallback(Lcom/tds/common/permission/ForwardSettingCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/tds/common/permission/ForwardSettingCallback;

    .line 37
    iput-object p1, p0, Lcom/tds/common/permission/ForwardSettingDialog;->mCallback:Lcom/tds/common/permission/ForwardSettingCallback;

    .line 38
    return-void
.end method
