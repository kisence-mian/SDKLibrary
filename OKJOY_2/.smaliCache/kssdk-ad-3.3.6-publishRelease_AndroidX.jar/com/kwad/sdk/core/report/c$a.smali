.class public Lcom/kwad/sdk/core/report/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/report/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/core/report/c;

.field private final b:Lcom/kwad/sdk/core/report/i;

.field private final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/core/report/c;Landroid/content/Context;Lcom/kwad/sdk/core/report/i;)V
    .registers 4

    iput-object p1, p0, Lcom/kwad/sdk/core/report/c$a;->a:Lcom/kwad/sdk/core/report/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/kwad/sdk/core/report/c$a;->c:Landroid/content/Context;

    iput-object p3, p0, Lcom/kwad/sdk/core/report/c$a;->b:Lcom/kwad/sdk/core/report/i;

    return-void
.end method

.method private a(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    const/16 v0, 0xc8

    invoke-static {p1, v0}, Lcom/kwad/sdk/utils/n;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    :goto_10
    if-ge v2, v0, :cond_20

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iget-object v4, p0, Lcom/kwad/sdk/core/report/c$a;->a:Lcom/kwad/sdk/core/report/c;

    invoke-virtual {v4, v3, v1}, Lcom/kwad/sdk/core/report/c;->a(Ljava/util/List;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_20
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/report/c$a;->a:Lcom/kwad/sdk/core/report/c;

    invoke-static {v0}, Lcom/kwad/sdk/core/report/c;->e(Lcom/kwad/sdk/core/report/c;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_25

    iget-object v0, p0, Lcom/kwad/sdk/core/report/c$a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/ksad/download/d/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/kwad/sdk/core/report/c$a;->b:Lcom/kwad/sdk/core/report/i;

    invoke-interface {v0}, Lcom/kwad/sdk/core/report/i;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_25

    invoke-direct {p0, v0}, Lcom/kwad/sdk/core/report/c$a;->a(Ljava/util/List;)V

    :cond_25
    return-void
.end method
