.class public Landroidx/appcompat/view/menu/ListMenuItemView;
.super Landroid/widget/LinearLayout;
.source "ListMenuItemView.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuView$ItemView;
.implements Landroid/widget/AbsListView$SelectionBoundsAdjuster;


# static fields
.field private static final TAG:Ljava/lang/String; = "ListMenuItemView"


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mContent:Landroid/widget/LinearLayout;

.field private mForceShowIcon:Z

.field private mGroupDivider:Landroid/widget/ImageView;

.field private mHasListDivider:Z

.field private mIconView:Landroid/widget/ImageView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

.field private mMenuType:I

.field private mPreserveIconSpacing:Z

.field private mRadioButton:Landroid/widget/RadioButton;

.field private mShortcutView:Landroid/widget/TextView;

.field private mSubMenuArrow:Landroid/graphics/drawable/Drawable;

.field private mSubMenuArrowView:Landroid/widget/ImageView;

.field private mTextAppearance:I

.field private mTextAppearanceContext:Landroid/content/Context;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 76
    sget v0, Landroidx/appcompat/R$attr;->listMenuViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/view/menu/ListMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ListMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/R$styleable;->MenuView:[I

    const/4 v2, 0x0

    invoke-static {v0, p2, v1, p3, v2}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v0

    .line 85
    .local v0, "a":Landroidx/appcompat/widget/TintTypedArray;
    sget v1, Landroidx/appcompat/R$styleable;->MenuView_android_itemBackground:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 86
    sget v1, Landroidx/appcompat/R$styleable;->MenuView_android_itemTextAppearance:I

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mTextAppearance:I

    .line 88
    sget v1, Landroidx/appcompat/R$styleable;->MenuView_preserveIconSpacing:I

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    .line 90
    iput-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    .line 91
    sget v1, Landroidx/appcompat/R$styleable;->MenuView_subMenuArrow:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mSubMenuArrow:Landroid/graphics/drawable/Drawable;

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [I

    const v4, 0x1010129

    aput v4, v3, v2

    sget v4, Landroidx/appcompat/R$attr;->dropDownListViewStyle:I

    .line 94
    const/4 v5, 0x0

    invoke-virtual {v1, v5, v3, v4, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 96
    .local v1, "b":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    iput-boolean v2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mHasListDivider:Z

    .line 98
    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 99
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 100
    return-void
.end method

.method private addContentView(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .line 141
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/view/menu/ListMenuItemView;->addContentView(Landroid/view/View;I)V

    .line 142
    return-void
.end method

.method private addContentView(Landroid/view/View;I)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 145
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mContent:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_8

    .line 146
    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_b

    .line 148
    :cond_8
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/ListMenuItemView;->addView(Landroid/view/View;I)V

    .line 150
    :goto_b
    return-void
.end method

.method private getInflater()Landroid/view/LayoutInflater;
    .registers 2

    .line 330
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_e

    .line 331
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ListMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    .line 333
    :cond_e
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private insertCheckBox()V
    .registers 4

    .line 312
    invoke-direct {p0}, Landroidx/appcompat/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 313
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Landroidx/appcompat/R$layout;->abc_list_menu_item_checkbox:I

    .line 314
    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 316
    invoke-direct {p0, v1}, Landroidx/appcompat/view/menu/ListMenuItemView;->addContentView(Landroid/view/View;)V

    .line 317
    return-void
.end method

.method private insertIconView()V
    .registers 4

    .line 297
    invoke-direct {p0}, Landroidx/appcompat/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 298
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Landroidx/appcompat/R$layout;->abc_list_menu_item_icon:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    .line 300
    invoke-direct {p0, v1, v2}, Landroidx/appcompat/view/menu/ListMenuItemView;->addContentView(Landroid/view/View;I)V

    .line 301
    return-void
.end method

.method private insertRadioButton()V
    .registers 4

    .line 304
    invoke-direct {p0}, Landroidx/appcompat/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 305
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Landroidx/appcompat/R$layout;->abc_list_menu_item_radio:I

    .line 306
    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 308
    invoke-direct {p0, v1}, Landroidx/appcompat/view/menu/ListMenuItemView;->addContentView(Landroid/view/View;)V

    .line 309
    return-void
.end method

.method private setSubMenuArrowVisible(Z)V
    .registers 4
    .param p1, "hasSubmenu"    # Z

    .line 238
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mSubMenuArrowView:Landroid/widget/ImageView;

    if-eqz v0, :cond_d

    .line 239
    if-eqz p1, :cond_8

    const/4 v1, 0x0

    goto :goto_a

    :cond_8
    const/16 v1, 0x8

    :goto_a
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 241
    :cond_d
    return-void
.end method


# virtual methods
.method public adjustListItemSelectionBounds(Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 350
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mGroupDivider:Landroid/widget/ImageView;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_23

    .line 355
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mGroupDivider:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 356
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mGroupDivider:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 358
    .end local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_23
    return-void
.end method

.method public getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;
    .registers 2

    .line 169
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public initialize(Landroidx/appcompat/view/menu/MenuItemImpl;I)V
    .registers 5
    .param p1, "itemData"    # Landroidx/appcompat/view/menu/MenuItemImpl;
    .param p2, "menuType"    # I

    .line 126
    iput-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 127
    iput p2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mMenuType:I

    .line 129
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    goto :goto_e

    :cond_c
    const/16 v0, 0x8

    :goto_e
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ListMenuItemView;->setVisibility(I)V

    .line 131
    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitleForItemView(Landroidx/appcompat/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ListMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 132
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ListMenuItemView;->setCheckable(Z)V

    .line 133
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->shouldShowShortcut()Z

    move-result v0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getShortcut()C

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/view/menu/ListMenuItemView;->setShortcut(ZC)V

    .line 134
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ListMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 135
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ListMenuItemView;->setEnabled(Z)V

    .line 136
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v0

    invoke-direct {p0, v0}, Landroidx/appcompat/view/menu/ListMenuItemView;->setSubMenuArrowVisible(Z)V

    .line 137
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ListMenuItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 138
    return-void
.end method

.method protected onFinishInflate()V
    .registers 4

    .line 104
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 106
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 108
    sget v0, Landroidx/appcompat/R$id;->title:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    .line 109
    iget v1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mTextAppearance:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1c

    .line 110
    iget-object v2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 114
    :cond_1c
    sget v0, Landroidx/appcompat/R$id;->shortcut:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    .line 115
    sget v0, Landroidx/appcompat/R$id;->submenuarrow:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mSubMenuArrowView:Landroid/widget/ImageView;

    .line 116
    if-eqz v0, :cond_37

    .line 117
    iget-object v1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mSubMenuArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    :cond_37
    sget v0, Landroidx/appcompat/R$id;->group_divider:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mGroupDivider:Landroid/widget/ImageView;

    .line 121
    sget v0, Landroidx/appcompat/R$id;->content:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mContent:Landroid/widget/LinearLayout;

    .line 122
    return-void
.end method

.method protected onMeasure(II)V
    .registers 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 285
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-eqz v0, :cond_20

    .line 287
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ListMenuItemView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 288
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 289
    .local v1, "iconLp":Landroid/widget/LinearLayout$LayoutParams;
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_20

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-gtz v2, :cond_20

    .line 290
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 293
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "iconLp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_20
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 294
    return-void
.end method

.method public prefersCondensedTitle()Z
    .registers 2

    .line 321
    const/4 v0, 0x0

    return v0
.end method

.method public setCheckable(Z)V
    .registers 6
    .param p1, "checkable"    # Z

    .line 174
    if-nez p1, :cond_b

    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v0, :cond_b

    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_b

    .line 175
    return-void

    .line 183
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 184
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v0, :cond_1a

    .line 185
    invoke-direct {p0}, Landroidx/appcompat/view/menu/ListMenuItemView;->insertRadioButton()V

    .line 187
    :cond_1a
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 188
    .local v0, "compoundButton":Landroid/widget/CompoundButton;
    iget-object v1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .local v1, "otherCompoundButton":Landroid/widget/CompoundButton;
    goto :goto_2a

    .line 190
    .end local v0    # "compoundButton":Landroid/widget/CompoundButton;
    .end local v1    # "otherCompoundButton":Landroid/widget/CompoundButton;
    :cond_1f
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_26

    .line 191
    invoke-direct {p0}, Landroidx/appcompat/view/menu/ListMenuItemView;->insertCheckBox()V

    .line 193
    :cond_26
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 194
    .restart local v0    # "compoundButton":Landroid/widget/CompoundButton;
    iget-object v1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 197
    .restart local v1    # "otherCompoundButton":Landroid/widget/CompoundButton;
    :goto_2a
    const/16 v2, 0x8

    if-eqz p1, :cond_4d

    .line 198
    iget-object v3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 200
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_41

    .line 201
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 205
    :cond_41
    if-eqz v1, :cond_5b

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v3

    if-eq v3, v2, :cond_5b

    .line 206
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setVisibility(I)V

    goto :goto_5b

    .line 209
    :cond_4d
    iget-object v3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v3, :cond_54

    .line 210
    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 212
    :cond_54
    iget-object v3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v3, :cond_5b

    .line 213
    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 216
    :cond_5b
    :goto_5b
    return-void
.end method

.method public setChecked(Z)V
    .registers 3
    .param p1, "checked"    # Z

    .line 222
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 223
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v0, :cond_f

    .line 224
    invoke-direct {p0}, Landroidx/appcompat/view/menu/ListMenuItemView;->insertRadioButton()V

    .line 226
    :cond_f
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .local v0, "compoundButton":Landroid/widget/CompoundButton;
    goto :goto_1b

    .line 228
    .end local v0    # "compoundButton":Landroid/widget/CompoundButton;
    :cond_12
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_19

    .line 229
    invoke-direct {p0}, Landroidx/appcompat/view/menu/ListMenuItemView;->insertCheckBox()V

    .line 231
    :cond_19
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 234
    .restart local v0    # "compoundButton":Landroid/widget/CompoundButton;
    :goto_1b
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 235
    return-void
.end method

.method public setForceShowIcon(Z)V
    .registers 2
    .param p1, "forceShow"    # Z

    .line 153
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mForceShowIcon:Z

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    .line 154
    return-void
.end method

.method public setGroupDividerEnabled(Z)V
    .registers 4
    .param p1, "groupDividerEnabled"    # Z

    .line 342
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mGroupDivider:Landroid/widget/ImageView;

    if-eqz v0, :cond_11

    .line 343
    iget-boolean v1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mHasListDivider:Z

    if-nez v1, :cond_c

    if-eqz p1, :cond_c

    const/4 v1, 0x0

    goto :goto_e

    :cond_c
    const/16 v1, 0x8

    :goto_e
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 346
    :cond_11
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 259
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->shouldShowIcon()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mForceShowIcon:Z

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    .line 260
    .local v0, "showIcon":Z
    :goto_11
    if-nez v0, :cond_18

    iget-boolean v2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-nez v2, :cond_18

    .line 261
    return-void

    .line 264
    :cond_18
    iget-object v2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-nez v2, :cond_23

    if-nez p1, :cond_23

    iget-boolean v3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-nez v3, :cond_23

    .line 265
    return-void

    .line 268
    :cond_23
    if-nez v2, :cond_28

    .line 269
    invoke-direct {p0}, Landroidx/appcompat/view/menu/ListMenuItemView;->insertIconView()V

    .line 272
    :cond_28
    if-nez p1, :cond_37

    iget-boolean v2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-eqz v2, :cond_2f

    goto :goto_37

    .line 279
    :cond_2f
    iget-object v1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4e

    .line 273
    :cond_37
    :goto_37
    iget-object v2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_3d

    move-object v3, p1

    goto :goto_3e

    :cond_3d
    const/4 v3, 0x0

    :goto_3e
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 275
    iget-object v2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_4e

    .line 276
    iget-object v2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 281
    :cond_4e
    :goto_4e
    return-void
.end method

.method public setShortcut(ZC)V
    .registers 6
    .param p1, "showShortcut"    # Z
    .param p2, "shortcutKey"    # C

    .line 245
    if-eqz p1, :cond_c

    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->shouldShowShortcut()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    goto :goto_e

    :cond_c
    const/16 v0, 0x8

    .line 248
    .local v0, "newVisibility":I
    :goto_e
    if-nez v0, :cond_1b

    .line 249
    iget-object v1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    iget-object v2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->getShortcutLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    :cond_1b
    iget-object v1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_28

    .line 253
    iget-object v1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 255
    :cond_28
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 158
    if-eqz p1, :cond_16

    .line 159
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_25

    .line 163
    :cond_16
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_25

    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    :cond_25
    :goto_25
    return-void
.end method

.method public showsIcon()Z
    .registers 2

    .line 326
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mForceShowIcon:Z

    return v0
.end method
