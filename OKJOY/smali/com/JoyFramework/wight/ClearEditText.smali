.class public Lcom/JoyFramework/wight/ClearEditText;
.super Landroid/widget/EditText;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Z

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/JoyFramework/wight/ClearEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 41
    const v0, 0x101006e

    invoke-direct {p0, p1, p2, v0}, Lcom/JoyFramework/wight/ClearEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    iput-object p1, p0, Lcom/JoyFramework/wight/ClearEditText;->c:Landroid/content/Context;

    .line 47
    invoke-direct {p0, p1}, Lcom/JoyFramework/wight/ClearEditText;->a(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method private a(Landroid/content/Context;F)I
    .registers 5

    .prologue
    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 69
    mul-float/2addr v0, p2

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static a(I)Landroid/view/animation/Animation;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 156
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 157
    new-instance v1, Landroid/view/animation/CycleInterpolator;

    int-to-float v2, p0

    invoke-direct {v1, v2}, Landroid/view/animation/CycleInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 158
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 159
    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/high16 v2, 0x41900000    # 18.0f

    const/4 v3, 0x0

    .line 53
    invoke-virtual {p0}, Lcom/JoyFramework/wight/ClearEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/JoyFramework/wight/ClearEditText;->a:Landroid/graphics/drawable/Drawable;

    .line 54
    iget-object v0, p0, Lcom/JoyFramework/wight/ClearEditText;->a:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_20

    .line 56
    invoke-virtual {p0}, Lcom/JoyFramework/wight/ClearEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "joy_clean_edittext"

    invoke-static {p1, v1}, Lcom/JoyFramework/d/as;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/wight/ClearEditText;->a:Landroid/graphics/drawable/Drawable;

    .line 58
    :cond_20
    iget-object v0, p0, Lcom/JoyFramework/wight/ClearEditText;->a:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1, v2}, Lcom/JoyFramework/wight/ClearEditText;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {p0, p1, v2}, Lcom/JoyFramework/wight/ClearEditText;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 60
    invoke-virtual {p0, v3}, Lcom/JoyFramework/wight/ClearEditText;->setClearIconVisible(Z)V

    .line 62
    invoke-virtual {p0, p0}, Lcom/JoyFramework/wight/ClearEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 64
    invoke-virtual {p0, p0}, Lcom/JoyFramework/wight/ClearEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 65
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 146
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/JoyFramework/wight/ClearEditText;->a(I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/JoyFramework/wight/ClearEditText;->setAnimation(Landroid/view/animation/Animation;)V

    .line 147
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    .prologue
    .line 139
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 163
    invoke-virtual {p0, v0}, Lcom/JoyFramework/wight/ClearEditText;->setFocusable(Z)V

    .line 164
    invoke-virtual {p0, v0}, Lcom/JoyFramework/wight/ClearEditText;->setFocusableInTouchMode(Z)V

    .line 165
    invoke-virtual {p0}, Lcom/JoyFramework/wight/ClearEditText;->requestFocus()Z

    .line 166
    iget-object v0, p0, Lcom/JoyFramework/wight/ClearEditText;->c:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 167
    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 168
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .prologue
    .line 134
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 99
    iput-boolean p2, p0, Lcom/JoyFramework/wight/ClearEditText;->b:Z

    .line 100
    if-eqz p2, :cond_14

    .line 101
    invoke-virtual {p0}, Lcom/JoyFramework/wight/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    invoke-virtual {p0, v0}, Lcom/JoyFramework/wight/ClearEditText;->setClearIconVisible(Z)V

    .line 105
    :goto_13
    return-void

    .line 103
    :cond_14
    invoke-virtual {p0, v0}, Lcom/JoyFramework/wight/ClearEditText;->setClearIconVisible(Z)V

    goto :goto_13
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/JoyFramework/wight/ClearEditText;->b:Z

    if-eqz v0, :cond_e

    .line 126
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_f

    const/4 v0, 0x1

    :goto_b
    invoke-virtual {p0, v0}, Lcom/JoyFramework/wight/ClearEditText;->setClearIconVisible(Z)V

    .line 128
    :cond_e
    return-void

    .line 126
    :cond_f
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/high16 v4, 0x41900000    # 18.0f

    .line 79
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_4b

    .line 80
    invoke-virtual {p0}, Lcom/JoyFramework/wight/ClearEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    if-eqz v1, :cond_4b

    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/JoyFramework/wight/ClearEditText;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/JoyFramework/wight/ClearEditText;->getTotalPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/JoyFramework/wight/ClearEditText;->c:Landroid/content/Context;

    invoke-direct {p0, v3, v4}, Lcom/JoyFramework/wight/ClearEditText;->a(Landroid/content/Context;F)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_50

    .line 83
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/JoyFramework/wight/ClearEditText;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/JoyFramework/wight/ClearEditText;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/JoyFramework/wight/ClearEditText;->c:Landroid/content/Context;

    invoke-direct {p0, v3, v4}, Lcom/JoyFramework/wight/ClearEditText;->a(Landroid/content/Context;F)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_50

    .line 85
    :goto_44
    if-eqz v0, :cond_4b

    .line 86
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/JoyFramework/wight/ClearEditText;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :cond_4b
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 83
    :cond_50
    const/4 v0, 0x0

    goto :goto_44
.end method

.method protected setClearIconVisible(Z)V
    .registers 7

    .prologue
    .line 113
    if-eqz p1, :cond_1d

    iget-object v0, p0, Lcom/JoyFramework/wight/ClearEditText;->a:Landroid/graphics/drawable/Drawable;

    .line 114
    :goto_4
    invoke-virtual {p0}, Lcom/JoyFramework/wight/ClearEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 115
    invoke-virtual {p0}, Lcom/JoyFramework/wight/ClearEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {p0}, Lcom/JoyFramework/wight/ClearEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x3

    aget-object v3, v3, v4

    .line 114
    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/JoyFramework/wight/ClearEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 116
    return-void

    .line 113
    :cond_1d
    const/4 v0, 0x0

    goto :goto_4
.end method
