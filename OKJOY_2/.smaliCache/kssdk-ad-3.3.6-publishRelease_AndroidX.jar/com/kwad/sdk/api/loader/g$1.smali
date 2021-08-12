.class final Lcom/kwad/sdk/api/loader/g$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/api/loader/g;->g(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/api/loader/g$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/kwad/sdk/api/loader/g$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/api/loader/g$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/kwad/sdk/api/loader/g$1;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/kwad/sdk/api/loader/g;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3e

    array-length v1, v0

    if-lez v1, :cond_3e

    array-length v1, v0

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v1, :cond_3e

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/kwad/sdk/api/loader/g$1;->b:Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/kwad/sdk/api/loader/f;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-static {v3}, Lcom/kwad/sdk/api/loader/g;->a(Ljava/io/File;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3a} :catch_3d

    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :catch_3d
    move-exception v0

    :cond_3e
    return-void
.end method
