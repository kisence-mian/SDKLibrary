.class Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler$1;
.super Ljava/lang/Object;
.source "LooperIdlingResourceInterrogationHandler.java"

# interfaces
.implements Landroidx/test/espresso/base/Interrogator$QueueInterrogationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/test/espresso/base/Interrogator$QueueInterrogationHandler<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private hasTasks:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler$1;->hasTasks:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public barrierUp()Z
    .registers 2

    .line 62
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler$1;->hasTasks:Ljava/lang/Boolean;

    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public get()Ljava/lang/Boolean;
    .registers 2

    .line 38
    iget-object v0, p0, Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler$1;->hasTasks:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 33
    invoke-virtual {p0}, Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler$1;->get()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public queueEmpty()Z
    .registers 2

    .line 43
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler$1;->hasTasks:Ljava/lang/Boolean;

    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public taskDueLong()Z
    .registers 2

    .line 50
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler$1;->hasTasks:Ljava/lang/Boolean;

    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public taskDueSoon()Z
    .registers 2

    .line 56
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler$1;->hasTasks:Ljava/lang/Boolean;

    .line 57
    const/4 v0, 0x0

    return v0
.end method
