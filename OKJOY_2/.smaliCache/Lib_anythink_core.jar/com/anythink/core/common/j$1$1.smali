.class final Lcom/anythink/core/common/j$1$1;
.super Landroid/os/CountDownTimer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/j$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/j$1;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/j$1;JJ)V
    .registers 6

    .line 51
    iput-object p1, p0, Lcom/anythink/core/common/j$1$1;->a:Lcom/anythink/core/common/j$1;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/anythink/core/common/j$1$1;->a:Lcom/anythink/core/common/j$1;

    iget-object v0, v0, Lcom/anythink/core/common/j$1;->b:Lcom/anythink/core/common/j;

    invoke-static {v0}, Lcom/anythink/core/common/j;->a(Lcom/anythink/core/common/j;)V

    .line 60
    return-void
.end method

.method public final onTick(J)V
    .registers 3

    .line 55
    return-void
.end method
