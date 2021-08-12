.class Lcom/sigmob/sdk/a/b$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/a/b;->a(ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/sigmob/sdk/a/b;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/a/b;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/sigmob/sdk/a/b$9;->d:Lcom/sigmob/sdk/a/b;

    iput p2, p0, Lcom/sigmob/sdk/a/b$9;->a:I

    iput-object p3, p0, Lcom/sigmob/sdk/a/b$9;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/sigmob/sdk/a/b$9;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/a/b$9;->d:Lcom/sigmob/sdk/a/b;

    invoke-static {v0}, Lcom/sigmob/sdk/a/b;->a(Lcom/sigmob/sdk/a/b;)Lcom/sigmob/sdk/a/a;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/sigmob/sdk/a/b$9;->d:Lcom/sigmob/sdk/a/b;

    invoke-static {v0}, Lcom/sigmob/sdk/a/b;->a(Lcom/sigmob/sdk/a/b;)Lcom/sigmob/sdk/a/a;

    move-result-object v0

    iget v1, p0, Lcom/sigmob/sdk/a/b$9;->a:I

    iget-object v2, p0, Lcom/sigmob/sdk/a/b$9;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/sigmob/sdk/a/b$9;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/sigmob/sdk/a/a;->onDriftAdError(ILjava/lang/String;Ljava/lang/String;)V

    :cond_17
    return-void
.end method
