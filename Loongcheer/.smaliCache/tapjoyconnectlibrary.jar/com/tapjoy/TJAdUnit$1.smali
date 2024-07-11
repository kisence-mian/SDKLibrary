.class final Lcom/tapjoy/TJAdUnit$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJAdUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/TJAdUnit;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJAdUnit;)V
    .registers 2

    .line 139
    iput-object p1, p0, Lcom/tapjoy/TJAdUnit$1;->a:Lcom/tapjoy/TJAdUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 142
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$1;->a:Lcom/tapjoy/TJAdUnit;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnit;->a(Lcom/tapjoy/TJAdUnit;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 143
    iget-object v1, p0, Lcom/tapjoy/TJAdUnit$1;->a:Lcom/tapjoy/TJAdUnit;

    invoke-static {v1}, Lcom/tapjoy/TJAdUnit;->b(Lcom/tapjoy/TJAdUnit;)I

    move-result v1

    if-eq v1, v0, :cond_1d

    .line 144
    iget-object v1, p0, Lcom/tapjoy/TJAdUnit$1;->a:Lcom/tapjoy/TJAdUnit;

    invoke-static {v1, v0}, Lcom/tapjoy/TJAdUnit;->a(Lcom/tapjoy/TJAdUnit;I)I

    .line 145
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$1;->a:Lcom/tapjoy/TJAdUnit;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnit;->c(Lcom/tapjoy/TJAdUnit;)V

    .line 147
    :cond_1d
    return-void
.end method
