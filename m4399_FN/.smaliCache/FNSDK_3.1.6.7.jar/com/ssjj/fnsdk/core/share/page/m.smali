.class Lcom/ssjj/fnsdk/core/share/page/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/core/share/page/SelectTextView$SelectTextListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/share/page/SharePageView;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/m;->a:Lcom/ssjj/fnsdk/core/share/page/SharePageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputingAfter(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onInputingBefore(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onInputintCompelete(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/m;->a:Lcom/ssjj/fnsdk/core/share/page/SharePageView;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->e(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)Lcom/ssjj/fnsdk/core/share/page/SelectTextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->addText(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/m;->a:Lcom/ssjj/fnsdk/core/share/page/SharePageView;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->h(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;

    move-result-object v0

    iput-object p1, v0, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;->text:Ljava/lang/String;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/share/page/m;->a:Lcom/ssjj/fnsdk/core/share/page/SharePageView;

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->f(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/share/page/m;->a:Lcom/ssjj/fnsdk/core/share/page/SharePageView;

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->c(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)I

    move-result v2

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/share/page/m;->a:Lcom/ssjj/fnsdk/core/share/page/SharePageView;

    invoke-static {v3}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->d(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)I

    move-result v3

    if-lt v2, v3, :cond_54

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/m;->a:Lcom/ssjj/fnsdk/core/share/page/SharePageView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6700\u591a\u6dfb\u52a0\u81ea\u5b9a\u4e49\u6587\u672c\u4e0d\u80fd\u8d85\u8fc7"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/share/page/m;->a:Lcom/ssjj/fnsdk/core/share/page/SharePageView;

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->d(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u6761\u54df~"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->a(Lcom/ssjj/fnsdk/core/share/page/SharePageView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/m;->a:Lcom/ssjj/fnsdk/core/share/page/SharePageView;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->e(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)Lcom/ssjj/fnsdk/core/share/page/SelectTextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->unselect(Ljava/lang/String;)Z

    return-void

    :cond_54
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/m;->a:Lcom/ssjj/fnsdk/core/share/page/SharePageView;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->c(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {p1, v2}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->a(Lcom/ssjj/fnsdk/core/share/page/SharePageView;I)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/m;->a:Lcom/ssjj/fnsdk/core/share/page/SharePageView;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->g(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)Lcom/ssjj/fnsdk/core/share/page/DragView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/core/share/page/DragView;->addText(Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;)V

    return-void
.end method

.method public onSelected(ILjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/m;->a:Lcom/ssjj/fnsdk/core/share/page/SharePageView;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->b(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/m;->a:Lcom/ssjj/fnsdk/core/share/page/SharePageView;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->c(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)I

    move-result v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/page/m;->a:Lcom/ssjj/fnsdk/core/share/page/SharePageView;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->d(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)I

    move-result v1

    if-lt v0, v1, :cond_44

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/m;->a:Lcom/ssjj/fnsdk/core/share/page/SharePageView;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6700\u591a\u6dfb\u52a0\u81ea\u5b9a\u4e49\u6587\u672c\u4e0d\u80fd\u8d85\u8fc7"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/page/m;->a:Lcom/ssjj/fnsdk/core/share/page/SharePageView;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->d(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u6761\u54df~"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->a(Lcom/ssjj/fnsdk/core/share/page/SharePageView;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/m;->a:Lcom/ssjj/fnsdk/core/share/page/SharePageView;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->e(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)Lcom/ssjj/fnsdk/core/share/page/SelectTextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->unselect(Ljava/lang/String;)Z

    return-void

    :cond_44
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/m;->a:Lcom/ssjj/fnsdk/core/share/page/SharePageView;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->c(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->a(Lcom/ssjj/fnsdk/core/share/page/SharePageView;I)V

    :cond_4f
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/m;->a:Lcom/ssjj/fnsdk/core/share/page/SharePageView;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->f(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/m;->a:Lcom/ssjj/fnsdk/core/share/page/SharePageView;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->g(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)Lcom/ssjj/fnsdk/core/share/page/DragView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ssjj/fnsdk/core/share/page/DragView;->showText(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_70

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/share/page/m;->a:Lcom/ssjj/fnsdk/core/share/page/SharePageView;

    invoke-static {p2}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->g(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)Lcom/ssjj/fnsdk/core/share/page/DragView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ssjj/fnsdk/core/share/page/DragView;->addText(Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;)V

    :cond_70
    return-void
.end method

.method public onUnselected(ILjava/lang/String;)V
    .registers 3

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/m;->a:Lcom/ssjj/fnsdk/core/share/page/SharePageView;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->g(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)Lcom/ssjj/fnsdk/core/share/page/DragView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ssjj/fnsdk/core/share/page/DragView;->hideText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/m;->a:Lcom/ssjj/fnsdk/core/share/page/SharePageView;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->c(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-static {p1, p2}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->a(Lcom/ssjj/fnsdk/core/share/page/SharePageView;I)V

    return-void
.end method
