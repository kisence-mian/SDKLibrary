.class Lcom/ssjj/fnsdk/core/share/page/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/core/share/page/StickerView$StickerViewListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/share/page/DragView;

.field private final synthetic b:Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;

.field private final synthetic c:Lcom/ssjj/fnsdk/core/share/page/StickerView;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/share/page/DragView;Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;Lcom/ssjj/fnsdk/core/share/page/StickerView;)V
    .registers 4

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/a;->a:Lcom/ssjj/fnsdk/core/share/page/DragView;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/share/page/a;->b:Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/share/page/a;->c:Lcom/ssjj/fnsdk/core/share/page/StickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(FF)V
    .registers 6

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/a;->a:Lcom/ssjj/fnsdk/core/share/page/DragView;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/page/a;->b:Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;

    iget-object v1, v1, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;->text:Ljava/lang/String;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/share/page/a;->c:Lcom/ssjj/fnsdk/core/share/page/StickerView;

    invoke-virtual {v0, v1, v2}, Lcom/ssjj/fnsdk/core/share/page/DragView;->removeText(Ljava/lang/String;Lcom/ssjj/fnsdk/core/share/page/StickerView;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/a;->a:Lcom/ssjj/fnsdk/core/share/page/DragView;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/share/page/DragView;->a(Lcom/ssjj/fnsdk/core/share/page/DragView;)Lcom/ssjj/fnsdk/core/share/page/DragView$DragViewListener;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/a;->a:Lcom/ssjj/fnsdk/core/share/page/DragView;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/share/page/DragView;->a(Lcom/ssjj/fnsdk/core/share/page/DragView;)Lcom/ssjj/fnsdk/core/share/page/DragView$DragViewListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/ssjj/fnsdk/core/share/page/DragView$DragViewListener;->onChange(FF)V

    :cond_1c
    return-void
.end method

.method public onDelete()V
    .registers 4

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/a;->a:Lcom/ssjj/fnsdk/core/share/page/DragView;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/page/a;->b:Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;

    iget-object v1, v1, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;->text:Ljava/lang/String;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/share/page/a;->c:Lcom/ssjj/fnsdk/core/share/page/StickerView;

    invoke-virtual {v0, v1, v2}, Lcom/ssjj/fnsdk/core/share/page/DragView;->removeText(Ljava/lang/String;Lcom/ssjj/fnsdk/core/share/page/StickerView;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/a;->a:Lcom/ssjj/fnsdk/core/share/page/DragView;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/share/page/DragView;->a(Lcom/ssjj/fnsdk/core/share/page/DragView;)Lcom/ssjj/fnsdk/core/share/page/DragView$DragViewListener;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/a;->a:Lcom/ssjj/fnsdk/core/share/page/DragView;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/share/page/DragView;->a(Lcom/ssjj/fnsdk/core/share/page/DragView;)Lcom/ssjj/fnsdk/core/share/page/DragView$DragViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/page/a;->b:Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;

    iget-object v1, v1, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;->text:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ssjj/fnsdk/core/share/page/DragView$DragViewListener;->onDelete(Ljava/lang/String;)V

    :cond_20
    return-void
.end method
