.class final enum Landroidx/test/espresso/base/RootViewPicker$RootResults$State;
.super Ljava/lang/Enum;
.source "RootViewPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/base/RootViewPicker$RootResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/test/espresso/base/RootViewPicker$RootResults$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/test/espresso/base/RootViewPicker$RootResults$State;

.field public static final enum NO_ROOTS_PICKED:Landroidx/test/espresso/base/RootViewPicker$RootResults$State;

.field public static final enum NO_ROOTS_PRESENT:Landroidx/test/espresso/base/RootViewPicker$RootResults$State;

.field public static final enum ROOTS_PICKED:Landroidx/test/espresso/base/RootViewPicker$RootResults$State;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 267
    new-instance v0, Landroidx/test/espresso/base/RootViewPicker$RootResults$State;

    const-string v1, "NO_ROOTS_PRESENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/test/espresso/base/RootViewPicker$RootResults$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/espresso/base/RootViewPicker$RootResults$State;->NO_ROOTS_PRESENT:Landroidx/test/espresso/base/RootViewPicker$RootResults$State;

    .line 268
    new-instance v1, Landroidx/test/espresso/base/RootViewPicker$RootResults$State;

    const-string v3, "NO_ROOTS_PICKED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroidx/test/espresso/base/RootViewPicker$RootResults$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/test/espresso/base/RootViewPicker$RootResults$State;->NO_ROOTS_PICKED:Landroidx/test/espresso/base/RootViewPicker$RootResults$State;

    .line 269
    new-instance v3, Landroidx/test/espresso/base/RootViewPicker$RootResults$State;

    const-string v5, "ROOTS_PICKED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroidx/test/espresso/base/RootViewPicker$RootResults$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/test/espresso/base/RootViewPicker$RootResults$State;->ROOTS_PICKED:Landroidx/test/espresso/base/RootViewPicker$RootResults$State;

    .line 266
    const/4 v5, 0x3

    new-array v5, v5, [Landroidx/test/espresso/base/RootViewPicker$RootResults$State;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Landroidx/test/espresso/base/RootViewPicker$RootResults$State;->$VALUES:[Landroidx/test/espresso/base/RootViewPicker$RootResults$State;

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

    .line 266
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/test/espresso/base/RootViewPicker$RootResults$State;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 266
    const-class v0, Landroidx/test/espresso/base/RootViewPicker$RootResults$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/test/espresso/base/RootViewPicker$RootResults$State;

    return-object p0
.end method

.method public static values()[Landroidx/test/espresso/base/RootViewPicker$RootResults$State;
    .registers 1

    .line 266
    sget-object v0, Landroidx/test/espresso/base/RootViewPicker$RootResults$State;->$VALUES:[Landroidx/test/espresso/base/RootViewPicker$RootResults$State;

    invoke-virtual {v0}, [Landroidx/test/espresso/base/RootViewPicker$RootResults$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/test/espresso/base/RootViewPicker$RootResults$State;

    return-object v0
.end method
