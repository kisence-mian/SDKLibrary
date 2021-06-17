.class Landroidx/appcompat/app/AppCompatDelegateImpl$3;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl;->createSubDecor()Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V
    .registers 2
    .param p1, "this$0"    # Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 780
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$3;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .registers 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Landroidx/core/view/WindowInsetsCompat;

    .line 784
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    .line 785
    .local v0, "top":I
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$3;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->updateStatusGuard(I)I

    move-result v1

    .line 787
    .local v1, "newTop":I
    if-eq v0, v1, :cond_1d

    .line 788
    nop

    .line 789
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v2

    .line 791
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v3

    .line 792
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v4

    .line 788
    invoke-virtual {p2, v2, v1, v3, v4}, Landroidx/core/view/WindowInsetsCompat;->replaceSystemWindowInsets(IIII)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p2

    .line 796
    :cond_1d
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v2

    return-object v2
.end method
