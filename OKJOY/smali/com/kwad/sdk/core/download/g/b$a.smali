.class Lcom/kwad/sdk/core/download/g/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/download/g/b;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/core/download/g/b;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/download/g/b;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/download/g/b$a;->a:Lcom/kwad/sdk/core/download/g/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/download/g/b$a;->a:Lcom/kwad/sdk/core/download/g/b;

    invoke-static {v0}, Lcom/kwad/sdk/core/download/g/b;->a(Lcom/kwad/sdk/core/download/g/b;)Lcom/kwad/sdk/nativead/KsAppDownloadListener;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/download/g/b;->a(Lcom/kwad/sdk/core/download/g/b;Lcom/kwad/sdk/nativead/KsAppDownloadListener;)V

    return-void
.end method
