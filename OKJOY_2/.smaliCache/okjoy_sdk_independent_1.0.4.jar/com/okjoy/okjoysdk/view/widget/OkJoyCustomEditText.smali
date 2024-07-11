.class public Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source ""


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/widget/ImageView;

.field public c:Landroid/widget/EditText;

.field public d:Landroid/widget/Button;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p1, p2}, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 13

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "joy_layout_custom_edit_text"

    invoke-static {p1, v1}, Lokjoy/a/g;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->a:Landroid/view/View;

    const-string v1, "iconImageView"

    invoke-static {p1, v1}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->a:Landroid/view/View;

    const-string v1, "editText"

    invoke-static {p1, v1}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->c:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->a:Landroid/view/View;

    const-string v1, "rightButton"

    invoke-static {p1, v1}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->d:Landroid/widget/Button;

    const-class v0, Landroid/graphics/drawable/Drawable;

    const-string v1, "iconImage"

    const/4 v3, 0x0

    invoke-static {p1, p2, v1, v0, v3}, Lokjoy/a/g;->a(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_51

    iget-object v1, p0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_51
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-class v4, Ljava/lang/Boolean;

    const-string v5, "iconImageVisibility"

    invoke-static {p1, p2, v5, v4, v1}, Lokjoy/a/g;->a(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v4, p0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->b:Landroid/widget/ImageView;

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eqz v1, :cond_6a

    move v1, v6

    goto :goto_6b

    :cond_6a
    move v1, v5

    :goto_6b
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const-class v1, Ljava/lang/String;

    const-string v4, "hint"

    const-string v7, ""

    invoke-static {p1, p2, v4, v1, v7}, Lokjoy/a/g;->a(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_ac

    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v8, 0xd

    invoke-direct {v1, v8, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v8

    const/16 v9, 0x21

    invoke-virtual {v4, v1, v6, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v1, p0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->c:Landroid/widget/EditText;

    new-instance v8, Landroid/text/SpannedString;

    invoke-direct {v8, v4}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v8}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->c:Landroid/widget/EditText;

    const/16 v4, 0x6a

    const/16 v8, 0x68

    invoke-static {v4, v8, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setHintTextColor(I)V

    :cond_ac
    const-class v1, Ljava/lang/String;

    const-string v4, "inputType"

    invoke-static {p1, p2, v4, v1, v7}, Lokjoy/a/g;->a(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "phone"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c5

    iget-object v1, p0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->c:Landroid/widget/EditText;

    const/4 v2, 0x3

    :goto_c1
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_e9

    :cond_c5
    const-string v4, "text"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d0

    iget-object v1, p0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->c:Landroid/widget/EditText;

    goto :goto_c1

    :cond_d0
    const-string v2, "password"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_dd

    iget-object v1, p0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->c:Landroid/widget/EditText;

    const/16 v2, 0x81

    goto :goto_c1

    :cond_dd
    const-string v2, "number"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e9

    iget-object v1, p0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->c:Landroid/widget/EditText;

    const/4 v2, 0x2

    goto :goto_c1

    :cond_e9
    :goto_e9
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-class v2, Ljava/lang/Boolean;

    const-string v4, "buttonVisibility"

    invoke-static {p1, p2, v4, v2, v1}, Lokjoy/a/g;->a(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->d:Landroid/widget/Button;

    if-eqz v1, :cond_fe

    move v5, v6

    :cond_fe
    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    const-class v1, Landroid/graphics/drawable/Drawable;

    const-string v2, "buttonImage"

    invoke-static {p1, p2, v2, v1, v3}, Lokjoy/a/g;->a(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_112

    iget-object p2, p0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->d:Landroid/widget/Button;

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_112
    iget-object p1, p0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->c:Landroid/widget/EditText;

    new-instance p2, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText$a;

    invoke-direct {p2, p0}, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText$a;-><init>(Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public getEditText()Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->e:Ljava/lang/String;

    return-object v0
.end method

.method public setConstraintSet(Landroidx/constraintlayout/widget/ConstraintSet;)V
    .registers 2

    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setConstraintSet(Landroidx/constraintlayout/widget/ConstraintSet;)V

    const-string p1, "setConstraintSet"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    return-void
.end method

.method public setInputType(Ljava/lang/String;)V
    .registers 3

    const-string v0, "phone"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p1, p0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->c:Landroid/widget/EditText;

    const/4 v0, 0x3

    :goto_b
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_34

    :cond_f
    const-string v0, "text"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object p1, p0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->c:Landroid/widget/EditText;

    const/4 v0, 0x1

    goto :goto_b

    :cond_1b
    const-string v0, "password"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object p1, p0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->c:Landroid/widget/EditText;

    const/16 v0, 0x81

    goto :goto_b

    :cond_28
    const-string v0, "number"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_34

    iget-object p1, p0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->c:Landroid/widget/EditText;

    const/4 v0, 0x2

    goto :goto_b

    :cond_34
    :goto_34
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->e:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->c:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    return-void
.end method
