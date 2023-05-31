.class public final Lcom/mintegral/msdk/f/f$a;
.super Ljava/lang/Object;
.source "HttpProxyCacheServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/f/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/io/File;

.field private b:Lcom/mintegral/msdk/f/a/c;

.field private c:Lcom/mintegral/msdk/f/a/a;

.field private d:Lcom/mintegral/msdk/f/c/c;

.field private e:Lcom/mintegral/msdk/f/b/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 434
    invoke-static {p1}, Lcom/mintegral/msdk/f/c/d;->a(Landroid/content/Context;)Lcom/mintegral/msdk/f/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/f/f$a;->d:Lcom/mintegral/msdk/f/c/c;

    .line 435
    invoke-static {p1}, Lcom/mintegral/msdk/f/r;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/f/f$a;->a:Ljava/io/File;

    .line 436
    new-instance v0, Lcom/mintegral/msdk/f/a/g;

    invoke-direct {v0}, Lcom/mintegral/msdk/f/a/g;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/f/f$a;->c:Lcom/mintegral/msdk/f/a/a;

    .line 437
    new-instance v0, Lcom/mintegral/msdk/f/a/f;

    invoke-direct {v0}, Lcom/mintegral/msdk/f/a/f;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/f/f$a;->b:Lcom/mintegral/msdk/f/a/c;

    .line 438
    new-instance v0, Lcom/mintegral/msdk/f/b/a;

    invoke-direct {v0}, Lcom/mintegral/msdk/f/b/a;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/f/f$a;->e:Lcom/mintegral/msdk/f/b/b;

    .line 439
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/File;)Lcom/mintegral/msdk/f/f$a;
    .registers 3

    .prologue
    .line 454
    invoke-static {p1}, Lcom/mintegral/msdk/f/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lcom/mintegral/msdk/f/f$a;->a:Ljava/io/File;

    .line 455
    return-object p0
.end method

.method public final a()Lcom/mintegral/msdk/f/f;
    .registers 7

    .prologue
    .line 526
    .line 1531
    new-instance v0, Lcom/mintegral/msdk/f/c;

    iget-object v1, p0, Lcom/mintegral/msdk/f/f$a;->a:Ljava/io/File;

    iget-object v2, p0, Lcom/mintegral/msdk/f/f$a;->b:Lcom/mintegral/msdk/f/a/c;

    iget-object v3, p0, Lcom/mintegral/msdk/f/f$a;->c:Lcom/mintegral/msdk/f/a/a;

    iget-object v4, p0, Lcom/mintegral/msdk/f/f$a;->d:Lcom/mintegral/msdk/f/c/c;

    iget-object v5, p0, Lcom/mintegral/msdk/f/f$a;->e:Lcom/mintegral/msdk/f/b/b;

    invoke-direct/range {v0 .. v5}, Lcom/mintegral/msdk/f/c;-><init>(Ljava/io/File;Lcom/mintegral/msdk/f/a/c;Lcom/mintegral/msdk/f/a/a;Lcom/mintegral/msdk/f/c/c;Lcom/mintegral/msdk/f/b/b;)V

    .line 527
    new-instance v1, Lcom/mintegral/msdk/f/f;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/mintegral/msdk/f/f;-><init>(Lcom/mintegral/msdk/f/c;B)V

    return-object v1
.end method
