.class final Lcom/kwad/sdk/api/loader/h$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/api/loader/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/kwad/sdk/api/loader/h$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/io/File;

.field final synthetic c:Lcom/kwad/sdk/api/loader/h$a;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/io/File;Lcom/kwad/sdk/api/loader/h$a;)V
    .registers 4

    iput-object p1, p0, Lcom/kwad/sdk/api/loader/h$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/kwad/sdk/api/loader/h$1;->b:Ljava/io/File;

    iput-object p3, p0, Lcom/kwad/sdk/api/loader/h$1;->c:Lcom/kwad/sdk/api/loader/h$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/api/loader/h$1;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/kwad/sdk/api/loader/h$1;->b:Ljava/io/File;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/kwad/sdk/api/loader/h;->a(Ljava/lang/String;Ljava/io/File;Lcom/kwad/sdk/api/loader/h$c;I)Z

    move-result v0

    iget-object v1, p0, Lcom/kwad/sdk/api/loader/h$1;->c:Lcom/kwad/sdk/api/loader/h$a;

    if-eqz v1, :cond_25

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/kwad/sdk/api/loader/h$1;->b:Ljava/io/File;

    invoke-interface {v1, v0}, Lcom/kwad/sdk/api/loader/h$a;->a(Ljava/io/File;)V

    goto :goto_25

    :cond_16
    invoke-interface {v1}, Lcom/kwad/sdk/api/loader/h$a;->a()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    goto :goto_25

    :catch_1a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/kwad/sdk/api/loader/h$1;->c:Lcom/kwad/sdk/api/loader/h$a;

    if-eqz v0, :cond_25

    invoke-interface {v0}, Lcom/kwad/sdk/api/loader/h$a;->a()V

    :cond_25
    :goto_25
    return-void
.end method
