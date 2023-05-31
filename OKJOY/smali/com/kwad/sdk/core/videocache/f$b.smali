.class public final Lcom/kwad/sdk/core/videocache/f$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/videocache/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/io/File;

.field private b:Lcom/kwad/sdk/core/videocache/q/c;

.field private c:Lcom/kwad/sdk/core/videocache/q/a;

.field private d:Lcom/kwad/sdk/core/videocache/t/b;

.field private e:Lcom/kwad/sdk/core/videocache/r/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/kwad/sdk/core/videocache/t/c;->a(Landroid/content/Context;)Lcom/kwad/sdk/core/videocache/t/b;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/videocache/f$b;->d:Lcom/kwad/sdk/core/videocache/t/b;

    invoke-static {p1}, Lcom/kwad/sdk/core/videocache/p;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/videocache/f$b;->a:Ljava/io/File;

    new-instance v0, Lcom/kwad/sdk/core/videocache/q/g;

    const-wide/32 v2, 0x20000000

    invoke-direct {v0, v2, v3}, Lcom/kwad/sdk/core/videocache/q/g;-><init>(J)V

    iput-object v0, p0, Lcom/kwad/sdk/core/videocache/f$b;->c:Lcom/kwad/sdk/core/videocache/q/a;

    new-instance v0, Lcom/kwad/sdk/core/videocache/q/f;

    invoke-direct {v0}, Lcom/kwad/sdk/core/videocache/q/f;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/videocache/f$b;->b:Lcom/kwad/sdk/core/videocache/q/c;

    new-instance v0, Lcom/kwad/sdk/core/videocache/r/a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/videocache/r/a;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/videocache/f$b;->e:Lcom/kwad/sdk/core/videocache/r/b;

    return-void
.end method

.method private b()Lcom/kwad/sdk/core/videocache/c;
    .registers 7

    new-instance v0, Lcom/kwad/sdk/core/videocache/c;

    iget-object v1, p0, Lcom/kwad/sdk/core/videocache/f$b;->a:Ljava/io/File;

    iget-object v2, p0, Lcom/kwad/sdk/core/videocache/f$b;->b:Lcom/kwad/sdk/core/videocache/q/c;

    iget-object v3, p0, Lcom/kwad/sdk/core/videocache/f$b;->c:Lcom/kwad/sdk/core/videocache/q/a;

    iget-object v4, p0, Lcom/kwad/sdk/core/videocache/f$b;->d:Lcom/kwad/sdk/core/videocache/t/b;

    iget-object v5, p0, Lcom/kwad/sdk/core/videocache/f$b;->e:Lcom/kwad/sdk/core/videocache/r/b;

    invoke-direct/range {v0 .. v5}, Lcom/kwad/sdk/core/videocache/c;-><init>(Ljava/io/File;Lcom/kwad/sdk/core/videocache/q/c;Lcom/kwad/sdk/core/videocache/q/a;Lcom/kwad/sdk/core/videocache/t/b;Lcom/kwad/sdk/core/videocache/r/b;)V

    return-object v0
.end method


# virtual methods
.method public a(J)Lcom/kwad/sdk/core/videocache/f$b;
    .registers 4

    new-instance v0, Lcom/kwad/sdk/core/videocache/q/g;

    invoke-direct {v0, p1, p2}, Lcom/kwad/sdk/core/videocache/q/g;-><init>(J)V

    iput-object v0, p0, Lcom/kwad/sdk/core/videocache/f$b;->c:Lcom/kwad/sdk/core/videocache/q/a;

    return-object p0
.end method

.method public a()Lcom/kwad/sdk/core/videocache/f;
    .registers 4

    invoke-direct {p0}, Lcom/kwad/sdk/core/videocache/f$b;->b()Lcom/kwad/sdk/core/videocache/c;

    move-result-object v0

    new-instance v1, Lcom/kwad/sdk/core/videocache/f;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/kwad/sdk/core/videocache/f;-><init>(Lcom/kwad/sdk/core/videocache/c;Lcom/kwad/sdk/core/videocache/f$a;)V

    return-object v1
.end method
