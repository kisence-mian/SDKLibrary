.class public abstract Lcom/tds/common/widgets/dialog/AbstractAlertDialog;
.super Lcom/tds/common/widgets/dialog/SafeDialogFragment;
.source "AbstractAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/widgets/dialog/AbstractAlertDialog$Event;,
        Lcom/tds/common/widgets/dialog/AbstractAlertDialog$AlertClickCallback;
    }
.end annotation


# instance fields
.field protected mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Lcom/tds/common/widgets/dialog/SafeDialogFragment;-><init>()V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .registers 9
    .param p1, "view"    # Landroid/view/View;

    .line 92
    sget v0, Lcom/tds/common/R$id;->tv_alert_negative:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 93
    .local v0, "mTvNegative":Landroid/widget/TextView;
    sget v1, Lcom/tds/common/R$id;->tv_alert_positive:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 94
    .local v1, "mTvPositive":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/tds/common/widgets/dialog/AbstractAlertDialog;->leftEvent()Lcom/tds/common/widgets/dialog/AbstractAlertDialog$Event;

    move-result-object v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_2f

    .line 95
    invoke-virtual {p0}, Lcom/tds/common/widgets/dialog/AbstractAlertDialog;->leftEvent()Lcom/tds/common/widgets/dialog/AbstractAlertDialog$Event;

    move-result-object v2

    iget-object v2, v2, Lcom/tds/common/widgets/dialog/AbstractAlertDialog$Event;->text:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    invoke-virtual {p0}, Lcom/tds/common/widgets/dialog/AbstractAlertDialog;->leftEvent()Lcom/tds/common/widgets/dialog/AbstractAlertDialog$Event;

    move-result-object v2

    iget-object v2, v2, Lcom/tds/common/widgets/dialog/AbstractAlertDialog$Event;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_32

    .line 99
    :cond_2f
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    :goto_32
    invoke-virtual {p0}, Lcom/tds/common/widgets/dialog/AbstractAlertDialog;->rightEvent()Lcom/tds/common/widgets/dialog/AbstractAlertDialog$Event;

    move-result-object v2

    if-eqz v2, :cond_4e

    .line 102
    invoke-virtual {p0}, Lcom/tds/common/widgets/dialog/AbstractAlertDialog;->rightEvent()Lcom/tds/common/widgets/dialog/AbstractAlertDialog$Event;

    move-result-object v2

    iget-object v2, v2, Lcom/tds/common/widgets/dialog/AbstractAlertDialog$Event;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    invoke-virtual {p0}, Lcom/tds/common/widgets/dialog/AbstractAlertDialog;->rightEvent()Lcom/tds/common/widgets/dialog/AbstractAlertDialog$Event;

    move-result-object v2

    iget-object v2, v2, Lcom/tds/common/widgets/dialog/AbstractAlertDialog$Event;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_51

    .line 106
    :cond_4e
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    :goto_51
    instance-of v2, p1, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_75

    invoke-virtual {p0}, Lcom/tds/common/widgets/dialog/AbstractAlertDialog;->getContentView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_75

    .line 109
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-virtual {p0}, Lcom/tds/common/widgets/dialog/AbstractAlertDialog;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/high16 v6, 0x42960000    # 75.0f

    invoke-static {v5, v6}, Lcom/tds/common/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v2, v3, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 110
    .local v2, "viewLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    move-object v3, p1

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/tds/common/widgets/dialog/AbstractAlertDialog;->getContentView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v3, v5, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 112
    .end local v2    # "viewLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_75
    return-void
.end method


# virtual methods
.method public abstract getContentView()Landroid/view/View;
.end method

.method public abstract getLayoutParams()[I
.end method

.method public abstract leftEvent()Lcom/tds/common/widgets/dialog/AbstractAlertDialog$Event;
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 53
    invoke-super {p0, p1}, Lcom/tds/common/widgets/dialog/SafeDialogFragment;->onAttach(Landroid/content/Context;)V

    .line 54
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/tds/common/widgets/dialog/AbstractAlertDialog;->mActivity:Landroid/app/Activity;

    .line 55
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 78
    sget v0, Lcom/tds/common/R$layout;->tds_common_view_alert:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onStart()V
    .registers 7

    .line 59
    invoke-super {p0}, Lcom/tds/common/widgets/dialog/SafeDialogFragment;->onStart()V

    .line 60
    invoke-virtual {p0}, Lcom/tds/common/widgets/dialog/AbstractAlertDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 61
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/tds/common/widgets/dialog/AbstractAlertDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    .line 62
    .local v1, "dialog":Landroid/app/Dialog;
    if-eqz v1, :cond_41

    if-eqz v0, :cond_41

    .line 64
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    if-eqz v2, :cond_41

    .line 65
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-nez v2, :cond_1c

    goto :goto_41

    .line 68
    :cond_1c
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tds/common/widgets/dialog/AbstractAlertDialog;->getLayoutParams()[I

    move-result-object v3

    const/4 v4, 0x0

    aget v3, v3, v4

    const/4 v5, -0x2

    invoke-virtual {v2, v3, v5}, Landroid/view/Window;->setLayout(II)V

    .line 69
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 71
    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 72
    invoke-static {v1}, Lcom/tds/common/widgets/HoloThemeHelper;->fixHoloDialogBlueLine(Landroid/app/Dialog;)V

    .line 73
    return-void

    .line 66
    :cond_41
    :goto_41
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 83
    invoke-super {p0, p1, p2}, Lcom/tds/common/widgets/dialog/SafeDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/tds/common/widgets/dialog/AbstractAlertDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_d

    .line 85
    invoke-virtual {p0}, Lcom/tds/common/widgets/dialog/AbstractAlertDialog;->dismiss()V

    .line 86
    return-void

    .line 88
    :cond_d
    invoke-direct {p0, p1}, Lcom/tds/common/widgets/dialog/AbstractAlertDialog;->initView(Landroid/view/View;)V

    .line 89
    return-void
.end method

.method public abstract rightEvent()Lcom/tds/common/widgets/dialog/AbstractAlertDialog$Event;
.end method
