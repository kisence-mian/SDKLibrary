.class Lcom/kwad/sdk/core/videocache/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Ljava/io/File;

.field public final b:Lcom/kwad/sdk/core/videocache/q/c;

.field public final c:Lcom/kwad/sdk/core/videocache/q/a;

.field public final d:Lcom/kwad/sdk/core/videocache/t/b;

.field public final e:Lcom/kwad/sdk/core/videocache/r/b;


# direct methods
.method constructor <init>(Ljava/io/File;Lcom/kwad/sdk/core/videocache/q/c;Lcom/kwad/sdk/core/videocache/q/a;Lcom/kwad/sdk/core/videocache/t/b;Lcom/kwad/sdk/core/videocache/r/b;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/core/videocache/c;->a:Ljava/io/File;

    iput-object p2, p0, Lcom/kwad/sdk/core/videocache/c;->b:Lcom/kwad/sdk/core/videocache/q/c;

    iput-object p3, p0, Lcom/kwad/sdk/core/videocache/c;->c:Lcom/kwad/sdk/core/videocache/q/a;

    iput-object p4, p0, Lcom/kwad/sdk/core/videocache/c;->d:Lcom/kwad/sdk/core/videocache/t/b;

    iput-object p5, p0, Lcom/kwad/sdk/core/videocache/c;->e:Lcom/kwad/sdk/core/videocache/r/b;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Ljava/io/File;
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/c;->b:Lcom/kwad/sdk/core/videocache/q/c;

    invoke-interface {v0, p1}, Lcom/kwad/sdk/core/videocache/q/c;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/kwad/sdk/core/videocache/c;->a:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method
