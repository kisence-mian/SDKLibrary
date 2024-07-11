.class final Lcom/kwad/sdk/core/video/a/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwai/sodler/lib/a/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/video/a/e;->d(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/core/video/a/e$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/kwad/sdk/core/video/a/e$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/kwai/sodler/lib/b/b;
    .registers 4

    new-instance p1, Lcom/kwai/sodler/lib/b/b;

    invoke-direct {p1}, Lcom/kwai/sodler/lib/b/b;-><init>()V

    iget-object v0, p0, Lcom/kwad/sdk/core/video/a/e$1;->a:Ljava/lang/String;

    iput-object v0, p1, Lcom/kwai/sodler/lib/b/b;->c:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/kwai/sodler/lib/b/b;->e:Z

    iget-object v1, p0, Lcom/kwad/sdk/core/video/a/e$1;->b:Ljava/lang/String;

    iput-object v1, p1, Lcom/kwai/sodler/lib/b/b;->a:Ljava/lang/String;

    const-string v1, "3.0"

    iput-object v1, p1, Lcom/kwai/sodler/lib/b/b;->b:Ljava/lang/String;

    iput-boolean v0, p1, Lcom/kwai/sodler/lib/b/b;->g:Z

    return-object p1
.end method
