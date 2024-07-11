.class final Lcom/tapjoy/TJCorePlacement$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJCorePlacement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/TJCorePlacement;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJCorePlacement;)V
    .registers 2

    .line 529
    iput-object p1, p0, Lcom/tapjoy/TJCorePlacement$5;->a:Lcom/tapjoy/TJCorePlacement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 532
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$5;->a:Lcom/tapjoy/TJCorePlacement;

    invoke-static {v0}, Lcom/tapjoy/TJCorePlacement;->n(Lcom/tapjoy/TJCorePlacement;)Lcom/tapjoy/internal/hi;

    move-result-object v0

    invoke-static {}, Lcom/tapjoy/internal/hb;->a()Lcom/tapjoy/internal/hb;

    move-result-object v1

    .line 1955
    iget-object v1, v1, Lcom/tapjoy/internal/hb;->o:Lcom/tapjoy/internal/hc;

    .line 532
    iget-object v2, p0, Lcom/tapjoy/TJCorePlacement$5;->a:Lcom/tapjoy/TJCorePlacement;

    iget-object v2, v2, Lcom/tapjoy/TJCorePlacement;->f:Lcom/tapjoy/internal/fx;

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/hi;->a(Lcom/tapjoy/internal/hc;Lcom/tapjoy/internal/fx;)V

    .line 533
    return-void
.end method
