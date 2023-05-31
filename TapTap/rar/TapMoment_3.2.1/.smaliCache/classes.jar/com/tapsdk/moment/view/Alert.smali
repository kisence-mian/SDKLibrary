.class public Lcom/tapsdk/moment/view/Alert;
.super Landroid/app/DialogFragment;
.source "Alert.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapsdk/moment/view/Alert$OnClickListener;,
        Lcom/tapsdk/moment/view/Alert$ClickStub;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mStub:Lcom/tapsdk/moment/view/Alert$ClickStub;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    const-class v0, Lcom/tapsdk/moment/view/Alert;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapsdk/moment/view/Alert;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/tapsdk/moment/view/Alert$ClickStub;)Lcom/tapsdk/moment/view/Alert;
    .registers 8
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "positive"    # Ljava/lang/String;
    .param p3, "negative"    # Ljava/lang/String;
    .param p4, "cancelable"    # Z
    .param p5, "stub"    # Lcom/tapsdk/moment/view/Alert$ClickStub;

    .line 33
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 34
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "title"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v1, "content"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v1, "positive"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v1, "negative"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v1, "cancelable"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 39
    new-instance v1, Lcom/tapsdk/moment/view/Alert;

    invoke-direct {v1}, Lcom/tapsdk/moment/view/Alert;-><init>()V

    .line 40
    .local v1, "alert":Lcom/tapsdk/moment/view/Alert;
    invoke-virtual {v1, v0}, Lcom/tapsdk/moment/view/Alert;->setArguments(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {v1, p5}, Lcom/tapsdk/moment/view/Alert;->setClickStub(Lcom/tapsdk/moment/view/Alert$ClickStub;)V

    .line 42
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .line 121
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/Alert;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_7

    .line 122
    return-void

    .line 124
    :cond_7
    iget-object v0, p0, Lcom/tapsdk/moment/view/Alert;->mStub:Lcom/tapsdk/moment/view/Alert$ClickStub;

    if-eqz v0, :cond_4c

    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0}, Lcom/tapsdk/moment/view/Alert;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "tv_negative"

    invoke-static {v1, v2}, Lcom/tapsdk/moment/Utils;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_21

    .line 126
    iget-object v0, p0, Lcom/tapsdk/moment/view/Alert;->mStub:Lcom/tapsdk/moment/view/Alert$ClickStub;

    invoke-virtual {v0}, Lcom/tapsdk/moment/view/Alert$ClickStub;->onNegative()V

    goto :goto_4c

    .line 127
    :cond_21
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0}, Lcom/tapsdk/moment/view/Alert;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "tv_positive"

    invoke-static {v1, v2}, Lcom/tapsdk/moment/Utils;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_37

    .line 128
    iget-object v0, p0, Lcom/tapsdk/moment/view/Alert;->mStub:Lcom/tapsdk/moment/view/Alert$ClickStub;

    invoke-virtual {v0}, Lcom/tapsdk/moment/view/Alert$ClickStub;->onPositive()V

    goto :goto_4c

    .line 129
    :cond_37
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0}, Lcom/tapsdk/moment/view/Alert;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "iv_alert_close"

    invoke-static {v1, v2}, Lcom/tapsdk/moment/Utils;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_4c

    .line 130
    iget-object v0, p0, Lcom/tapsdk/moment/view/Alert;->mStub:Lcom/tapsdk/moment/view/Alert$ClickStub;

    invoke-virtual {v0}, Lcom/tapsdk/moment/view/Alert$ClickStub;->onNegative()V

    .line 133
    :cond_4c
    :goto_4c
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/Alert;->dismiss()V

    .line 134
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 51
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/Alert;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "AlertDialogStyle"

    invoke-static {v0, v1}, Lcom/tapsdk/moment/Utils;->getStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/tapsdk/moment/view/Alert;->setStyle(II)V

    .line 53
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 57
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/Alert;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ttos_moment_dialog_alert"

    invoke-static {v0, v1}, Lcom/tapsdk/moment/Utils;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 63
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/Alert;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "tv_alert_content"

    invoke-static {v0, v1}, Lcom/tapsdk/moment/Utils;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 66
    .local v0, "tvContent":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/Alert;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "tv_negative"

    invoke-static {v1, v2}, Lcom/tapsdk/moment/Utils;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 67
    .local v1, "tvNegative":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/Alert;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "tv_positive"

    invoke-static {v2, v3}, Lcom/tapsdk/moment/Utils;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 68
    .local v2, "tvPositive":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/Alert;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "tv_alert_title"

    invoke-static {v3, v4}, Lcom/tapsdk/moment/Utils;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 70
    .local v3, "tvTitle":Landroid/widget/TextView;
    sget v4, Lcom/tapsdk/moment/R$id;->iv_alert_close:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/Alert;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    .line 75
    .local v4, "args":Landroid/os/Bundle;
    if-nez v4, :cond_59

    .line 76
    return-void

    .line 78
    :cond_59
    const-string v5, "title"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    const-string v5, "content"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    const-string v5, "positive"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7f

    .line 81
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_88

    .line 83
    :cond_7f
    const-string v5, "dialog_confirm"

    invoke-static {v5}, Lcom/tapsdk/moment/Utils;->getTranslatedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :goto_88
    const-string v5, "negative"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/16 v7, 0x8

    if-nez v6, :cond_9e

    .line 86
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b6

    .line 88
    :cond_9e
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 90
    .local v5, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/Alert;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const/high16 v8, 0x420c0000    # 35.0f

    invoke-static {v6, v8}, Lcom/tapsdk/moment/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 91
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    .end local v5    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :goto_b6
    const/4 v5, 0x1

    const-string v6, "cancelable"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 94
    .local v5, "cancelable":Z
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/Alert;->getDialog()Landroid/app/Dialog;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 95
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/Alert;->getDialog()Landroid/app/Dialog;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 96
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/Alert;->getDialog()Landroid/app/Dialog;

    move-result-object v6

    new-instance v8, Lcom/tapsdk/moment/view/Alert$1;

    invoke-direct {v8, p0, v5}, Lcom/tapsdk/moment/view/Alert$1;-><init>(Lcom/tapsdk/moment/view/Alert;Z)V

    invoke-virtual {v6, v8}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 105
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/Alert;->getDialog()Landroid/app/Dialog;

    move-result-object v6

    if-eqz v6, :cond_101

    invoke-virtual {p0}, Lcom/tapsdk/moment/view/Alert;->getDialog()Landroid/app/Dialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    if-eqz v6, :cond_101

    .line 106
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/Alert;->getDialog()Landroid/app/Dialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    .line 107
    .local v6, "window":Landroid/view/Window;
    invoke-static {v6}, Lcom/tapsdk/moment/ScreenHelper;->fullScreenImmersive(Landroid/view/Window;)V

    .line 108
    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    .line 109
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/Alert;->getDialog()Landroid/app/Dialog;

    move-result-object v7

    new-instance v8, Lcom/tapsdk/moment/view/Alert$2;

    invoke-direct {v8, p0, v6}, Lcom/tapsdk/moment/view/Alert$2;-><init>(Lcom/tapsdk/moment/view/Alert;Landroid/view/Window;)V

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 117
    .end local v6    # "window":Landroid/view/Window;
    :cond_101
    return-void
.end method

.method public setClickStub(Lcom/tapsdk/moment/view/Alert$ClickStub;)V
    .registers 2
    .param p1, "stub"    # Lcom/tapsdk/moment/view/Alert$ClickStub;

    .line 46
    iput-object p1, p0, Lcom/tapsdk/moment/view/Alert;->mStub:Lcom/tapsdk/moment/view/Alert$ClickStub;

    .line 47
    return-void
.end method
