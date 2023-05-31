.class Lcom/JoyFramework/module/point/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/d/e$a;


# instance fields
.field final synthetic a:Lcom/JoyFramework/module/point/c;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/point/c;)V
    .registers 2

    .prologue
    .line 594
    iput-object p1, p0, Lcom/JoyFramework/module/point/k;->a:Lcom/JoyFramework/module/point/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 598
    iget-object v0, p0, Lcom/JoyFramework/module/point/k;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v0}, Lcom/JoyFramework/module/point/c;->m(Lcom/JoyFramework/module/point/c;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/module/point/k;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v1}, Lcom/JoyFramework/module/point/c;->n(Lcom/JoyFramework/module/point/c;)I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 599
    iget-object v0, p0, Lcom/JoyFramework/module/point/k;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v0}, Lcom/JoyFramework/module/point/c;->o(Lcom/JoyFramework/module/point/c;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/module/point/k;->a:Lcom/JoyFramework/module/point/c;

    iget-object v2, p0, Lcom/JoyFramework/module/point/k;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v2}, Lcom/JoyFramework/module/point/c;->m(Lcom/JoyFramework/module/point/c;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 600
    iget-object v0, p0, Lcom/JoyFramework/module/point/k;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v0}, Lcom/JoyFramework/module/point/c;->p(Lcom/JoyFramework/module/point/c;)V

    .line 603
    iget-object v0, p0, Lcom/JoyFramework/module/point/k;->a:Lcom/JoyFramework/module/point/c;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/JoyFramework/module/point/c;->a(Lcom/JoyFramework/module/point/c;I)I

    .line 604
    return-void
.end method

.method public b()V
    .registers 4

    .prologue
    .line 608
    const/4 v0, 0x0

    sput-boolean v0, Lcom/JoyFramework/a/a;->F:Z

    .line 610
    iget-object v0, p0, Lcom/JoyFramework/module/point/k;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v0}, Lcom/JoyFramework/module/point/c;->m(Lcom/JoyFramework/module/point/c;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/module/point/k;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v1}, Lcom/JoyFramework/module/point/c;->n(Lcom/JoyFramework/module/point/c;)I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 611
    iget-object v0, p0, Lcom/JoyFramework/module/point/k;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v0}, Lcom/JoyFramework/module/point/c;->o(Lcom/JoyFramework/module/point/c;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/module/point/k;->a:Lcom/JoyFramework/module/point/c;

    iget-object v2, p0, Lcom/JoyFramework/module/point/k;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v2}, Lcom/JoyFramework/module/point/c;->m(Lcom/JoyFramework/module/point/c;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 612
    iget-object v0, p0, Lcom/JoyFramework/module/point/k;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v0}, Lcom/JoyFramework/module/point/c;->q(Lcom/JoyFramework/module/point/c;)V

    .line 615
    iget-object v0, p0, Lcom/JoyFramework/module/point/k;->a:Lcom/JoyFramework/module/point/c;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/JoyFramework/module/point/c;->a(Lcom/JoyFramework/module/point/c;I)I

    .line 616
    return-void
.end method
