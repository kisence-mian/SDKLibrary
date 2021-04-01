.class Lcom/sigmob/volley/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/sigmob/volley/q;

.field private final b:Lcom/sigmob/volley/x;

.field private final c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/sigmob/volley/q;Lcom/sigmob/volley/x;Ljava/lang/Runnable;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/volley/i;->a:Lcom/sigmob/volley/q;

    iput-object p2, p0, Lcom/sigmob/volley/i;->b:Lcom/sigmob/volley/x;

    iput-object p3, p0, Lcom/sigmob/volley/i;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/volley/i;->a:Lcom/sigmob/volley/q;

    invoke-virtual {v0}, Lcom/sigmob/volley/q;->r()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/sigmob/volley/i;->a:Lcom/sigmob/volley/q;

    const-string v1, "canceled-at-delivery"

    invoke-virtual {v0, v1}, Lcom/sigmob/volley/q;->b(Ljava/lang/String;)V

    :cond_f
    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/sigmob/volley/i;->b:Lcom/sigmob/volley/x;

    invoke-virtual {v0}, Lcom/sigmob/volley/x;->a()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/sigmob/volley/i;->a:Lcom/sigmob/volley/q;

    iget-object v1, p0, Lcom/sigmob/volley/i;->b:Lcom/sigmob/volley/x;

    iget-object v1, v1, Lcom/sigmob/volley/x;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/sigmob/volley/q;->a(Ljava/lang/Object;)V

    :goto_21
    iget-object v0, p0, Lcom/sigmob/volley/i;->b:Lcom/sigmob/volley/x;

    iget-boolean v0, v0, Lcom/sigmob/volley/x;->d:Z

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/sigmob/volley/i;->a:Lcom/sigmob/volley/q;

    const-string v1, "intermediate-response"

    invoke-virtual {v0, v1}, Lcom/sigmob/volley/q;->a(Ljava/lang/String;)V

    :goto_2e
    iget-object v0, p0, Lcom/sigmob/volley/i;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/sigmob/volley/i;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_f

    :cond_38
    iget-object v0, p0, Lcom/sigmob/volley/i;->a:Lcom/sigmob/volley/q;

    iget-object v1, p0, Lcom/sigmob/volley/i;->b:Lcom/sigmob/volley/x;

    iget-object v1, v1, Lcom/sigmob/volley/x;->c:Lcom/sigmob/volley/ae;

    invoke-virtual {v0, v1}, Lcom/sigmob/volley/q;->a(Lcom/sigmob/volley/ae;)V

    goto :goto_21

    :cond_42
    iget-object v0, p0, Lcom/sigmob/volley/i;->a:Lcom/sigmob/volley/q;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Lcom/sigmob/volley/q;->b(Ljava/lang/String;)V

    goto :goto_2e
.end method
