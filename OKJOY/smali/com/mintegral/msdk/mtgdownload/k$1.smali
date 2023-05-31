.class final Lcom/mintegral/msdk/mtgdownload/k$1;
.super Ljava/lang/Object;
.source "WorkThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/mtgdownload/k;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/mtgdownload/k;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/mtgdownload/k;)V
    .registers 2

    .prologue
    .line 258
    iput-object p1, p0, Lcom/mintegral/msdk/mtgdownload/k$1;->a:Lcom/mintegral/msdk/mtgdownload/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 261
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/k$1;->a:Lcom/mintegral/msdk/mtgdownload/k;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgdownload/k;->a(Lcom/mintegral/msdk/mtgdownload/k;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/mintegral/msdk/mtgdownload/f;->m:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 262
    return-void
.end method
