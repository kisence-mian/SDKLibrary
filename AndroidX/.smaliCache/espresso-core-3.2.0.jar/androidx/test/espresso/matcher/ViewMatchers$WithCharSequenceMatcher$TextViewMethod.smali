.class final enum Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher$TextViewMethod;
.super Ljava/lang/Enum;
.source "ViewMatchers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "TextViewMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher$TextViewMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher$TextViewMethod;

.field public static final enum GET_HINT:Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher$TextViewMethod;

.field public static final enum GET_TEXT:Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher$TextViewMethod;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1081
    new-instance v0, Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher$TextViewMethod;

    const-string v1, "GET_TEXT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher$TextViewMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher$TextViewMethod;->GET_TEXT:Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher$TextViewMethod;

    .line 1082
    new-instance v1, Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher$TextViewMethod;

    const-string v3, "GET_HINT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher$TextViewMethod;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher$TextViewMethod;->GET_HINT:Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher$TextViewMethod;

    .line 1080
    const/4 v3, 0x2

    new-array v3, v3, [Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher$TextViewMethod;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher$TextViewMethod;->$VALUES:[Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher$TextViewMethod;

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

    .line 1080
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher$TextViewMethod;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 1080
    const-class v0, Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher$TextViewMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher$TextViewMethod;

    return-object p0
.end method

.method public static values()[Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher$TextViewMethod;
    .registers 1

    .line 1080
    sget-object v0, Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher$TextViewMethod;->$VALUES:[Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher$TextViewMethod;

    invoke-virtual {v0}, [Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher$TextViewMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher$TextViewMethod;

    return-object v0
.end method
