.class Lcom/JoyFramework/module/point/f;
.super Lrx/Subscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/JoyFramework/module/point/c;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/point/c;)V
    .registers 2

    .prologue
    .line 806
    iput-object p1, p0, Lcom/JoyFramework/module/point/f;->a:Lcom/JoyFramework/module/point/c;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 4

    .prologue
    .line 810
    iget-object v0, p0, Lcom/JoyFramework/module/point/f;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v0}, Lcom/JoyFramework/module/point/c;->c(Lcom/JoyFramework/module/point/c;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 811
    iget-object v0, p0, Lcom/JoyFramework/module/point/f;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v0}, Lcom/JoyFramework/module/point/c;->m(Lcom/JoyFramework/module/point/c;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/module/point/f;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v1}, Lcom/JoyFramework/module/point/c;->t(Lcom/JoyFramework/module/point/c;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 815
    :goto_16
    iget-object v0, p0, Lcom/JoyFramework/module/point/f;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v0}, Lcom/JoyFramework/module/point/c;->o(Lcom/JoyFramework/module/point/c;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/module/point/f;->a:Lcom/JoyFramework/module/point/c;

    iget-object v2, p0, Lcom/JoyFramework/module/point/f;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v2}, Lcom/JoyFramework/module/point/c;->m(Lcom/JoyFramework/module/point/c;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 816
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6d6e\u70b9\u56fa\u5b9a\u4e86  ===   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/module/point/f;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v1}, Lcom/JoyFramework/module/point/c;->m(Lcom/JoyFramework/module/point/c;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    ,,,,  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/module/point/f;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v1}, Lcom/JoyFramework/module/point/c;->m(Lcom/JoyFramework/module/point/c;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/JoyFramework/d/aq;->c(Ljava/lang/String;)V

    .line 817
    return-void

    .line 813
    :cond_58
    iget-object v0, p0, Lcom/JoyFramework/module/point/f;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v0}, Lcom/JoyFramework/module/point/c;->m(Lcom/JoyFramework/module/point/c;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_16
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4

    .prologue
    .line 821
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6d6e\u70b9\u6267\u884c\u52a8\u753b\u51fa\u9519\uff0c\u9519\u8bef\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/JoyFramework/d/aq;->c(Ljava/lang/String;)V

    .line 822
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 826
    iget-object v0, p0, Lcom/JoyFramework/module/point/f;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v0}, Lcom/JoyFramework/module/point/c;->o(Lcom/JoyFramework/module/point/c;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/module/point/f;->a:Lcom/JoyFramework/module/point/c;

    iget-object v2, p0, Lcom/JoyFramework/module/point/f;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v2}, Lcom/JoyFramework/module/point/c;->m(Lcom/JoyFramework/module/point/c;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 827
    return-void
.end method
