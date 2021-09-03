.class public Lcom/tapsdk/moment/view/BottomSheet;
.super Landroid/app/DialogFragment;
.source "BottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapsdk/moment/view/BottomSheet$OnItemClickListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static sheet:Lcom/tapsdk/moment/view/BottomSheet;


# instance fields
.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mListener:Lcom/tapsdk/moment/view/BottomSheet$OnItemClickListener;

.field private mTvCancel:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    const-class v0, Lcom/tapsdk/moment/view/BottomSheet;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapsdk/moment/view/BottomSheet;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/tapsdk/moment/view/BottomSheet;)Lcom/tapsdk/moment/view/BottomSheet$OnItemClickListener;
    .registers 2
    .param p0, "x0"    # Lcom/tapsdk/moment/view/BottomSheet;

    .line 33
    iget-object v0, p0, Lcom/tapsdk/moment/view/BottomSheet;->mListener:Lcom/tapsdk/moment/view/BottomSheet$OnItemClickListener;

    return-object v0
.end method

.method private changeContainerParam(I)V
    .registers 7
    .param p1, "orientation"    # I

    .line 161
    const/4 v0, 0x2

    if-ne p1, v0, :cond_39

    .line 162
    iget-object v0, p0, Lcom/tapsdk/moment/view/BottomSheet;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 163
    .local v0, "containerLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/BottomSheet;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x43b18000    # 355.0f

    invoke-static {v1, v2}, Lcom/tapsdk/moment/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 164
    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 165
    iget-object v3, p0, Lcom/tapsdk/moment/view/BottomSheet;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    iget-object v3, p0, Lcom/tapsdk/moment/view/BottomSheet;->mTvCancel:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 168
    .local v3, "cancelParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/BottomSheet;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/tapsdk/moment/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 169
    iget-object v2, p0, Lcom/tapsdk/moment/view/BottomSheet;->mTvCancel:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 172
    .end local v0    # "containerLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "cancelParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_39
    return-void
.end method

.method private constructorTextView(Ljava/lang/String;Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/TextView;
    .registers 10
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/widget/LinearLayout$LayoutParams;

    .line 175
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tapsdk/moment/view/BottomSheet;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 176
    .local v0, "textView":Landroid/widget/TextView;
    const-string v1, "#333333"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 177
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/BottomSheet;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v1, v2}, Lcom/tapsdk/moment/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 178
    const v1, 0x800013

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 179
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/BottomSheet;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tapsdk/moment/view/BottomSheet;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "ttos_moment_download"

    invoke-static {v4, v5}, Lcom/tapsdk/moment/Utils;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 180
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/BottomSheet;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v4, v5}, Lcom/tapsdk/moment/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {p0}, Lcom/tapsdk/moment/view/BottomSheet;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/tapsdk/moment/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v1, v3, v3, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 181
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/BottomSheet;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/tapsdk/moment/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 182
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 183
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/BottomSheet;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/tapsdk/moment/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v2, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 184
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/BottomSheet;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/high16 v3, 0x42300000    # 44.0f

    invoke-static {v2, v3}, Lcom/tapsdk/moment/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, p2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 185
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    return-object v0
.end method

.method public static dismissWhenShow()V
    .registers 1

    .line 191
    sget-object v0, Lcom/tapsdk/moment/view/BottomSheet;->sheet:Lcom/tapsdk/moment/view/BottomSheet;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/tapsdk/moment/view/BottomSheet;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/tapsdk/moment/view/BottomSheet;->sheet:Lcom/tapsdk/moment/view/BottomSheet;

    invoke-virtual {v0}, Lcom/tapsdk/moment/view/BottomSheet;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 192
    sget-object v0, Lcom/tapsdk/moment/view/BottomSheet;->sheet:Lcom/tapsdk/moment/view/BottomSheet;

    invoke-virtual {v0}, Lcom/tapsdk/moment/view/BottomSheet;->dismiss()V

    .line 194
    :cond_1b
    return-void
.end method

.method private initView(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "args"    # Landroid/os/Bundle;

    .line 115
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/BottomSheet;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ll_container"

    invoke-static {v0, v1}, Lcom/tapsdk/moment/Utils;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tapsdk/moment/view/BottomSheet;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 116
    const-string v0, "value"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 117
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_45

    .line 118
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 120
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3, v2}, Lcom/tapsdk/moment/view/BottomSheet;->constructorTextView(Ljava/lang/String;Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/TextView;

    move-result-object v3

    .line 121
    .local v3, "textView":Landroid/widget/TextView;
    move v4, v1

    .line 122
    .local v4, "tempIndex":I
    new-instance v5, Lcom/tapsdk/moment/view/BottomSheet$2;

    invoke-direct {v5, p0, v4, v0}, Lcom/tapsdk/moment/view/BottomSheet$2;-><init>(Lcom/tapsdk/moment/view/BottomSheet;ILjava/util/List;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v5, p0, Lcom/tapsdk/moment/view/BottomSheet;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 117
    .end local v2    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "textView":Landroid/widget/TextView;
    .end local v4    # "tempIndex":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 133
    .end local v1    # "i":I
    :cond_45
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/BottomSheet;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "tv_bottom_cancel"

    invoke-static {v1, v2}, Lcom/tapsdk/moment/Utils;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tapsdk/moment/view/BottomSheet;->mTvCancel:Landroid/widget/TextView;

    .line 134
    const-string v2, "dialog_cancel"

    invoke-static {v2}, Lcom/tapsdk/moment/Utils;->getTranslatedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v1, p0, Lcom/tapsdk/moment/view/BottomSheet;->mTvCancel:Landroid/widget/TextView;

    new-instance v2, Lcom/tapsdk/moment/view/BottomSheet$3;

    invoke-direct {v2, p0}, Lcom/tapsdk/moment/view/BottomSheet$3;-><init>(Lcom/tapsdk/moment/view/BottomSheet;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/BottomSheet;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "ll_root"

    invoke-static {v1, v2}, Lcom/tapsdk/moment/Utils;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/tapsdk/moment/view/BottomSheet$4;

    invoke-direct {v2, p0}, Lcom/tapsdk/moment/view/BottomSheet$4;-><init>(Lcom/tapsdk/moment/view/BottomSheet;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/BottomSheet;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_c3

    .line 148
    iget-object v1, p0, Lcom/tapsdk/moment/view/BottomSheet;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 149
    .local v1, "containerLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/BottomSheet;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x43b18000    # 355.0f

    invoke-static {v2, v3}, Lcom/tapsdk/moment/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 150
    const/4 v2, 0x1

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 151
    iget-object v4, p0, Lcom/tapsdk/moment/view/BottomSheet;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    iget-object v4, p0, Lcom/tapsdk/moment/view/BottomSheet;->mTvCancel:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 154
    .local v4, "cancelParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/BottomSheet;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/tapsdk/moment/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v3

    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 155
    iget-object v3, p0, Lcom/tapsdk/moment/view/BottomSheet;->mTvCancel:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 158
    .end local v1    # "containerLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "cancelParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_c3
    return-void
.end method

.method public static varargs newInstance(Lcom/tapsdk/moment/view/BottomSheet$OnItemClickListener;[Ljava/lang/String;)Lcom/tapsdk/moment/view/BottomSheet;
    .registers 4
    .param p0, "listener"    # Lcom/tapsdk/moment/view/BottomSheet$OnItemClickListener;
    .param p1, "value"    # [Ljava/lang/String;

    .line 43
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 44
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "value"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 45
    new-instance v1, Lcom/tapsdk/moment/view/BottomSheet;

    invoke-direct {v1}, Lcom/tapsdk/moment/view/BottomSheet;-><init>()V

    sput-object v1, Lcom/tapsdk/moment/view/BottomSheet;->sheet:Lcom/tapsdk/moment/view/BottomSheet;

    .line 46
    invoke-virtual {v1, v0}, Lcom/tapsdk/moment/view/BottomSheet;->setArguments(Landroid/os/Bundle;)V

    .line 47
    sget-object v1, Lcom/tapsdk/moment/view/BottomSheet;->sheet:Lcom/tapsdk/moment/view/BottomSheet;

    invoke-virtual {v1, p0}, Lcom/tapsdk/moment/view/BottomSheet;->setOnItemClickListener(Lcom/tapsdk/moment/view/BottomSheet$OnItemClickListener;)V

    .line 48
    sget-object v1, Lcom/tapsdk/moment/view/BottomSheet;->sheet:Lcom/tapsdk/moment/view/BottomSheet;

    return-object v1
.end method

.method private settingDialog()V
    .registers 5

    .line 94
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/BottomSheet;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 95
    .local v0, "dialog":Landroid/app/Dialog;
    if-nez v0, :cond_7

    .line 96
    return-void

    .line 98
    :cond_7
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 99
    .local v1, "window":Landroid/view/Window;
    if-nez v1, :cond_e

    .line 100
    return-void

    .line 102
    :cond_e
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 103
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/BottomSheet;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    new-instance v3, Lcom/tapsdk/moment/view/BottomSheet$1;

    invoke-direct {v3, p0, v1}, Lcom/tapsdk/moment/view/BottomSheet$1;-><init>(Lcom/tapsdk/moment/view/BottomSheet;Landroid/view/Window;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 109
    invoke-static {v1}, Lcom/tapsdk/moment/ScreenHelper;->fullScreenImmersive(Landroid/view/Window;)V

    .line 110
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 111
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 112
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 74
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 75
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/tapsdk/moment/view/BottomSheet;->changeContainerParam(I)V

    .line 76
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 63
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/BottomSheet;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "BottomSheetStyle"

    invoke-static {v0, v1}, Lcom/tapsdk/moment/Utils;->getStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/tapsdk/moment/view/BottomSheet;->setStyle(II)V

    .line 65
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 69
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/BottomSheet;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "ttos_moment_dialog_bottom_sheet"

    invoke-static {v0, v1}, Lcom/tapsdk/moment/Utils;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 80
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/BottomSheet;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 82
    .local v0, "args":Landroid/os/Bundle;
    if-nez v0, :cond_d

    .line 83
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/BottomSheet;->dismiss()V

    .line 84
    return-void

    .line 86
    :cond_d
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/BottomSheet;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_14

    .line 87
    return-void

    .line 89
    :cond_14
    invoke-direct {p0, p1, v0}, Lcom/tapsdk/moment/view/BottomSheet;->initView(Landroid/view/View;Landroid/os/Bundle;)V

    .line 90
    invoke-direct {p0}, Lcom/tapsdk/moment/view/BottomSheet;->settingDialog()V

    .line 91
    return-void
.end method

.method public setOnItemClickListener(Lcom/tapsdk/moment/view/BottomSheet$OnItemClickListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/tapsdk/moment/view/BottomSheet$OnItemClickListener;

    .line 54
    iput-object p1, p0, Lcom/tapsdk/moment/view/BottomSheet;->mListener:Lcom/tapsdk/moment/view/BottomSheet$OnItemClickListener;

    .line 55
    return-void
.end method
