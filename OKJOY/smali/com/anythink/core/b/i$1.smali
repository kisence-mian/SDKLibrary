.class final Lcom/anythink/core/b/i$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/b/i;->a(Lcom/anythink/core/b/c/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/c/a;

.field final synthetic b:Lcom/anythink/core/b/i;


# direct methods
.method constructor <init>(Lcom/anythink/core/b/i;Lcom/anythink/core/c/a;)V
    .registers 3

    .prologue
    .line 41
    iput-object p1, p0, Lcom/anythink/core/b/i$1;->b:Lcom/anythink/core/b/i;

    iput-object p2, p0, Lcom/anythink/core/b/i$1;->a:Lcom/anythink/core/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    .prologue
    .line 44
    iget-object v6, p0, Lcom/anythink/core/b/i$1;->b:Lcom/anythink/core/b/i;

    new-instance v0, Lcom/anythink/core/b/i$1$1;

    iget-object v1, p0, Lcom/anythink/core/b/i$1;->a:Lcom/anythink/core/c/a;

    invoke-virtual {v1}, Lcom/anythink/core/c/a;->A()J

    move-result-wide v2

    iget-object v1, p0, Lcom/anythink/core/b/i$1;->a:Lcom/anythink/core/c/a;

    invoke-virtual {v1}, Lcom/anythink/core/c/a;->A()J

    move-result-wide v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/anythink/core/b/i$1$1;-><init>(Lcom/anythink/core/b/i$1;JJ)V

    iput-object v0, v6, Lcom/anythink/core/b/i;->b:Landroid/os/CountDownTimer;

    .line 55
    iget-object v0, p0, Lcom/anythink/core/b/i$1;->b:Lcom/anythink/core/b/i;

    iget-object v0, v0, Lcom/anythink/core/b/i;->b:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 56
    return-void
.end method
