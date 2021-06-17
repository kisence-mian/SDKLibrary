.class final Lcom/tapjoy/internal/fq$1;
.super Lcom/tapjoy/internal/gb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/fq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/gb<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/fq;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/fq;)V
    .registers 2

    .line 45
    iput-object p1, p0, Lcom/tapjoy/internal/fq$1;->a:Lcom/tapjoy/internal/fq;

    invoke-direct {p0}, Lcom/tapjoy/internal/gb;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Landroid/content/Context;Lcom/tapjoy/TJPlacementListener;Ljava/lang/Object;)Lcom/tapjoy/TJPlacement;
    .registers 5

    .line 45
    nop

    .line 2054
    const-string p3, "AppLaunch"

    const/4 v0, 0x1

    invoke-static {p1, p3, v0, p2}, Lcom/tapjoy/TJPlacementManager;->createPlacement(Landroid/content/Context;Ljava/lang/String;ZLcom/tapjoy/TJPlacementListener;)Lcom/tapjoy/TJPlacement;

    move-result-object p1

    .line 45
    return-object p1
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 1060
    nop

    .line 45
    const-string p1, "AppLaunch"

    return-object p1
.end method

.method protected final a()Z
    .registers 2

    .line 48
    invoke-super {p0}, Lcom/tapjoy/internal/gb;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/tapjoy/internal/hm;->c()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method
