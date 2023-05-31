.class Lcom/sigmob/sdk/base/common/a/a$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/common/a/a;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/common/a/a;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/common/a/a;Ljava/lang/Runnable;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/a/a$1;->a:Lcom/sigmob/sdk/base/common/a/a;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    return-void
.end method
