.class public Lcom/kwai/sodler/lib/j$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwai/sodler/lib/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/kwai/sodler/lib/a/f;

.field private final b:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Lcom/kwai/sodler/lib/a/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/kwai/sodler/lib/a/f;Ljava/util/concurrent/Future;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kwai/sodler/lib/a/f;",
            "Ljava/util/concurrent/Future<",
            "Lcom/kwai/sodler/lib/a/f;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kwai/sodler/lib/j$b;->a:Lcom/kwai/sodler/lib/a/f;

    iput-object p2, p0, Lcom/kwai/sodler/lib/j$b;->b:Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/kwai/sodler/lib/j$b;->a:Lcom/kwai/sodler/lib/a/f;

    invoke-virtual {v0}, Lcom/kwai/sodler/lib/a/f;->e()V

    iget-object v0, p0, Lcom/kwai/sodler/lib/j$b;->b:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void
.end method
