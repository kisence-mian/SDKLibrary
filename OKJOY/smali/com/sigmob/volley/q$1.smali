.class Lcom/sigmob/volley/q$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/volley/q;->b(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Lcom/sigmob/volley/q;


# direct methods
.method constructor <init>(Lcom/sigmob/volley/q;Ljava/lang/String;J)V
    .registers 6

    iput-object p1, p0, Lcom/sigmob/volley/q$1;->c:Lcom/sigmob/volley/q;

    iput-object p2, p0, Lcom/sigmob/volley/q$1;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/sigmob/volley/q$1;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/volley/q$1;->c:Lcom/sigmob/volley/q;

    invoke-static {v0}, Lcom/sigmob/volley/q;->b(Lcom/sigmob/volley/q;)Lcom/sigmob/volley/ag;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/volley/q$1;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/sigmob/volley/q$1;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/sigmob/volley/ag;->a(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/sigmob/volley/q$1;->c:Lcom/sigmob/volley/q;

    invoke-static {v0}, Lcom/sigmob/volley/q;->b(Lcom/sigmob/volley/q;)Lcom/sigmob/volley/ag;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/volley/q$1;->c:Lcom/sigmob/volley/q;

    invoke-virtual {v1}, Lcom/sigmob/volley/q;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/volley/ag;->a(Ljava/lang/String;)V

    return-void
.end method
