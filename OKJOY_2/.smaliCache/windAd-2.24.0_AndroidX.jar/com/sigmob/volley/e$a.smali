.class Lcom/sigmob/volley/e$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/volley/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/sigmob/volley/m;

.field private final b:Lcom/sigmob/volley/o;

.field private final c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/sigmob/volley/m;Lcom/sigmob/volley/o;Ljava/lang/Runnable;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/volley/e$a;->a:Lcom/sigmob/volley/m;

    iput-object p2, p0, Lcom/sigmob/volley/e$a;->b:Lcom/sigmob/volley/o;

    iput-object p3, p0, Lcom/sigmob/volley/e$a;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/volley/e$a;->a:Lcom/sigmob/volley/m;

    invoke-virtual {v0}, Lcom/sigmob/volley/m;->m()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/sigmob/volley/e$a;->a:Lcom/sigmob/volley/m;

    const-string v1, "canceled-at-delivery"

    invoke-virtual {v0, v1}, Lcom/sigmob/volley/m;->b(Ljava/lang/String;)V

    return-void

    :cond_10
    iget-object v0, p0, Lcom/sigmob/volley/e$a;->b:Lcom/sigmob/volley/o;

    invoke-virtual {v0}, Lcom/sigmob/volley/o;->a()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/sigmob/volley/e$a;->a:Lcom/sigmob/volley/m;

    iget-object v1, p0, Lcom/sigmob/volley/e$a;->b:Lcom/sigmob/volley/o;

    iget-object v1, v1, Lcom/sigmob/volley/o;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/sigmob/volley/m;->a(Ljava/lang/Object;)V

    goto :goto_2b

    :cond_22
    iget-object v0, p0, Lcom/sigmob/volley/e$a;->a:Lcom/sigmob/volley/m;

    iget-object v1, p0, Lcom/sigmob/volley/e$a;->b:Lcom/sigmob/volley/o;

    iget-object v1, v1, Lcom/sigmob/volley/o;->c:Lcom/sigmob/volley/t;

    invoke-virtual {v0, v1}, Lcom/sigmob/volley/m;->a(Lcom/sigmob/volley/t;)V

    :goto_2b
    iget-object v0, p0, Lcom/sigmob/volley/e$a;->b:Lcom/sigmob/volley/o;

    iget-boolean v0, v0, Lcom/sigmob/volley/o;->d:Z

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/sigmob/volley/e$a;->a:Lcom/sigmob/volley/m;

    const-string v1, "intermediate-response"

    invoke-virtual {v0, v1}, Lcom/sigmob/volley/m;->a(Ljava/lang/String;)V

    goto :goto_40

    :cond_39
    iget-object v0, p0, Lcom/sigmob/volley/e$a;->a:Lcom/sigmob/volley/m;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Lcom/sigmob/volley/m;->b(Ljava/lang/String;)V

    :goto_40
    iget-object v0, p0, Lcom/sigmob/volley/e$a;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_47

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_47
    return-void
.end method
