.class Lcom/kwai/sodler/lib/j$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwai/sodler/lib/j;->b(Lcom/kwai/sodler/lib/a/f;Lcom/kwai/sodler/lib/k$a;)Lcom/kwai/sodler/lib/j$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/kwai/sodler/lib/a/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/kwai/sodler/lib/a/f;

.field final synthetic b:Lcom/kwai/sodler/lib/k$a;

.field final synthetic c:Lcom/kwai/sodler/lib/j;


# direct methods
.method constructor <init>(Lcom/kwai/sodler/lib/j;Lcom/kwai/sodler/lib/a/f;Lcom/kwai/sodler/lib/k$a;)V
    .registers 4

    iput-object p1, p0, Lcom/kwai/sodler/lib/j$1;->c:Lcom/kwai/sodler/lib/j;

    iput-object p2, p0, Lcom/kwai/sodler/lib/j$1;->a:Lcom/kwai/sodler/lib/a/f;

    iput-object p3, p0, Lcom/kwai/sodler/lib/j$1;->b:Lcom/kwai/sodler/lib/k$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/kwai/sodler/lib/a/f;
    .registers 4

    iget-object v0, p0, Lcom/kwai/sodler/lib/j$1;->c:Lcom/kwai/sodler/lib/j;

    iget-object v1, p0, Lcom/kwai/sodler/lib/j$1;->a:Lcom/kwai/sodler/lib/a/f;

    iget-object v2, p0, Lcom/kwai/sodler/lib/j$1;->b:Lcom/kwai/sodler/lib/k$a;

    invoke-virtual {v0, v1, v2}, Lcom/kwai/sodler/lib/j;->a(Lcom/kwai/sodler/lib/a/f;Lcom/kwai/sodler/lib/k$a;)Lcom/kwai/sodler/lib/a/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/kwai/sodler/lib/j$1;->a()Lcom/kwai/sodler/lib/a/f;

    move-result-object v0

    return-object v0
.end method
