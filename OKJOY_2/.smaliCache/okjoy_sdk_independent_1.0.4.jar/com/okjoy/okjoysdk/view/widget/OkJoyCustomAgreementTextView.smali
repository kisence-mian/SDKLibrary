.class public Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomAgreementTextView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source ""


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/widget/Button;

.field public c:Landroid/widget/TextView;

.field public d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomAgreementTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomAgreementTextView;->d:Z

    invoke-virtual {p0, p1, p2}, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomAgreementTextView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a(Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomAgreementTextView;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomAgreementTextView;->d:Z

    return p1
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "joy_textview_custom_agreement"

    invoke-static {p1, v1}, Lokjoy/a/g;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomAgreementTextView;->a:Landroid/view/View;

    const-string v1, "agreeButton"

    invoke-static {p1, v1}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomAgreementTextView;->b:Landroid/widget/Button;

    iget-object v0, p0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomAgreementTextView;->a:Landroid/view/View;

    const-string v1, "textView"

    invoke-static {p1, v1}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomAgreementTextView;->c:Landroid/widget/TextView;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-class v1, Ljava/lang/Boolean;

    const-string v2, "isAgree"

    invoke-static {p1, p2, v2, v1, v0}, Lokjoy/a/g;->a(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomAgreementTextView;->d:Z

    const-string v0, "joy_btn_agree_selected"

    invoke-static {p1, v0}, Lokjoy/a/g;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-boolean v1, p0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomAgreementTextView;->d:Z

    if-nez v1, :cond_51

    const-string v0, "joy_btn_agree_normal"

    invoke-static {p1, v0}, Lokjoy/a/g;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    :cond_51
    iget-object v1, p0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomAgreementTextView;->b:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomAgreementTextView;->b:Landroid/widget/Button;

    new-instance v1, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomAgreementTextView$a;

    invoke-direct {v1, p0, p1}, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomAgreementTextView$a;-><init>(Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomAgreementTextView;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-class v0, Ljava/lang/String;

    const-string v1, "text"

    const-string v2, ""

    invoke-static {p1, p2, v1, v0, v2}, Lokjoy/a/g;->a(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomAgreementTextView;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomAgreementTextView;->c:Landroid/widget/TextView;

    const-string v1, "#000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    const-string v2, "textSize"

    invoke-static {p1, p2, v2, v1, v0}, Lokjoy/a/g;->a(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iget-object p2, p0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomAgreementTextView;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextSize(F)V

    return-void
.end method
