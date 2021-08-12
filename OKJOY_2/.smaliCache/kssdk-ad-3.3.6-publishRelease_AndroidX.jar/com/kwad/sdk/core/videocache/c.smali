.class Lcom/kwad/sdk/core/videocache/c;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/io/File;

.field public final b:Lcom/kwad/sdk/core/videocache/a/c;

.field public final c:Lcom/kwad/sdk/core/videocache/a/a;

.field public final d:Lcom/kwad/sdk/core/videocache/d/b;

.field public final e:Lcom/kwad/sdk/core/videocache/b/b;


# direct methods
.method constructor <init>(Ljava/io/File;Lcom/kwad/sdk/core/videocache/a/c;Lcom/kwad/sdk/core/videocache/a/a;Lcom/kwad/sdk/core/videocache/d/b;Lcom/kwad/sdk/core/videocache/b/b;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/core/videocache/c;->a:Ljava/io/File;

    iput-object p2, p0, Lcom/kwad/sdk/core/videocache/c;->b:Lcom/kwad/sdk/core/videocache/a/c;

    iput-object p3, p0, Lcom/kwad/sdk/core/videocache/c;->c:Lcom/kwad/sdk/core/videocache/a/a;

    iput-object p4, p0, Lcom/kwad/sdk/core/videocache/c;->d:Lcom/kwad/sdk/core/videocache/d/b;

    iput-object p5, p0, Lcom/kwad/sdk/core/videocache/c;->e:Lcom/kwad/sdk/core/videocache/b/b;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Ljava/io/File;
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/c;->b:Lcom/kwad/sdk/core/videocache/a/c;

    invoke-interface {v0, p1}, Lcom/kwad/sdk/core/videocache/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/kwad/sdk/core/videocache/c;->a:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
