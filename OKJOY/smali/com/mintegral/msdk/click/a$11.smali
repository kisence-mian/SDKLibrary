.class final Lcom/mintegral/msdk/click/a$11;
.super Ljava/lang/Object;
.source "CommonClickControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/click/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/click/a;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/click/a;)V
    .registers 2

    .prologue
    .line 1627
    iput-object p1, p0, Lcom/mintegral/msdk/click/a$11;->a:Lcom/mintegral/msdk/click/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 1630
    iget-object v0, p0, Lcom/mintegral/msdk/click/a$11;->a:Lcom/mintegral/msdk/click/a;

    invoke-static {v0}, Lcom/mintegral/msdk/click/a;->h(Lcom/mintegral/msdk/click/a;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Opps!Access Unavailable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1631
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1632
    return-void
.end method
