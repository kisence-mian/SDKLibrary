.class final Lcom/anythink/basead/a/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/a/a/a;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/a/a/a;


# direct methods
.method constructor <init>(Lcom/anythink/basead/a/a/a;)V
    .registers 2

    .line 173
    iput-object p1, p0, Lcom/anythink/basead/a/a/a$1;->a:Lcom/anythink/basead/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 176
    iget-object v0, p0, Lcom/anythink/basead/a/a/a$1;->a:Lcom/anythink/basead/a/a/a;

    invoke-static {v0}, Lcom/anythink/basead/a/a/a;->a(Lcom/anythink/basead/a/a/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_19

    .line 177
    iget-object v0, p0, Lcom/anythink/basead/a/a/a$1;->a:Lcom/anythink/basead/a/a/a;

    const-string v1, "20001"

    const-string v2, "Load timeout!"

    invoke-static {v1, v2}, Lcom/anythink/basead/c/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/f;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/basead/a/a/a;->a(Lcom/anythink/basead/a/a/a;Lcom/anythink/basead/c/f;)V

    .line 179
    :cond_19
    return-void
.end method
