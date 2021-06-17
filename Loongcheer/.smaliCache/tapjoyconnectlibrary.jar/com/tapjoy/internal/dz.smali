.class public abstract Lcom/tapjoy/internal/dz;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/dz$b;,
        Lcom/tapjoy/internal/dz$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field d:Lcom/tapjoy/internal/dz$a;

.field protected final e:Lcom/tapjoy/internal/dz$b;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/dz$b;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/internal/dz;->e:Lcom/tapjoy/internal/dz$b;

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)V
    .registers 2

    iget-object p1, p0, Lcom/tapjoy/internal/dz;->d:Lcom/tapjoy/internal/dz$a;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/tapjoy/internal/dz$a;->a()V

    :cond_7
    return-void
.end method

.method public final a(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .registers 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/tapjoy/internal/dz;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/dz;->a(Ljava/lang/String;)V

    return-void
.end method
