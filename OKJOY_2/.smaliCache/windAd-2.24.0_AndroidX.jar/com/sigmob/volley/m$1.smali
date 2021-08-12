.class Lcom/sigmob/volley/m$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/volley/m;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Lcom/sigmob/volley/m;


# direct methods
.method constructor <init>(Lcom/sigmob/volley/m;Ljava/lang/String;J)V
    .registers 5

    iput-object p1, p0, Lcom/sigmob/volley/m$1;->c:Lcom/sigmob/volley/m;

    iput-object p2, p0, Lcom/sigmob/volley/m$1;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/sigmob/volley/m$1;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/volley/m$1;->c:Lcom/sigmob/volley/m;

    invoke-static {v0}, Lcom/sigmob/volley/m;->b(Lcom/sigmob/volley/m;)Lcom/sigmob/volley/u$a;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/volley/m$1;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/sigmob/volley/m$1;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/sigmob/volley/u$a;->a(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/sigmob/volley/m$1;->c:Lcom/sigmob/volley/m;

    invoke-static {v0}, Lcom/sigmob/volley/m;->b(Lcom/sigmob/volley/m;)Lcom/sigmob/volley/u$a;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/volley/m$1;->c:Lcom/sigmob/volley/m;

    invoke-virtual {v1}, Lcom/sigmob/volley/m;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/volley/u$a;->a(Ljava/lang/String;)V

    return-void
.end method
