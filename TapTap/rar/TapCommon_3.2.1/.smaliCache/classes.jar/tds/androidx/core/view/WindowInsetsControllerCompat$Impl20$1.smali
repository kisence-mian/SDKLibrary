.class Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl20$1;
.super Ljava/lang/Object;
.source "WindowInsetsControllerCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl20;->showForType(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl20;

.field final synthetic val$finalView:Landroid/view/View;


# direct methods
.method constructor <init>(Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl20;Landroid/view/View;)V
    .registers 3
    .param p1, "this$0"    # Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl20;

    .line 322
    iput-object p1, p0, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl20$1;->this$0:Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl20;

    iput-object p2, p0, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl20$1;->val$finalView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 325
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl20$1;->val$finalView:Landroid/view/View;

    .line 326
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 327
    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 328
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl20$1;->val$finalView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 330
    return-void
.end method
