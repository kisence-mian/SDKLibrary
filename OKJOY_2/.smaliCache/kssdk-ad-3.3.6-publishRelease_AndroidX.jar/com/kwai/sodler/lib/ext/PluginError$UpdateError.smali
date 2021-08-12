.class public final Lcom/kwai/sodler/lib/ext/PluginError$UpdateError;
.super Lcom/kwai/sodler/lib/ext/PluginError;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwai/sodler/lib/ext/PluginError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdateError"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/kwai/sodler/lib/ext/PluginError;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/kwai/sodler/lib/ext/PluginError;-><init>(Ljava/lang/Throwable;I)V

    return-void
.end method
