.class final Lcom/anythink/core/common/j$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/j;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/j;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/j;)V
    .registers 2

    .line 100
    iput-object p1, p0, Lcom/anythink/core/common/j$2;->a:Lcom/anythink/core/common/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/anythink/core/common/j$2;->a:Lcom/anythink/core/common/j;

    iget-object v0, v0, Lcom/anythink/core/common/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 104
    iget-object v0, p0, Lcom/anythink/core/common/j$2;->a:Lcom/anythink/core/common/j;

    iget-object v0, v0, Lcom/anythink/core/common/j;->b:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_17

    .line 105
    iget-object v0, p0, Lcom/anythink/core/common/j$2;->a:Lcom/anythink/core/common/j;

    iget-object v0, v0, Lcom/anythink/core/common/j;->b:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 108
    :cond_17
    return-void
.end method
