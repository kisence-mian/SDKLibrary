.class final Lcom/tapjoy/TJAdUnitActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJAdUnitActivity;->handleClose(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/TJAdUnitActivity;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJAdUnitActivity;)V
    .registers 2

    .line 254
    iput-object p1, p0, Lcom/tapjoy/TJAdUnitActivity$1;->a:Lcom/tapjoy/TJAdUnitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 257
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity$1;->a:Lcom/tapjoy/TJAdUnitActivity;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnitActivity;->a(Lcom/tapjoy/TJAdUnitActivity;)Lcom/tapjoy/TJAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->getCloseRequested()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 258
    const-string v0, "TJAdUnitActivity"

    const-string v1, "Did not receive callback from content. Closing ad."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity$1;->a:Lcom/tapjoy/TJAdUnitActivity;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnitActivity;->finish()V

    .line 261
    :cond_18
    return-void
.end method
