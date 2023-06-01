.class Lcom/ssjj/fnsdk/core/share/page/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/share/page/SharePageView;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/p;->a:Lcom/ssjj/fnsdk/core/share/page/SharePageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/p;->a:Lcom/ssjj/fnsdk/core/share/page/SharePageView;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->g(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)Lcom/ssjj/fnsdk/core/share/page/DragView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/core/share/page/DragView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->a(Lcom/ssjj/fnsdk/core/share/page/SharePageView;F)V

    return-void
.end method
