.class public final enum Landroidx/test/espresso/matcher/ViewMatchers$Visibility;
.super Ljava/lang/Enum;
.source "ViewMatchers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/matcher/ViewMatchers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Visibility"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/test/espresso/matcher/ViewMatchers$Visibility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/test/espresso/matcher/ViewMatchers$Visibility;

.field public static final enum GONE:Landroidx/test/espresso/matcher/ViewMatchers$Visibility;

.field public static final enum INVISIBLE:Landroidx/test/espresso/matcher/ViewMatchers$Visibility;

.field public static final enum VISIBLE:Landroidx/test/espresso/matcher/ViewMatchers$Visibility;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 425
    new-instance v0, Landroidx/test/espresso/matcher/ViewMatchers$Visibility;

    const-string v1, "VISIBLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/test/espresso/matcher/ViewMatchers$Visibility;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/test/espresso/matcher/ViewMatchers$Visibility;->VISIBLE:Landroidx/test/espresso/matcher/ViewMatchers$Visibility;

    .line 426
    new-instance v1, Landroidx/test/espresso/matcher/ViewMatchers$Visibility;

    const-string v3, "INVISIBLE"

    const/4 v4, 0x1

    const/4 v5, 0x4

    invoke-direct {v1, v3, v4, v5}, Landroidx/test/espresso/matcher/ViewMatchers$Visibility;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroidx/test/espresso/matcher/ViewMatchers$Visibility;->INVISIBLE:Landroidx/test/espresso/matcher/ViewMatchers$Visibility;

    .line 427
    new-instance v3, Landroidx/test/espresso/matcher/ViewMatchers$Visibility;

    const-string v5, "GONE"

    const/4 v6, 0x2

    const/16 v7, 0x8

    invoke-direct {v3, v5, v6, v7}, Landroidx/test/espresso/matcher/ViewMatchers$Visibility;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroidx/test/espresso/matcher/ViewMatchers$Visibility;->GONE:Landroidx/test/espresso/matcher/ViewMatchers$Visibility;

    .line 424
    const/4 v5, 0x3

    new-array v5, v5, [Landroidx/test/espresso/matcher/ViewMatchers$Visibility;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Landroidx/test/espresso/matcher/ViewMatchers$Visibility;->$VALUES:[Landroidx/test/espresso/matcher/ViewMatchers$Visibility;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 431
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 432
    iput p3, p0, Landroidx/test/espresso/matcher/ViewMatchers$Visibility;->value:I

    .line 433
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/test/espresso/matcher/ViewMatchers$Visibility;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 424
    const-class v0, Landroidx/test/espresso/matcher/ViewMatchers$Visibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/test/espresso/matcher/ViewMatchers$Visibility;

    return-object p0
.end method

.method public static values()[Landroidx/test/espresso/matcher/ViewMatchers$Visibility;
    .registers 1

    .line 424
    sget-object v0, Landroidx/test/espresso/matcher/ViewMatchers$Visibility;->$VALUES:[Landroidx/test/espresso/matcher/ViewMatchers$Visibility;

    invoke-virtual {v0}, [Landroidx/test/espresso/matcher/ViewMatchers$Visibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/test/espresso/matcher/ViewMatchers$Visibility;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .line 436
    iget v0, p0, Landroidx/test/espresso/matcher/ViewMatchers$Visibility;->value:I

    return v0
.end method
