.class abstract enum Landroidx/test/espresso/action/GeneralLocation$Position;
.super Ljava/lang/Enum;
.source "GeneralLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/action/GeneralLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "Position"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/test/espresso/action/GeneralLocation$Position;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/test/espresso/action/GeneralLocation$Position;

.field public static final enum BEGIN:Landroidx/test/espresso/action/GeneralLocation$Position;

.field public static final enum END:Landroidx/test/espresso/action/GeneralLocation$Position;

.field public static final enum MIDDLE:Landroidx/test/espresso/action/GeneralLocation$Position;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 116
    new-instance v0, Landroidx/test/espresso/action/GeneralLocation$Position$1;

    const-string v1, "BEGIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/test/espresso/action/GeneralLocation$Position$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/espresso/action/GeneralLocation$Position;->BEGIN:Landroidx/test/espresso/action/GeneralLocation$Position;

    .line 122
    new-instance v1, Landroidx/test/espresso/action/GeneralLocation$Position$2;

    const-string v3, "MIDDLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroidx/test/espresso/action/GeneralLocation$Position$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/test/espresso/action/GeneralLocation$Position;->MIDDLE:Landroidx/test/espresso/action/GeneralLocation$Position;

    .line 129
    new-instance v3, Landroidx/test/espresso/action/GeneralLocation$Position$3;

    const-string v5, "END"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroidx/test/espresso/action/GeneralLocation$Position$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/test/espresso/action/GeneralLocation$Position;->END:Landroidx/test/espresso/action/GeneralLocation$Position;

    .line 115
    const/4 v5, 0x3

    new-array v5, v5, [Landroidx/test/espresso/action/GeneralLocation$Position;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Landroidx/test/espresso/action/GeneralLocation$Position;->$VALUES:[Landroidx/test/espresso/action/GeneralLocation$Position;

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

    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILandroidx/test/espresso/action/GeneralLocation$1;)V
    .registers 4

    .line 115
    invoke-direct {p0, p1, p2}, Landroidx/test/espresso/action/GeneralLocation$Position;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/test/espresso/action/GeneralLocation$Position;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 115
    const-class v0, Landroidx/test/espresso/action/GeneralLocation$Position;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/test/espresso/action/GeneralLocation$Position;

    return-object p0
.end method

.method public static values()[Landroidx/test/espresso/action/GeneralLocation$Position;
    .registers 1

    .line 115
    sget-object v0, Landroidx/test/espresso/action/GeneralLocation$Position;->$VALUES:[Landroidx/test/espresso/action/GeneralLocation$Position;

    invoke-virtual {v0}, [Landroidx/test/espresso/action/GeneralLocation$Position;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/test/espresso/action/GeneralLocation$Position;

    return-object v0
.end method


# virtual methods
.method abstract getPosition(II)F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widgetPos",
            "widgetLength"
        }
    .end annotation
.end method
