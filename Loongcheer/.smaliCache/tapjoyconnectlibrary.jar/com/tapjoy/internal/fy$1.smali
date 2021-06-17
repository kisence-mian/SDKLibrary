.class final Lcom/tapjoy/internal/fy$1;
.super Lcom/tapjoy/internal/gb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/fy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/gb<",
        "Lcom/tapjoy/internal/hm$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/fy;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/fy;)V
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/tapjoy/internal/fy$1;->a:Lcom/tapjoy/internal/fy;

    invoke-direct {p0}, Lcom/tapjoy/internal/gb;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Landroid/content/Context;Lcom/tapjoy/TJPlacementListener;Ljava/lang/Object;)Lcom/tapjoy/TJPlacement;
    .registers 6

    .line 27
    check-cast p3, Lcom/tapjoy/internal/hm$a;

    .line 2041
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p3, Lcom/tapjoy/internal/hm$a;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p2}, Lcom/tapjoy/TJPlacementManager;->createPlacement(Landroid/content/Context;Ljava/lang/String;ZLcom/tapjoy/TJPlacementListener;)Lcom/tapjoy/TJPlacement;

    move-result-object p1

    .line 2042
    iget-object p2, p3, Lcom/tapjoy/internal/hm$a;->a:Ljava/lang/String;

    iput-object p2, p1, Lcom/tapjoy/TJPlacement;->pushId:Ljava/lang/String;

    .line 2043
    nop

    .line 27
    return-object p1
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 27
    check-cast p1, Lcom/tapjoy/internal/hm$a;

    .line 1048
    if-eqz p1, :cond_7

    .line 1049
    iget-object p1, p1, Lcom/tapjoy/internal/hm$a;->b:Ljava/lang/String;

    return-object p1

    .line 1051
    :cond_7
    const/4 p1, 0x0

    .line 27
    return-object p1
.end method

.method protected final a()Z
    .registers 2

    .line 35
    const/4 v0, 0x1

    return v0
.end method

.method protected final a(Ljava/util/Observer;)Z
    .registers 3

    .line 56
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isViewOpen()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 57
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tapjoy/TJPlacementManager;->dismissContentShowing(Z)V

    .line 59
    :cond_a
    invoke-super {p0, p1}, Lcom/tapjoy/internal/gb;->a(Ljava/util/Observer;)Z

    move-result p1

    return p1
.end method

.method protected final synthetic b(Ljava/lang/Object;)Lcom/tapjoy/internal/gb$a;
    .registers 4

    .line 27
    check-cast p1, Lcom/tapjoy/internal/hm$a;

    .line 3030
    new-instance v0, Lcom/tapjoy/internal/gb$a;

    iget-object v1, p1, Lcom/tapjoy/internal/hm$a;->d:Lcom/tapjoy/internal/fj;

    invoke-direct {v0, p0, p1, v1}, Lcom/tapjoy/internal/gb$a;-><init>(Lcom/tapjoy/internal/gb;Ljava/lang/Object;Lcom/tapjoy/internal/fj;)V

    .line 27
    return-object v0
.end method
