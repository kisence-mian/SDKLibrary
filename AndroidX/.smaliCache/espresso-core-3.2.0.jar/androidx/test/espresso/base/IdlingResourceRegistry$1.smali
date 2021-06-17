.class Landroidx/test/espresso/base/IdlingResourceRegistry$1;
.super Ljava/lang/Object;
.source "IdlingResourceRegistry.java"

# interfaces
.implements Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/base/IdlingResourceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allResourcesIdle()V
    .registers 1

    .line 63
    return-void
.end method

.method public resourcesHaveTimedOut(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "busys"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 69
    return-void
.end method

.method public resourcesStillBusyWarning(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "busys"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 66
    return-void
.end method
