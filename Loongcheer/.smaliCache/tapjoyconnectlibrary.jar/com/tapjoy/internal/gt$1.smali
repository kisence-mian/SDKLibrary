.class final Lcom/tapjoy/internal/gt$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/av;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)Z
    .registers 3

    .line 30
    invoke-static {}, Lcom/tapjoy/internal/gt;->c()Lcom/tapjoy/internal/bt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/bt;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    .line 31
    if-eqz v0, :cond_11

    .line 32
    invoke-virtual {v0, p1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 33
    const/4 p1, 0x1

    return p1

    .line 35
    :cond_11
    const/4 p1, 0x0

    return p1
.end method
