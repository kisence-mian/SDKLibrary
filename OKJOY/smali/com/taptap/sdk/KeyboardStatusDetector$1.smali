.class Lcom/taptap/sdk/KeyboardStatusDetector$1;
.super Ljava/lang/Object;
.source "KeyboardStatusDetector.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/KeyboardStatusDetector;->registerView(Landroid/view/View;)Lcom/taptap/sdk/KeyboardStatusDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taptap/sdk/KeyboardStatusDetector;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/KeyboardStatusDetector;Landroid/view/View;)V
    .registers 3
    .param p1, "this$0"    # Lcom/taptap/sdk/KeyboardStatusDetector;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/taptap/sdk/KeyboardStatusDetector$1;->this$0:Lcom/taptap/sdk/KeyboardStatusDetector;

    iput-object p2, p0, Lcom/taptap/sdk/KeyboardStatusDetector$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 29
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 30
    .local v1, "r":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/taptap/sdk/KeyboardStatusDetector$1;->val$v:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 32
    iget-object v2, p0, Lcom/taptap/sdk/KeyboardStatusDetector$1;->val$v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    sub-int v0, v2, v3

    .line 33
    .local v0, "heightDiff":I
    const/16 v2, 0x64

    if-le v0, v2, :cond_3d

    .line 34
    iget-object v2, p0, Lcom/taptap/sdk/KeyboardStatusDetector$1;->this$0:Lcom/taptap/sdk/KeyboardStatusDetector;

    iget-boolean v2, v2, Lcom/taptap/sdk/KeyboardStatusDetector;->keyboardVisible:Z

    if-nez v2, :cond_3c

    .line 35
    iget-object v2, p0, Lcom/taptap/sdk/KeyboardStatusDetector$1;->this$0:Lcom/taptap/sdk/KeyboardStatusDetector;

    iput-boolean v6, v2, Lcom/taptap/sdk/KeyboardStatusDetector;->keyboardVisible:Z

    .line 36
    iget-object v2, p0, Lcom/taptap/sdk/KeyboardStatusDetector$1;->this$0:Lcom/taptap/sdk/KeyboardStatusDetector;

    # getter for: Lcom/taptap/sdk/KeyboardStatusDetector;->mVisibilityListener:Lcom/taptap/sdk/KeyboardStatusDetector$KeyboardVisibilityListener;
    invoke-static {v2}, Lcom/taptap/sdk/KeyboardStatusDetector;->access$000(Lcom/taptap/sdk/KeyboardStatusDetector;)Lcom/taptap/sdk/KeyboardStatusDetector$KeyboardVisibilityListener;

    move-result-object v2

    if-eqz v2, :cond_3c

    .line 37
    iget-object v2, p0, Lcom/taptap/sdk/KeyboardStatusDetector$1;->this$0:Lcom/taptap/sdk/KeyboardStatusDetector;

    # getter for: Lcom/taptap/sdk/KeyboardStatusDetector;->mVisibilityListener:Lcom/taptap/sdk/KeyboardStatusDetector$KeyboardVisibilityListener;
    invoke-static {v2}, Lcom/taptap/sdk/KeyboardStatusDetector;->access$000(Lcom/taptap/sdk/KeyboardStatusDetector;)Lcom/taptap/sdk/KeyboardStatusDetector$KeyboardVisibilityListener;

    move-result-object v2

    invoke-interface {v2, v6}, Lcom/taptap/sdk/KeyboardStatusDetector$KeyboardVisibilityListener;->onVisibilityChanged(Z)V

    .line 48
    :cond_3c
    :goto_3c
    return-void

    .line 41
    :cond_3d
    iget-object v2, p0, Lcom/taptap/sdk/KeyboardStatusDetector$1;->this$0:Lcom/taptap/sdk/KeyboardStatusDetector;

    iget-boolean v2, v2, Lcom/taptap/sdk/KeyboardStatusDetector;->keyboardVisible:Z

    if-eqz v2, :cond_3c

    .line 42
    iget-object v2, p0, Lcom/taptap/sdk/KeyboardStatusDetector$1;->this$0:Lcom/taptap/sdk/KeyboardStatusDetector;

    iput-boolean v5, v2, Lcom/taptap/sdk/KeyboardStatusDetector;->keyboardVisible:Z

    .line 43
    iget-object v2, p0, Lcom/taptap/sdk/KeyboardStatusDetector$1;->this$0:Lcom/taptap/sdk/KeyboardStatusDetector;

    # getter for: Lcom/taptap/sdk/KeyboardStatusDetector;->mVisibilityListener:Lcom/taptap/sdk/KeyboardStatusDetector$KeyboardVisibilityListener;
    invoke-static {v2}, Lcom/taptap/sdk/KeyboardStatusDetector;->access$000(Lcom/taptap/sdk/KeyboardStatusDetector;)Lcom/taptap/sdk/KeyboardStatusDetector$KeyboardVisibilityListener;

    move-result-object v2

    if-eqz v2, :cond_3c

    .line 44
    iget-object v2, p0, Lcom/taptap/sdk/KeyboardStatusDetector$1;->this$0:Lcom/taptap/sdk/KeyboardStatusDetector;

    # getter for: Lcom/taptap/sdk/KeyboardStatusDetector;->mVisibilityListener:Lcom/taptap/sdk/KeyboardStatusDetector$KeyboardVisibilityListener;
    invoke-static {v2}, Lcom/taptap/sdk/KeyboardStatusDetector;->access$000(Lcom/taptap/sdk/KeyboardStatusDetector;)Lcom/taptap/sdk/KeyboardStatusDetector$KeyboardVisibilityListener;

    move-result-object v2

    invoke-interface {v2, v5}, Lcom/taptap/sdk/KeyboardStatusDetector$KeyboardVisibilityListener;->onVisibilityChanged(Z)V

    goto :goto_3c
.end method
