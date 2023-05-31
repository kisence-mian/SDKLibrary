.class final Lcom/mintegral/msdk/mtgdownload/k$2;
.super Ljava/lang/Object;
.source "WorkThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/mtgdownload/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/mintegral/msdk/mtgdownload/k;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/mtgdownload/k;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 429
    iput-object p1, p0, Lcom/mintegral/msdk/mtgdownload/k$2;->b:Lcom/mintegral/msdk/mtgdownload/k;

    iput-object p2, p0, Lcom/mintegral/msdk/mtgdownload/k$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 432
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/k$2;->b:Lcom/mintegral/msdk/mtgdownload/k;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgdownload/k;->a(Lcom/mintegral/msdk/mtgdownload/k;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgdownload/k$2;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 433
    return-void
.end method
