.class final Lcom/tapjoy/internal/ii$2;
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

    .line 37
    iput-object p1, p0, Lcom/tapjoy/internal/ii$2;->a:Lcom/tapjoy/internal/ii;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/tapjoy/internal/ii$2;->a:Lcom/tapjoy/internal/ii;

    invoke-static {v0}, Lcom/tapjoy/internal/ii;->b(Lcom/tapjoy/internal/ii;)Landroid/graphics/Bitmap;

    .line 41
    iget-object v0, p0, Lcom/tapjoy/internal/ii$2;->a:Lcom/tapjoy/internal/ii;

    invoke-static {v0}, Lcom/tapjoy/internal/ii;->c(Lcom/tapjoy/internal/ii;)Lcom/tapjoy/internal/ie;

    .line 42
    iget-object v0, p0, Lcom/tapjoy/internal/ii$2;->a:Lcom/tapjoy/internal/ii;

    invoke-static {v0}, Lcom/tapjoy/internal/ii;->d(Lcom/tapjoy/internal/ii;)Ljava/lang/Thread;

    .line 43
    iget-object v0, p0, Lcom/tapjoy/internal/ii$2;->a:Lcom/tapjoy/internal/ii;

    invoke-static {v0}, Lcom/tapjoy/internal/ii;->e(Lcom/tapjoy/internal/ii;)Z

    .line 44
    return-void
.end method
