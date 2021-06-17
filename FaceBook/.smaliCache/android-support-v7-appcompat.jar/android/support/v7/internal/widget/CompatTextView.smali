.class public Landroid/support/v7/internal/widget/CompatTextView;
.super Landroid/widget/TextView;
.source "CompatTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/internal/widget/CompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/internal/widget/CompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    const/4 v0, 0x0

    .line 49
    .local v0, "allCaps":Z
    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->CompatTextView:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 51
    .local v1, "style":Landroid/content/res/TypedArray;
    sget v3, Landroid/support/v7/appcompat/R$styleable;->CompatTextView_textAllCaps:I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 52
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    if-eqz v0, :cond_1e

    .line 58
    new-instance v2, Landroid/support/v7/internal/text/AllCapsTransformationMethod;

    invoke-direct {v2, p1}, Landroid/support/v7/internal/text/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/CompatTextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 60
    :cond_1e
    return-void
.end method
