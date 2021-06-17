.class public Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;
.super Ljava/lang/Object;
.source "ToolbarWidgetWrapper.java"

# interfaces
.implements Landroid/support/v7/internal/widget/DecorToolbar;


# static fields
.field private static final AFFECTS_LOGO_MASK:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ToolbarWidgetWrapper"


# instance fields
.field private mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

.field private mCustomView:Landroid/view/View;

.field private mDefaultNavigationContentDescription:I

.field private mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

.field private mDisplayOpts:I

.field private mHomeDescription:Ljava/lang/CharSequence;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mLogo:Landroid/graphics/drawable/Drawable;

.field private mMenuPrepared:Z

.field private mNavIcon:Landroid/graphics/drawable/Drawable;

.field private mNavigationMode:I

.field private mSpinner:Landroid/support/v7/internal/widget/SpinnerCompat;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mTabView:Landroid/view/View;

.field private final mTintManager:Landroid/support/v7/internal/widget/TintManager;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleSet:Z

.field private mToolbar:Landroid/support/v7/widget/Toolbar;

.field private mWindowCallback:Landroid/support/v7/internal/app/WindowCallback;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/Toolbar;Z)V
    .registers 5
    .param p1, "toolbar"    # Landroid/support/v7/widget/Toolbar;
    .param p2, "style"    # Z

    .line 88
    sget v0, Landroid/support/v7/appcompat/R$string;->abc_action_bar_up_description:I

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_ic_ab_back_mtrl_am_alpha:I

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;-><init>(Landroid/support/v7/widget/Toolbar;ZII)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/Toolbar;ZII)V
    .registers 21
    .param p1, "toolbar"    # Landroid/support/v7/widget/Toolbar;
    .param p2, "style"    # Z
    .param p3, "defaultNavigationContentDescription"    # I
    .param p4, "defaultNavigationIcon"    # I

    .line 93
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    .line 84
    iput v1, v0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    .line 94
    move-object/from16 v2, p1

    iput-object v2, v0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 95
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    .line 96
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mSubtitle:Ljava/lang/CharSequence;

    .line 97
    iget-object v3, v0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    if-eqz v3, :cond_20

    const/4 v3, 0x1

    goto :goto_21

    :cond_20
    const/4 v3, 0x0

    :goto_21
    iput-boolean v3, v0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mTitleSet:Z

    .line 99
    if-eqz p2, :cond_109

    .line 100
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Landroid/support/v7/appcompat/R$styleable;->ActionBar:[I

    sget v6, Landroid/support/v7/appcompat/R$attr;->actionBarStyle:I

    invoke-static {v3, v4, v5, v6, v1}, Landroid/support/v7/internal/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/internal/widget/TintTypedArray;

    move-result-object v3

    .line 103
    .local v3, "a":Landroid/support/v7/internal/widget/TintTypedArray;
    sget v4, Landroid/support/v7/appcompat/R$styleable;->ActionBar_title:I

    invoke-virtual {v3, v4}, Landroid/support/v7/internal/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 104
    .local v4, "title":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_41

    .line 105
    invoke-virtual {v0, v4}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->setTitle(Ljava/lang/CharSequence;)V

    .line 108
    :cond_41
    sget v5, Landroid/support/v7/appcompat/R$styleable;->ActionBar_subtitle:I

    invoke-virtual {v3, v5}, Landroid/support/v7/internal/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 109
    .local v5, "subtitle":Ljava/lang/CharSequence;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_50

    .line 110
    invoke-virtual {v0, v5}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 113
    :cond_50
    sget v6, Landroid/support/v7/appcompat/R$styleable;->ActionBar_logo:I

    invoke-virtual {v3, v6}, Landroid/support/v7/internal/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 114
    .local v6, "logo":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_5b

    .line 115
    invoke-virtual {v0, v6}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 118
    :cond_5b
    sget v7, Landroid/support/v7/appcompat/R$styleable;->ActionBar_icon:I

    invoke-virtual {v3, v7}, Landroid/support/v7/internal/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 119
    .local v7, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_66

    .line 120
    invoke-virtual {v0, v7}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 123
    :cond_66
    sget v8, Landroid/support/v7/appcompat/R$styleable;->ActionBar_homeAsUpIndicator:I

    invoke-virtual {v3, v8}, Landroid/support/v7/internal/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 124
    .local v8, "navIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_71

    .line 125
    invoke-virtual {v0, v8}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 128
    :cond_71
    sget v9, Landroid/support/v7/appcompat/R$styleable;->ActionBar_displayOptions:I

    invoke-virtual {v3, v9, v1}, Landroid/support/v7/internal/widget/TintTypedArray;->getInt(II)I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->setDisplayOptions(I)V

    .line 130
    sget v9, Landroid/support/v7/appcompat/R$styleable;->ActionBar_customNavigationLayout:I

    invoke-virtual {v3, v9, v1}, Landroid/support/v7/internal/widget/TintTypedArray;->getResourceId(II)I

    move-result v9

    .line 132
    .local v9, "customNavId":I
    if-eqz v9, :cond_9c

    .line 133
    iget-object v10, v0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v10}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    iget-object v11, v0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v10, v9, v11, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->setCustomView(Landroid/view/View;)V

    .line 135
    iget v10, v0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    or-int/lit8 v10, v10, 0x10

    invoke-virtual {v0, v10}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->setDisplayOptions(I)V

    .line 138
    :cond_9c
    sget v10, Landroid/support/v7/appcompat/R$styleable;->ActionBar_height:I

    invoke-virtual {v3, v10, v1}, Landroid/support/v7/internal/widget/TintTypedArray;->getLayoutDimension(II)I

    move-result v10

    .line 139
    .local v10, "height":I
    if-lez v10, :cond_b1

    .line 140
    iget-object v11, v0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v11}, Landroid/support/v7/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .line 141
    .local v11, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v10, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 142
    iget-object v12, v0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v12, v11}, Landroid/support/v7/widget/Toolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    .end local v11    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_b1
    sget v11, Landroid/support/v7/appcompat/R$styleable;->ActionBar_contentInsetStart:I

    const/4 v12, -0x1

    invoke-virtual {v3, v11, v12}, Landroid/support/v7/internal/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v11

    .line 147
    .local v11, "contentInsetStart":I
    sget v13, Landroid/support/v7/appcompat/R$styleable;->ActionBar_contentInsetEnd:I

    invoke-virtual {v3, v13, v12}, Landroid/support/v7/internal/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v12

    .line 149
    .local v12, "contentInsetEnd":I
    if-gez v11, :cond_c2

    if-ltz v12, :cond_cf

    .line 150
    :cond_c2
    iget-object v13, v0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v15

    invoke-virtual {v13, v14, v15}, Landroid/support/v7/widget/Toolbar;->setContentInsetsRelative(II)V

    .line 154
    :cond_cf
    sget v13, Landroid/support/v7/appcompat/R$styleable;->ActionBar_titleTextStyle:I

    invoke-virtual {v3, v13, v1}, Landroid/support/v7/internal/widget/TintTypedArray;->getResourceId(II)I

    move-result v13

    .line 155
    .local v13, "titleTextStyle":I
    if-eqz v13, :cond_e0

    .line 156
    iget-object v14, v0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v14}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v14, v15, v13}, Landroid/support/v7/widget/Toolbar;->setTitleTextAppearance(Landroid/content/Context;I)V

    .line 159
    :cond_e0
    sget v14, Landroid/support/v7/appcompat/R$styleable;->ActionBar_subtitleTextStyle:I

    invoke-virtual {v3, v14, v1}, Landroid/support/v7/internal/widget/TintTypedArray;->getResourceId(II)I

    move-result v14

    .line 161
    .local v14, "subtitleTextStyle":I
    if-eqz v14, :cond_f1

    .line 162
    iget-object v15, v0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v15}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v15, v1, v14}, Landroid/support/v7/widget/Toolbar;->setSubtitleTextAppearance(Landroid/content/Context;I)V

    .line 165
    :cond_f1
    sget v1, Landroid/support/v7/appcompat/R$styleable;->ActionBar_popupTheme:I

    const/4 v15, 0x0

    invoke-virtual {v3, v1, v15}, Landroid/support/v7/internal/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    .line 166
    .local v1, "popupTheme":I
    if-eqz v1, :cond_ff

    .line 167
    iget-object v15, v0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v15, v1}, Landroid/support/v7/widget/Toolbar;->setPopupTheme(I)V

    .line 170
    :cond_ff
    invoke-virtual {v3}, Landroid/support/v7/internal/widget/TintTypedArray;->recycle()V

    .line 172
    invoke-virtual {v3}, Landroid/support/v7/internal/widget/TintTypedArray;->getTintManager()Landroid/support/v7/internal/widget/TintManager;

    move-result-object v15

    iput-object v15, v0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mTintManager:Landroid/support/v7/internal/widget/TintManager;

    .line 173
    .end local v1    # "popupTheme":I
    .end local v3    # "a":Landroid/support/v7/internal/widget/TintTypedArray;
    .end local v4    # "title":Ljava/lang/CharSequence;
    .end local v5    # "subtitle":Ljava/lang/CharSequence;
    .end local v6    # "logo":Landroid/graphics/drawable/Drawable;
    .end local v7    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v8    # "navIcon":Landroid/graphics/drawable/Drawable;
    .end local v9    # "customNavId":I
    .end local v10    # "height":I
    .end local v11    # "contentInsetStart":I
    .end local v12    # "contentInsetEnd":I
    .end local v13    # "titleTextStyle":I
    .end local v14    # "subtitleTextStyle":I
    goto :goto_11a

    .line 174
    :cond_109
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->detectDisplayOptions()I

    move-result v1

    iput v1, v0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    .line 176
    new-instance v1, Landroid/support/v7/internal/widget/TintManager;

    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/support/v7/internal/widget/TintManager;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mTintManager:Landroid/support/v7/internal/widget/TintManager;

    .line 179
    :goto_11a
    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->setDefaultNavigationContentDescription(I)V

    .line 180
    iget-object v3, v0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    .line 182
    iget-object v3, v0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mTintManager:Landroid/support/v7/internal/widget/TintManager;

    move/from16 v4, p4

    invoke-virtual {v3, v4}, Landroid/support/v7/internal/widget/TintManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->setDefaultNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 184
    iget-object v3, v0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v5, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper$1;

    invoke-direct {v5, v0}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper$1;-><init>(Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;)V

    invoke-virtual {v3, v5}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;)Landroid/support/v7/widget/Toolbar;
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;

    .line 55
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

.method static synthetic access$100(Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;)Ljava/lang/CharSequence;
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;

    .line 55
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;)Landroid/support/v7/internal/app/WindowCallback;
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;

    .line 55
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mWindowCallback:Landroid/support/v7/internal/app/WindowCallback;

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;)Z
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;

    .line 55
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mMenuPrepared:Z

    return v0
.end method

.method private detectDisplayOptions()I
    .registers 3

    .line 225
    const/16 v0, 0xb

    .line 227
    .local v0, "opts":I
    iget-object v1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 228
    or-int/lit8 v0, v0, 0x4

    .line 230
    :cond_c
    return v0
.end method

.method private ensureSpinner()V
    .registers 5

    .line 549
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/support/v7/internal/widget/SpinnerCompat;

    if-nez v0, :cond_20

    .line 550
    new-instance v0, Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Landroid/support/v7/appcompat/R$attr;->actionDropDownStyle:I

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/internal/widget/SpinnerCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/support/v7/internal/widget/SpinnerCompat;

    .line 551
    new-instance v0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    const v1, 0x800013

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2, v1}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(III)V

    .line 553
    .local v0, "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    iget-object v1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 555
    .end local v0    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    :cond_20
    return-void
.end method

.method private setTitleInt(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 283
    iput-object p1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    .line 284
    iget v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_d

    .line 285
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 287
    :cond_d
    return-void
.end method

.method private updateHomeAccessibility()V
    .registers 3

    .line 654
    iget v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1d

    .line 655
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 656
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    iget v1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(I)V

    goto :goto_1d

    .line 658
    :cond_16
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 661
    :cond_1d
    :goto_1d
    return-void
.end method

.method private updateNavigationIcon()V
    .registers 3

    .line 664
    iget v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_12

    .line 665
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_d

    goto :goto_f

    :cond_d
    iget-object v1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    :goto_f
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 667
    :cond_12
    return-void
.end method

.method private updateToolbarLogo()V
    .registers 4

    .line 366
    const/4 v0, 0x0

    .line 367
    .local v0, "logo":Landroid/graphics/drawable/Drawable;
    iget v1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_16

    .line 368
    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_14

    .line 369
    iget-object v1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_10

    goto :goto_12

    :cond_10
    iget-object v1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    :goto_12
    move-object v0, v1

    goto :goto_16

    .line 371
    :cond_14
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 374
    :cond_16
    :goto_16
    iget-object v1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 375
    return-void
.end method


# virtual methods
.method public animateToVisibility(I)V
    .registers 4
    .param p1, "visibility"    # I

    .line 602
    const/16 v0, 0x8

    if-ne p1, v0, :cond_18

    .line 603
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper$2;

    invoke-direct {v1, p0}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper$2;-><init>(Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    goto :goto_2e

    .line 618
    :cond_18
    if-nez p1, :cond_2e

    .line 619
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper$3;

    invoke-direct {v1, p0}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper$3;-><init>(Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 627
    :cond_2e
    :goto_2e
    return-void
.end method

.method public canShowOverflowMenu()Z
    .registers 2

    .line 379
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->canShowOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public canSplit()Z
    .registers 2

    .line 314
    const/4 v0, 0x0

    return v0
.end method

.method public collapseActionView()V
    .registers 2

    .line 255
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->collapseActionView()V

    .line 256
    return-void
.end method

.method public dismissPopupMenus()V
    .registers 2

    .line 419
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->dismissPopupMenus()V

    .line 420
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 240
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .registers 2

    .line 597
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method public getDisplayOptions()I
    .registers 2

    .line 424
    iget v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    return v0
.end method

.method public getDropdownItemCount()I
    .registers 2

    .line 581
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/support/v7/internal/widget/SpinnerCompat;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getCount()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getDropdownSelectedPosition()I
    .registers 2

    .line 576
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/support/v7/internal/widget/SpinnerCompat;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getSelectedItemPosition()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getNavigationMode()I
    .registers 2

    .line 504
    iget v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .registers 2

    .line 291
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 273
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getViewGroup()Landroid/view/ViewGroup;
    .registers 2

    .line 235
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

.method public hasEmbeddedTabs()Z
    .registers 2

    .line 484
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public hasExpandedActionView()Z
    .registers 2

    .line 250
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->hasExpandedActionView()Z

    move-result v0

    return v0
.end method

.method public hasIcon()Z
    .registers 2

    .line 335
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public hasLogo()Z
    .registers 2

    .line 340
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public hideOverflowMenu()Z
    .registers 2

    .line 399
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->hideOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public initIndeterminateProgress()V
    .registers 3

    .line 309
    const-string v0, "ToolbarWidgetWrapper"

    const-string v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    return-void
.end method

.method public initProgress()V
    .registers 3

    .line 304
    const-string v0, "ToolbarWidgetWrapper"

    const-string v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    return-void
.end method

.method public isOverflowMenuShowPending()Z
    .registers 2

    .line 389
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->isOverflowMenuShowPending()Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowing()Z
    .registers 2

    .line 384
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->isOverflowMenuShowing()Z

    move-result v0

    return v0
.end method

.method public isSplit()Z
    .registers 2

    .line 245
    const/4 v0, 0x0

    return v0
.end method

.method public isTitleTruncated()Z
    .registers 2

    .line 489
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->isTitleTruncated()Z

    move-result v0

    return v0
.end method

.method public restoreHierarchyState(Landroid/util/SparseArray;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 676
    .local p1, "toolbarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 677
    return-void
.end method

.method public saveHierarchyState(Landroid/util/SparseArray;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 671
    .local p1, "toolbarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 672
    return-void
.end method

.method public setCollapsible(Z)V
    .registers 3
    .param p1, "collapsible"    # Z

    .line 494
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setCollapsible(Z)V

    .line 495
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 586
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_f

    iget v1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_f

    .line 587
    iget-object v1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 589
    :cond_f
    iput-object p1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    .line 590
    if-eqz p1, :cond_1e

    iget v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1e

    .line 591
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 593
    :cond_1e
    return-void
.end method

.method public setDefaultNavigationContentDescription(I)V
    .registers 3
    .param p1, "defaultNavigationContentDescription"    # I

    .line 207
    iget v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    if-ne p1, v0, :cond_5

    .line 208
    return-void

    .line 210
    :cond_5
    iput p1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    .line 211
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 212
    iget v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->setNavigationContentDescription(I)V

    .line 214
    :cond_18
    return-void
.end method

.method public setDefaultNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "defaultNavigationIcon"    # Landroid/graphics/drawable/Drawable;

    .line 218
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_9

    .line 219
    iput-object p1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    .line 220
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->updateNavigationIcon()V

    .line 222
    :cond_9
    return-void
.end method

.method public setDisplayOptions(I)V
    .registers 6
    .param p1, "newOpts"    # I

    .line 429
    iget v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    .line 430
    .local v0, "oldOpts":I
    xor-int v1, v0, p1

    .line 431
    .local v1, "changed":I
    iput p1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    .line 432
    if-eqz v1, :cond_5c

    .line 433
    and-int/lit8 v2, v1, 0x4

    const/4 v3, 0x0

    if-eqz v2, :cond_1d

    .line 434
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_18

    .line 435
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->updateNavigationIcon()V

    .line 436
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->updateHomeAccessibility()V

    goto :goto_1d

    .line 438
    :cond_18
    iget-object v2, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 442
    :cond_1d
    :goto_1d
    and-int/lit8 v2, v1, 0x3

    if-eqz v2, :cond_24

    .line 443
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->updateToolbarLogo()V

    .line 446
    :cond_24
    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_45

    .line 447
    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_3b

    .line 448
    iget-object v2, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v3, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 449
    iget-object v2, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v3, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_45

    .line 451
    :cond_3b
    iget-object v2, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 452
    iget-object v2, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 456
    :cond_45
    :goto_45
    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_5c

    iget-object v2, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    if-eqz v2, :cond_5c

    .line 457
    and-int/lit8 v3, p1, 0x10

    if-eqz v3, :cond_57

    .line 458
    iget-object v3, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    goto :goto_5c

    .line 460
    :cond_57
    iget-object v3, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 464
    :cond_5c
    :goto_5c
    return-void
.end method

.method public setDropdownParams(Landroid/widget/SpinnerAdapter;Landroid/support/v7/internal/widget/AdapterViewCompat$OnItemSelectedListener;)V
    .registers 4
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "listener"    # Landroid/support/v7/internal/widget/AdapterViewCompat$OnItemSelectedListener;

    .line 560
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->ensureSpinner()V

    .line 561
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/SpinnerCompat;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 562
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {v0, p2}, Landroid/support/v7/internal/widget/SpinnerCompat;->setOnItemSelectedListener(Landroid/support/v7/internal/widget/AdapterViewCompat$OnItemSelectedListener;)V

    .line 563
    return-void
.end method

.method public setDropdownSelectedPosition(I)V
    .registers 4
    .param p1, "position"    # I

    .line 567
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/support/v7/internal/widget/SpinnerCompat;

    if-eqz v0, :cond_8

    .line 571
    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/SpinnerCompat;->setSelection(I)V

    .line 572
    return-void

    .line 568
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t set dropdown selected position without an adapter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEmbeddedTabView(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)V
    .registers 4
    .param p1, "tabView"    # Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    .line 468
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-ne v0, v1, :cond_11

    .line 469
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 471
    :cond_11
    iput-object p1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    .line 472
    if-eqz p1, :cond_36

    iget v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_36

    .line 473
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;I)V

    .line 474
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 475
    .local v0, "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    const/4 v1, -0x2

    iput v1, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->width:I

    .line 476
    iput v1, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->height:I

    .line 477
    const v1, 0x800053

    iput v1, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    .line 478
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 480
    .end local v0    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    :cond_36
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .line 500
    return-void
.end method

.method public setIcon(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 345
    if-eqz p1, :cond_9

    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mTintManager:Landroid/support/v7/internal/widget/TintManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/TintManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 346
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 350
    iput-object p1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 351
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->updateToolbarLogo()V

    .line 352
    return-void
.end method

.method public setLogo(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 356
    if-eqz p1, :cond_9

    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mTintManager:Landroid/support/v7/internal/widget/TintManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/TintManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 357
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 361
    iput-object p1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 362
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->updateToolbarLogo()V

    .line 363
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;)V
    .registers 6
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "cb"    # Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;

    .line 409
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-nez v0, :cond_16

    .line 410
    new-instance v0, Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 411
    sget v1, Landroid/support/v7/appcompat/R$id;->action_menu_presenter:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuPresenter;->setId(I)V

    .line 413
    :cond_16
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/ActionMenuPresenter;->setCallback(Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;)V

    .line 414
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    move-object v1, p1

    check-cast v1, Landroid/support/v7/internal/view/menu/MenuBuilder;

    iget-object v2, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/Toolbar;->setMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/support/v7/widget/ActionMenuPresenter;)V

    .line 415
    return-void
.end method

.method public setMenuPrepared()V
    .registers 2

    .line 404
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mMenuPrepared:Z

    .line 405
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 650
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_c

    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_c
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 651
    return-void
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 644
    iput-object p1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    .line 645
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->updateHomeAccessibility()V

    .line 646
    return-void
.end method

.method public setNavigationIcon(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 637
    if-eqz p1, :cond_9

    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mTintManager:Landroid/support/v7/internal/widget/TintManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/TintManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 640
    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 631
    iput-object p1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    .line 632
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->updateNavigationIcon()V

    .line 633
    return-void
.end method

.method public setNavigationMode(I)V
    .registers 6
    .param p1, "mode"    # I

    .line 509
    iget v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    .line 510
    .local v0, "oldMode":I
    if-eq p1, v0, :cond_71

    .line 511
    packed-switch v0, :pswitch_data_72

    goto :goto_2b

    .line 518
    :pswitch_8
    iget-object v1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-ne v1, v2, :cond_2b

    .line 519
    iget-object v1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_2b

    .line 513
    :pswitch_1a
    iget-object v1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/support/v7/internal/widget/SpinnerCompat;

    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/SpinnerCompat;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-ne v1, v2, :cond_2b

    .line 514
    iget-object v1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 524
    :cond_2b
    :goto_2b
    iput p1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    .line 526
    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_7a

    .line 543
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid navigation mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 534
    :pswitch_4a
    iget-object v2, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    if-eqz v2, :cond_71

    .line 535
    iget-object v3, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v3, v2, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;I)V

    .line 536
    iget-object v1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 537
    .local v1, "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    const/4 v2, -0x2

    iput v2, v1, Landroid/support/v7/widget/Toolbar$LayoutParams;->width:I

    .line 538
    iput v2, v1, Landroid/support/v7/widget/Toolbar$LayoutParams;->height:I

    .line 539
    const v2, 0x800053

    iput v2, v1, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    .line 540
    .end local v1    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    goto :goto_71

    .line 530
    :pswitch_66
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->ensureSpinner()V

    .line 531
    iget-object v2, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v3, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {v2, v3, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;I)V

    .line 532
    nop

    .line 546
    :cond_71
    :goto_71
    :pswitch_71
    return-void

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_8
    .end packed-switch

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_71
        :pswitch_66
        :pswitch_4a
    .end packed-switch
.end method

.method public setSplitToolbar(Z)V
    .registers 4
    .param p1, "split"    # Z

    .line 323
    if-nez p1, :cond_3

    .line 326
    return-void

    .line 324
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot split an android.widget.Toolbar"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSplitView(Landroid/view/ViewGroup;)V
    .registers 2
    .param p1, "splitView"    # Landroid/view/ViewGroup;

    .line 319
    return-void
.end method

.method public setSplitWhenNarrow(Z)V
    .registers 2
    .param p1, "splitWhenNarrow"    # Z

    .line 331
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 296
    iput-object p1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mSubtitle:Ljava/lang/CharSequence;

    .line 297
    iget v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_d

    .line 298
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 300
    :cond_d
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mTitleSet:Z

    .line 279
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->setTitleInt(Ljava/lang/CharSequence;)V

    .line 280
    return-void
.end method

.method public setWindowCallback(Landroid/support/v7/internal/app/WindowCallback;)V
    .registers 2
    .param p1, "cb"    # Landroid/support/v7/internal/app/WindowCallback;

    .line 260
    iput-object p1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mWindowCallback:Landroid/support/v7/internal/app/WindowCallback;

    .line 261
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 266
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mTitleSet:Z

    if-nez v0, :cond_7

    .line 267
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->setTitleInt(Ljava/lang/CharSequence;)V

    .line 269
    :cond_7
    return-void
.end method

.method public showOverflowMenu()Z
    .registers 2

    .line 394
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->showOverflowMenu()Z

    move-result v0

    return v0
.end method
