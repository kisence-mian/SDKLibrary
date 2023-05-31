.class final Lcom/anythink/core/b/i$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/b/i;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/b/i;


# direct methods
.method constructor <init>(Lcom/anythink/core/b/i;)V
    .registers 2

    .prologue
    .line 88
    iput-object p1, p0, Lcom/anythink/core/b/i$2;->a:Lcom/anythink/core/b/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/anythink/core/b/i$2;->a:Lcom/anythink/core/b/i;

    iget-object v0, v0, Lcom/anythink/core/b/i;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 92
    iget-object v0, p0, Lcom/anythink/core/b/i$2;->a:Lcom/anythink/core/b/i;

    iget-object v0, v0, Lcom/anythink/core/b/i;->b:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_17

    .line 93
    iget-object v0, p0, Lcom/anythink/core/b/i$2;->a:Lcom/anythink/core/b/i;

    iget-object v0, v0, Lcom/anythink/core/b/i;->b:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 96
    :cond_17
    return-void
.end method
