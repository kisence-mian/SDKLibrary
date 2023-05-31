.class Lcom/taptap/pay/sdk/library/TapAlertDialog;
.super Ljava/lang/Object;
.source "TapAlertDialog.java"

# interfaces
.implements Lcom/taptap/pay/sdk/library/TapAlertView$OnAlertViewClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/pay/sdk/library/TapAlertDialog$OnDialogClickListener;,
        Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;
    }
.end annotation


# static fields
.field public static final TYPE_DIALOG_DOWNLOAD_TAPTAP:I = 0x1

.field public static final TYPE_DIALOG_LICENSE_NO:I = 0x2

.field public static final TYPE_DIALOG_LOADING:I = 0x3

.field public static final TYPE_DIALOG_OPEN_TAPTAP:I


# instance fields
.field private mAlertView:Lcom/taptap/pay/sdk/library/TapAlertView;

.field private mCanceledBackPress:Z

.field private mCanceledOnTouchOutside:Z

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mOnDialogClickListener:Lcom/taptap/pay/sdk/library/TapAlertDialog$OnDialogClickListener;

.field private mTapCNRes:Lcom/taptap/pay/sdk/library/TapIconTitle;

.field private mTapGlobalRes:Lcom/taptap/pay/sdk/library/TapIconTitle;

.field private mType:I


# direct methods
.method public constructor <init>(Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/taptap/pay/sdk/library/TapAlertDialog;->mType:I

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taptap/pay/sdk/library/TapAlertDialog;->mTapCNRes:Lcom/taptap/pay/sdk/library/TapIconTitle;

    .line 36
    iput-object v0, p0, Lcom/taptap/pay/sdk/library/TapAlertDialog;->mTapGlobalRes:Lcom/taptap/pay/sdk/library/TapIconTitle;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taptap/pay/sdk/library/TapAlertDialog;->mCanceledOnTouchOutside:Z

    .line 40
    iput-boolean v0, p0, Lcom/taptap/pay/sdk/library/TapAlertDialog;->mCanceledBackPress:Z

    .line 45
    # getter for: Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;->access$000(Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/taptap/pay/sdk/library/TapAlertDialog;->mContext:Landroid/content/Context;

    .line 46
    # getter for: Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;->mType:I
    invoke-static {p1}, Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;->access$100(Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;)I

    move-result v0

    iput v0, p0, Lcom/taptap/pay/sdk/library/TapAlertDialog;->mType:I

    .line 47
    # getter for: Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;->mTapCNRes:Lcom/taptap/pay/sdk/library/TapIconTitle;
    invoke-static {p1}, Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;->access$200(Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;)Lcom/taptap/pay/sdk/library/TapIconTitle;

    move-result-object v0

    iput-object v0, p0, Lcom/taptap/pay/sdk/library/TapAlertDialog;->mTapCNRes:Lcom/taptap/pay/sdk/library/TapIconTitle;

    .line 48
    # getter for: Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;->mTapGlobalRes:Lcom/taptap/pay/sdk/library/TapIconTitle;
    invoke-static {p1}, Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;->access$300(Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;)Lcom/taptap/pay/sdk/library/TapIconTitle;

    move-result-object v0

    iput-object v0, p0, Lcom/taptap/pay/sdk/library/TapAlertDialog;->mTapGlobalRes:Lcom/taptap/pay/sdk/library/TapIconTitle;

    .line 49
    # getter for: Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;->mCanceledOnTouchOutside:Z
    invoke-static {p1}, Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;->access$400(Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/taptap/pay/sdk/library/TapAlertDialog;->mCanceledOnTouchOutside:Z

    .line 50
    # getter for: Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;->mCanceledBackPress:Z
    invoke-static {p1}, Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;->access$500(Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/taptap/pay/sdk/library/TapAlertDialog;->mCanceledBackPress:Z

    .line 51
    # getter for: Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;->mOnDialogClickListener:Lcom/taptap/pay/sdk/library/TapAlertDialog$OnDialogClickListener;
    invoke-static {p1}, Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;->access$600(Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;)Lcom/taptap/pay/sdk/library/TapAlertDialog$OnDialogClickListener;

    move-result-object v0

    iput-object v0, p0, Lcom/taptap/pay/sdk/library/TapAlertDialog;->mOnDialogClickListener:Lcom/taptap/pay/sdk/library/TapAlertDialog$OnDialogClickListener;

    .line 52
    return-void
.end method

.method static synthetic access$700(Lcom/taptap/pay/sdk/library/TapAlertDialog;)Landroid/app/Dialog;
    .registers 2
    .param p0, "x0"    # Lcom/taptap/pay/sdk/library/TapAlertDialog;

    .line 16
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapAlertDialog;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapAlertDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_7

    .line 133
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 135
    :cond_7
    return-void
.end method

.method public onCancel()V
    .registers 2

    .line 139
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapAlertDialog;->mOnDialogClickListener:Lcom/taptap/pay/sdk/library/TapAlertDialog$OnDialogClickListener;

    if-eqz v0, :cond_7

    .line 140
    invoke-interface {v0}, Lcom/taptap/pay/sdk/library/TapAlertDialog$OnDialogClickListener;->onCancel()V

    .line 142
    :cond_7
    invoke-virtual {p0}, Lcom/taptap/pay/sdk/library/TapAlertDialog;->dismiss()V

    .line 143
    return-void
.end method

.method public onDownloadTapTap()V
    .registers 2

    .line 161
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapAlertDialog;->mOnDialogClickListener:Lcom/taptap/pay/sdk/library/TapAlertDialog$OnDialogClickListener;

    if-eqz v0, :cond_7

    .line 162
    invoke-interface {v0, p0}, Lcom/taptap/pay/sdk/library/TapAlertDialog$OnDialogClickListener;->onDownloadTapTap(Lcom/taptap/pay/sdk/library/TapAlertDialog;)V

    .line 164
    :cond_7
    return-void
.end method

.method public onNoLicense()V
    .registers 2

    .line 168
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapAlertDialog;->mOnDialogClickListener:Lcom/taptap/pay/sdk/library/TapAlertDialog$OnDialogClickListener;

    if-eqz v0, :cond_7

    .line 169
    invoke-interface {v0, p0}, Lcom/taptap/pay/sdk/library/TapAlertDialog$OnDialogClickListener;->onNoLicense(Lcom/taptap/pay/sdk/library/TapAlertDialog;)V

    .line 171
    :cond_7
    return-void
.end method

.method public onOpenTapTapCN()V
    .registers 2

    .line 147
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapAlertDialog;->mOnDialogClickListener:Lcom/taptap/pay/sdk/library/TapAlertDialog$OnDialogClickListener;

    if-eqz v0, :cond_7

    .line 148
    invoke-interface {v0, p0}, Lcom/taptap/pay/sdk/library/TapAlertDialog$OnDialogClickListener;->onOpenTapTapCN(Lcom/taptap/pay/sdk/library/TapAlertDialog;)V

    .line 150
    :cond_7
    return-void
.end method

.method public onOpenTapTapGlobal()V
    .registers 2

    .line 154
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapAlertDialog;->mOnDialogClickListener:Lcom/taptap/pay/sdk/library/TapAlertDialog$OnDialogClickListener;

    if-eqz v0, :cond_7

    .line 155
    invoke-interface {v0, p0}, Lcom/taptap/pay/sdk/library/TapAlertDialog$OnDialogClickListener;->onOpenTapTapGlobal(Lcom/taptap/pay/sdk/library/TapAlertDialog;)V

    .line 157
    :cond_7
    return-void
.end method

.method scanActivity(Landroid/content/Context;)Landroid/app/Activity;
    .registers 4
    .param p1, "c"    # Landroid/content/Context;

    .line 117
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 118
    return-object v0

    .line 120
    :cond_4
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_c

    .line 121
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    return-object v0

    .line 122
    :cond_c
    instance-of v1, p1, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1c

    .line 123
    move-object v0, p1

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/taptap/pay/sdk/library/TapAlertDialog;->scanActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    return-object v0

    .line 125
    :cond_1c
    return-object v0
.end method

.method public show()V
    .registers 4

    .line 55
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapAlertDialog;->mContext:Landroid/content/Context;

    if-nez v0, :cond_5

    .line 56
    return-void

    .line 57
    :cond_5
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_12

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 58
    return-void

    .line 61
    :cond_12
    iget v0, p0, Lcom/taptap/pay/sdk/library/TapAlertDialog;->mType:I

    if-eqz v0, :cond_20

    const/4 v1, 0x1

    if-eq v0, v1, :cond_20

    const/4 v1, 0x2

    if-eq v0, v1, :cond_20

    const/4 v1, 0x3

    if-eq v0, v1, :cond_20

    .line 65
    return-void

    .line 68
    :cond_20
    new-instance v0, Lcom/taptap/pay/sdk/library/TapAlertDialog$1;

    iget-object v1, p0, Lcom/taptap/pay/sdk/library/TapAlertDialog;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/taptap/pay/sdk/library/TapAlertDialog$1;-><init>(Lcom/taptap/pay/sdk/library/TapAlertDialog;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/taptap/pay/sdk/library/TapAlertDialog;->mDialog:Landroid/app/Dialog;

    .line 73
    iget-boolean v1, p0, Lcom/taptap/pay/sdk/library/TapAlertDialog;->mCanceledOnTouchOutside:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 75
    iget-boolean v0, p0, Lcom/taptap/pay/sdk/library/TapAlertDialog;->mCanceledBackPress:Z

    if-nez v0, :cond_3d

    .line 76
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapAlertDialog;->mDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/taptap/pay/sdk/library/TapAlertDialog$2;

    invoke-direct {v1, p0}, Lcom/taptap/pay/sdk/library/TapAlertDialog$2;-><init>(Lcom/taptap/pay/sdk/library/TapAlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 105
    :cond_3d
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapAlertDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 107
    new-instance v0, Lcom/taptap/pay/sdk/library/TapAlertView;

    iget-object v1, p0, Lcom/taptap/pay/sdk/library/TapAlertDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/taptap/pay/sdk/library/TapAlertView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taptap/pay/sdk/library/TapAlertDialog;->mAlertView:Lcom/taptap/pay/sdk/library/TapAlertView;

    .line 108
    invoke-virtual {v0, p0}, Lcom/taptap/pay/sdk/library/TapAlertView;->setOnAlertClickListener(Lcom/taptap/pay/sdk/library/TapAlertView$OnAlertViewClickListener;)V

    .line 109
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapAlertDialog;->mAlertView:Lcom/taptap/pay/sdk/library/TapAlertView;

    iget v1, p0, Lcom/taptap/pay/sdk/library/TapAlertDialog;->mType:I

    invoke-virtual {v0, v1}, Lcom/taptap/pay/sdk/library/TapAlertView;->setType(I)V

    .line 110
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapAlertDialog;->mAlertView:Lcom/taptap/pay/sdk/library/TapAlertView;

    iget-object v1, p0, Lcom/taptap/pay/sdk/library/TapAlertDialog;->mTapCNRes:Lcom/taptap/pay/sdk/library/TapIconTitle;

    iget-object v2, p0, Lcom/taptap/pay/sdk/library/TapAlertDialog;->mTapGlobalRes:Lcom/taptap/pay/sdk/library/TapIconTitle;

    invoke-virtual {v0, v1, v2}, Lcom/taptap/pay/sdk/library/TapAlertView;->setChooseRes(Lcom/taptap/pay/sdk/library/TapIconTitle;Lcom/taptap/pay/sdk/library/TapIconTitle;)V

    .line 111
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapAlertDialog;->mDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/taptap/pay/sdk/library/TapAlertDialog;->mAlertView:Lcom/taptap/pay/sdk/library/TapAlertView;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 112
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapAlertDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 114
    return-void
.end method
