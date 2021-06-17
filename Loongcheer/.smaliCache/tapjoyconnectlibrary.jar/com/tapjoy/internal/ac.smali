.class public final Lcom/tapjoy/internal/ac;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/view/Window;)I
    .registers 2

    .line 74
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 75
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 76
    iget p0, v0, Landroid/graphics/Rect;->top:I

    return p0
.end method

.method public static a(Landroid/view/Window;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    .line 33
    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 34
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 35
    invoke-virtual {p0, p1, p2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    invoke-virtual {p0, v0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 37
    return-void
.end method
