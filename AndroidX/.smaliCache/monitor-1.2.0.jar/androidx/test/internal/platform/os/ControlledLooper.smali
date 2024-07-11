.class public interface abstract Landroidx/test/internal/platform/os/ControlledLooper;
.super Ljava/lang/Object;
.source "ControlledLooper.java"


# static fields
.field public static final NO_OP_CONTROLLED_LOOPER:Landroidx/test/internal/platform/os/ControlledLooper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    new-instance v0, Landroidx/test/internal/platform/os/ControlledLooper$1;

    invoke-direct {v0}, Landroidx/test/internal/platform/os/ControlledLooper$1;-><init>()V

    sput-object v0, Landroidx/test/internal/platform/os/ControlledLooper;->NO_OP_CONTROLLED_LOOPER:Landroidx/test/internal/platform/os/ControlledLooper;

    return-void
.end method


# virtual methods
.method public abstract drainMainThreadUntilIdle()V
.end method

.method public abstract simulateWindowFocus(Landroid/view/View;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "decorView"
        }
    .end annotation
.end method
