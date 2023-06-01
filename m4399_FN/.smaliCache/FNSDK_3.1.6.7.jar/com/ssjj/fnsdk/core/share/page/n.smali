.class Lcom/ssjj/fnsdk/core/share/page/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/core/share/page/DragView$DragViewListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/share/page/SharePageView;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/n;->a:Lcom/ssjj/fnsdk/core/share/page/SharePageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(FF)V
    .registers 6

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/n;->a:Lcom/ssjj/fnsdk/core/share/page/SharePageView;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->i(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;

    move-result-object v0

    if-eqz v0, :cond_27

    :cond_8
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/n;->a:Lcom/ssjj/fnsdk/core/share/page/SharePageView;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->h(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/page/n;->a:Lcom/ssjj/fnsdk/core/share/page/SharePageView;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->i(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;->text:Ljava/lang/String;

    iget-object v2, v0, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/page/n;->a:Lcom/ssjj/fnsdk/core/share/page/SharePageView;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->g(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)Lcom/ssjj/fnsdk/core/share/page/DragView;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p2}, Lcom/ssjj/fnsdk/core/share/page/DragView;->addText(Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;FF)V

    :cond_27
    return-void
.end method

.method public onDelete(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/n;->a:Lcom/ssjj/fnsdk/core/share/page/SharePageView;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->e(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)Lcom/ssjj/fnsdk/core/share/page/SelectTextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->unselect(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_17

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/n;->a:Lcom/ssjj/fnsdk/core/share/page/SharePageView;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->c(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->a(Lcom/ssjj/fnsdk/core/share/page/SharePageView;I)V

    :cond_17
    return-void
.end method
