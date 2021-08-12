.class public Lcom/anythink/basead/ui/AdTextView;
.super Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 22
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-direct {p0, p1}, Lcom/anythink/basead/ui/AdTextView;->a(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-direct {p0, p1}, Lcom/anythink/basead/ui/AdTextView;->a(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-direct {p0, p1}, Lcom/anythink/basead/ui/AdTextView;->a(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 4

    .line 37
    const-string v0, "myoffer_bg_banner_ad_choice"

    const-string v1, "drawable"

    invoke-static {p1, v0, v1}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/AdTextView;->setBackgroundResource(I)V

    .line 38
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/AdTextView;->setTextColor(I)V

    .line 39
    const-string v0, "AD"

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/AdTextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    const/high16 v0, 0x41000000    # 8.0f

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/AdTextView;->setTextSize(F)V

    .line 41
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/AdTextView;->setGravity(I)V

    .line 42
    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {p1, v0}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p1, v0}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;F)I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, p1, v0}, Lcom/anythink/basead/ui/AdTextView;->setPadding(IIII)V

    .line 43
    return-void
.end method
