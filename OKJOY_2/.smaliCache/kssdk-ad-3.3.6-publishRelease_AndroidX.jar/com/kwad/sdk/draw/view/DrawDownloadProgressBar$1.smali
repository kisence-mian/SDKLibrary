.class Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar$1;->a:Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar$1;->a:Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;

    invoke-virtual {p1}, Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;->performClick()Z

    return-void
.end method
