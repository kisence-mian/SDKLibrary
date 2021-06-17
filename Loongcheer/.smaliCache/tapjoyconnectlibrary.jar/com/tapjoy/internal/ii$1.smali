.class final Lcom/tapjoy/internal/ii$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/ii;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/ii;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/ii;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/tapjoy/internal/ii$1;->a:Lcom/tapjoy/internal/ii;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 31
    iget-object v0, p0, Lcom/tapjoy/internal/ii$1;->a:Lcom/tapjoy/internal/ii;

    invoke-static {v0}, Lcom/tapjoy/internal/ii;->a(Lcom/tapjoy/internal/ii;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/tapjoy/internal/ii$1;->a:Lcom/tapjoy/internal/ii;

    invoke-static {v0}, Lcom/tapjoy/internal/ii;->a(Lcom/tapjoy/internal/ii;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 32
    iget-object v0, p0, Lcom/tapjoy/internal/ii$1;->a:Lcom/tapjoy/internal/ii;

    invoke-static {v0}, Lcom/tapjoy/internal/ii;->a(Lcom/tapjoy/internal/ii;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/ii;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 34
    :cond_1d
    return-void
.end method
