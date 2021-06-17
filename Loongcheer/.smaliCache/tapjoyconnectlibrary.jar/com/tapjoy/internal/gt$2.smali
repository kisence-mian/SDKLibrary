.class final Lcom/tapjoy/internal/gt$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/gt;->a(Landroid/opengl/GLSurfaceView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 52
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 53
    const-class v1, Lcom/tapjoy/internal/gt;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 54
    invoke-static {}, Lcom/tapjoy/internal/gt;->d()Lcom/tapjoy/internal/bt;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bt;->a(Ljava/lang/Object;)V

    .line 55
    return-void
.end method
