.class public final Lcom/tapjoy/internal/gt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/tapjoy/internal/av;

.field private static b:Landroid/app/Activity;

.field private static final c:Lcom/tapjoy/internal/bt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/bt<",
            "Landroid/opengl/GLSurfaceView;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lcom/tapjoy/internal/bt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/bt<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    new-instance v0, Lcom/tapjoy/internal/bt;

    invoke-direct {v0}, Lcom/tapjoy/internal/bt;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/gt;->c:Lcom/tapjoy/internal/bt;

    .line 24
    new-instance v0, Lcom/tapjoy/internal/bt;

    invoke-direct {v0}, Lcom/tapjoy/internal/bt;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/gt;->d:Lcom/tapjoy/internal/bt;

    .line 27
    new-instance v0, Lcom/tapjoy/internal/gt$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/gt$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/gt;->a:Lcom/tapjoy/internal/av;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static a()Landroid/app/Activity;
    .registers 1

    .line 60
    sget-object v0, Lcom/tapjoy/internal/gt;->b:Landroid/app/Activity;

    .line 61
    if-nez v0, :cond_8

    .line 62
    invoke-static {}, Lcom/tapjoy/internal/b;->a()Landroid/app/Activity;

    move-result-object v0

    .line 64
    :cond_8
    return-object v0
.end method

.method static a(Landroid/opengl/GLSurfaceView;)V
    .registers 3

    .line 47
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 48
    sget-object v0, Lcom/tapjoy/internal/gt;->c:Lcom/tapjoy/internal/bt;

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/bt;->a(Ljava/lang/Object;)V

    .line 49
    new-instance v0, Lcom/tapjoy/internal/gt$2;

    invoke-direct {v0}, Lcom/tapjoy/internal/gt$2;-><init>()V

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 57
    return-void
.end method

.method public static b()Ljava/lang/Thread;
    .registers 1

    .line 77
    sget-object v0, Lcom/tapjoy/internal/gt;->d:Lcom/tapjoy/internal/bt;

    invoke-virtual {v0}, Lcom/tapjoy/internal/bt;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic c()Lcom/tapjoy/internal/bt;
    .registers 1

    .line 16
    sget-object v0, Lcom/tapjoy/internal/gt;->c:Lcom/tapjoy/internal/bt;

    return-object v0
.end method

.method static synthetic d()Lcom/tapjoy/internal/bt;
    .registers 1

    .line 16
    sget-object v0, Lcom/tapjoy/internal/gt;->d:Lcom/tapjoy/internal/bt;

    return-object v0
.end method
