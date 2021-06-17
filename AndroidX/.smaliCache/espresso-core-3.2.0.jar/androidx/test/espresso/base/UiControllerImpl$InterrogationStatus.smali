.class final enum Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;
.super Ljava/lang/Enum;
.source "UiControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/base/UiControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "InterrogationStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;

.field public static final enum COMPLETED:Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;

.field public static final enum INTERRUPTED:Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;

.field public static final enum TIMED_OUT:Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 139
    new-instance v0, Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;

    const-string v1, "TIMED_OUT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;->TIMED_OUT:Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;

    .line 140
    new-instance v1, Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;

    const-string v3, "COMPLETED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;->COMPLETED:Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;

    .line 141
    new-instance v3, Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;

    const-string v5, "INTERRUPTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;->INTERRUPTED:Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;

    .line 138
    const/4 v5, 0x3

    new-array v5, v5, [Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;->$VALUES:[Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;

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

    .line 138
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 138
    const-class v0, Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;

    return-object p0
.end method

.method public static values()[Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;
    .registers 1

    .line 138
    sget-object v0, Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;->$VALUES:[Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;

    invoke-virtual {v0}, [Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;

    return-object v0
.end method
