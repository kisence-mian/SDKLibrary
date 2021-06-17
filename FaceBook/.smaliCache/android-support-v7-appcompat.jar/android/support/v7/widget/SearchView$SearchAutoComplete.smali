.class public Landroid/support/v7/widget/SearchView$SearchAutoComplete;
.super Landroid/widget/AutoCompleteTextView;
.source "SearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchAutoComplete"
.end annotation


# instance fields
.field private final POPUP_WINDOW_ATTRS:[I

.field private mSearchView:Landroid/support/v7/widget/SearchView;

.field private mThreshold:I

.field private final mTintManager:Landroid/support/v7/internal/widget/TintManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 1620
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1621
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 1624
    const v0, 0x101006b

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1625
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 1628
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1610
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x1010176

    const/4 v2, 0x0

    aput v1, v0, v2

    iput-object v0, p0, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->POPUP_WINDOW_ATTRS:[I

    .line 1629
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getThreshold()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->mThreshold:I

    .line 1631
    invoke-static {p1, p2, v0, p3, v2}, Landroid/support/v7/internal/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/internal/widget/TintTypedArray;

    move-result-object v0

    .line 1633
    .local v0, "a":Landroid/support/v7/internal/widget/TintTypedArray;
    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1634
    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1636
    :cond_25
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/TintTypedArray;->recycle()V

    .line 1639
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/TintTypedArray;->getTintManager()Landroid/support/v7/internal/widget/TintManager;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->mTintManager:Landroid/support/v7/internal/widget/TintManager;

    .line 1640
    return-void
.end method

.method static synthetic access$1700(Landroid/support/v7/widget/SearchView$SearchAutoComplete;)Z
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    .line 1608
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->isEmpty()Z

    move-result v0

    return v0
.end method

.method private isEmpty()Z
    .registers 2

    .line 1661
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method


# virtual methods
.method public enoughToFilter()Z
    .registers 2

    .line 1714
    iget v0, p0, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->mThreshold:I

    if-lez v0, :cond_d

    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 5
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 1704
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1705
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->mSearchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->onTextFocusChanged()V

    .line 1706
    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1719
    const/4 v0, 0x4

    if-ne p1, v0, :cond_41

    .line 1722
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1a

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1a

    .line 1723
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 1724
    .local v0, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_19

    .line 1725
    invoke-virtual {v0, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 1727
    :cond_19
    return v1

    .line 1728
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_1a
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_41

    .line 1729
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 1730
    .restart local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_29

    .line 1731
    invoke-virtual {v0, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 1733
    :cond_29
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_41

    .line 1734
    iget-object v2, p0, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->mSearchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v2}, Landroid/support/v7/widget/SearchView;->clearFocus()V

    .line 1735
    iget-object v2, p0, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->mSearchView:Landroid/support/v7/widget/SearchView;

    const/4 v3, 0x0

    # invokes: Landroid/support/v7/widget/SearchView;->setImeVisibility(Z)V
    invoke-static {v2, v3}, Landroid/support/v7/widget/SearchView;->access$2200(Landroid/support/v7/widget/SearchView;Z)V

    .line 1736
    return v1

    .line 1740
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_41
    invoke-super {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .registers 5
    .param p1, "hasWindowFocus"    # Z

    .line 1688
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onWindowFocusChanged(Z)V

    .line 1690
    if-eqz p1, :cond_33

    iget-object v0, p0, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->mSearchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getVisibility()I

    move-result v0

    if-nez v0, :cond_33

    .line 1691
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1693
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1696
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v7/widget/SearchView;->isLandscapeMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 1697
    sget-object v1, Landroid/support/v7/widget/SearchView;->HIDDEN_METHOD_INVOKER:Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->ensureImeVisible(Landroid/widget/AutoCompleteTextView;Z)V

    .line 1700
    .end local v0    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_33
    return-void
.end method

.method public performCompletion()V
    .registers 1

    .line 1680
    return-void
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 1670
    return-void
.end method

.method public setDropDownBackgroundResource(I)V
    .registers 3
    .param p1, "id"    # I

    .line 1654
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->mTintManager:Landroid/support/v7/internal/widget/TintManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/TintManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1655
    return-void
.end method

.method setSearchView(Landroid/support/v7/widget/SearchView;)V
    .registers 2
    .param p1, "searchView"    # Landroid/support/v7/widget/SearchView;

    .line 1643
    iput-object p1, p0, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->mSearchView:Landroid/support/v7/widget/SearchView;

    .line 1644
    return-void
.end method

.method public setThreshold(I)V
    .registers 2
    .param p1, "threshold"    # I

    .line 1648
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 1649
    iput p1, p0, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->mThreshold:I

    .line 1650
    return-void
.end method
