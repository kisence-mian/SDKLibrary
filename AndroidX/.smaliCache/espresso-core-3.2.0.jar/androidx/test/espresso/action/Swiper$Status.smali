.class public final enum Landroidx/test/espresso/action/Swiper$Status;
.super Ljava/lang/Enum;
.source "Swiper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/action/Swiper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/test/espresso/action/Swiper$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/test/espresso/action/Swiper$Status;

.field public static final enum FAILURE:Landroidx/test/espresso/action/Swiper$Status;

.field public static final enum SUCCESS:Landroidx/test/espresso/action/Swiper$Status;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 28
    new-instance v0, Landroidx/test/espresso/action/Swiper$Status;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/test/espresso/action/Swiper$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/espresso/action/Swiper$Status;->SUCCESS:Landroidx/test/espresso/action/Swiper$Status;

    .line 30
    new-instance v1, Landroidx/test/espresso/action/Swiper$Status;

    const-string v3, "FAILURE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroidx/test/espresso/action/Swiper$Status;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/test/espresso/action/Swiper$Status;->FAILURE:Landroidx/test/espresso/action/Swiper$Status;

    .line 26
    const/4 v3, 0x2

    new-array v3, v3, [Landroidx/test/espresso/action/Swiper$Status;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Landroidx/test/espresso/action/Swiper$Status;->$VALUES:[Landroidx/test/espresso/action/Swiper$Status;

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

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/test/espresso/action/Swiper$Status;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 26
    const-class v0, Landroidx/test/espresso/action/Swiper$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/test/espresso/action/Swiper$Status;

    return-object p0
.end method

.method public static values()[Landroidx/test/espresso/action/Swiper$Status;
    .registers 1

    .line 26
    sget-object v0, Landroidx/test/espresso/action/Swiper$Status;->$VALUES:[Landroidx/test/espresso/action/Swiper$Status;

    invoke-virtual {v0}, [Landroidx/test/espresso/action/Swiper$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/test/espresso/action/Swiper$Status;

    return-object v0
.end method
