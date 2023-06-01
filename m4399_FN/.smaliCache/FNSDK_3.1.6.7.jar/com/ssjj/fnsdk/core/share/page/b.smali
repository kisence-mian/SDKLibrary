.class Lcom/ssjj/fnsdk/core/share/page/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/share/page/DragView;

.field private final synthetic b:Lcom/ssjj/fnsdk/core/share/page/StickerView;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/share/page/DragView;Lcom/ssjj/fnsdk/core/share/page/StickerView;)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/b;->a:Lcom/ssjj/fnsdk/core/share/page/DragView;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/share/page/b;->b:Lcom/ssjj/fnsdk/core/share/page/StickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/b;->a:Lcom/ssjj/fnsdk/core/share/page/DragView;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/page/b;->b:Lcom/ssjj/fnsdk/core/share/page/StickerView;

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/share/page/DragView;->removeView(Landroid/view/View;)V

    return-void
.end method
