.class public final Lcom/kwad/sdk/core/videocache/f$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/videocache/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/io/File;

.field private b:Lcom/kwad/sdk/core/videocache/a/c;

.field private c:Lcom/kwad/sdk/core/videocache/a/a;

.field private d:Lcom/kwad/sdk/core/videocache/d/b;

.field private e:Lcom/kwad/sdk/core/videocache/b/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/kwad/sdk/core/videocache/d/c;->a(Landroid/content/Context;)Lcom/kwad/sdk/core/videocache/d/b;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/videocache/f$a;->d:Lcom/kwad/sdk/core/videocache/d/b;

    invoke-static {p1}, Lcom/kwad/sdk/core/videocache/o;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/sdk/core/videocache/f$a;->a:Ljava/io/File;

    new-instance p1, Lcom/kwad/sdk/core/videocache/a/g;

    const-wide/32 v0, 0x20000000

    invoke-direct {p1, v0, v1}, Lcom/kwad/sdk/core/videocache/a/g;-><init>(J)V

    iput-object p1, p0, Lcom/kwad/sdk/core/videocache/f$a;->c:Lcom/kwad/sdk/core/videocache/a/a;

    new-instance p1, Lcom/kwad/sdk/core/videocache/a/f;

    invoke-direct {p1}, Lcom/kwad/sdk/core/videocache/a/f;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/core/videocache/f$a;->b:Lcom/kwad/sdk/core/videocache/a/c;

    new-instance p1, Lcom/kwad/sdk/core/videocache/b/a;

    invoke-direct {p1}, Lcom/kwad/sdk/core/videocache/b/a;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/core/videocache/f$a;->e:Lcom/kwad/sdk/core/videocache/b/b;

    return-void
.end method

.method private b()Lcom/kwad/sdk/core/videocache/c;
    .registers 8

    new-instance v6, Lcom/kwad/sdk/core/videocache/c;

    iget-object v1, p0, Lcom/kwad/sdk/core/videocache/f$a;->a:Ljava/io/File;

    iget-object v2, p0, Lcom/kwad/sdk/core/videocache/f$a;->b:Lcom/kwad/sdk/core/videocache/a/c;

    iget-object v3, p0, Lcom/kwad/sdk/core/videocache/f$a;->c:Lcom/kwad/sdk/core/videocache/a/a;

    iget-object v4, p0, Lcom/kwad/sdk/core/videocache/f$a;->d:Lcom/kwad/sdk/core/videocache/d/b;

    iget-object v5, p0, Lcom/kwad/sdk/core/videocache/f$a;->e:Lcom/kwad/sdk/core/videocache/b/b;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/kwad/sdk/core/videocache/c;-><init>(Ljava/io/File;Lcom/kwad/sdk/core/videocache/a/c;Lcom/kwad/sdk/core/videocache/a/a;Lcom/kwad/sdk/core/videocache/d/b;Lcom/kwad/sdk/core/videocache/b/b;)V

    return-object v6
.end method


# virtual methods
.method public a(J)Lcom/kwad/sdk/core/videocache/f$a;
    .registers 4

    new-instance v0, Lcom/kwad/sdk/core/videocache/a/g;

    invoke-direct {v0, p1, p2}, Lcom/kwad/sdk/core/videocache/a/g;-><init>(J)V

    iput-object v0, p0, Lcom/kwad/sdk/core/videocache/f$a;->c:Lcom/kwad/sdk/core/videocache/a/a;

    return-object p0
.end method

.method public a()Lcom/kwad/sdk/core/videocache/f;
    .registers 4

    invoke-direct {p0}, Lcom/kwad/sdk/core/videocache/f$a;->b()Lcom/kwad/sdk/core/videocache/c;

    move-result-object v0

    new-instance v1, Lcom/kwad/sdk/core/videocache/f;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/kwad/sdk/core/videocache/f;-><init>(Lcom/kwad/sdk/core/videocache/c;Lcom/kwad/sdk/core/videocache/f$1;)V

    return-object v1
.end method
