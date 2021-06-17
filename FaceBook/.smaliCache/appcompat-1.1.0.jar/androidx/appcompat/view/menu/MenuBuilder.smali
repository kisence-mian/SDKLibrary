.class public Landroidx/appcompat/view/menu/MenuBuilder;
.super Ljava/lang/Object;
.source "MenuBuilder.java"

# interfaces
.implements Landroidx/core/internal/view/SupportMenu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/MenuBuilder$ItemInvoker;,
        Landroidx/appcompat/view/menu/MenuBuilder$Callback;
    }
.end annotation


# static fields
.field private static final ACTION_VIEW_STATES_KEY:Ljava/lang/String; = "android:menu:actionviewstates"

.field private static final EXPANDED_ACTION_VIEW_ID:Ljava/lang/String; = "android:menu:expandedactionview"

.field private static final PRESENTER_KEY:Ljava/lang/String; = "android:menu:presenters"

.field private static final TAG:Ljava/lang/String; = "MenuBuilder"

.field private static final sCategoryToOrder:[I


# instance fields
.field private mActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

.field private final mContext:Landroid/content/Context;

.field private mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mDefaultShowAsAction:I

.field private mExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

.field private mFrozenViewStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupDividerEnabled:Z

.field mHeaderIcon:Landroid/graphics/drawable/Drawable;

.field mHeaderTitle:Ljava/lang/CharSequence;

.field mHeaderView:Landroid/view/View;

.field private mIsActionItemsStale:Z

.field private mIsClosing:Z

.field private mIsVisibleItemsStale:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsChangedWhileDispatchPrevented:Z

.field private mNonActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mOptionalIconsVisible:Z

.field private mOverrideVisibleItems:Z

.field private mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/appcompat/view/menu/MenuPresenter;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPreventDispatchingItemsChanged:Z

.field private mQwertyMode:Z

.field private final mResources:Landroid/content/res/Resources;

.field private mShortcutsVisible:Z

.field private mStructureChangedWhileDispatchPrevented:Z

.field private mTempShortcutItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibleItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 68
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Landroidx/appcompat/view/menu/MenuBuilder;->sCategoryToOrder:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x1
        0x4
        0x5
        0x3
        0x2
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    .line 165
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 167
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 169
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mStructureChangedWhileDispatchPrevented:Z

    .line 171
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    .line 173
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mIsClosing:Z

    .line 175
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mTempShortcutItemList:Ljava/util/ArrayList;

    .line 177
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 188
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mGroupDividerEnabled:Z

    .line 230
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    .line 231
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 237
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    .line 238
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    .line 239
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 241
    invoke-direct {p0, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->setShortcutsVisibleInner(Z)V

    .line 242
    return-void
.end method

.method private createNewMenuItem(IIIILjava/lang/CharSequence;I)Landroidx/appcompat/view/menu/MenuItemImpl;
    .registers 16
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "ordering"    # I
    .param p5, "title"    # Ljava/lang/CharSequence;
    .param p6, "defaultShowAsAction"    # I

    .line 466
    new-instance v8, Landroidx/appcompat/view/menu/MenuItemImpl;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroidx/appcompat/view/menu/MenuItemImpl;-><init>(Landroidx/appcompat/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V

    return-object v8
.end method

.method private dispatchPresenterUpdate(Z)V
    .registers 6
    .param p1, "cleared"    # Z

    .line 290
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 292
    :cond_9
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 293
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 294
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroidx/appcompat/view/menu/MenuPresenter;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/MenuPresenter;

    .line 295
    .local v2, "presenter":Landroidx/appcompat/view/menu/MenuPresenter;
    if-nez v2, :cond_2c

    .line 296
    iget-object v3, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 298
    :cond_2c
    invoke-interface {v2, p1}, Landroidx/appcompat/view/menu/MenuPresenter;->updateMenuView(Z)V

    .line 300
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroidx/appcompat/view/menu/MenuPresenter;>;"
    .end local v2    # "presenter":Landroidx/appcompat/view/menu/MenuPresenter;
    :goto_2f
    goto :goto_12

    .line 301
    :cond_30
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 302
    return-void
.end method

.method private dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "state"    # Landroid/os/Bundle;

    .line 350
    const-string v0, "android:menu:presenters"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 352
    .local v0, "presenterStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v0, :cond_44

    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_44

    .line 354
    :cond_11
    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 355
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroidx/appcompat/view/menu/MenuPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/MenuPresenter;

    .line 356
    .local v3, "presenter":Landroidx/appcompat/view/menu/MenuPresenter;
    if-nez v3, :cond_31

    .line 357
    iget-object v4, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_42

    .line 359
    :cond_31
    invoke-interface {v3}, Landroidx/appcompat/view/menu/MenuPresenter;->getId()I

    move-result v4

    .line 360
    .local v4, "id":I
    if-lez v4, :cond_42

    .line 361
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Parcelable;

    .line 362
    .local v5, "parcel":Landroid/os/Parcelable;
    if-eqz v5, :cond_42

    .line 363
    invoke-interface {v3, v5}, Landroidx/appcompat/view/menu/MenuPresenter;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 367
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroidx/appcompat/view/menu/MenuPresenter;>;"
    .end local v3    # "presenter":Landroidx/appcompat/view/menu/MenuPresenter;
    .end local v4    # "id":I
    .end local v5    # "parcel":Landroid/os/Parcelable;
    :cond_42
    :goto_42
    goto :goto_17

    .line 368
    :cond_43
    return-void

    .line 352
    :cond_44
    :goto_44
    return-void
.end method

.method private dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 327
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 329
    :cond_9
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 331
    .local v0, "presenterStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 332
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroidx/appcompat/view/menu/MenuPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/MenuPresenter;

    .line 333
    .local v3, "presenter":Landroidx/appcompat/view/menu/MenuPresenter;
    if-nez v3, :cond_2e

    .line 334
    iget-object v4, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_3d

    .line 336
    :cond_2e
    invoke-interface {v3}, Landroidx/appcompat/view/menu/MenuPresenter;->getId()I

    move-result v4

    .line 337
    .local v4, "id":I
    if-lez v4, :cond_3d

    .line 338
    invoke-interface {v3}, Landroidx/appcompat/view/menu/MenuPresenter;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v5

    .line 339
    .local v5, "state":Landroid/os/Parcelable;
    if-eqz v5, :cond_3d

    .line 340
    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 344
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroidx/appcompat/view/menu/MenuPresenter;>;"
    .end local v3    # "presenter":Landroidx/appcompat/view/menu/MenuPresenter;
    .end local v4    # "id":I
    .end local v5    # "state":Landroid/os/Parcelable;
    :cond_3d
    :goto_3d
    goto :goto_14

    .line 346
    :cond_3e
    const-string v1, "android:menu:presenters"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 347
    return-void
.end method

.method private dispatchSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;Landroidx/appcompat/view/menu/MenuPresenter;)Z
    .registers 8
    .param p1, "subMenu"    # Landroidx/appcompat/view/menu/SubMenuBuilder;
    .param p2, "preferredPresenter"    # Landroidx/appcompat/view/menu/MenuPresenter;

    .line 306
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 308
    :cond_a
    const/4 v0, 0x0

    .line 311
    .local v0, "result":Z
    if-eqz p2, :cond_11

    .line 312
    invoke-interface {p2, p1}, Landroidx/appcompat/view/menu/MenuPresenter;->onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z

    move-result v0

    .line 315
    :cond_11
    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 316
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroidx/appcompat/view/menu/MenuPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/MenuPresenter;

    .line 317
    .local v3, "presenter":Landroidx/appcompat/view/menu/MenuPresenter;
    if-nez v3, :cond_31

    .line 318
    iget-object v4, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_37

    .line 319
    :cond_31
    if-nez v0, :cond_37

    .line 320
    invoke-interface {v3, p1}, Landroidx/appcompat/view/menu/MenuPresenter;->onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z

    move-result v0

    .line 322
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroidx/appcompat/view/menu/MenuPresenter;>;"
    .end local v3    # "presenter":Landroidx/appcompat/view/menu/MenuPresenter;
    :cond_37
    :goto_37
    goto :goto_17

    .line 323
    :cond_38
    return v0
.end method

.method private static findInsertIndex(Ljava/util/ArrayList;I)I
    .registers 5
    .param p1, "ordering"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/view/menu/MenuItemImpl;",
            ">;I)I"
        }
    .end annotation

    .line 853
    .local p0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/appcompat/view/menu/MenuItemImpl;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_1a

    .line 854
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 855
    .local v1, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getOrdering()I

    move-result v2

    if-gt v2, p1, :cond_17

    .line 856
    add-int/lit8 v2, v0, 0x1

    return v2

    .line 853
    .end local v1    # "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 860
    .end local v0    # "i":I
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method private static getOrdering(I)I
    .registers 4
    .param p0, "categoryOrder"    # I

    .line 785
    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x10

    .line 787
    .local v0, "index":I
    if-ltz v0, :cond_16

    sget-object v1, Landroidx/appcompat/view/menu/MenuBuilder;->sCategoryToOrder:[I

    array-length v2, v1

    if-ge v0, v2, :cond_16

    .line 791
    aget v1, v1, v0

    shl-int/lit8 v1, v1, 0x10

    const v2, 0xffff

    and-int/2addr v2, p0

    or-int/2addr v1, v2

    return v1

    .line 788
    :cond_16
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "order does not contain a valid category."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private removeItemAtInt(IZ)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "updateChildrenOnMenuViews"    # Z

    .line 586
    if-ltz p1, :cond_17

    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_b

    goto :goto_17

    .line 588
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 590
    if-eqz p2, :cond_16

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 591
    :cond_16
    return-void

    .line 586
    :cond_17
    :goto_17
    return-void
.end method

.method private setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .registers 9
    .param p1, "titleRes"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "iconRes"    # I
    .param p4, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p5, "view"    # Landroid/view/View;

    .line 1228
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1230
    .local v0, "r":Landroid/content/res/Resources;
    const/4 v1, 0x0

    if-eqz p5, :cond_e

    .line 1231
    iput-object p5, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    .line 1234
    iput-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1235
    iput-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_2e

    .line 1237
    :cond_e
    if-lez p1, :cond_17

    .line 1238
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    goto :goto_1b

    .line 1239
    :cond_17
    if-eqz p2, :cond_1b

    .line 1240
    iput-object p2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1243
    :cond_1b
    :goto_1b
    if-lez p3, :cond_28

    .line 1244
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_2c

    .line 1245
    :cond_28
    if-eqz p4, :cond_2c

    .line 1246
    iput-object p4, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1250
    :cond_2c
    :goto_2c
    iput-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    .line 1254
    :goto_2e
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1255
    return-void
.end method

.method private setShortcutsVisibleInner(Z)V
    .registers 5
    .param p1, "shortcutsVisible"    # Z

    .line 818
    const/4 v0, 0x1

    if-eqz p1, :cond_1c

    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    .line 819
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v0, :cond_1c

    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    .line 821
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    iget-object v2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    .line 820
    invoke-static {v1, v2}, Landroidx/core/view/ViewConfigurationCompat;->shouldShowMenuShortcutsWhenKeyboardPresent(Landroid/view/ViewConfiguration;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mShortcutsVisible:Z

    .line 822
    return-void
.end method


# virtual methods
.method public add(I)Landroid/view/MenuItem;
    .registers 4
    .param p1, "titleRes"    # I

    .line 477
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .registers 6
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # I

    .line 487
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 6
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    .line 482
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 472
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .registers 24
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "caller"    # Landroid/content/ComponentName;
    .param p5, "specifics"    # [Landroid/content/Intent;
    .param p6, "intent"    # Landroid/content/Intent;
    .param p7, "flags"    # I
    .param p8, "outSpecificItems"    # [Landroid/view/MenuItem;

    .line 526
    move-object v0, p0

    move-object/from16 v1, p5

    iget-object v2, v0, Landroidx/appcompat/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 527
    .local v2, "pm":Landroid/content/pm/PackageManager;
    nop

    .line 528
    const/4 v3, 0x0

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    invoke-virtual {v2, v4, v1, v5, v3}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 529
    .local v6, "lri":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v6, :cond_19

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 531
    .local v3, "N":I
    :cond_19
    and-int/lit8 v7, p7, 0x1

    if-nez v7, :cond_20

    .line 532
    invoke-virtual/range {p0 .. p1}, Landroidx/appcompat/view/menu/MenuBuilder;->removeGroup(I)V

    .line 535
    :cond_20
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_21
    if-ge v7, v3, :cond_71

    .line 536
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 537
    .local v8, "ri":Landroid/content/pm/ResolveInfo;
    new-instance v9, Landroid/content/Intent;

    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-gez v10, :cond_31

    move-object v10, v5

    goto :goto_35

    :cond_31
    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aget-object v10, v1, v10

    :goto_35
    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 539
    .local v9, "rintent":Landroid/content/Intent;
    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v12, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 542
    invoke-virtual {v8, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    move/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    invoke-virtual {p0, v11, v12, v13, v10}, Landroidx/appcompat/view/menu/MenuBuilder;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v10

    .line 543
    invoke-virtual {v8, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-interface {v10, v14}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v10

    .line 544
    invoke-interface {v10, v9}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v10

    .line 545
    .local v10, "item":Landroid/view/MenuItem;
    if-eqz p8, :cond_6e

    iget v14, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-ltz v14, :cond_6e

    .line 546
    iget v14, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aput-object v10, p8, v14

    .line 535
    .end local v8    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v9    # "rintent":Landroid/content/Intent;
    .end local v10    # "item":Landroid/view/MenuItem;
    :cond_6e
    add-int/lit8 v7, v7, 0x1

    goto :goto_21

    :cond_71
    move/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    .line 550
    .end local v7    # "i":I
    return v3
.end method

.method protected addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 13
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    .line 447
    invoke-static {p3}, Landroidx/appcompat/view/menu/MenuBuilder;->getOrdering(I)I

    move-result v7

    .line 449
    .local v7, "ordering":I
    iget v6, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, v7

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/view/menu/MenuBuilder;->createNewMenuItem(IIIILjava/lang/CharSequence;I)Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v0

    .line 452
    .local v0, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    if-eqz v1, :cond_17

    .line 454
    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->setMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 457
    :cond_17
    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-static {v1, v7}, Landroidx/appcompat/view/menu/MenuBuilder;->findInsertIndex(Ljava/util/ArrayList;I)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 458
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 460
    return-object v0
.end method

.method public addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;)V
    .registers 3
    .param p1, "presenter"    # Landroidx/appcompat/view/menu/MenuPresenter;

    .line 256
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 257
    return-void
.end method

.method public addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;Landroid/content/Context;)V
    .registers 5
    .param p1, "presenter"    # Landroidx/appcompat/view/menu/MenuPresenter;
    .param p2, "menuContext"    # Landroid/content/Context;

    .line 269
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    invoke-interface {p1, p2, p0}, Landroidx/appcompat/view/menu/MenuPresenter;->initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V

    .line 271
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 272
    return-void
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .registers 4
    .param p1, "titleRes"    # I

    .line 497
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .registers 6
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # I

    .line 511
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 8
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    .line 502
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 503
    .local v0, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    new-instance v1, Landroidx/appcompat/view/menu/SubMenuBuilder;

    iget-object v2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0, v0}, Landroidx/appcompat/view/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)V

    .line 504
    .local v1, "subMenu":Landroidx/appcompat/view/menu/SubMenuBuilder;
    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->setSubMenu(Landroidx/appcompat/view/menu/SubMenuBuilder;)V

    .line 506
    return-object v1
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 492
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public changeMenuMode()V
    .registers 2

    .line 847
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    if-eqz v0, :cond_7

    .line 848
    invoke-interface {v0, p0}, Landroidx/appcompat/view/menu/MenuBuilder$Callback;->onMenuModeChange(Landroidx/appcompat/view/menu/MenuBuilder;)V

    .line 850
    :cond_7
    return-void
.end method

.method public clear()V
    .registers 2

    .line 610
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v0, :cond_7

    .line 611
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->collapseItemActionView(Landroidx/appcompat/view/menu/MenuItemImpl;)Z

    .line 613
    :cond_7
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 615
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 616
    return-void
.end method

.method public clearAll()V
    .registers 3

    .line 598
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 599
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->clear()V

    .line 600
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->clearHeader()V

    .line 601
    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 602
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 603
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 604
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mStructureChangedWhileDispatchPrevented:Z

    .line 605
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 606
    return-void
.end method

.method public clearHeader()V
    .registers 2

    .line 1219
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1220
    iput-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1221
    iput-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    .line 1223
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1224
    return-void
.end method

.method public close()V
    .registers 2

    .line 1052
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    .line 1053
    return-void
.end method

.method public final close(Z)V
    .registers 6
    .param p1, "closeAllMenus"    # Z

    .line 1036
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mIsClosing:Z

    if-eqz v0, :cond_5

    return-void

    .line 1038
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mIsClosing:Z

    .line 1039
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 1040
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroidx/appcompat/view/menu/MenuPresenter;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/MenuPresenter;

    .line 1041
    .local v2, "presenter":Landroidx/appcompat/view/menu/MenuPresenter;
    if-nez v2, :cond_28

    .line 1042
    iget-object v3, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 1044
    :cond_28
    invoke-interface {v2, p0, p1}, Landroidx/appcompat/view/menu/MenuPresenter;->onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V

    .line 1046
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroidx/appcompat/view/menu/MenuPresenter;>;"
    .end local v2    # "presenter":Landroidx/appcompat/view/menu/MenuPresenter;
    :goto_2b
    goto :goto_e

    .line 1047
    :cond_2c
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mIsClosing:Z

    .line 1048
    return-void
.end method

.method public collapseItemActionView(Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .registers 7
    .param p1, "item"    # Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 1379
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_43

    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eq v0, p1, :cond_d

    goto :goto_43

    .line 1381
    :cond_d
    const/4 v0, 0x0

    .line 1383
    .local v0, "collapsed":Z
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1384
    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 1385
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroidx/appcompat/view/menu/MenuPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/MenuPresenter;

    .line 1386
    .local v3, "presenter":Landroidx/appcompat/view/menu/MenuPresenter;
    if-nez v3, :cond_31

    .line 1387
    iget-object v4, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_39

    .line 1388
    :cond_31
    invoke-interface {v3, p0, p1}, Landroidx/appcompat/view/menu/MenuPresenter;->collapseItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z

    move-result v4

    move v0, v4

    if-eqz v4, :cond_39

    .line 1389
    goto :goto_3a

    .line 1391
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroidx/appcompat/view/menu/MenuPresenter;>;"
    .end local v3    # "presenter":Landroidx/appcompat/view/menu/MenuPresenter;
    :cond_39
    :goto_39
    goto :goto_17

    .line 1392
    :cond_3a
    :goto_3a
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1394
    if-eqz v0, :cond_42

    .line 1395
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 1397
    :cond_42
    return v0

    .line 1379
    .end local v0    # "collapsed":Z
    :cond_43
    :goto_43
    const/4 v0, 0x0

    return v0
.end method

.method dispatchMenuItemSelected(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "menu"    # Landroidx/appcompat/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 840
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/MenuBuilder$Callback;->onMenuItemSelected(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public expandItemActionView(Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .registers 7
    .param p1, "item"    # Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 1357
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 1359
    :cond_a
    const/4 v0, 0x0

    .line 1361
    .local v0, "expanded":Z
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1362
    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 1363
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroidx/appcompat/view/menu/MenuPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/MenuPresenter;

    .line 1364
    .local v3, "presenter":Landroidx/appcompat/view/menu/MenuPresenter;
    if-nez v3, :cond_2e

    .line 1365
    iget-object v4, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_36

    .line 1366
    :cond_2e
    invoke-interface {v3, p0, p1}, Landroidx/appcompat/view/menu/MenuPresenter;->expandItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z

    move-result v4

    move v0, v4

    if-eqz v4, :cond_36

    .line 1367
    goto :goto_37

    .line 1369
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroidx/appcompat/view/menu/MenuPresenter;>;"
    .end local v3    # "presenter":Landroidx/appcompat/view/menu/MenuPresenter;
    :cond_36
    :goto_36
    goto :goto_14

    .line 1370
    :cond_37
    :goto_37
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1372
    if-eqz v0, :cond_3e

    .line 1373
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 1375
    :cond_3e
    return v0
.end method

.method public findGroupIndex(I)I
    .registers 3
    .param p1, "group"    # I

    .line 730
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->findGroupIndex(II)I

    move-result v0

    return v0
.end method

.method public findGroupIndex(II)I
    .registers 7
    .param p1, "group"    # I
    .param p2, "start"    # I

    .line 734
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v0

    .line 736
    .local v0, "size":I
    if-gez p2, :cond_7

    .line 737
    const/4 p2, 0x0

    .line 740
    :cond_7
    move v1, p2

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_1c

    .line 741
    iget-object v2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 743
    .local v2, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_19

    .line 744
    return v1

    .line 740
    .end local v2    # "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 748
    .end local v1    # "i":I
    :cond_1c
    const/4 v1, -0x1

    return v1
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .registers 6
    .param p1, "id"    # I

    .line 699
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v0

    .line 700
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_2a

    .line 701
    iget-object v2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 702
    .local v2, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v3

    if-ne v3, p1, :cond_16

    .line 703
    return-object v2

    .line 704
    :cond_16
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 705
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 707
    .local v3, "possibleItem":Landroid/view/MenuItem;
    if-eqz v3, :cond_27

    .line 708
    return-object v3

    .line 700
    .end local v2    # "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    .end local v3    # "possibleItem":Landroid/view/MenuItem;
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 713
    .end local v1    # "i":I
    :cond_2a
    const/4 v1, 0x0

    return-object v1
.end method

.method public findItemIndex(I)I
    .registers 6
    .param p1, "id"    # I

    .line 717
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v0

    .line 719
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_19

    .line 720
    iget-object v2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 721
    .local v2, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v3

    if-ne v3, p1, :cond_16

    .line 722
    return v1

    .line 719
    .end local v2    # "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 726
    .end local v1    # "i":I
    :cond_19
    const/4 v1, -0x1

    return v1
.end method

.method findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Landroidx/appcompat/view/menu/MenuItemImpl;
    .registers 15
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 936
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mTempShortcutItemList:Ljava/util/ArrayList;

    .line 937
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/appcompat/view/menu/MenuItemImpl;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 938
    invoke-virtual {p0, v0, p1, p2}, Landroidx/appcompat/view/menu/MenuBuilder;->findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 940
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    .line 941
    return-object v2

    .line 944
    :cond_10
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    .line 945
    .local v1, "metaState":I
    new-instance v3, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v3}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 947
    .local v3, "possibleChars":Landroid/view/KeyCharacterMap$KeyData;
    invoke-virtual {p2, v3}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    .line 950
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 951
    .local v4, "size":I
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_2b

    .line 952
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/MenuItemImpl;

    return-object v2

    .line 955
    :cond_2b
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v6

    .line 958
    .local v6, "qwerty":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_30
    if-ge v7, v4, :cond_67

    .line 959
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 960
    .local v8, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    if-eqz v6, :cond_3f

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/MenuItemImpl;->getAlphabeticShortcut()C

    move-result v9

    goto :goto_43

    .line 961
    :cond_3f
    invoke-virtual {v8}, Landroidx/appcompat/view/menu/MenuItemImpl;->getNumericShortcut()C

    move-result v9

    :goto_43
    nop

    .line 962
    .local v9, "shortcutChar":C
    iget-object v10, v3, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v10, v10, v5

    if-ne v9, v10, :cond_4e

    and-int/lit8 v10, v1, 0x2

    if-eqz v10, :cond_63

    :cond_4e
    iget-object v10, v3, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v11, 0x2

    aget-char v10, v10, v11

    if-ne v9, v10, :cond_59

    and-int/lit8 v10, v1, 0x2

    if-nez v10, :cond_63

    :cond_59
    if-eqz v6, :cond_64

    const/16 v10, 0x8

    if-ne v9, v10, :cond_64

    const/16 v10, 0x43

    if-ne p1, v10, :cond_64

    .line 968
    :cond_63
    return-object v8

    .line 958
    .end local v8    # "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    .end local v9    # "shortcutChar":C
    :cond_64
    add-int/lit8 v7, v7, 0x1

    goto :goto_30

    .line 971
    .end local v7    # "i":I
    :cond_67
    return-object v2
.end method

.method findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V
    .registers 21
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/appcompat/view/menu/MenuItemImpl;",
            ">;I",
            "Landroid/view/KeyEvent;",
            ")V"
        }
    .end annotation

    .line 888
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Landroidx/appcompat/view/menu/MenuItemImpl;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v4

    .line 889
    .local v4, "qwerty":Z
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getModifiers()I

    move-result v5

    .line 890
    .local v5, "modifierState":I
    new-instance v6, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v6}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 892
    .local v6, "possibleChars":Landroid/view/KeyCharacterMap$KeyData;
    invoke-virtual {v3, v6}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    move-result v7

    .line 894
    .local v7, "isKeyCodeMapped":Z
    const/16 v8, 0x43

    if-nez v7, :cond_20

    if-eq v2, v8, :cond_20

    .line 895
    return-void

    .line 899
    :cond_20
    iget-object v9, v0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 900
    .local v9, "N":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_27
    if-ge v10, v9, :cond_89

    .line 901
    iget-object v11, v0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 902
    .local v11, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    invoke-virtual {v11}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v12

    if-eqz v12, :cond_40

    .line 903
    invoke-virtual {v11}, Landroidx/appcompat/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v12

    check-cast v12, Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v12, v1, v2, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 905
    :cond_40
    if-eqz v4, :cond_47

    .line 906
    invoke-virtual {v11}, Landroidx/appcompat/view/menu/MenuItemImpl;->getAlphabeticShortcut()C

    move-result v12

    goto :goto_4b

    :cond_47
    invoke-virtual {v11}, Landroidx/appcompat/view/menu/MenuItemImpl;->getNumericShortcut()C

    move-result v12

    .line 907
    .local v12, "shortcutChar":C
    :goto_4b
    if-eqz v4, :cond_52

    .line 908
    invoke-virtual {v11}, Landroidx/appcompat/view/menu/MenuItemImpl;->getAlphabeticModifiers()I

    move-result v13

    goto :goto_56

    :cond_52
    invoke-virtual {v11}, Landroidx/appcompat/view/menu/MenuItemImpl;->getNumericModifiers()I

    move-result v13

    .line 909
    .local v13, "shortcutModifiers":I
    :goto_56
    const v14, 0x1100f

    and-int v15, v5, v14

    and-int/2addr v14, v13

    const/16 v16, 0x0

    if-ne v15, v14, :cond_62

    const/4 v14, 0x1

    goto :goto_63

    :cond_62
    const/4 v14, 0x0

    .line 911
    .local v14, "isModifiersExactMatch":Z
    :goto_63
    if-eqz v14, :cond_86

    if-eqz v12, :cond_86

    iget-object v15, v6, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v15, v15, v16

    if-eq v12, v15, :cond_7d

    iget-object v15, v6, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/16 v16, 0x2

    aget-char v15, v15, v16

    if-eq v12, v15, :cond_7d

    if-eqz v4, :cond_86

    const/16 v15, 0x8

    if-ne v12, v15, :cond_86

    if-ne v2, v8, :cond_86

    .line 916
    :cond_7d
    invoke-virtual {v11}, Landroidx/appcompat/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v15

    if-eqz v15, :cond_86

    .line 917
    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 900
    .end local v11    # "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    .end local v12    # "shortcutChar":C
    .end local v13    # "shortcutModifiers":I
    .end local v14    # "isModifiersExactMatch":Z
    :cond_86
    add-int/lit8 v10, v10, 0x1

    goto :goto_27

    .line 920
    .end local v10    # "i":I
    :cond_89
    return-void
.end method

.method public flagActionItems()V
    .registers 7

    .line 1169
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 1171
    .local v0, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/appcompat/view/menu/MenuItemImpl;>;"
    iget-boolean v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    if-nez v1, :cond_9

    .line 1172
    return-void

    .line 1176
    :cond_9
    const/4 v1, 0x0

    .line 1177
    .local v1, "flagged":Z
    iget-object v2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 1178
    .local v3, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroidx/appcompat/view/menu/MenuPresenter;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/MenuPresenter;

    .line 1179
    .local v4, "presenter":Landroidx/appcompat/view/menu/MenuPresenter;
    if-nez v4, :cond_2a

    .line 1180
    iget-object v5, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 1182
    :cond_2a
    invoke-interface {v4}, Landroidx/appcompat/view/menu/MenuPresenter;->flagActionItems()Z

    move-result v5

    or-int/2addr v1, v5

    .line 1184
    .end local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroidx/appcompat/view/menu/MenuPresenter;>;"
    .end local v4    # "presenter":Landroidx/appcompat/view/menu/MenuPresenter;
    :goto_2f
    goto :goto_10

    .line 1186
    :cond_30
    if-eqz v1, :cond_5e

    .line 1187
    iget-object v2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1188
    iget-object v2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1189
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1190
    .local v2, "itemsSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_41
    if-ge v3, v2, :cond_5d

    .line 1191
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 1192
    .local v4, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v5

    if-eqz v5, :cond_55

    .line 1193
    iget-object v5, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    .line 1195
    :cond_55
    iget-object v5, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1190
    .end local v4    # "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    :goto_5a
    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    .line 1198
    .end local v2    # "itemsSize":I
    .end local v3    # "i":I
    :cond_5d
    goto :goto_71

    .line 1201
    :cond_5e
    iget-object v2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1202
    iget-object v2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1203
    iget-object v2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1205
    :goto_71
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 1206
    return-void
.end method

.method public getActionItems()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .line 1209
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->flagActionItems()V

    .line 1210
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getActionViewStatesKey()Ljava/lang/String;
    .registers 2

    .line 436
    const-string v0, "android:menu:actionviewstates"

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 836
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getExpandedItem()Landroidx/appcompat/view/menu/MenuItemImpl;
    .registers 2

    .line 1401
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public getHeaderIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1322
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 1318
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getHeaderView()Landroid/view/View;
    .registers 2

    .line 1326
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    return-object v0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .registers 3
    .param p1, "index"    # I

    .line 758
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    return-object v0
.end method

.method public getNonActionItems()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .line 1214
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->flagActionItems()V

    .line 1215
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method getOptionalIconsVisible()Z
    .registers 2

    .line 1353
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    return v0
.end method

.method getResources()Landroid/content/res/Resources;
    .registers 2

    .line 832
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getRootMenu()Landroidx/appcompat/view/menu/MenuBuilder;
    .registers 1

    .line 1334
    return-object p0
.end method

.method public getVisibleItems()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .line 1124
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    return-object v0

    .line 1127
    :cond_7
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1129
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1131
    .local v0, "itemsSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    if-ge v1, v0, :cond_2b

    .line 1132
    iget-object v2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 1133
    .local v2, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_28

    iget-object v3, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1131
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 1136
    .end local v1    # "i":I
    .end local v2    # "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_2b
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 1137
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 1139
    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    return-object v1
.end method

.method public hasVisibleItems()Z
    .registers 6

    .line 681
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mOverrideVisibleItems:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 682
    return v1

    .line 685
    :cond_6
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v0

    .line 687
    .local v0, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v0, :cond_1f

    .line 688
    iget-object v3, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 689
    .local v3, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 690
    return v1

    .line 687
    .end local v3    # "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 694
    .end local v2    # "i":I
    :cond_1f
    const/4 v1, 0x0

    return v1
.end method

.method public isGroupDividerEnabled()Z
    .registers 2

    .line 520
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mGroupDividerEnabled:Z

    return v0
.end method

.method isQwertyMode()Z
    .registers 2

    .line 798
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mQwertyMode:Z

    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 763
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/MenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isShortcutsVisible()Z
    .registers 2

    .line 828
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mShortcutsVisible:Z

    return v0
.end method

.method onItemActionRequestChanged(Landroidx/appcompat/view/menu/MenuItemImpl;)V
    .registers 3
    .param p1, "item"    # Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 1118
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 1119
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1120
    return-void
.end method

.method onItemVisibleChanged(Landroidx/appcompat/view/menu/MenuItemImpl;)V
    .registers 3
    .param p1, "item"    # Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 1107
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 1108
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1109
    return-void
.end method

.method public onItemsChanged(Z)V
    .registers 4
    .param p1, "structureChanged"    # Z

    .line 1063
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    const/4 v1, 0x1

    if-nez v0, :cond_f

    .line 1064
    if-eqz p1, :cond_b

    .line 1065
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 1066
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 1069
    :cond_b
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->dispatchPresenterUpdate(Z)V

    goto :goto_15

    .line 1071
    :cond_f
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 1072
    if-eqz p1, :cond_15

    .line 1073
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mStructureChangedWhileDispatchPrevented:Z

    .line 1076
    :cond_15
    :goto_15
    return-void
.end method

.method public performIdentifierAction(II)Z
    .registers 4
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .line 977
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public performItemAction(Landroid/view/MenuItem;I)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "flags"    # I

    .line 981
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/MenuPresenter;I)Z

    move-result v0

    return v0
.end method

.method public performItemAction(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/MenuPresenter;I)Z
    .registers 11
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "preferredPresenter"    # Landroidx/appcompat/view/menu/MenuPresenter;
    .param p3, "flags"    # I

    .line 985
    move-object v0, p1

    check-cast v0, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 987
    .local v0, "itemImpl":Landroidx/appcompat/view/menu/MenuItemImpl;
    const/4 v1, 0x0

    if-eqz v0, :cond_73

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_73

    .line 991
    :cond_d
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->invoke()Z

    move-result v2

    .line 993
    .local v2, "invoked":Z
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getSupportActionProvider()Landroidx/core/view/ActionProvider;

    move-result-object v3

    .line 994
    .local v3, "provider":Landroidx/core/view/ActionProvider;
    const/4 v4, 0x1

    if-eqz v3, :cond_20

    invoke-virtual {v3}, Landroidx/core/view/ActionProvider;->hasSubMenu()Z

    move-result v5

    if-eqz v5, :cond_20

    const/4 v5, 0x1

    goto :goto_21

    :cond_20
    const/4 v5, 0x0

    .line 995
    .local v5, "providerHasSubMenu":Z
    :goto_21
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v6

    if-eqz v6, :cond_32

    .line 996
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->expandActionView()Z

    move-result v1

    or-int/2addr v2, v1

    .line 997
    if-eqz v2, :cond_72

    .line 998
    invoke-virtual {p0, v4}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    goto :goto_72

    .line 1000
    :cond_32
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v6

    if-nez v6, :cond_43

    if-eqz v5, :cond_3b

    goto :goto_43

    .line 1019
    :cond_3b
    and-int/lit8 v1, p3, 0x1

    if-nez v1, :cond_72

    .line 1020
    invoke-virtual {p0, v4}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    goto :goto_72

    .line 1001
    :cond_43
    :goto_43
    and-int/lit8 v6, p3, 0x4

    if-nez v6, :cond_4a

    .line 1003
    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    .line 1006
    :cond_4a
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v1

    if-nez v1, :cond_5c

    .line 1007
    new-instance v1, Landroidx/appcompat/view/menu/SubMenuBuilder;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6, p0, v0}, Landroidx/appcompat/view/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->setSubMenu(Landroidx/appcompat/view/menu/SubMenuBuilder;)V

    .line 1010
    :cond_5c
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/SubMenuBuilder;

    .line 1011
    .local v1, "subMenu":Landroidx/appcompat/view/menu/SubMenuBuilder;
    if-eqz v5, :cond_67

    .line 1012
    invoke-virtual {v3, v1}, Landroidx/core/view/ActionProvider;->onPrepareSubMenu(Landroid/view/SubMenu;)V

    .line 1014
    :cond_67
    invoke-direct {p0, v1, p2}, Landroidx/appcompat/view/menu/MenuBuilder;->dispatchSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;Landroidx/appcompat/view/menu/MenuPresenter;)Z

    move-result v6

    or-int/2addr v2, v6

    .line 1015
    if-nez v2, :cond_71

    .line 1016
    invoke-virtual {p0, v4}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    .line 1018
    .end local v1    # "subMenu":Landroidx/appcompat/view/menu/SubMenuBuilder;
    :cond_71
    nop

    .line 1024
    :cond_72
    :goto_72
    return v2

    .line 988
    .end local v2    # "invoked":Z
    .end local v3    # "provider":Landroidx/core/view/ActionProvider;
    .end local v5    # "providerHasSubMenu":Z
    :cond_73
    :goto_73
    return v1
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .registers 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "flags"    # I

    .line 865
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/MenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v0

    .line 867
    .local v0, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    const/4 v1, 0x0

    .line 869
    .local v1, "handled":Z
    if-eqz v0, :cond_b

    .line 870
    invoke-virtual {p0, v0, p3}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v1

    .line 873
    :cond_b
    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_13

    .line 874
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    .line 877
    :cond_13
    return v1
.end method

.method public removeGroup(I)V
    .registers 6
    .param p1, "group"    # I

    .line 560
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->findGroupIndex(I)I

    move-result v0

    .line 562
    .local v0, "i":I
    if-ltz v0, :cond_2a

    .line 563
    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    .line 564
    .local v1, "maxRemovable":I
    const/4 v2, 0x0

    .line 565
    .local v2, "numRemoved":I
    :goto_e
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "numRemoved":I
    .local v3, "numRemoved":I
    if-ge v2, v1, :cond_26

    iget-object v2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->getGroupId()I

    move-result v2

    if-ne v2, p1, :cond_26

    .line 567
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    move v2, v3

    goto :goto_e

    .line 571
    :cond_26
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 573
    .end local v1    # "maxRemovable":I
    .end local v3    # "numRemoved":I
    :cond_2a
    return-void
.end method

.method public removeItem(I)V
    .registers 4
    .param p1, "id"    # I

    .line 555
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->findItemIndex(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    .line 556
    return-void
.end method

.method public removeItemAt(I)V
    .registers 3
    .param p1, "index"    # I

    .line 594
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    .line 595
    return-void
.end method

.method public removeMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;)V
    .registers 6
    .param p1, "presenter"    # Landroidx/appcompat/view/menu/MenuPresenter;

    .line 281
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 282
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroidx/appcompat/view/menu/MenuPresenter;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/MenuPresenter;

    .line 283
    .local v2, "item":Landroidx/appcompat/view/menu/MenuPresenter;
    if-eqz v2, :cond_1c

    if-ne v2, p1, :cond_21

    .line 284
    :cond_1c
    iget-object v3, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 286
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroidx/appcompat/view/menu/MenuPresenter;>;"
    .end local v2    # "item":Landroidx/appcompat/view/menu/MenuPresenter;
    :cond_21
    goto :goto_6

    .line 287
    :cond_22
    return-void
.end method

.method public restoreActionViewStates(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "states"    # Landroid/os/Bundle;

    .line 406
    if-nez p1, :cond_3

    .line 407
    return-void

    .line 410
    :cond_3
    nop

    .line 411
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v0

    .line 410
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 413
    .local v0, "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v1

    .line 414
    .local v1, "itemCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    if-ge v2, v1, :cond_39

    .line 415
    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 416
    .local v3, "item":Landroid/view/MenuItem;
    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    .line 417
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_27

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_27

    .line 418
    invoke-virtual {v4, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 420
    :cond_27
    invoke-interface {v3}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v5

    if-eqz v5, :cond_36

    .line 421
    invoke-interface {v3}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/view/menu/SubMenuBuilder;

    .line 422
    .local v5, "subMenu":Landroidx/appcompat/view/menu/SubMenuBuilder;
    invoke-virtual {v5, p1}, Landroidx/appcompat/view/menu/SubMenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    .line 414
    .end local v3    # "item":Landroid/view/MenuItem;
    .end local v4    # "v":Landroid/view/View;
    .end local v5    # "subMenu":Landroidx/appcompat/view/menu/SubMenuBuilder;
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 426
    .end local v2    # "i":I
    :cond_39
    const-string v2, "android:menu:expandedactionview"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 427
    .local v2, "expandedId":I
    if-lez v2, :cond_4a

    .line 428
    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 429
    .local v3, "itemToExpand":Landroid/view/MenuItem;
    if-eqz v3, :cond_4a

    .line 430
    invoke-interface {v3}, Landroid/view/MenuItem;->expandActionView()Z

    .line 433
    .end local v3    # "itemToExpand":Landroid/view/MenuItem;
    :cond_4a
    return-void
.end method

.method public restorePresenterStates(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "state"    # Landroid/os/Bundle;

    .line 375
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 376
    return-void
.end method

.method public saveActionViewStates(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "outStates"    # Landroid/os/Bundle;

    .line 379
    const/4 v0, 0x0

    .line 381
    .local v0, "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v1

    .line 382
    .local v1, "itemCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v1, :cond_45

    .line 383
    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 384
    .local v3, "item":Landroid/view/MenuItem;
    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    .line 385
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_33

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_33

    .line 386
    if-nez v0, :cond_21

    .line 387
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    move-object v0, v5

    .line 389
    :cond_21
    invoke-virtual {v4, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 390
    invoke-interface {v3}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v5

    if-eqz v5, :cond_33

    .line 391
    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    const-string v6, "android:menu:expandedactionview"

    invoke-virtual {p1, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 394
    :cond_33
    invoke-interface {v3}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v5

    if-eqz v5, :cond_42

    .line 395
    invoke-interface {v3}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/view/menu/SubMenuBuilder;

    .line 396
    .local v5, "subMenu":Landroidx/appcompat/view/menu/SubMenuBuilder;
    invoke-virtual {v5, p1}, Landroidx/appcompat/view/menu/SubMenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    .line 382
    .end local v3    # "item":Landroid/view/MenuItem;
    .end local v4    # "v":Landroid/view/View;
    .end local v5    # "subMenu":Landroidx/appcompat/view/menu/SubMenuBuilder;
    :cond_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 400
    .end local v2    # "i":I
    :cond_45
    if-eqz v0, :cond_4e

    .line 401
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 403
    :cond_4e
    return-void
.end method

.method public savePresenterStates(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 371
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 372
    return-void
.end method

.method public setCallback(Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V
    .registers 2
    .param p1, "cb"    # Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    .line 440
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    .line 441
    return-void
.end method

.method public setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 2
    .param p1, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1345
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1346
    return-void
.end method

.method public setDefaultShowAsAction(I)Landroidx/appcompat/view/menu/MenuBuilder;
    .registers 2
    .param p1, "defaultShowAsAction"    # I

    .line 245
    iput p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    .line 246
    return-object p0
.end method

.method setExclusiveItemChecked(Landroid/view/MenuItem;)V
    .registers 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 619
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    .line 621
    .local v0, "group":I
    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 622
    .local v1, "N":I
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 623
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v1, :cond_37

    .line 624
    iget-object v3, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 625
    .local v3, "curItem":Landroidx/appcompat/view/menu/MenuItemImpl;
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->getGroupId()I

    move-result v4

    if-ne v4, v0, :cond_34

    .line 626
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v4

    if-nez v4, :cond_25

    goto :goto_34

    .line 627
    :cond_25
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v4

    if-nez v4, :cond_2c

    goto :goto_34

    .line 630
    :cond_2c
    if-ne v3, p1, :cond_30

    const/4 v4, 0x1

    goto :goto_31

    :cond_30
    const/4 v4, 0x0

    :goto_31
    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->setCheckedInt(Z)V

    .line 623
    .end local v3    # "curItem":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_34
    :goto_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 633
    .end local v2    # "i":I
    :cond_37
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 634
    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .registers 8
    .param p1, "group"    # I
    .param p2, "checkable"    # Z
    .param p3, "exclusive"    # Z

    .line 638
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 640
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_20

    .line 641
    iget-object v2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 642
    .local v2, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_1d

    .line 643
    invoke-virtual {v2, p3}, Landroidx/appcompat/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 644
    invoke-virtual {v2, p2}, Landroidx/appcompat/view/menu/MenuItemImpl;->setCheckable(Z)Landroid/view/MenuItem;

    .line 640
    .end local v2    # "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 647
    .end local v1    # "i":I
    :cond_20
    return-void
.end method

.method public setGroupDividerEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 516
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mGroupDividerEnabled:Z

    .line 517
    return-void
.end method

.method public setGroupEnabled(IZ)V
    .registers 7
    .param p1, "group"    # I
    .param p2, "enabled"    # Z

    .line 669
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 671
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1d

    .line 672
    iget-object v2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 673
    .local v2, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_1a

    .line 674
    invoke-virtual {v2, p2}, Landroidx/appcompat/view/menu/MenuItemImpl;->setEnabled(Z)Landroid/view/MenuItem;

    .line 671
    .end local v2    # "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 677
    .end local v1    # "i":I
    :cond_1d
    return-void
.end method

.method public setGroupVisible(IZ)V
    .registers 8
    .param p1, "group"    # I
    .param p2, "visible"    # Z

    .line 651
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 656
    .local v0, "N":I
    const/4 v1, 0x0

    .line 657
    .local v1, "changedAtLeastOneItem":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_22

    .line 658
    iget-object v3, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 659
    .local v3, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_1f

    .line 660
    invoke-virtual {v3, p2}, Landroidx/appcompat/view/menu/MenuItemImpl;->setVisibleInt(Z)Z

    move-result v4

    if-eqz v4, :cond_1f

    const/4 v1, 0x1

    .line 657
    .end local v3    # "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 664
    .end local v2    # "i":I
    :cond_22
    if-eqz v1, :cond_28

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 665
    :cond_28
    return-void
.end method

.method protected setHeaderIconInt(I)Landroidx/appcompat/view/menu/MenuBuilder;
    .registers 8
    .param p1, "iconRes"    # I

    .line 1301
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1302
    return-object p0
.end method

.method protected setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/view/menu/MenuBuilder;
    .registers 8
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 1289
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1290
    return-object p0
.end method

.method protected setHeaderTitleInt(I)Landroidx/appcompat/view/menu/MenuBuilder;
    .registers 8
    .param p1, "titleRes"    # I

    .line 1277
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1278
    return-object p0
.end method

.method protected setHeaderTitleInt(Ljava/lang/CharSequence;)Landroidx/appcompat/view/menu/MenuBuilder;
    .registers 8
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 1265
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1266
    return-object p0
.end method

.method protected setHeaderViewInt(Landroid/view/View;)Landroidx/appcompat/view/menu/MenuBuilder;
    .registers 8
    .param p1, "view"    # Landroid/view/View;

    .line 1313
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1314
    return-object p0
.end method

.method public setOptionalIconsVisible(Z)V
    .registers 2
    .param p1, "visible"    # Z

    .line 1349
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    .line 1350
    return-void
.end method

.method public setOverrideVisibleItems(Z)V
    .registers 2
    .param p1, "override"    # Z

    .line 1410
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mOverrideVisibleItems:Z

    .line 1411
    return-void
.end method

.method public setQwertyMode(Z)V
    .registers 3
    .param p1, "isQwerty"    # Z

    .line 768
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mQwertyMode:Z

    .line 770
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 771
    return-void
.end method

.method public setShortcutsVisible(Z)V
    .registers 3
    .param p1, "shortcutsVisible"    # Z

    .line 809
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mShortcutsVisible:Z

    if-ne v0, p1, :cond_5

    .line 810
    return-void

    .line 813
    :cond_5
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->setShortcutsVisibleInner(Z)V

    .line 814
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 815
    return-void
.end method

.method public size()I
    .registers 2

    .line 753
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public startDispatchingItemsChanged()V
    .registers 3

    .line 1092
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 1094
    iget-boolean v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    if-eqz v1, :cond_e

    .line 1095
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 1096
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mStructureChangedWhileDispatchPrevented:Z

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1098
    :cond_e
    return-void
.end method

.method public stopDispatchingItemsChanged()V
    .registers 2

    .line 1084
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    if-nez v0, :cond_c

    .line 1085
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 1086
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 1087
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mStructureChangedWhileDispatchPrevented:Z

    .line 1089
    :cond_c
    return-void
.end method
