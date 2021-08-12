.class Lcom/sigmob/sdk/a/b$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/a/b;->e(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/a/b;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/a/b;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/a/b$5;->a:Lcom/sigmob/sdk/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/a/b$5;->a:Lcom/sigmob/sdk/a/b;

    invoke-static {v0}, Lcom/sigmob/sdk/a/b;->a(Lcom/sigmob/sdk/a/b;)Lcom/sigmob/sdk/a/a;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/sigmob/sdk/a/b$5;->a:Lcom/sigmob/sdk/a/b;

    invoke-static {v0}, Lcom/sigmob/sdk/a/b;->a(Lcom/sigmob/sdk/a/b;)Lcom/sigmob/sdk/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/a/b$5;->a:Lcom/sigmob/sdk/a/b;

    invoke-static {v1}, Lcom/sigmob/sdk/a/b;->b(Lcom/sigmob/sdk/a/b;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/a/a;->onDriftAdClose(Ljava/lang/String;)V

    :cond_17
    return-void
.end method
