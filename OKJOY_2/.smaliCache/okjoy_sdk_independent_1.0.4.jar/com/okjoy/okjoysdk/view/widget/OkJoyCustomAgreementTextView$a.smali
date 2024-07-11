.class public Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomAgreementTextView$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomAgreementTextView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomAgreementTextView;


# direct methods
.method public constructor <init>(Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomAgreementTextView;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomAgreementTextView$a;->b:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomAgreementTextView;

    iput-object p2, p0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomAgreementTextView$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomAgreementTextView$a;->b:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomAgreementTextView;

    .line 1
    iget-boolean v0, p1, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomAgreementTextView;->d:Z

    xor-int/lit8 v0, v0, 0x1

    .line 2
    invoke-static {p1, v0}, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomAgreementTextView;->a(Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomAgreementTextView;Z)Z

    iget-object p1, p0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomAgreementTextView$a;->a:Landroid/content/Context;

    const-string v0, "joy_btn_agree_normal"

    invoke-static {p1, v0}, Lokjoy/a/g;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomAgreementTextView$a;->b:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomAgreementTextView;

    .line 3
    iget-boolean v0, v0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomAgreementTextView;->d:Z

    if-eqz v0, :cond_1f

    .line 4
    iget-object p1, p0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomAgreementTextView$a;->a:Landroid/content/Context;

    const-string v0, "joy_btn_agree_selected"

    invoke-static {p1, v0}, Lokjoy/a/g;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    :cond_1f
    iget-object v0, p0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomAgreementTextView$a;->b:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomAgreementTextView;

    .line 5
    iget-object v0, v0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomAgreementTextView;->b:Landroid/widget/Button;

    .line 6
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    return-void
.end method
