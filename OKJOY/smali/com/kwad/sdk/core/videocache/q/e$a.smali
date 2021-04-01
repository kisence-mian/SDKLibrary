.class Lcom/kwad/sdk/core/videocache/q/e$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/videocache/q/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/io/File;

.field final synthetic b:Lcom/kwad/sdk/core/videocache/q/e;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/core/videocache/q/e;Ljava/io/File;)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/core/videocache/q/e$a;->b:Lcom/kwad/sdk/core/videocache/q/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/kwad/sdk/core/videocache/q/e$a;->a:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/core/videocache/q/e$a;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/q/e$a;->b:Lcom/kwad/sdk/core/videocache/q/e;

    iget-object v1, p0, Lcom/kwad/sdk/core/videocache/q/e$a;->a:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/videocache/q/e;->a(Lcom/kwad/sdk/core/videocache/q/e;Ljava/io/File;)V

    const/4 v0, 0x0

    return-object v0
.end method
