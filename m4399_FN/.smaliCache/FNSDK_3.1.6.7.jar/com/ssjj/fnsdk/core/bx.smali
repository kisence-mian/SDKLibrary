.class Lcom/ssjj/fnsdk/core/bx;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/bw;

.field private final synthetic b:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/bw;Landroid/widget/FrameLayout;)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/bx;->a:Lcom/ssjj/fnsdk/core/bw;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/bx;->b:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bx;->b:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
