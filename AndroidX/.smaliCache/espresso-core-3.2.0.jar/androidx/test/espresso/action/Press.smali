.class public abstract enum Landroidx/test/espresso/action/Press;
.super Ljava/lang/Enum;
.source "Press.java"

# interfaces
.implements Landroidx/test/espresso/action/PrecisionDescriber;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/test/espresso/action/Press;",
        ">;",
        "Landroidx/test/espresso/action/PrecisionDescriber;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/test/espresso/action/Press;

.field public static final enum FINGER:Landroidx/test/espresso/action/Press;

.field public static final enum PINPOINT:Landroidx/test/espresso/action/Press;

.field public static final enum THUMB:Landroidx/test/espresso/action/Press;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 21
    new-instance v0, Landroidx/test/espresso/action/Press$1;

    const-string v1, "PINPOINT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/test/espresso/action/Press$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/espresso/action/Press;->PINPOINT:Landroidx/test/espresso/action/Press;

    .line 28
    new-instance v1, Landroidx/test/espresso/action/Press$2;

    const-string v3, "FINGER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroidx/test/espresso/action/Press$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/test/espresso/action/Press;->FINGER:Landroidx/test/espresso/action/Press;

    .line 37
    new-instance v3, Landroidx/test/espresso/action/Press$3;

    const-string v5, "THUMB"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroidx/test/espresso/action/Press$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/test/espresso/action/Press;->THUMB:Landroidx/test/espresso/action/Press;

    .line 20
    const/4 v5, 0x3

    new-array v5, v5, [Landroidx/test/espresso/action/Press;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Landroidx/test/espresso/action/Press;->$VALUES:[Landroidx/test/espresso/action/Press;

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

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILandroidx/test/espresso/action/Press$1;)V
    .registers 4

    .line 20
    invoke-direct {p0, p1, p2}, Landroidx/test/espresso/action/Press;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/test/espresso/action/Press;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 20
    const-class v0, Landroidx/test/espresso/action/Press;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/test/espresso/action/Press;

    return-object p0
.end method

.method public static values()[Landroidx/test/espresso/action/Press;
    .registers 1

    .line 20
    sget-object v0, Landroidx/test/espresso/action/Press;->$VALUES:[Landroidx/test/espresso/action/Press;

    invoke-virtual {v0}, [Landroidx/test/espresso/action/Press;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/test/espresso/action/Press;

    return-object v0
.end method
