.class public Lrx/Single;
.super Ljava/lang/Object;
.source "Single.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/Single$Transformer;,
        Lrx/Single$OnSubscribe;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation build Lrx/annotations/Beta;
.end annotation


# instance fields
.field final onSubscribe:Lrx/Observable$OnSubscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable$OnSubscribe",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lrx/Observable$OnSubscribe;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "f":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-static {p1}, Lrx/plugins/RxJavaHooks;->onCreate(Lrx/Observable$OnSubscribe;)Lrx/Observable$OnSubscribe;

    move-result-object v0

    iput-object v0, p0, Lrx/Single;->onSubscribe:Lrx/Observable$OnSubscribe;

    .line 98
    return-void
.end method

.method protected constructor <init>(Lrx/Single$OnSubscribe;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Single$OnSubscribe",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "f":Lrx/Single$OnSubscribe;, "Lrx/Single$OnSubscribe<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {p1}, Lrx/plugins/RxJavaHooks;->onCreate(Lrx/Single$OnSubscribe;)Lrx/Single$OnSubscribe;

    move-result-object v0

    .line 70
    .local v0, "g":Lrx/Single$OnSubscribe;, "Lrx/Single$OnSubscribe<TT;>;"
    new-instance v1, Lrx/Single$1;

    invoke-direct {v1, p0, v0}, Lrx/Single$1;-><init>(Lrx/Single;Lrx/Single$OnSubscribe;)V

    iput-object v1, p0, Lrx/Single;->onSubscribe:Lrx/Observable$OnSubscribe;

    .line 94
    return-void
.end method

.method private static asObservable(Lrx/Single;)Lrx/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 230
    .local p0, "t":Lrx/Single;, "Lrx/Single<TT;>;"
    iget-object v0, p0, Lrx/Single;->onSubscribe:Lrx/Observable$OnSubscribe;

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lrx/Single;Lrx/Single;)Lrx/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 276
    .local p0, "t1":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p1, "t2":Lrx/Single;, "Lrx/Single<+TT;>;"
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v0

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v1

    invoke-static {v0, v1}, Lrx/Observable;->concat(Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 299
    .local p0, "t1":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p1, "t2":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p2, "t3":Lrx/Single;, "Lrx/Single<+TT;>;"
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v0

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v1

    invoke-static {p2}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lrx/Observable;->concat(Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 324
    .local p0, "t1":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p1, "t2":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p2, "t3":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p3, "t4":Lrx/Single;, "Lrx/Single<+TT;>;"
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v0

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v1

    invoke-static {p2}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    invoke-static {p3}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lrx/Observable;->concat(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 351
    .local p0, "t1":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p1, "t2":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p2, "t3":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p3, "t4":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p4, "t5":Lrx/Single;, "Lrx/Single<+TT;>;"
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v0

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v1

    invoke-static {p2}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    invoke-static {p3}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v3

    invoke-static {p4}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lrx/Observable;->concat(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 380
    .local p0, "t1":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p1, "t2":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p2, "t3":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p3, "t4":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p4, "t5":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p5, "t6":Lrx/Single;, "Lrx/Single<+TT;>;"
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v0

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v1

    invoke-static {p2}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    invoke-static {p3}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v3

    invoke-static {p4}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v4

    invoke-static {p5}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lrx/Observable;->concat(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 411
    .local p0, "t1":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p1, "t2":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p2, "t3":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p3, "t4":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p4, "t5":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p5, "t6":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p6, "t7":Lrx/Single;, "Lrx/Single<+TT;>;"
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v0

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v1

    invoke-static {p2}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    invoke-static {p3}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v3

    invoke-static {p4}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v4

    invoke-static {p5}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v5

    invoke-static {p6}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lrx/Observable;->concat(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 444
    .local p0, "t1":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p1, "t2":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p2, "t3":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p3, "t4":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p4, "t5":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p5, "t6":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p6, "t7":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p7, "t8":Lrx/Single;, "Lrx/Single<+TT;>;"
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v0

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v1

    invoke-static {p2}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    invoke-static {p3}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v3

    invoke-static {p4}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v4

    invoke-static {p5}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v5

    invoke-static {p6}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v6

    invoke-static {p7}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lrx/Observable;->concat(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 479
    .local p0, "t1":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p1, "t2":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p2, "t3":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p3, "t4":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p4, "t5":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p5, "t6":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p6, "t7":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p7, "t8":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p8, "t9":Lrx/Single;, "Lrx/Single<+TT;>;"
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v0

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v1

    invoke-static {p2}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    invoke-static {p3}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v3

    invoke-static {p4}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v4

    invoke-static {p5}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v5

    invoke-static {p6}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v6

    invoke-static/range {p7 .. p7}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v7

    invoke-static/range {p8 .. p8}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v8

    invoke-static/range {v0 .. v8}, Lrx/Observable;->concat(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lrx/Single$OnSubscribe;)Lrx/Single;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single$OnSubscribe",
            "<TT;>;)",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "f":Lrx/Single$OnSubscribe;, "Lrx/Single$OnSubscribe<TT;>;"
    new-instance v0, Lrx/Single;

    invoke-direct {v0, p0}, Lrx/Single;-><init>(Lrx/Single$OnSubscribe;)V

    return-object v0
.end method

.method public static defer(Ljava/util/concurrent/Callable;)Lrx/Single;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lrx/Single",
            "<TT;>;>;)",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 2526
    .local p0, "singleFactory":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lrx/Single<TT;>;>;"
    new-instance v0, Lrx/Single$25;

    invoke-direct {v0, p0}, Lrx/Single$25;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lrx/Single;->create(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public static error(Ljava/lang/Throwable;)Lrx/Single;
    .registers 2
    .param p0, "exception"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 501
    new-instance v0, Lrx/Single$3;

    invoke-direct {v0, p0}, Lrx/Single$3;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lrx/Single;->create(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public static from(Ljava/util/concurrent/Future;)Lrx/Single;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<+TT;>;)",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 536
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<+TT;>;"
    new-instance v0, Lrx/Single;

    invoke-static {p0}, Lrx/internal/operators/OnSubscribeToObservableFuture;->toObservableFuture(Ljava/util/concurrent/Future;)Lrx/Observable$OnSubscribe;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/Single;-><init>(Lrx/Observable$OnSubscribe;)V

    return-object v0
.end method

.method public static from(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Lrx/Single;
    .registers 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 568
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<+TT;>;"
    new-instance v0, Lrx/Single;

    invoke-static {p0, p1, p2, p3}, Lrx/internal/operators/OnSubscribeToObservableFuture;->toObservableFuture(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Lrx/Observable$OnSubscribe;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/Single;-><init>(Lrx/Observable$OnSubscribe;)V

    return-object v0
.end method

.method public static from(Ljava/util/concurrent/Future;Lrx/Scheduler;)Lrx/Single;
    .registers 4
    .param p1, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<+TT;>;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 597
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<+TT;>;"
    new-instance v0, Lrx/Single;

    invoke-static {p0}, Lrx/internal/operators/OnSubscribeToObservableFuture;->toObservableFuture(Ljava/util/concurrent/Future;)Lrx/Observable$OnSubscribe;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/Single;-><init>(Lrx/Observable$OnSubscribe;)V

    invoke-virtual {v0, p1}, Lrx/Single;->subscribeOn(Lrx/Scheduler;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public static fromCallable(Ljava/util/concurrent/Callable;)Lrx/Single;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<+TT;>;)",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Beta;
    .end annotation

    .prologue
    .line 619
    .local p0, "func":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<+TT;>;"
    new-instance v0, Lrx/Single$4;

    invoke-direct {v0, p0}, Lrx/Single$4;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lrx/Single;->create(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method static iterableToArray(Ljava/lang/Iterable;)[Lrx/Single;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/Single",
            "<+TT;>;>;)[",
            "Lrx/Single",
            "<+TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "singlesIterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/Single<+TT;>;>;"
    const/4 v8, 0x0

    .line 2599
    instance-of v7, p0, Ljava/util/Collection;

    if-eqz v7, :cond_15

    move-object v2, p0

    .line 2600
    check-cast v2, Ljava/util/Collection;

    .line 2601
    .local v2, "list":Ljava/util/Collection;, "Ljava/util/Collection<+Lrx/Single<+TT;>;>;"
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v0

    .line 2602
    .local v0, "count":I
    new-array v7, v0, [Lrx/Single;

    invoke-interface {v2, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lrx/Single;

    .line 2624
    .end local v2    # "list":Ljava/util/Collection;, "Ljava/util/Collection<+Lrx/Single<+TT;>;>;"
    .local v5, "singlesArray":[Lrx/Single;, "[Lrx/Single<+TT;>;"
    :goto_14
    return-object v5

    .line 2604
    .end local v0    # "count":I
    .end local v5    # "singlesArray":[Lrx/Single;, "[Lrx/Single<+TT;>;"
    :cond_15
    const/16 v7, 0x8

    new-array v6, v7, [Lrx/Single;

    .line 2605
    .local v6, "tempArray":[Lrx/Single;, "[Lrx/Single<+TT;>;"
    const/4 v0, 0x0

    .line 2606
    .restart local v0    # "count":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrx/Single;

    .line 2607
    .local v3, "s":Lrx/Single;, "Lrx/Single<+TT;>;"
    array-length v7, v6

    if-ne v0, v7, :cond_36

    .line 2608
    shr-int/lit8 v7, v0, 0x2

    add-int/2addr v7, v0

    new-array v4, v7, [Lrx/Single;

    .line 2609
    .local v4, "sb":[Lrx/Single;, "[Lrx/Single<+TT;>;"
    invoke-static {v6, v8, v4, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2610
    move-object v6, v4

    .line 2612
    .end local v4    # "sb":[Lrx/Single;, "[Lrx/Single<+TT;>;"
    :cond_36
    aput-object v3, v6, v0

    .line 2613
    add-int/lit8 v0, v0, 0x1

    .line 2614
    goto :goto_1e

    .line 2616
    .end local v3    # "s":Lrx/Single;, "Lrx/Single<+TT;>;"
    :cond_3b
    array-length v7, v6

    if-ne v7, v0, :cond_40

    .line 2617
    move-object v5, v6

    .restart local v5    # "singlesArray":[Lrx/Single;, "[Lrx/Single<+TT;>;"
    goto :goto_14

    .line 2619
    .end local v5    # "singlesArray":[Lrx/Single;, "[Lrx/Single<+TT;>;"
    :cond_40
    new-array v5, v0, [Lrx/Single;

    .line 2620
    .restart local v5    # "singlesArray":[Lrx/Single;, "[Lrx/Single<+TT;>;"
    invoke-static {v6, v8, v5, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_14
.end method

.method public static just(Ljava/lang/Object;)Lrx/Single;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 657
    .local p0, "value":Ljava/lang/Object;, "TT;"
    invoke-static {p0}, Lrx/internal/util/ScalarSynchronousSingle;->create(Ljava/lang/Object;)Lrx/internal/util/ScalarSynchronousSingle;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Lrx/Single;Lrx/Single;)Lrx/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 727
    .local p0, "t1":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p1, "t2":Lrx/Single;, "Lrx/Single<+TT;>;"
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v0

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v1

    invoke-static {v0, v1}, Lrx/Observable;->merge(Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 753
    .local p0, "t1":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p1, "t2":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p2, "t3":Lrx/Single;, "Lrx/Single<+TT;>;"
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v0

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v1

    invoke-static {p2}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lrx/Observable;->merge(Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 781
    .local p0, "t1":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p1, "t2":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p2, "t3":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p3, "t4":Lrx/Single;, "Lrx/Single<+TT;>;"
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v0

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v1

    invoke-static {p2}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    invoke-static {p3}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lrx/Observable;->merge(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 811
    .local p0, "t1":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p1, "t2":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p2, "t3":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p3, "t4":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p4, "t5":Lrx/Single;, "Lrx/Single<+TT;>;"
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v0

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v1

    invoke-static {p2}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    invoke-static {p3}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v3

    invoke-static {p4}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lrx/Observable;->merge(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 843
    .local p0, "t1":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p1, "t2":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p2, "t3":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p3, "t4":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p4, "t5":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p5, "t6":Lrx/Single;, "Lrx/Single<+TT;>;"
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v0

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v1

    invoke-static {p2}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    invoke-static {p3}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v3

    invoke-static {p4}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v4

    invoke-static {p5}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lrx/Observable;->merge(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 877
    .local p0, "t1":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p1, "t2":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p2, "t3":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p3, "t4":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p4, "t5":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p5, "t6":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p6, "t7":Lrx/Single;, "Lrx/Single<+TT;>;"
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v0

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v1

    invoke-static {p2}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    invoke-static {p3}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v3

    invoke-static {p4}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v4

    invoke-static {p5}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v5

    invoke-static {p6}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lrx/Observable;->merge(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 913
    .local p0, "t1":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p1, "t2":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p2, "t3":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p3, "t4":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p4, "t5":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p5, "t6":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p6, "t7":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p7, "t8":Lrx/Single;, "Lrx/Single<+TT;>;"
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v0

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v1

    invoke-static {p2}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    invoke-static {p3}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v3

    invoke-static {p4}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v4

    invoke-static {p5}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v5

    invoke-static {p6}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v6

    invoke-static {p7}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lrx/Observable;->merge(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 951
    .local p0, "t1":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p1, "t2":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p2, "t3":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p3, "t4":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p4, "t5":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p5, "t6":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p6, "t7":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p7, "t8":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p8, "t9":Lrx/Single;, "Lrx/Single<+TT;>;"
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v0

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v1

    invoke-static {p2}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    invoke-static {p3}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v3

    invoke-static {p4}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v4

    invoke-static {p5}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v5

    invoke-static {p6}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v6

    invoke-static/range {p7 .. p7}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v7

    invoke-static/range {p8 .. p8}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v8

    invoke-static/range {v0 .. v8}, Lrx/Observable;->merge(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Lrx/Single;)Lrx/Single;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+",
            "Lrx/Single",
            "<+TT;>;>;)",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 680
    .local p0, "source":Lrx/Single;, "Lrx/Single<+Lrx/Single<+TT;>;>;"
    instance-of v0, p0, Lrx/internal/util/ScalarSynchronousSingle;

    if-eqz v0, :cond_f

    .line 681
    check-cast p0, Lrx/internal/util/ScalarSynchronousSingle;

    .end local p0    # "source":Lrx/Single;, "Lrx/Single<+Lrx/Single<+TT;>;>;"
    invoke-static {}, Lrx/internal/util/UtilityFunctions;->identity()Lrx/functions/Func1;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/internal/util/ScalarSynchronousSingle;->scalarFlatMap(Lrx/functions/Func1;)Lrx/Single;

    move-result-object v0

    .line 683
    .restart local p0    # "source":Lrx/Single;, "Lrx/Single<+Lrx/Single<+TT;>;>;"
    :goto_e
    return-object v0

    :cond_f
    new-instance v0, Lrx/Single$5;

    invoke-direct {v0, p0}, Lrx/Single$5;-><init>(Lrx/Single;)V

    invoke-static {v0}, Lrx/Single;->create(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object v0

    goto :goto_e
.end method

.method private nest()Lrx/Single;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Single",
            "<",
            "Lrx/Observable",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 250
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Single;->just(Ljava/lang/Object;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public static using(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/functions/Action1;)Lrx/Single;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Resource:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func0",
            "<TResource;>;",
            "Lrx/functions/Func1",
            "<-TResource;+",
            "Lrx/Single",
            "<+TT;>;>;",
            "Lrx/functions/Action1",
            "<-TResource;>;)",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 2766
    .local p0, "resourceFactory":Lrx/functions/Func0;, "Lrx/functions/Func0<TResource;>;"
    .local p1, "singleFactory":Lrx/functions/Func1;, "Lrx/functions/Func1<-TResource;+Lrx/Single<+TT;>;>;"
    .local p2, "disposeAction":Lrx/functions/Action1;, "Lrx/functions/Action1<-TResource;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lrx/Single;->using(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/functions/Action1;Z)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public static using(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/functions/Action1;Z)Lrx/Single;
    .registers 6
    .param p3, "disposeEagerly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Resource:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func0",
            "<TResource;>;",
            "Lrx/functions/Func1",
            "<-TResource;+",
            "Lrx/Single",
            "<+TT;>;>;",
            "Lrx/functions/Action1",
            "<-TResource;>;Z)",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 2803
    .local p0, "resourceFactory":Lrx/functions/Func0;, "Lrx/functions/Func0<TResource;>;"
    .local p1, "singleFactory":Lrx/functions/Func1;, "Lrx/functions/Func1<-TResource;+Lrx/Single<+TT;>;>;"
    .local p2, "disposeAction":Lrx/functions/Action1;, "Lrx/functions/Action1<-TResource;>;"
    if-nez p0, :cond_a

    .line 2804
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "resourceFactory is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2806
    :cond_a
    if-nez p1, :cond_14

    .line 2807
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "singleFactory is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2809
    :cond_14
    if-nez p2, :cond_1e

    .line 2810
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "disposeAction is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2812
    :cond_1e
    new-instance v0, Lrx/internal/operators/SingleOnSubscribeUsing;

    invoke-direct {v0, p0, p1, p2, p3}, Lrx/internal/operators/SingleOnSubscribeUsing;-><init>(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/functions/Action1;Z)V

    invoke-static {v0}, Lrx/Single;->create(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public static zip(Ljava/lang/Iterable;Lrx/functions/FuncN;)Lrx/Single;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/Single",
            "<*>;>;",
            "Lrx/functions/FuncN",
            "<+TR;>;)",
            "Lrx/Single",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1331
    .local p0, "singles":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/Single<*>;>;"
    .local p1, "zipFunction":Lrx/functions/FuncN;, "Lrx/functions/FuncN<+TR;>;"
    invoke-static {p0}, Lrx/Single;->iterableToArray(Ljava/lang/Iterable;)[Lrx/Single;

    move-result-object v0

    .line 1332
    .local v0, "iterableToArray":[Lrx/Single;
    invoke-static {v0, p1}, Lrx/internal/operators/SingleOperatorZip;->zip([Lrx/Single;Lrx/functions/FuncN;)Lrx/Single;

    move-result-object v1

    return-object v1
.end method

.method public static zip(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/functions/Func9;)Lrx/Single;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "T9:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT1;>;",
            "Lrx/Single",
            "<+TT2;>;",
            "Lrx/Single",
            "<+TT3;>;",
            "Lrx/Single",
            "<+TT4;>;",
            "Lrx/Single",
            "<+TT5;>;",
            "Lrx/Single",
            "<+TT6;>;",
            "Lrx/Single",
            "<+TT7;>;",
            "Lrx/Single",
            "<+TT8;>;",
            "Lrx/Single",
            "<+TT9;>;",
            "Lrx/functions/Func9",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;-TT9;+TR;>;)",
            "Lrx/Single",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1298
    .local p0, "s1":Lrx/Single;, "Lrx/Single<+TT1;>;"
    .local p1, "s2":Lrx/Single;, "Lrx/Single<+TT2;>;"
    .local p2, "s3":Lrx/Single;, "Lrx/Single<+TT3;>;"
    .local p3, "s4":Lrx/Single;, "Lrx/Single<+TT4;>;"
    .local p4, "s5":Lrx/Single;, "Lrx/Single<+TT5;>;"
    .local p5, "s6":Lrx/Single;, "Lrx/Single<+TT6;>;"
    .local p6, "s7":Lrx/Single;, "Lrx/Single<+TT7;>;"
    .local p7, "s8":Lrx/Single;, "Lrx/Single<+TT8;>;"
    .local p8, "s9":Lrx/Single;, "Lrx/Single<+TT9;>;"
    .local p9, "zipFunction":Lrx/functions/Func9;, "Lrx/functions/Func9<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;-TT9;+TR;>;"
    const/16 v0, 0x9

    new-array v0, v0, [Lrx/Single;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    const/4 v1, 0x7

    aput-object p7, v0, v1

    const/16 v1, 0x8

    aput-object p8, v0, v1

    new-instance v1, Lrx/Single$13;

    invoke-direct {v1, p9}, Lrx/Single$13;-><init>(Lrx/functions/Func9;)V

    invoke-static {v0, v1}, Lrx/internal/operators/SingleOperatorZip;->zip([Lrx/Single;Lrx/functions/FuncN;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public static zip(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/functions/Func8;)Lrx/Single;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT1;>;",
            "Lrx/Single",
            "<+TT2;>;",
            "Lrx/Single",
            "<+TT3;>;",
            "Lrx/Single",
            "<+TT4;>;",
            "Lrx/Single",
            "<+TT5;>;",
            "Lrx/Single",
            "<+TT6;>;",
            "Lrx/Single",
            "<+TT7;>;",
            "Lrx/Single",
            "<+TT8;>;",
            "Lrx/functions/Func8",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;)",
            "Lrx/Single",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1243
    .local p0, "s1":Lrx/Single;, "Lrx/Single<+TT1;>;"
    .local p1, "s2":Lrx/Single;, "Lrx/Single<+TT2;>;"
    .local p2, "s3":Lrx/Single;, "Lrx/Single<+TT3;>;"
    .local p3, "s4":Lrx/Single;, "Lrx/Single<+TT4;>;"
    .local p4, "s5":Lrx/Single;, "Lrx/Single<+TT5;>;"
    .local p5, "s6":Lrx/Single;, "Lrx/Single<+TT6;>;"
    .local p6, "s7":Lrx/Single;, "Lrx/Single<+TT7;>;"
    .local p7, "s8":Lrx/Single;, "Lrx/Single<+TT8;>;"
    .local p8, "zipFunction":Lrx/functions/Func8;, "Lrx/functions/Func8<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;"
    const/16 v0, 0x8

    new-array v0, v0, [Lrx/Single;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    const/4 v1, 0x7

    aput-object p7, v0, v1

    new-instance v1, Lrx/Single$12;

    invoke-direct {v1, p8}, Lrx/Single$12;-><init>(Lrx/functions/Func8;)V

    invoke-static {v0, v1}, Lrx/internal/operators/SingleOperatorZip;->zip([Lrx/Single;Lrx/functions/FuncN;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public static zip(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/functions/Func7;)Lrx/Single;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT1;>;",
            "Lrx/Single",
            "<+TT2;>;",
            "Lrx/Single",
            "<+TT3;>;",
            "Lrx/Single",
            "<+TT4;>;",
            "Lrx/Single",
            "<+TT5;>;",
            "Lrx/Single",
            "<+TT6;>;",
            "Lrx/Single",
            "<+TT7;>;",
            "Lrx/functions/Func7",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;)",
            "Lrx/Single",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1191
    .local p0, "s1":Lrx/Single;, "Lrx/Single<+TT1;>;"
    .local p1, "s2":Lrx/Single;, "Lrx/Single<+TT2;>;"
    .local p2, "s3":Lrx/Single;, "Lrx/Single<+TT3;>;"
    .local p3, "s4":Lrx/Single;, "Lrx/Single<+TT4;>;"
    .local p4, "s5":Lrx/Single;, "Lrx/Single<+TT5;>;"
    .local p5, "s6":Lrx/Single;, "Lrx/Single<+TT6;>;"
    .local p6, "s7":Lrx/Single;, "Lrx/Single<+TT7;>;"
    .local p7, "zipFunction":Lrx/functions/Func7;, "Lrx/functions/Func7<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;"
    const/4 v0, 0x7

    new-array v0, v0, [Lrx/Single;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    new-instance v1, Lrx/Single$11;

    invoke-direct {v1, p7}, Lrx/Single$11;-><init>(Lrx/functions/Func7;)V

    invoke-static {v0, v1}, Lrx/internal/operators/SingleOperatorZip;->zip([Lrx/Single;Lrx/functions/FuncN;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public static zip(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/functions/Func6;)Lrx/Single;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT1;>;",
            "Lrx/Single",
            "<+TT2;>;",
            "Lrx/Single",
            "<+TT3;>;",
            "Lrx/Single",
            "<+TT4;>;",
            "Lrx/Single",
            "<+TT5;>;",
            "Lrx/Single",
            "<+TT6;>;",
            "Lrx/functions/Func6",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;)",
            "Lrx/Single",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1142
    .local p0, "s1":Lrx/Single;, "Lrx/Single<+TT1;>;"
    .local p1, "s2":Lrx/Single;, "Lrx/Single<+TT2;>;"
    .local p2, "s3":Lrx/Single;, "Lrx/Single<+TT3;>;"
    .local p3, "s4":Lrx/Single;, "Lrx/Single<+TT4;>;"
    .local p4, "s5":Lrx/Single;, "Lrx/Single<+TT5;>;"
    .local p5, "s6":Lrx/Single;, "Lrx/Single<+TT6;>;"
    .local p6, "zipFunction":Lrx/functions/Func6;, "Lrx/functions/Func6<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;"
    const/4 v0, 0x6

    new-array v0, v0, [Lrx/Single;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    new-instance v1, Lrx/Single$10;

    invoke-direct {v1, p6}, Lrx/Single$10;-><init>(Lrx/functions/Func6;)V

    invoke-static {v0, v1}, Lrx/internal/operators/SingleOperatorZip;->zip([Lrx/Single;Lrx/functions/FuncN;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public static zip(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/functions/Func5;)Lrx/Single;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT1;>;",
            "Lrx/Single",
            "<+TT2;>;",
            "Lrx/Single",
            "<+TT3;>;",
            "Lrx/Single",
            "<+TT4;>;",
            "Lrx/Single",
            "<+TT5;>;",
            "Lrx/functions/Func5",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;)",
            "Lrx/Single",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1096
    .local p0, "s1":Lrx/Single;, "Lrx/Single<+TT1;>;"
    .local p1, "s2":Lrx/Single;, "Lrx/Single<+TT2;>;"
    .local p2, "s3":Lrx/Single;, "Lrx/Single<+TT3;>;"
    .local p3, "s4":Lrx/Single;, "Lrx/Single<+TT4;>;"
    .local p4, "s5":Lrx/Single;, "Lrx/Single<+TT5;>;"
    .local p5, "zipFunction":Lrx/functions/Func5;, "Lrx/functions/Func5<-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;"
    const/4 v0, 0x5

    new-array v0, v0, [Lrx/Single;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    new-instance v1, Lrx/Single$9;

    invoke-direct {v1, p5}, Lrx/Single$9;-><init>(Lrx/functions/Func5;)V

    invoke-static {v0, v1}, Lrx/internal/operators/SingleOperatorZip;->zip([Lrx/Single;Lrx/functions/FuncN;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public static zip(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/functions/Func4;)Lrx/Single;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT1;>;",
            "Lrx/Single",
            "<+TT2;>;",
            "Lrx/Single",
            "<+TT3;>;",
            "Lrx/Single",
            "<+TT4;>;",
            "Lrx/functions/Func4",
            "<-TT1;-TT2;-TT3;-TT4;+TR;>;)",
            "Lrx/Single",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1054
    .local p0, "s1":Lrx/Single;, "Lrx/Single<+TT1;>;"
    .local p1, "s2":Lrx/Single;, "Lrx/Single<+TT2;>;"
    .local p2, "s3":Lrx/Single;, "Lrx/Single<+TT3;>;"
    .local p3, "s4":Lrx/Single;, "Lrx/Single<+TT4;>;"
    .local p4, "zipFunction":Lrx/functions/Func4;, "Lrx/functions/Func4<-TT1;-TT2;-TT3;-TT4;+TR;>;"
    const/4 v0, 0x4

    new-array v0, v0, [Lrx/Single;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    new-instance v1, Lrx/Single$8;

    invoke-direct {v1, p4}, Lrx/Single$8;-><init>(Lrx/functions/Func4;)V

    invoke-static {v0, v1}, Lrx/internal/operators/SingleOperatorZip;->zip([Lrx/Single;Lrx/functions/FuncN;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public static zip(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/functions/Func3;)Lrx/Single;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT1;>;",
            "Lrx/Single",
            "<+TT2;>;",
            "Lrx/Single",
            "<+TT3;>;",
            "Lrx/functions/Func3",
            "<-TT1;-TT2;-TT3;+TR;>;)",
            "Lrx/Single",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1015
    .local p0, "s1":Lrx/Single;, "Lrx/Single<+TT1;>;"
    .local p1, "s2":Lrx/Single;, "Lrx/Single<+TT2;>;"
    .local p2, "s3":Lrx/Single;, "Lrx/Single<+TT3;>;"
    .local p3, "zipFunction":Lrx/functions/Func3;, "Lrx/functions/Func3<-TT1;-TT2;-TT3;+TR;>;"
    const/4 v0, 0x3

    new-array v0, v0, [Lrx/Single;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    new-instance v1, Lrx/Single$7;

    invoke-direct {v1, p3}, Lrx/Single$7;-><init>(Lrx/functions/Func3;)V

    invoke-static {v0, v1}, Lrx/internal/operators/SingleOperatorZip;->zip([Lrx/Single;Lrx/functions/FuncN;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public static zip(Lrx/Single;Lrx/Single;Lrx/functions/Func2;)Lrx/Single;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT1;>;",
            "Lrx/Single",
            "<+TT2;>;",
            "Lrx/functions/Func2",
            "<-TT1;-TT2;+TR;>;)",
            "Lrx/Single",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 979
    .local p0, "s1":Lrx/Single;, "Lrx/Single<+TT1;>;"
    .local p1, "s2":Lrx/Single;, "Lrx/Single<+TT2;>;"
    .local p2, "zipFunction":Lrx/functions/Func2;, "Lrx/functions/Func2<-TT1;-TT2;+TR;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Lrx/Single;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    new-instance v1, Lrx/Single$6;

    invoke-direct {v1, p2}, Lrx/Single$6;-><init>(Lrx/functions/Func2;)V

    invoke-static {v0, v1}, Lrx/internal/operators/SingleOperatorZip;->zip([Lrx/Single;Lrx/functions/FuncN;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public compose(Lrx/Single$Transformer;)Lrx/Single;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single$Transformer",
            "<-TT;+TR;>;)",
            "Lrx/Single",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 209
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "transformer":Lrx/Single$Transformer;, "Lrx/Single$Transformer<-TT;+TR;>;"
    invoke-interface {p1, p0}, Lrx/Single$Transformer;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Single;

    return-object v0
.end method

.method public final concatWith(Lrx/Single;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Single",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1352
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "t1":Lrx/Single;, "Lrx/Single<+TT;>;"
    invoke-static {p0, p1}, Lrx/Single;->concat(Lrx/Single;Lrx/Single;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final delay(JLjava/util/concurrent/TimeUnit;)Lrx/Single;
    .registers 5
    .param p1, "delay"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 2497
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lrx/Single;->delay(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public final delay(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Single;
    .registers 6
    .param p1, "delay"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 2475
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorDelay;

    invoke-direct {v0, p1, p2, p3, p4}, Lrx/internal/operators/OperatorDelay;-><init>(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)V

    invoke-virtual {p0, v0}, Lrx/Single;->lift(Lrx/Observable$Operator;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public final delaySubscription(Lrx/Observable;)Lrx/Single;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<*>;)",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 2834
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "other":Lrx/Observable;, "Lrx/Observable<*>;"
    if-nez p1, :cond_8

    .line 2835
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2837
    :cond_8
    new-instance v0, Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther;-><init>(Lrx/Single;Lrx/Observable;)V

    invoke-static {v0}, Lrx/Single;->create(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public final doAfterTerminate(Lrx/functions/Action0;)Lrx/Single;
    .registers 3
    .param p1, "action"    # Lrx/functions/Action0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action0;",
            ")",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 2582
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    new-instance v0, Lrx/internal/operators/SingleDoAfterTerminate;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/SingleDoAfterTerminate;-><init>(Lrx/Single;Lrx/functions/Action0;)V

    invoke-static {v0}, Lrx/Single;->create(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public final doOnError(Lrx/functions/Action1;)Lrx/Single;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 2376
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "onError":Lrx/functions/Action1;, "Lrx/functions/Action1<Ljava/lang/Throwable;>;"
    new-instance v0, Lrx/Single$23;

    invoke-direct {v0, p0, p1}, Lrx/Single$23;-><init>(Lrx/Single;Lrx/functions/Action1;)V

    .line 2393
    .local v0, "observer":Lrx/Observer;, "Lrx/Observer<TT;>;"
    new-instance v1, Lrx/internal/operators/OperatorDoOnEach;

    invoke-direct {v1, v0}, Lrx/internal/operators/OperatorDoOnEach;-><init>(Lrx/Observer;)V

    invoke-virtual {p0, v1}, Lrx/Single;->lift(Lrx/Observable$Operator;)Lrx/Single;

    move-result-object v1

    return-object v1
.end method

.method public final doOnSubscribe(Lrx/functions/Action0;)Lrx/Single;
    .registers 3
    .param p1, "subscribe"    # Lrx/functions/Action0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action0;",
            ")",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 2451
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorDoOnSubscribe;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorDoOnSubscribe;-><init>(Lrx/functions/Action0;)V

    invoke-virtual {p0, v0}, Lrx/Single;->lift(Lrx/Observable$Operator;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public final doOnSuccess(Lrx/functions/Action1;)Lrx/Single;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<-TT;>;)",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 2412
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "onSuccess":Lrx/functions/Action1;, "Lrx/functions/Action1<-TT;>;"
    new-instance v0, Lrx/Single$24;

    invoke-direct {v0, p0, p1}, Lrx/Single$24;-><init>(Lrx/Single;Lrx/functions/Action1;)V

    .line 2429
    .local v0, "observer":Lrx/Observer;, "Lrx/Observer<TT;>;"
    new-instance v1, Lrx/internal/operators/OperatorDoOnEach;

    invoke-direct {v1, v0}, Lrx/internal/operators/OperatorDoOnEach;-><init>(Lrx/Observer;)V

    invoke-virtual {p0, v1}, Lrx/Single;->lift(Lrx/Observable$Operator;)Lrx/Single;

    move-result-object v1

    return-object v1
.end method

.method public final doOnUnsubscribe(Lrx/functions/Action0;)Lrx/Single;
    .registers 3
    .param p1, "action"    # Lrx/functions/Action0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action0;",
            ")",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 2561
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorDoOnUnsubscribe;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorDoOnUnsubscribe;-><init>(Lrx/functions/Action0;)V

    invoke-virtual {p0, v0}, Lrx/Single;->lift(Lrx/Observable$Operator;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public final flatMap(Lrx/functions/Func1;)Lrx/Single;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Single",
            "<+TR;>;>;)",
            "Lrx/Single",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1372
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "func":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Lrx/Single<+TR;>;>;"
    instance-of v0, p0, Lrx/internal/util/ScalarSynchronousSingle;

    if-eqz v0, :cond_b

    .line 1373
    check-cast p0, Lrx/internal/util/ScalarSynchronousSingle;

    .end local p0    # "this":Lrx/Single;, "Lrx/Single<TT;>;"
    invoke-virtual {p0, p1}, Lrx/internal/util/ScalarSynchronousSingle;->scalarFlatMap(Lrx/functions/Func1;)Lrx/Single;

    move-result-object v0

    .line 1375
    :goto_a
    return-object v0

    .restart local p0    # "this":Lrx/Single;, "Lrx/Single<TT;>;"
    :cond_b
    invoke-virtual {p0, p1}, Lrx/Single;->map(Lrx/functions/Func1;)Lrx/Single;

    move-result-object v0

    invoke-static {v0}, Lrx/Single;->merge(Lrx/Single;)Lrx/Single;

    move-result-object v0

    goto :goto_a
.end method

.method public final flatMapObservable(Lrx/functions/Func1;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Observable",
            "<+TR;>;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1396
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "func":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Lrx/Observable<+TR;>;>;"
    invoke-virtual {p0, p1}, Lrx/Single;->map(Lrx/functions/Func1;)Lrx/Single;

    move-result-object v0

    invoke-static {v0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->merge(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final lift(Lrx/Observable$Operator;)Lrx/Single;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable$Operator",
            "<+TR;-TT;>;)",
            "Lrx/Single",
            "<TR;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 163
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "lift":Lrx/Observable$Operator;, "Lrx/Observable$Operator<+TR;-TT;>;"
    new-instance v0, Lrx/Single;

    new-instance v1, Lrx/Single$2;

    invoke-direct {v1, p0, p1}, Lrx/Single$2;-><init>(Lrx/Single;Lrx/Observable$Operator;)V

    invoke-direct {v0, v1}, Lrx/Single;-><init>(Lrx/Observable$OnSubscribe;)V

    return-object v0
.end method

.method public final map(Lrx/functions/Func1;)Lrx/Single;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+TR;>;)",
            "Lrx/Single",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1416
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "func":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TR;>;"
    new-instance v0, Lrx/internal/operators/SingleOnSubscribeMap;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/SingleOnSubscribeMap;-><init>(Lrx/Single;Lrx/functions/Func1;)V

    invoke-static {v0}, Lrx/Single;->create(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public final mergeWith(Lrx/Single;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Single",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1437
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "t1":Lrx/Single;, "Lrx/Single<+TT;>;"
    invoke-static {p0, p1}, Lrx/Single;->merge(Lrx/Single;Lrx/Single;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final observeOn(Lrx/Scheduler;)Lrx/Single;
    .registers 4
    .param p1, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1459
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    instance-of v0, p0, Lrx/internal/util/ScalarSynchronousSingle;

    if-eqz v0, :cond_b

    .line 1460
    check-cast p0, Lrx/internal/util/ScalarSynchronousSingle;

    .end local p0    # "this":Lrx/Single;, "Lrx/Single<TT;>;"
    invoke-virtual {p0, p1}, Lrx/internal/util/ScalarSynchronousSingle;->scalarScheduleOn(Lrx/Scheduler;)Lrx/Single;

    move-result-object v0

    .line 1464
    :goto_a
    return-object v0

    .restart local p0    # "this":Lrx/Single;, "Lrx/Single<TT;>;"
    :cond_b
    new-instance v0, Lrx/internal/operators/OperatorObserveOn;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/OperatorObserveOn;-><init>(Lrx/Scheduler;Z)V

    invoke-virtual {p0, v0}, Lrx/Single;->lift(Lrx/Observable$Operator;)Lrx/Single;

    move-result-object v0

    goto :goto_a
.end method

.method public final onErrorResumeNext(Lrx/Single;)Lrx/Single;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Single",
            "<+TT;>;)",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 1529
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "resumeSingleInCaseOfError":Lrx/Single;, "Lrx/Single<+TT;>;"
    new-instance v0, Lrx/Single;

    invoke-static {p0, p1}, Lrx/internal/operators/SingleOperatorOnErrorResumeNext;->withOther(Lrx/Single;Lrx/Single;)Lrx/internal/operators/SingleOperatorOnErrorResumeNext;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/Single;-><init>(Lrx/Single$OnSubscribe;)V

    return-object v0
.end method

.method public final onErrorResumeNext(Lrx/functions/Func1;)Lrx/Single;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<",
            "Ljava/lang/Throwable;",
            "+",
            "Lrx/Single",
            "<+TT;>;>;)",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 1563
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "resumeFunctionInCaseOfError":Lrx/functions/Func1;, "Lrx/functions/Func1<Ljava/lang/Throwable;+Lrx/Single<+TT;>;>;"
    new-instance v0, Lrx/Single;

    invoke-static {p0, p1}, Lrx/internal/operators/SingleOperatorOnErrorResumeNext;->withFunction(Lrx/Single;Lrx/functions/Func1;)Lrx/internal/operators/SingleOperatorOnErrorResumeNext;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/Single;-><init>(Lrx/Single$OnSubscribe;)V

    return-object v0
.end method

.method public final onErrorReturn(Lrx/functions/Func1;)Lrx/Single;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<",
            "Ljava/lang/Throwable;",
            "+TT;>;)",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1495
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "resumeFunction":Lrx/functions/Func1;, "Lrx/functions/Func1<Ljava/lang/Throwable;+TT;>;"
    invoke-static {p1}, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;->withSingle(Lrx/functions/Func1;)Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Single;->lift(Lrx/Observable$Operator;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public final retry()Lrx/Single;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2645
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    invoke-virtual {p0}, Lrx/Single;->toObservable()Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Observable;->retry()Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Observable;->toSingle()Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public final retry(J)Lrx/Single;
    .registers 4
    .param p1, "count"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2670
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    invoke-virtual {p0}, Lrx/Single;->toObservable()Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lrx/Observable;->retry(J)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Observable;->toSingle()Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public final retry(Lrx/functions/Func2;)Lrx/Single;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func2",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2694
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "predicate":Lrx/functions/Func2;, "Lrx/functions/Func2<Ljava/lang/Integer;Ljava/lang/Throwable;Ljava/lang/Boolean;>;"
    invoke-virtual {p0}, Lrx/Single;->toObservable()Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/Observable;->retry(Lrx/functions/Func2;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Observable;->toSingle()Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public final retryWhen(Lrx/functions/Func1;)Lrx/Single;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<",
            "Lrx/Observable",
            "<+",
            "Ljava/lang/Throwable;",
            ">;+",
            "Lrx/Observable",
            "<*>;>;)",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2738
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "notificationHandler":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/Observable<+Ljava/lang/Throwable;>;+Lrx/Observable<*>;>;"
    invoke-virtual {p0}, Lrx/Single;->toObservable()Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/Observable;->retryWhen(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Observable;->toSingle()Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public final subscribe()Lrx/Subscription;
    .registers 2

    .prologue
    .line 1579
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    new-instance v0, Lrx/Single$14;

    invoke-direct {v0, p0}, Lrx/Single$14;-><init>(Lrx/Single;)V

    invoke-virtual {p0, v0}, Lrx/Single;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public final subscribe(Lrx/Observer;)Lrx/Subscription;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observer",
            "<-TT;>;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 1736
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "observer":Lrx/Observer;, "Lrx/Observer<-TT;>;"
    if-nez p1, :cond_a

    .line 1737
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "observer is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1739
    :cond_a
    new-instance v0, Lrx/Single$17;

    invoke-direct {v0, p0, p1}, Lrx/Single$17;-><init>(Lrx/Single;Lrx/Observer;)V

    invoke-virtual {p0, v0}, Lrx/Single;->subscribe(Lrx/SingleSubscriber;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public final subscribe(Lrx/SingleSubscriber;)Lrx/Subscription;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/SingleSubscriber",
            "<-TT;>;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 1874
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "te":Lrx/SingleSubscriber;, "Lrx/SingleSubscriber<-TT;>;"
    new-instance v0, Lrx/Single$18;

    invoke-direct {v0, p0, p1}, Lrx/Single$18;-><init>(Lrx/Single;Lrx/SingleSubscriber;)V

    .line 1892
    .local v0, "s":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    invoke-virtual {p1, v0}, Lrx/SingleSubscriber;->add(Lrx/Subscription;)V

    .line 1893
    invoke-virtual {p0, v0}, Lrx/Single;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 1894
    return-object v0
.end method

.method public final subscribe(Lrx/Subscriber;)Lrx/Subscription;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 1789
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    if-nez p1, :cond_a

    .line 1790
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "observer can not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1792
    :cond_a
    iget-object v4, p0, Lrx/Single;->onSubscribe:Lrx/Observable$OnSubscribe;

    if-nez v4, :cond_16

    .line 1793
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "onSubscribe function can not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1801
    :cond_16
    invoke-virtual {p1}, Lrx/Subscriber;->onStart()V

    .line 1808
    instance-of v4, p1, Lrx/observers/SafeSubscriber;

    if-nez v4, :cond_23

    .line 1810
    new-instance v3, Lrx/observers/SafeSubscriber;

    invoke-direct {v3, p1}, Lrx/observers/SafeSubscriber;-><init>(Lrx/Subscriber;)V

    .end local p1    # "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .local v3, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    move-object p1, v3

    .line 1816
    .end local v3    # "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .restart local p1    # "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :cond_23
    :try_start_23
    iget-object v4, p0, Lrx/Single;->onSubscribe:Lrx/Observable$OnSubscribe;

    invoke-static {p0, v4}, Lrx/plugins/RxJavaHooks;->onSingleStart(Lrx/Single;Lrx/Observable$OnSubscribe;)Lrx/Observable$OnSubscribe;

    move-result-object v4

    invoke-interface {v4, p1}, Lrx/Observable$OnSubscribe;->call(Ljava/lang/Object;)V

    .line 1817
    invoke-static {p1}, Lrx/plugins/RxJavaHooks;->onSingleReturn(Lrx/Subscription;)Lrx/Subscription;
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_2f} :catch_31

    move-result-object v4

    .line 1834
    :goto_30
    return-object v4

    .line 1818
    :catch_31
    move-exception v0

    .line 1820
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 1823
    :try_start_35
    invoke-static {v0}, Lrx/plugins/RxJavaHooks;->onSingleError(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {p1, v4}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_3c} :catch_41

    .line 1834
    invoke-static {}, Lrx/subscriptions/Subscriptions;->empty()Lrx/Subscription;

    move-result-object v4

    goto :goto_30

    .line 1824
    :catch_41
    move-exception v1

    .line 1825
    .local v1, "e2":Ljava/lang/Throwable;
    invoke-static {v1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 1828
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error occurred attempting to subscribe ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] and then again while trying to pass to onError."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1830
    .local v2, "r":Ljava/lang/RuntimeException;
    invoke-static {v2}, Lrx/plugins/RxJavaHooks;->onSingleError(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1832
    throw v2
.end method

.method public final subscribe(Lrx/functions/Action1;)Lrx/Subscription;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<-TT;>;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 1616
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "onSuccess":Lrx/functions/Action1;, "Lrx/functions/Action1<-TT;>;"
    if-nez p1, :cond_a

    .line 1617
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onSuccess can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1620
    :cond_a
    new-instance v0, Lrx/Single$15;

    invoke-direct {v0, p0, p1}, Lrx/Single$15;-><init>(Lrx/Single;Lrx/functions/Action1;)V

    invoke-virtual {p0, v0}, Lrx/Single;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public final subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<-TT;>;",
            "Lrx/functions/Action1",
            "<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 1660
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "onSuccess":Lrx/functions/Action1;, "Lrx/functions/Action1<-TT;>;"
    .local p2, "onError":Lrx/functions/Action1;, "Lrx/functions/Action1<Ljava/lang/Throwable;>;"
    if-nez p1, :cond_a

    .line 1661
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onSuccess can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1663
    :cond_a
    if-nez p2, :cond_14

    .line 1664
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onError can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1667
    :cond_14
    new-instance v0, Lrx/Single$16;

    invoke-direct {v0, p0, p2, p1}, Lrx/Single$16;-><init>(Lrx/Single;Lrx/functions/Action1;Lrx/functions/Action1;)V

    invoke-virtual {p0, v0}, Lrx/Single;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public final subscribeOn(Lrx/Scheduler;)Lrx/Single;
    .registers 3
    .param p1, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1914
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    instance-of v0, p0, Lrx/internal/util/ScalarSynchronousSingle;

    if-eqz v0, :cond_b

    .line 1915
    check-cast p0, Lrx/internal/util/ScalarSynchronousSingle;

    .end local p0    # "this":Lrx/Single;, "Lrx/Single<TT;>;"
    invoke-virtual {p0, p1}, Lrx/internal/util/ScalarSynchronousSingle;->scalarScheduleOn(Lrx/Scheduler;)Lrx/Single;

    move-result-object v0

    .line 1917
    :goto_a
    return-object v0

    .restart local p0    # "this":Lrx/Single;, "Lrx/Single<TT;>;"
    :cond_b
    new-instance v0, Lrx/Single$19;

    invoke-direct {v0, p0, p1}, Lrx/Single$19;-><init>(Lrx/Single;Lrx/Scheduler;)V

    invoke-static {v0}, Lrx/Single;->create(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object v0

    goto :goto_a
.end method

.method public final takeUntil(Lrx/Completable;)Lrx/Single;
    .registers 3
    .param p1, "other"    # Lrx/Completable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Completable;",
            ")",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1973
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    new-instance v0, Lrx/Single$20;

    invoke-direct {v0, p0, p1}, Lrx/Single$20;-><init>(Lrx/Single;Lrx/Completable;)V

    invoke-virtual {p0, v0}, Lrx/Single;->lift(Lrx/Observable$Operator;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public final takeUntil(Lrx/Observable;)Lrx/Single;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TE;>;)",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2049
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "other":Lrx/Observable;, "Lrx/Observable<+TE;>;"
    new-instance v0, Lrx/Single$21;

    invoke-direct {v0, p0, p1}, Lrx/Single$21;-><init>(Lrx/Single;Lrx/Observable;)V

    invoke-virtual {p0, v0}, Lrx/Single;->lift(Lrx/Observable$Operator;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public final takeUntil(Lrx/Single;)Lrx/Single;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TE;>;)",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2126
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "other":Lrx/Single;, "Lrx/Single<+TE;>;"
    new-instance v0, Lrx/Single$22;

    invoke-direct {v0, p0, p1}, Lrx/Single$22;-><init>(Lrx/Single;Lrx/Single;)V

    invoke-virtual {p0, v0}, Lrx/Single;->lift(Lrx/Observable$Operator;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;)Lrx/Single;
    .registers 11
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2233
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    const/4 v5, 0x0

    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lrx/Single;->timeout(JLjava/util/concurrent/TimeUnit;Lrx/Single;Lrx/Scheduler;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Single;
    .registers 12
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2258
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    const/4 v5, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lrx/Single;->timeout(JLjava/util/concurrent/TimeUnit;Lrx/Single;Lrx/Scheduler;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;Lrx/Single;)Lrx/Single;
    .registers 12
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Single",
            "<+TT;>;)",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2282
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p4, "other":Lrx/Single;, "Lrx/Single<+TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lrx/Single;->timeout(JLjava/util/concurrent/TimeUnit;Lrx/Single;Lrx/Scheduler;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;Lrx/Single;Lrx/Scheduler;)Lrx/Single;
    .registers 13
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2308
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p4, "other":Lrx/Single;, "Lrx/Single<+TT;>;"
    if-nez p4, :cond_b

    .line 2309
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    invoke-static {v0}, Lrx/Single;->error(Ljava/lang/Throwable;)Lrx/Single;

    move-result-object p4

    .line 2311
    :cond_b
    new-instance v1, Lrx/internal/operators/OperatorTimeout;

    invoke-static {p4}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v5

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lrx/internal/operators/OperatorTimeout;-><init>(JLjava/util/concurrent/TimeUnit;Lrx/Observable;Lrx/Scheduler;)V

    invoke-virtual {p0, v1}, Lrx/Single;->lift(Lrx/Observable$Operator;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public final toBlocking()Lrx/singles/BlockingSingle;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/singles/BlockingSingle",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 2326
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    invoke-static {p0}, Lrx/singles/BlockingSingle;->from(Lrx/Single;)Lrx/singles/BlockingSingle;

    move-result-object v0

    return-object v0
.end method

.method public final toCompletable()Lrx/Completable;
    .registers 2
    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 2210
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    invoke-static {p0}, Lrx/Completable;->fromSingle(Lrx/Single;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final toObservable()Lrx/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2186
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 1705
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :try_start_0
    invoke-virtual {p1}, Lrx/Subscriber;->onStart()V

    .line 1706
    iget-object v3, p0, Lrx/Single;->onSubscribe:Lrx/Observable$OnSubscribe;

    invoke-static {p0, v3}, Lrx/plugins/RxJavaHooks;->onSingleStart(Lrx/Single;Lrx/Observable$OnSubscribe;)Lrx/Observable$OnSubscribe;

    move-result-object v3

    invoke-interface {v3, p1}, Lrx/Observable$OnSubscribe;->call(Ljava/lang/Object;)V

    .line 1707
    invoke-static {p1}, Lrx/plugins/RxJavaHooks;->onSingleReturn(Lrx/Subscription;)Lrx/Subscription;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v3

    .line 1724
    :goto_10
    return-object v3

    .line 1708
    :catch_11
    move-exception v0

    .line 1710
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 1713
    :try_start_15
    invoke-static {v0}, Lrx/plugins/RxJavaHooks;->onSingleError(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {p1, v3}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_1c} :catch_21

    .line 1724
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v3

    goto :goto_10

    .line 1714
    :catch_21
    move-exception v1

    .line 1715
    .local v1, "e2":Ljava/lang/Throwable;
    invoke-static {v1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 1718
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error occurred attempting to subscribe ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] and then again while trying to pass to onError."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1720
    .local v2, "r":Ljava/lang/RuntimeException;
    invoke-static {v2}, Lrx/plugins/RxJavaHooks;->onSingleError(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1722
    throw v2
.end method

.method public final zipWith(Lrx/Single;Lrx/functions/Func2;)Lrx/Single;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT2;>;",
            "Lrx/functions/Func2",
            "<-TT;-TT2;+TR;>;)",
            "Lrx/Single",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 2354
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "other":Lrx/Single;, "Lrx/Single<+TT2;>;"
    .local p2, "zipFunction":Lrx/functions/Func2;, "Lrx/functions/Func2<-TT;-TT2;+TR;>;"
    invoke-static {p0, p1, p2}, Lrx/Single;->zip(Lrx/Single;Lrx/Single;Lrx/functions/Func2;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method
