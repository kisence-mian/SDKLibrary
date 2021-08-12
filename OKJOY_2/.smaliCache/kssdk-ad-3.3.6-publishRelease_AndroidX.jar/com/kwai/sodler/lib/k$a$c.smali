.class Lcom/kwai/sodler/lib/k$a$c;
.super Lcom/kwai/sodler/lib/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwai/sodler/lib/k$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# direct methods
.method constructor <init>(Lcom/kwai/sodler/lib/a/e;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kwai/sodler/lib/k$a;-><init>(Lcom/kwai/sodler/lib/a/e;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/kwai/sodler/lib/a/f;)V
    .registers 3

    iget-object v0, p0, Lcom/kwai/sodler/lib/k$a$c;->a:Lcom/kwai/sodler/lib/a/e;

    invoke-interface {v0}, Lcom/kwai/sodler/lib/a/e;->d()Lcom/kwai/sodler/lib/a/g;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/kwai/sodler/lib/a/g;->a(Lcom/kwai/sodler/lib/a/f;)Lcom/kwai/sodler/lib/a/f;

    return-void
.end method
