.class public final enum Landroidx/test/espresso/action/Tapper$Status;
.super Ljava/lang/Enum;
.source "Tapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/action/Tapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/test/espresso/action/Tapper$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/test/espresso/action/Tapper$Status;

.field public static final enum FAILURE:Landroidx/test/espresso/action/Tapper$Status;

.field public static final enum SUCCESS:Landroidx/test/espresso/action/Tapper$Status;

.field public static final enum WARNING:Landroidx/test/espresso/action/Tapper$Status;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 27
    new-instance v0, Landroidx/test/espresso/action/Tapper$Status;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/test/espresso/action/Tapper$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/espresso/action/Tapper$Status;->SUCCESS:Landroidx/test/espresso/action/Tapper$Status;

    .line 32
    new-instance v1, Landroidx/test/espresso/action/Tapper$Status;

    const-string v3, "WARNING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroidx/test/espresso/action/Tapper$Status;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/test/espresso/action/Tapper$Status;->WARNING:Landroidx/test/espresso/action/Tapper$Status;

    .line 34
    new-instance v3, Landroidx/test/espresso/action/Tapper$Status;

    const-string v5, "FAILURE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroidx/test/espresso/action/Tapper$Status;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/test/espresso/action/Tapper$Status;->FAILURE:Landroidx/test/espresso/action/Tapper$Status;

    .line 25
    const/4 v5, 0x3

    new-array v5, v5, [Landroidx/test/espresso/action/Tapper$Status;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Landroidx/test/espresso/action/Tapper$Status;->$VALUES:[Landroidx/test/espresso/action/Tapper$Status;

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

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/test/espresso/action/Tapper$Status;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 25
    const-class v0, Landroidx/test/espresso/action/Tapper$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/test/espresso/action/Tapper$Status;

    return-object p0
.end method

.method public static values()[Landroidx/test/espresso/action/Tapper$Status;
    .registers 1

    .line 25
    sget-object v0, Landroidx/test/espresso/action/Tapper$Status;->$VALUES:[Landroidx/test/espresso/action/Tapper$Status;

    invoke-virtual {v0}, [Landroidx/test/espresso/action/Tapper$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/test/espresso/action/Tapper$Status;

    return-object v0
.end method
