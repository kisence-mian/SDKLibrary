.class public abstract Lcom/iab/omid/library/mintegral/walking/a/b;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iab/omid/library/mintegral/walking/a/b$b;,
        Lcom/iab/omid/library/mintegral/walking/a/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/iab/omid/library/mintegral/walking/a/b$a;

.field protected final d:Lcom/iab/omid/library/mintegral/walking/a/b$b;


# direct methods
.method public constructor <init>(Lcom/iab/omid/library/mintegral/walking/a/b$b;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/iab/omid/library/mintegral/walking/a/b;->d:Lcom/iab/omid/library/mintegral/walking/a/b$b;

    return-void
.end method


# virtual methods
.method public a(Lcom/iab/omid/library/mintegral/walking/a/b$a;)V
    .registers 2

    iput-object p1, p0, Lcom/iab/omid/library/mintegral/walking/a/b;->a:Lcom/iab/omid/library/mintegral/walking/a/b$a;

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/walking/a/b;->a:Lcom/iab/omid/library/mintegral/walking/a/b$a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/walking/a/b;->a:Lcom/iab/omid/library/mintegral/walking/a/b$a;

    invoke-interface {v0, p0}, Lcom/iab/omid/library/mintegral/walking/a/b$a;->a(Lcom/iab/omid/library/mintegral/walking/a/b;)V

    :cond_9
    return-void
.end method

.method public a(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .registers 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/iab/omid/library/mintegral/walking/a/b;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iab/omid/library/mintegral/walking/a/b;->a(Ljava/lang/String;)V

    return-void
.end method
