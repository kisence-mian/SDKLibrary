.class public Landroid/support/v7/internal/view/menu/MenuPopupHelper;
.super Ljava/lang/Object;
.source "MenuPopupHelper.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/support/v7/internal/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/internal/view/menu/MenuPopupHelper$MenuAdapter;
    }
.end annotation


# static fields
.field static final ITEM_LAYOUT:I

.field private static final TAG:Ljava/lang/String; = "MenuPopupHelper"


# instance fields
.field private final mAdapter:Landroid/support/v7/internal/view/menu/MenuPopupHelper$MenuAdapter;

.field private mAnchorView:Landroid/view/View;

.field private mContentWidth:I

.field private final mContext:Landroid/content/Context;

.field private mDropDownGravity:I

.field mForceShowIcon:Z

.field private mHasContentWidth:Z

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mMeasureParent:Landroid/view/ViewGroup;

.field private final mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

.field private final mOverflowOnly:Z

.field private mPopup:Landroid/support/v7/widget/ListPopupWindow;

.field private final mPopupMaxWidth:I

.field private final mPopupStyleAttr:I

.field private final mPopupStyleRes:I

.field private mPresenterCallback:Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;

.field private mTreeObserver:Landroid/view/ViewTreeObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 51
    sget v0, Landroid/support/v7/appcompat/R$layout;->abc_popup_menu_item_layout:I

    sput v0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->ITEM_LAYOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/MenuBuilder;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Landroid/support/v7/internal/view/menu/MenuBuilder;

    .line 80
    sget v5, Landroid/support/v7/appcompat/R$attr;->popupMenuStyle:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/view/View;ZI)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/view/View;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Landroid/support/v7/internal/view/menu/MenuBuilder;
    .param p3, "anchorView"    # Landroid/view/View;

    .line 84
    sget v5, Landroid/support/v7/appcompat/R$attr;->popupMenuStyle:I

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/view/View;ZI)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/view/View;ZI)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Landroid/support/v7/internal/view/menu/MenuBuilder;
    .param p3, "anchorView"    # Landroid/view/View;
    .param p4, "overflowOnly"    # Z
    .param p5, "popupStyleAttr"    # I

    .line 89
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/view/View;ZII)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Landroid/support/v7/internal/view/menu/MenuBuilder;
    .param p3, "anchorView"    # Landroid/view/View;
    .param p4, "overflowOnly"    # Z
    .param p5, "popupStyleAttr"    # I
    .param p6, "popupStyleRes"    # I

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mDropDownGravity:I

    .line 94
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    .line 95
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;

    .line 96
    iput-object p2, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    .line 97
    new-instance v0, Landroid/support/v7/internal/view/menu/MenuPopupHelper$MenuAdapter;

    invoke-direct {v0, p0, p2}, Landroid/support/v7/internal/view/menu/MenuPopupHelper$MenuAdapter;-><init>(Landroid/support/v7/internal/view/menu/MenuPopupHelper;Landroid/support/v7/internal/view/menu/MenuBuilder;)V

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mAdapter:Landroid/support/v7/internal/view/menu/MenuPopupHelper$MenuAdapter;

    .line 98
    iput-boolean p4, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    .line 99
    iput p5, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mPopupStyleAttr:I

    .line 100
    iput p6, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mPopupStyleRes:I

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 103
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    sget v2, Landroid/support/v7/appcompat/R$dimen;->abc_config_prefDialogWidth:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mPopupMaxWidth:I

    .line 106
    iput-object p3, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 109
    invoke-virtual {p2, p0, p1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 110
    return-void
.end method

.method static synthetic access$100(Landroid/support/v7/internal/view/menu/MenuPopupHelper;)Z
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/internal/view/menu/MenuPopupHelper;

    .line 45
    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    return v0
.end method

.method static synthetic access$200(Landroid/support/v7/internal/view/menu/MenuPopupHelper;)Landroid/view/LayoutInflater;
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/internal/view/menu/MenuPopupHelper;

    .line 45
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/v7/internal/view/menu/MenuPopupHelper;)Landroid/support/v7/internal/view/menu/MenuBuilder;
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/internal/view/menu/MenuPopupHelper;

    .line 45
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method private measureContentWidth()I
    .registers 12

    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, "maxWidth":I
    const/4 v1, 0x0

    .line 202
    .local v1, "itemView":Landroid/view/View;
    const/4 v2, 0x0

    .line 204
    .local v2, "itemType":I
    iget-object v3, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mAdapter:Landroid/support/v7/internal/view/menu/MenuPopupHelper$MenuAdapter;

    .line 205
    .local v3, "adapter":Landroid/widget/ListAdapter;
    const/4 v4, 0x0

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 206
    .local v5, "widthMeasureSpec":I
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 207
    .local v4, "heightMeasureSpec":I
    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    .line 208
    .local v6, "count":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_13
    if-ge v7, v6, :cond_42

    .line 209
    invoke-interface {v3, v7}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v8

    .line 210
    .local v8, "positionType":I
    if-eq v8, v2, :cond_1d

    .line 211
    move v2, v8

    .line 212
    const/4 v1, 0x0

    .line 215
    :cond_1d
    iget-object v9, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    if-nez v9, :cond_2a

    .line 216
    new-instance v9, Landroid/widget/FrameLayout;

    iget-object v10, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    .line 219
    :cond_2a
    iget-object v9, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    invoke-interface {v3, v7, v1, v9}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 220
    invoke-virtual {v1, v5, v4}, Landroid/view/View;->measure(II)V

    .line 222
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 223
    .local v9, "itemWidth":I
    iget v10, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mPopupMaxWidth:I

    if-lt v9, v10, :cond_3c

    .line 224
    return v10

    .line 225
    :cond_3c
    if-le v9, v0, :cond_3f

    .line 226
    move v0, v9

    .line 208
    .end local v8    # "positionType":I
    .end local v9    # "itemWidth":I
    :cond_3f
    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    .line 230
    .end local v7    # "i":I
    :cond_42
    return v0
.end method


# virtual methods
.method public collapseItemActionView(Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/support/v7/internal/view/menu/MenuItemImpl;)Z
    .registers 4
    .param p1, "menu"    # Landroid/support/v7/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/support/v7/internal/view/menu/MenuItemImpl;

    .line 318
    const/4 v0, 0x0

    return v0
.end method

.method public dismiss()V
    .registers 2

    .line 165
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 166
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/widget/ListPopupWindow;->dismiss()V

    .line 168
    :cond_b
    return-void
.end method

.method public expandItemActionView(Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/support/v7/internal/view/menu/MenuItemImpl;)Z
    .registers 4
    .param p1, "menu"    # Landroid/support/v7/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/support/v7/internal/view/menu/MenuItemImpl;

    .line 314
    const/4 v0, 0x0

    return v0
.end method

.method public flagActionItems()Z
    .registers 2

    .line 310
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .registers 2

    .line 323
    const/4 v0, 0x0

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/MenuView;
    .registers 4
    .param p1, "root"    # Landroid/view/ViewGroup;

    .line 253
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "MenuPopupHelpers manage their own views"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPopup()Landroid/support/v7/widget/ListPopupWindow;
    .registers 2

    .line 131
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Landroid/support/v7/internal/view/menu/MenuBuilder;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Landroid/support/v7/internal/view/menu/MenuBuilder;

    .line 249
    return-void
.end method

.method public isShowing()Z
    .registers 2

    .line 181
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public onCloseMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;Z)V
    .registers 4
    .param p1, "menu"    # Landroid/support/v7/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .line 300
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-eq p1, v0, :cond_5

    return-void

    .line 302
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->dismiss()V

    .line 303
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_f

    .line 304
    invoke-interface {v0, p1, p2}, Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;Z)V

    .line 306
    :cond_f
    return-void
.end method

.method public onDismiss()V
    .registers 3

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    .line 172
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->close()V

    .line 173
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v1, :cond_21

    .line 174
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1a

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 175
    :cond_1a
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 176
    iput-object v0, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 178
    :cond_21
    return-void
.end method

.method public onGlobalLayout()V
    .registers 3

    .line 235
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 236
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 237
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_1d

    .line 239
    :cond_11
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 241
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/support/v7/widget/ListPopupWindow;->show()V

    goto :goto_20

    .line 238
    :cond_1d
    :goto_1d
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->dismiss()V

    .line 244
    .end local v0    # "anchor":Landroid/view/View;
    :cond_20
    :goto_20
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 186
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mAdapter:Landroid/support/v7/internal/view/menu/MenuPopupHelper$MenuAdapter;

    .line 187
    .local v0, "adapter":Landroid/support/v7/internal/view/menu/MenuPopupHelper$MenuAdapter;
    # getter for: Landroid/support/v7/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;
    invoke-static {v0}, Landroid/support/v7/internal/view/menu/MenuPopupHelper$MenuAdapter;->access$000(Landroid/support/v7/internal/view/menu/MenuPopupHelper$MenuAdapter;)Landroid/support/v7/internal/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v0, p3}, Landroid/support/v7/internal/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Landroid/support/v7/internal/view/menu/MenuItemImpl;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 188
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 191
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    const/16 v0, 0x52

    if-ne p2, v0, :cond_f

    .line 192
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->dismiss()V

    .line 193
    return v1

    .line 195
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 333
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 2

    .line 328
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Landroid/support/v7/internal/view/menu/SubMenuBuilder;)Z
    .registers 8
    .param p1, "subMenu"    # Landroid/support/v7/internal/view/menu/SubMenuBuilder;

    .line 272
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 273
    new-instance v0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-direct {v0, v1, p1, v2}, Landroid/support/v7/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/view/View;)V

    .line 274
    .local v0, "subPopup":Landroid/support/v7/internal/view/menu/MenuPopupHelper;
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->setCallback(Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;)V

    .line 276
    const/4 v1, 0x0

    .line 277
    .local v1, "preserveIconSpacing":Z
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->size()I

    move-result v2

    .line 278
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1a
    if-ge v3, v2, :cond_31

    .line 279
    invoke-virtual {p1, v3}, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 280
    .local v4, "childItem":Landroid/view/MenuItem;
    invoke-interface {v4}, Landroid/view/MenuItem;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_2e

    invoke-interface {v4}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_2e

    .line 281
    const/4 v1, 0x1

    .line 282
    goto :goto_31

    .line 278
    .end local v4    # "childItem":Landroid/view/MenuItem;
    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 285
    .end local v3    # "i":I
    :cond_31
    :goto_31
    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->setForceShowIcon(Z)V

    .line 287
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->tryShow()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 288
    iget-object v3, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;

    if-eqz v3, :cond_41

    .line 289
    invoke-interface {v3, p1}, Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;)Z

    .line 291
    :cond_41
    const/4 v3, 0x1

    return v3

    .line 294
    .end local v0    # "subPopup":Landroid/support/v7/internal/view/menu/MenuPopupHelper;
    .end local v1    # "preserveIconSpacing":Z
    .end local v2    # "count":I
    :cond_43
    const/4 v0, 0x0

    return v0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .registers 2
    .param p1, "anchor"    # Landroid/view/View;

    .line 113
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 114
    return-void
.end method

.method public setCallback(Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;)V
    .registers 2
    .param p1, "cb"    # Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;

    .line 267
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;

    .line 268
    return-void
.end method

.method public setForceShowIcon(Z)V
    .registers 2
    .param p1, "forceShow"    # Z

    .line 117
    iput-boolean p1, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    .line 118
    return-void
.end method

.method public setGravity(I)V
    .registers 2
    .param p1, "gravity"    # I

    .line 121
    iput p1, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mDropDownGravity:I

    .line 122
    return-void
.end method

.method public show()V
    .registers 3

    .line 125
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->tryShow()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 128
    return-void

    .line 126
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public tryShow()Z
    .registers 6

    .line 135
    new-instance v0, Landroid/support/v7/widget/ListPopupWindow;

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    iget v2, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mPopupStyleAttr:I

    iget v3, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mPopupStyleRes:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/support/v7/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    .line 136
    invoke-virtual {v0, p0}, Landroid/support/v7/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 137
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 138
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mAdapter:Landroid/support/v7/internal/view/menu/MenuPopupHelper$MenuAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 139
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ListPopupWindow;->setModal(Z)V

    .line 141
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 142
    .local v0, "anchor":Landroid/view/View;
    const/4 v2, 0x0

    if-eqz v0, :cond_6d

    .line 143
    iget-object v3, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v3, :cond_2d

    const/4 v2, 0x1

    .line 144
    .local v2, "addGlobalListener":Z
    :cond_2d
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 145
    if-eqz v2, :cond_38

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 146
    :cond_38
    iget-object v3, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 147
    iget-object v3, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    iget v4, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mDropDownGravity:I

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ListPopupWindow;->setDropDownGravity(I)V

    .line 148
    .end local v2    # "addGlobalListener":Z
    nop

    .line 152
    iget-boolean v2, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mHasContentWidth:Z

    if-nez v2, :cond_51

    .line 153
    invoke-direct {p0}, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->measureContentWidth()I

    move-result v2

    iput v2, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mContentWidth:I

    .line 154
    iput-boolean v1, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mHasContentWidth:Z

    .line 157
    :cond_51
    iget-object v2, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    iget v3, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mContentWidth:I

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ListPopupWindow;->setContentWidth(I)V

    .line 158
    iget-object v2, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 159
    iget-object v2, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    invoke-virtual {v2}, Landroid/support/v7/widget/ListPopupWindow;->show()V

    .line 160
    iget-object v2, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    invoke-virtual {v2}, Landroid/support/v7/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 161
    return v1

    .line 149
    :cond_6d
    return v2
.end method

.method public updateMenuView(Z)V
    .registers 3
    .param p1, "cleared"    # Z

    .line 258
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mHasContentWidth:Z

    .line 260
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mAdapter:Landroid/support/v7/internal/view/menu/MenuPopupHelper$MenuAdapter;

    if-eqz v0, :cond_a

    .line 261
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuPopupHelper$MenuAdapter;->notifyDataSetChanged()V

    .line 263
    :cond_a
    return-void
.end method
