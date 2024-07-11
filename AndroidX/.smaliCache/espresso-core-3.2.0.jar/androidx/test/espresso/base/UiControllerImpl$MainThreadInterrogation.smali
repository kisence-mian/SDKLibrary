.class final Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;
.super Ljava/lang/Object;
.source "UiControllerImpl.java"

# interfaces
.implements Landroidx/test/espresso/base/Interrogator$InterrogationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/base/UiControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MainThreadInterrogation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/test/espresso/base/Interrogator$InterrogationHandler<",
        "Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;",
        ">;"
    }
.end annotation


# instance fields
.field private final conditionSet:Ljava/util/BitSet;

.field private final conditions:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;",
            ">;"
        }
    .end annotation
.end field

.field private execCount:I

.field private final giveUpAtMs:J

.field private status:Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;


# direct methods
.method constructor <init>(Ljava/util/EnumSet;Ljava/util/BitSet;J)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "conditions",
            "conditionSet",
            "giveUpAtMs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;",
            ">;",
            "Ljava/util/BitSet;",
            "J)V"
        }
    .end annotation

    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 580
    sget-object v0, Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;->COMPLETED:Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;

    iput-object v0, p0, Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;->status:Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;

    .line 581
    const/4 v0, 0x0

    iput v0, p0, Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;->execCount:I

    .line 585
    iput-object p1, p0, Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;->conditions:Ljava/util/EnumSet;

    .line 586
    iput-object p2, p0, Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;->conditionSet:Ljava/util/BitSet;

    .line 587
    iput-wide p3, p0, Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;->giveUpAtMs:J

    .line 588
    return-void
.end method

.method static synthetic access$300(Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;)I
    .registers 1

    .line 574
    iget p0, p0, Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;->execCount:I

    return p0
.end method

.method private conditionsMet()Z
    .registers 9

    .line 648
    sget-object v0, Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;->INTERRUPTED:Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;

    iget-object v1, p0, Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;->status:Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_8

    .line 649
    return v2

    .line 651
    :cond_8
    nop

    .line 652
    iget v0, p0, Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;->execCount:I

    const/4 v1, 0x0

    if-lez v0, :cond_14

    rem-int/lit8 v0, v0, 0x64

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 653
    :goto_15
    iget-object v3, p0, Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;->conditions:Ljava/util/EnumSet;

    invoke-virtual {v3}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    .line 654
    iget-object v5, p0, Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;->conditionSet:Ljava/util/BitSet;

    invoke-virtual {v4, v5}, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->isSignaled(Ljava/util/BitSet;)Z

    move-result v5

    if-nez v5, :cond_6d

    .line 655
    nop

    .line 656
    if-eqz v0, :cond_6f

    .line 657
    # getter for: Landroidx/test/espresso/base/UiControllerImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Landroidx/test/espresso/base/UiControllerImpl;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->name()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;->execCount:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x29

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Waiting for: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " iterations."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 662
    :cond_6d
    goto :goto_1b

    .line 653
    :cond_6e
    move v1, v2

    .line 663
    :cond_6f
    return v1
.end method

.method private continueOrTimeout()Z
    .registers 7

    .line 628
    sget-object v0, Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;->INTERRUPTED:Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;

    iget-object v1, p0, Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;->status:Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_8

    .line 629
    return v2

    .line 631
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;->giveUpAtMs:J

    cmp-long v5, v0, v3

    if-ltz v5, :cond_17

    .line 632
    sget-object v0, Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;->TIMED_OUT:Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;

    iput-object v0, p0, Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;->status:Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;

    .line 633
    return v2

    .line 635
    :cond_17
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public barrierUp()Z
    .registers 2

    .line 597
    invoke-direct {p0}, Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;->continueOrTimeout()Z

    move-result v0

    return v0
.end method

.method public beforeTaskDispatch()Z
    .registers 2

    .line 623
    iget v0, p0, Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;->execCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;->execCount:I

    .line 624
    invoke-direct {p0}, Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;->continueOrTimeout()Z

    move-result v0

    return v0
.end method

.method public get()Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;
    .registers 2

    .line 644
    iget-object v0, p0, Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;->status:Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 574
    invoke-virtual {p0}, Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;->get()Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;

    move-result-object v0

    return-object v0
.end method

.method interruptInterrogation()V
    .registers 2

    .line 639
    sget-object v0, Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;->INTERRUPTED:Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;

    iput-object v0, p0, Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;->status:Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;

    .line 640
    return-void
.end method

.method public queueEmpty()Z
    .registers 2

    .line 602
    invoke-direct {p0}, Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;->conditionsMet()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 603
    const/4 v0, 0x0

    return v0

    .line 605
    :cond_8
    const/4 v0, 0x1

    return v0
.end method

.method public quitting()V
    .registers 1

    .line 593
    return-void
.end method

.method public taskDueLong()Z
    .registers 2

    .line 615
    invoke-direct {p0}, Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;->conditionsMet()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 616
    const/4 v0, 0x0

    return v0

    .line 618
    :cond_8
    const/4 v0, 0x1

    return v0
.end method

.method public taskDueSoon()Z
    .registers 2

    .line 610
    invoke-direct {p0}, Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;->continueOrTimeout()Z

    move-result v0

    return v0
.end method
