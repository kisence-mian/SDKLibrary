.class Lcom/kwad/sdk/core/videocache/a/e$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/videocache/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/core/videocache/a/e;

.field private final b:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/core/videocache/a/e;Ljava/io/File;)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/core/videocache/a/e$a;->a:Lcom/kwad/sdk/core/videocache/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/kwad/sdk/core/videocache/a/e$a;->b:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/a/e$a;->a:Lcom/kwad/sdk/core/videocache/a/e;

    iget-object v1, p0, Lcom/kwad/sdk/core/videocache/a/e$a;->b:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/videocache/a/e;->a(Lcom/kwad/sdk/core/videocache/a/e;Ljava/io/File;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/core/videocache/a/e$a;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
