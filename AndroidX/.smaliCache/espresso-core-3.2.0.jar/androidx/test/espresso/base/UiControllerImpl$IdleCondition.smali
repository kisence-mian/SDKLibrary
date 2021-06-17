.class final enum Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;
.super Ljava/lang/Enum;
.source "UiControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/base/UiControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "IdleCondition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

.field public static final enum ASYNC_TASKS_HAVE_IDLED:Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

.field public static final enum COMPAT_TASKS_HAVE_IDLED:Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

.field public static final enum DELAY_HAS_PAST:Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

.field public static final enum DYNAMIC_TASKS_HAVE_IDLED:Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

.field public static final enum KEY_INJECT_HAS_COMPLETED:Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

.field public static final enum MOTION_INJECTION_HAS_COMPLETED:Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 76
    new-instance v0, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    const-string v1, "DELAY_HAS_PAST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->DELAY_HAS_PAST:Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    .line 77
    new-instance v1, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    const-string v3, "ASYNC_TASKS_HAVE_IDLED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->ASYNC_TASKS_HAVE_IDLED:Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    .line 78
    new-instance v3, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    const-string v5, "COMPAT_TASKS_HAVE_IDLED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->COMPAT_TASKS_HAVE_IDLED:Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    .line 79
    new-instance v5, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    const-string v7, "KEY_INJECT_HAS_COMPLETED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->KEY_INJECT_HAS_COMPLETED:Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    .line 80
    new-instance v7, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    const-string v9, "MOTION_INJECTION_HAS_COMPLETED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;-><init>(Ljava/lang/String;I)V

    sput-object v7, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->MOTION_INJECTION_HAS_COMPLETED:Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    .line 81
    new-instance v9, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    const-string v11, "DYNAMIC_TASKS_HAVE_IDLED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;-><init>(Ljava/lang/String;I)V

    sput-object v9, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->DYNAMIC_TASKS_HAVE_IDLED:Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    .line 75
    const/4 v11, 0x6

    new-array v11, v11, [Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->$VALUES:[Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static createConditionSet()Ljava/util/BitSet;
    .registers 2

    .line 126
    new-instance v0, Ljava/util/BitSet;

    invoke-static {}, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->values()[Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    return-object v0
.end method

.method public static handleMessage(Landroid/os/Message;Ljava/util/BitSet;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "conditionSet",
            "currentGeneration"
        }
    .end annotation

    .line 104
    invoke-static {}, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->values()[Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    move-result-object v0

    .line 105
    iget v1, p0, Landroid/os/Message;->what:I

    if-ltz v1, :cond_5a

    iget v1, p0, Landroid/os/Message;->what:I

    array-length v2, v0

    if-lt v1, v2, :cond_e

    goto :goto_5a

    .line 108
    :cond_e
    iget v1, p0, Landroid/os/Message;->what:I

    aget-object v0, v0, v1

    .line 109
    iget v1, p0, Landroid/os/Message;->arg1:I

    if-ne v1, p2, :cond_1a

    .line 110
    invoke-virtual {v0, p1}, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->signal(Ljava/util/BitSet;)V

    goto :goto_58

    .line 113
    :cond_1a
    # getter for: Landroidx/test/espresso/base/UiControllerImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Landroidx/test/espresso/base/UiControllerImpl;->access$000()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Landroid/os/Message;->arg1:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x5a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ignoring signal of: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from previous generation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " current generation: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 112
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :goto_58
    const/4 p0, 0x1

    return p0

    .line 106
    :cond_5a
    :goto_5a
    const/4 p0, 0x0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 75
    const-class v0, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    return-object p0
.end method

.method public static values()[Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;
    .registers 1

    .line 75
    sget-object v0, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->$VALUES:[Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    invoke-virtual {v0}, [Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    return-object v0
.end method


# virtual methods
.method public createSignal(Landroid/os/Handler;I)Landroid/os/Message;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handler",
            "myGeneration"
        }
    .end annotation

    .line 95
    invoke-virtual {p0}, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, p2, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public isSignaled(Ljava/util/BitSet;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "conditionSet"
        }
    .end annotation

    .line 85
    invoke-virtual {p0}, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    return p1
.end method

.method public reset(Ljava/util/BitSet;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "conditionSet"
        }
    .end annotation

    .line 90
    invoke-virtual {p0}, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/BitSet;->set(IZ)V

    .line 91
    return-void
.end method

.method protected signal(Ljava/util/BitSet;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "conditionSet"
        }
    .end annotation

    .line 133
    invoke-virtual {p0}, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 134
    return-void
.end method
