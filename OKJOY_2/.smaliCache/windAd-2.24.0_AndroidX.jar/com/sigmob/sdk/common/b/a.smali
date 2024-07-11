.class Lcom/sigmob/sdk/common/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3

    new-instance v0, Lcom/sigmob/sdk/common/b/a$1;

    invoke-direct {v0, p0, p1}, Lcom/sigmob/sdk/common/b/a$1;-><init>(Lcom/sigmob/sdk/common/b/a;Ljava/lang/Runnable;)V

    return-object v0
.end method
