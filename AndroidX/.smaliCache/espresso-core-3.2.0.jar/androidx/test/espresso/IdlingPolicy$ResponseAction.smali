.class final enum Landroidx/test/espresso/IdlingPolicy$ResponseAction;
.super Ljava/lang/Enum;
.source "IdlingPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/IdlingPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ResponseAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/test/espresso/IdlingPolicy$ResponseAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/test/espresso/IdlingPolicy$ResponseAction;

.field public static final enum LOG_ERROR:Landroidx/test/espresso/IdlingPolicy$ResponseAction;

.field public static final enum THROW_APP_NOT_IDLE:Landroidx/test/espresso/IdlingPolicy$ResponseAction;

.field public static final enum THROW_IDLE_TIMEOUT:Landroidx/test/espresso/IdlingPolicy$ResponseAction;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 31
    new-instance v0, Landroidx/test/espresso/IdlingPolicy$ResponseAction;

    const-string v1, "THROW_APP_NOT_IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/test/espresso/IdlingPolicy$ResponseAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/espresso/IdlingPolicy$ResponseAction;->THROW_APP_NOT_IDLE:Landroidx/test/espresso/IdlingPolicy$ResponseAction;

    .line 32
    new-instance v1, Landroidx/test/espresso/IdlingPolicy$ResponseAction;

    const-string v3, "THROW_IDLE_TIMEOUT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroidx/test/espresso/IdlingPolicy$ResponseAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/test/espresso/IdlingPolicy$ResponseAction;->THROW_IDLE_TIMEOUT:Landroidx/test/espresso/IdlingPolicy$ResponseAction;

    .line 33
    new-instance v3, Landroidx/test/espresso/IdlingPolicy$ResponseAction;

    const-string v5, "LOG_ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroidx/test/espresso/IdlingPolicy$ResponseAction;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/test/espresso/IdlingPolicy$ResponseAction;->LOG_ERROR:Landroidx/test/espresso/IdlingPolicy$ResponseAction;

    .line 30
    const/4 v5, 0x3

    new-array v5, v5, [Landroidx/test/espresso/IdlingPolicy$ResponseAction;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Landroidx/test/espresso/IdlingPolicy$ResponseAction;->$VALUES:[Landroidx/test/espresso/IdlingPolicy$ResponseAction;

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

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/test/espresso/IdlingPolicy$ResponseAction;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 30
    const-class v0, Landroidx/test/espresso/IdlingPolicy$ResponseAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/test/espresso/IdlingPolicy$ResponseAction;

    return-object p0
.end method

.method public static values()[Landroidx/test/espresso/IdlingPolicy$ResponseAction;
    .registers 1

    .line 30
    sget-object v0, Landroidx/test/espresso/IdlingPolicy$ResponseAction;->$VALUES:[Landroidx/test/espresso/IdlingPolicy$ResponseAction;

    invoke-virtual {v0}, [Landroidx/test/espresso/IdlingPolicy$ResponseAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/test/espresso/IdlingPolicy$ResponseAction;

    return-object v0
.end method
