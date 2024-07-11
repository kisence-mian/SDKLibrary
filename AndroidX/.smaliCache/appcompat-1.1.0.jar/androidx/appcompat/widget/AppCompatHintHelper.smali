.class Landroidx/appcompat/widget/AppCompatHintHelper;
.super Ljava/lang/Object;
.source "AppCompatHintHelper.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method static onCreateInputConnection(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/view/View;)Landroid/view/inputmethod/InputConnection;
    .registers 5
    .param p0, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "view"    # Landroid/view/View;

    .line 28
    if-eqz p0, :cond_21

    iget-object v0, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    if-nez v0, :cond_21

    .line 31
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 32
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_a
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_21

    .line 33
    instance-of v1, v0, Landroidx/appcompat/widget/WithHint;

    if-eqz v1, :cond_1c

    .line 34
    move-object v1, v0

    check-cast v1, Landroidx/appcompat/widget/WithHint;

    invoke-interface {v1}, Landroidx/appcompat/widget/WithHint;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    .line 35
    goto :goto_21

    .line 37
    :cond_1c
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_a

    .line 40
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_21
    :goto_21
    return-object p0
.end method
