.class Lcom/kwad/sdk/b/f/b$f;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/b/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/b/f/b;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/b/f/b;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/b/f/b$f;->a:Lcom/kwad/sdk/b/f/b;

    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method

.method private a()Z
    .registers 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/kwad/sdk/b/f/b$f;->a:Lcom/kwad/sdk/b/f/b;

    invoke-static {v1}, Lcom/kwad/sdk/b/f/b;->a(Lcom/kwad/sdk/b/f/b;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/kwad/sdk/b/f/b$f;->a:Lcom/kwad/sdk/b/f/b;

    invoke-static {v1}, Lcom/kwad/sdk/b/f/b;->a(Lcom/kwad/sdk/b/f/b;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    if-le v1, v0, :cond_16

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 6

    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->obtain()Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    move-result-object v0

    invoke-direct {p0}, Lcom/kwad/sdk/b/f/b$f;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setScrollable(Z)V

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_46

    iget-object v1, p0, Lcom/kwad/sdk/b/f/b$f;->a:Lcom/kwad/sdk/b/f/b;

    invoke-static {v1}, Lcom/kwad/sdk/b/f/b;->a(Lcom/kwad/sdk/b/f/b;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/kwad/sdk/b/f/b$f;->a:Lcom/kwad/sdk/b/f/b;

    invoke-static {v1}, Lcom/kwad/sdk/b/f/b;->a(Lcom/kwad/sdk/b/f/b;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setItemCount(I)V

    iget-object v1, p0, Lcom/kwad/sdk/b/f/b$f;->a:Lcom/kwad/sdk/b/f/b;

    invoke-static {v1}, Lcom/kwad/sdk/b/f/b;->b(Lcom/kwad/sdk/b/f/b;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setFromIndex(I)V

    iget-object v1, p0, Lcom/kwad/sdk/b/f/b$f;->a:Lcom/kwad/sdk/b/f/b;

    invoke-static {v1}, Lcom/kwad/sdk/b/f/b;->b(Lcom/kwad/sdk/b/f/b;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setToIndex(I)V

    :cond_46
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    const-class v0, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/kwad/sdk/b/f/b$f;->a()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b$f;->a:Lcom/kwad/sdk/b/f/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/b/f/b;->c(I)Z

    move-result v0

    if-eqz v0, :cond_21

    const/16 v0, 0x1000

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    :cond_21
    iget-object v0, p0, Lcom/kwad/sdk/b/f/b$f;->a:Lcom/kwad/sdk/b/f/b;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/b/f/b;->c(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/16 v0, 0x2000

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    :cond_2f
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 8

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_9

    :goto_8
    return v0

    :cond_9
    const/16 v2, 0x1000

    if-eq p2, v2, :cond_2a

    const/16 v2, 0x2000

    if-eq p2, v2, :cond_13

    move v0, v1

    goto :goto_8

    :cond_13
    iget-object v2, p0, Lcom/kwad/sdk/b/f/b$f;->a:Lcom/kwad/sdk/b/f/b;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/kwad/sdk/b/f/b;->c(I)Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v1, p0, Lcom/kwad/sdk/b/f/b$f;->a:Lcom/kwad/sdk/b/f/b;

    invoke-static {v1}, Lcom/kwad/sdk/b/f/b;->b(Lcom/kwad/sdk/b/f/b;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/kwad/sdk/b/f/b;->setCurrentItem(I)V

    goto :goto_8

    :cond_28
    move v0, v1

    goto :goto_8

    :cond_2a
    iget-object v2, p0, Lcom/kwad/sdk/b/f/b$f;->a:Lcom/kwad/sdk/b/f/b;

    invoke-virtual {v2, v0}, Lcom/kwad/sdk/b/f/b;->c(I)Z

    move-result v2

    if-eqz v2, :cond_3e

    iget-object v1, p0, Lcom/kwad/sdk/b/f/b$f;->a:Lcom/kwad/sdk/b/f/b;

    invoke-static {v1}, Lcom/kwad/sdk/b/f/b;->b(Lcom/kwad/sdk/b/f/b;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/kwad/sdk/b/f/b;->setCurrentItem(I)V

    goto :goto_8

    :cond_3e
    move v0, v1

    goto :goto_8
.end method
