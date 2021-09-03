.class Lcom/taptap/pay/sdk/library/TapAlertView;
.super Landroid/widget/FrameLayout;
.source "TapAlertView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/pay/sdk/library/TapAlertView$OnAlertViewClickListener;
    }
.end annotation


# instance fields
.field private mChooseCnIcon:Landroid/widget/ImageView;

.field private mChooseCnTitle:Landroid/widget/TextView;

.field private mChooseContainer:Landroid/widget/LinearLayout;

.field private mChooseGlobalIcon:Landroid/widget/ImageView;

.field private mChooseGlobalTitle:Landroid/widget/TextView;

.field private mCloseButton:Landroid/widget/ImageView;

.field private mDialogRoot:Landroid/widget/FrameLayout;

.field private mInstallButton:Landroid/widget/TextView;

.field private mInstallContainer:Landroid/widget/LinearLayout;

.field private mInstallMessage:Landroid/widget/TextView;

.field private mLoadingContainer:Landroid/widget/LinearLayout;

.field private mOnAlertClickListener:Lcom/taptap/pay/sdk/library/TapAlertView$OnAlertViewClickListener;

.field private mOpenTapCNButton:Landroid/widget/LinearLayout;

.field private mOpenTapGlobalButton:Landroid/widget/LinearLayout;

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/taptap/pay/sdk/library/TapAlertView;->mType:I

    .line 44
    invoke-direct {p0, p1}, Lcom/taptap/pay/sdk/library/TapAlertView;->init(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/taptap/pay/sdk/library/TapAlertView;->mType:I

    .line 49
    invoke-direct {p0, p1}, Lcom/taptap/pay/sdk/library/TapAlertView;->init(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/taptap/pay/sdk/library/TapAlertView;->mType:I

    .line 54
    invoke-direct {p0, p1}, Lcom/taptap/pay/sdk/library/TapAlertView;->init(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 58
    const-string v0, "layout_dialog"

    invoke-static {p1, v0}, Lcom/taptap/pay/sdk/library/Res;->layout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 59
    .local v0, "layoutId":I
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 60
    .local v1, "mRoot":Landroid/view/View;
    const-string v2, "dialog_root"

    invoke-static {p1, v2}, Lcom/taptap/pay/sdk/library/Res;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/taptap/pay/sdk/library/TapAlertView;->mDialogRoot:Landroid/widget/FrameLayout;

    .line 61
    const-string v2, "dialog_close_button"

    invoke-static {p1, v2}, Lcom/taptap/pay/sdk/library/Res;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/taptap/pay/sdk/library/TapAlertView;->mCloseButton:Landroid/widget/ImageView;

    .line 63
    const-string v2, "dialog_choose_container"

    invoke-static {p1, v2}, Lcom/taptap/pay/sdk/library/Res;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/taptap/pay/sdk/library/TapAlertView;->mChooseContainer:Landroid/widget/LinearLayout;

    .line 64
    const-string v2, "dialog_open_cn_button"

    invoke-static {p1, v2}, Lcom/taptap/pay/sdk/library/Res;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/taptap/pay/sdk/library/TapAlertView;->mOpenTapCNButton:Landroid/widget/LinearLayout;

    .line 65
    const-string v2, "dialog_open_global_button"

    invoke-static {p1, v2}, Lcom/taptap/pay/sdk/library/Res;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/taptap/pay/sdk/library/TapAlertView;->mOpenTapGlobalButton:Landroid/widget/LinearLayout;

    .line 67
    const-string v2, "dialog_choose_cn_iv"

    invoke-static {p1, v2}, Lcom/taptap/pay/sdk/library/Res;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/taptap/pay/sdk/library/TapAlertView;->mChooseCnIcon:Landroid/widget/ImageView;

    .line 68
    const-string v2, "dialog_choose_cn_tv"

    invoke-static {p1, v2}, Lcom/taptap/pay/sdk/library/Res;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/taptap/pay/sdk/library/TapAlertView;->mChooseCnTitle:Landroid/widget/TextView;

    .line 69
    const-string v2, "dialog_choose_global_iv"

    invoke-static {p1, v2}, Lcom/taptap/pay/sdk/library/Res;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/taptap/pay/sdk/library/TapAlertView;->mChooseGlobalIcon:Landroid/widget/ImageView;

    .line 70
    const-string v2, "dialog_choose_global_tv"

    invoke-static {p1, v2}, Lcom/taptap/pay/sdk/library/Res;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/taptap/pay/sdk/library/TapAlertView;->mChooseGlobalTitle:Landroid/widget/TextView;

    .line 72
    const-string v2, "dialog_install_container"

    invoke-static {p1, v2}, Lcom/taptap/pay/sdk/library/Res;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/taptap/pay/sdk/library/TapAlertView;->mInstallContainer:Landroid/widget/LinearLayout;

    .line 73
    const-string v2, "dialog_install_message"

    invoke-static {p1, v2}, Lcom/taptap/pay/sdk/library/Res;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/taptap/pay/sdk/library/TapAlertView;->mInstallMessage:Landroid/widget/TextView;

    .line 74
    const-string v2, "dialog_install_button"

    invoke-static {p1, v2}, Lcom/taptap/pay/sdk/library/Res;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/taptap/pay/sdk/library/TapAlertView;->mInstallButton:Landroid/widget/TextView;

    .line 76
    const-string v2, "dialog_loading_container"

    invoke-static {p1, v2}, Lcom/taptap/pay/sdk/library/Res;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/taptap/pay/sdk/library/TapAlertView;->mLoadingContainer:Landroid/widget/LinearLayout;

    .line 80
    invoke-virtual {p0, v1}, Lcom/taptap/pay/sdk/library/TapAlertView;->addView(Landroid/view/View;)V

    .line 81
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .line 148
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapAlertView;->mCloseButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_c

    .line 149
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapAlertView;->mOnAlertClickListener:Lcom/taptap/pay/sdk/library/TapAlertView$OnAlertViewClickListener;

    if-eqz v0, :cond_b

    .line 150
    invoke-interface {v0}, Lcom/taptap/pay/sdk/library/TapAlertView$OnAlertViewClickListener;->onCancel()V

    .line 152
    :cond_b
    return-void

    .line 154
    :cond_c
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapAlertView;->mOpenTapCNButton:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_18

    .line 155
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapAlertView;->mOnAlertClickListener:Lcom/taptap/pay/sdk/library/TapAlertView$OnAlertViewClickListener;

    if-eqz v0, :cond_17

    .line 156
    invoke-interface {v0}, Lcom/taptap/pay/sdk/library/TapAlertView$OnAlertViewClickListener;->onOpenTapTapCN()V

    .line 158
    :cond_17
    return-void

    .line 160
    :cond_18
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapAlertView;->mOpenTapGlobalButton:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_24

    .line 161
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapAlertView;->mOnAlertClickListener:Lcom/taptap/pay/sdk/library/TapAlertView$OnAlertViewClickListener;

    if-eqz v0, :cond_23

    .line 162
    invoke-interface {v0}, Lcom/taptap/pay/sdk/library/TapAlertView$OnAlertViewClickListener;->onOpenTapTapGlobal()V

    .line 164
    :cond_23
    return-void

    .line 166
    :cond_24
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapAlertView;->mInstallButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_3a

    .line 167
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapAlertView;->mOnAlertClickListener:Lcom/taptap/pay/sdk/library/TapAlertView$OnAlertViewClickListener;

    if-eqz v0, :cond_39

    .line 168
    iget v1, p0, Lcom/taptap/pay/sdk/library/TapAlertView;->mType:I

    packed-switch v1, :pswitch_data_3c

    goto :goto_39

    .line 173
    :pswitch_32
    invoke-interface {v0}, Lcom/taptap/pay/sdk/library/TapAlertView$OnAlertViewClickListener;->onNoLicense()V

    goto :goto_39

    .line 170
    :pswitch_36
    invoke-interface {v0}, Lcom/taptap/pay/sdk/library/TapAlertView$OnAlertViewClickListener;->onDownloadTapTap()V

    .line 177
    :cond_39
    :goto_39
    return-void

    .line 180
    :cond_3a
    return-void

    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_36
        :pswitch_32
    .end packed-switch
.end method

.method public setChooseRes(Lcom/taptap/pay/sdk/library/TapIconTitle;Lcom/taptap/pay/sdk/library/TapIconTitle;)V
    .registers 5
    .param p1, "cn"    # Lcom/taptap/pay/sdk/library/TapIconTitle;
    .param p2, "global"    # Lcom/taptap/pay/sdk/library/TapIconTitle;

    .line 123
    if-eqz p1, :cond_24

    .line 124
    invoke-virtual {p1}, Lcom/taptap/pay/sdk/library/TapIconTitle;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 125
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapAlertView;->mChooseCnIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/taptap/pay/sdk/library/TapIconTitle;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    :cond_11
    invoke-virtual {p1}, Lcom/taptap/pay/sdk/library/TapIconTitle;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 128
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapAlertView;->mChooseCnTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/taptap/pay/sdk/library/TapIconTitle;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    :cond_24
    if-eqz p2, :cond_48

    .line 133
    invoke-virtual {p2}, Lcom/taptap/pay/sdk/library/TapIconTitle;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 134
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapAlertView;->mChooseGlobalIcon:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/taptap/pay/sdk/library/TapIconTitle;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 136
    :cond_35
    invoke-virtual {p2}, Lcom/taptap/pay/sdk/library/TapIconTitle;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 137
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapAlertView;->mChooseGlobalTitle:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/taptap/pay/sdk/library/TapIconTitle;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    :cond_48
    return-void
.end method

.method public setOnAlertClickListener(Lcom/taptap/pay/sdk/library/TapAlertView$OnAlertViewClickListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/taptap/pay/sdk/library/TapAlertView$OnAlertViewClickListener;

    .line 143
    iput-object p1, p0, Lcom/taptap/pay/sdk/library/TapAlertView;->mOnAlertClickListener:Lcom/taptap/pay/sdk/library/TapAlertView$OnAlertViewClickListener;

    .line 144
    return-void
.end method

.method public setType(I)V
    .registers 7
    .param p1, "type"    # I

    .line 84
    iput p1, p0, Lcom/taptap/pay/sdk/library/TapAlertView;->mType:I

    .line 86
    const/4 v0, 0x0

    const/16 v1, 0x8

    if-nez p1, :cond_2f

    .line 87
    iget-object v2, p0, Lcom/taptap/pay/sdk/library/TapAlertView;->mDialogRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/taptap/pay/sdk/library/TapAlertView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "bg_dialog_open"

    invoke-static {v3, v4}, Lcom/taptap/pay/sdk/library/Res;->drawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 88
    iget-object v2, p0, Lcom/taptap/pay/sdk/library/TapAlertView;->mChooseContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 89
    iget-object v2, p0, Lcom/taptap/pay/sdk/library/TapAlertView;->mInstallContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 90
    iget-object v2, p0, Lcom/taptap/pay/sdk/library/TapAlertView;->mLoadingContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 91
    iget-object v2, p0, Lcom/taptap/pay/sdk/library/TapAlertView;->mOpenTapCNButton:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v2, p0, Lcom/taptap/pay/sdk/library/TapAlertView;->mOpenTapGlobalButton:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    :cond_2f
    iget v2, p0, Lcom/taptap/pay/sdk/library/TapAlertView;->mType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_66

    .line 96
    iget-object v2, p0, Lcom/taptap/pay/sdk/library/TapAlertView;->mChooseContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 97
    iget-object v2, p0, Lcom/taptap/pay/sdk/library/TapAlertView;->mInstallContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 98
    iget-object v2, p0, Lcom/taptap/pay/sdk/library/TapAlertView;->mLoadingContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 99
    iget-object v2, p0, Lcom/taptap/pay/sdk/library/TapAlertView;->mInstallMessage:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/taptap/pay/sdk/library/TapAlertView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "taptap_alert_download_taptap"

    invoke-static {v3, v4}, Lcom/taptap/pay/sdk/library/Res;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 100
    iget-object v2, p0, Lcom/taptap/pay/sdk/library/TapAlertView;->mInstallButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/taptap/pay/sdk/library/TapAlertView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "taptap_string_download_taptap"

    invoke-static {v3, v4}, Lcom/taptap/pay/sdk/library/Res;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 101
    iget-object v2, p0, Lcom/taptap/pay/sdk/library/TapAlertView;->mInstallButton:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    :cond_66
    iget v2, p0, Lcom/taptap/pay/sdk/library/TapAlertView;->mType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_9d

    .line 105
    iget-object v2, p0, Lcom/taptap/pay/sdk/library/TapAlertView;->mChooseContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 106
    iget-object v2, p0, Lcom/taptap/pay/sdk/library/TapAlertView;->mInstallContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 107
    iget-object v2, p0, Lcom/taptap/pay/sdk/library/TapAlertView;->mLoadingContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 108
    iget-object v2, p0, Lcom/taptap/pay/sdk/library/TapAlertView;->mInstallMessage:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/taptap/pay/sdk/library/TapAlertView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "taptap_alert_license_no"

    invoke-static {v3, v4}, Lcom/taptap/pay/sdk/library/Res;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 109
    iget-object v2, p0, Lcom/taptap/pay/sdk/library/TapAlertView;->mInstallButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/taptap/pay/sdk/library/TapAlertView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "taptap_string_open_taptap"

    invoke-static {v3, v4}, Lcom/taptap/pay/sdk/library/Res;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 110
    iget-object v2, p0, Lcom/taptap/pay/sdk/library/TapAlertView;->mInstallButton:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    :cond_9d
    iget v2, p0, Lcom/taptap/pay/sdk/library/TapAlertView;->mType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_b1

    .line 114
    iget-object v2, p0, Lcom/taptap/pay/sdk/library/TapAlertView;->mChooseContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 115
    iget-object v2, p0, Lcom/taptap/pay/sdk/library/TapAlertView;->mInstallContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 116
    iget-object v2, p0, Lcom/taptap/pay/sdk/library/TapAlertView;->mLoadingContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 119
    :cond_b1
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapAlertView;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    return-void
.end method
