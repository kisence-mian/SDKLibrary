.class public final Lcom/kwai/sodler/lib/ext/PluginError$CancelError;
.super Lcom/kwai/sodler/lib/ext/PluginError;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwai/sodler/lib/ext/PluginError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CancelError"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .registers 3

    const-string v0, "Operation was canceled."

    invoke-direct {p0, v0, p1}, Lcom/kwai/sodler/lib/ext/PluginError;-><init>(Ljava/lang/String;I)V

    return-void
.end method
