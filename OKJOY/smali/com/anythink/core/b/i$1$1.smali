.class final Lcom/anythink/core/b/i$1$1;
.super Landroid/os/CountDownTimer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/b/i$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/b/i$1;


# direct methods
.method constructor <init>(Lcom/anythink/core/b/i$1;JJ)V
    .registers 6

    .prologue
    .line 44
    iput-object p1, p0, Lcom/anythink/core/b/i$1$1;->a:Lcom/anythink/core/b/i$1;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/anythink/core/b/i$1$1;->a:Lcom/anythink/core/b/i$1;

    iget-object v0, v0, Lcom/anythink/core/b/i$1;->b:Lcom/anythink/core/b/i;

    invoke-static {v0}, Lcom/anythink/core/b/i;->a(Lcom/anythink/core/b/i;)V

    .line 53
    return-void
.end method

.method public final onTick(J)V
    .registers 3

    .prologue
    .line 48
    return-void
.end method
