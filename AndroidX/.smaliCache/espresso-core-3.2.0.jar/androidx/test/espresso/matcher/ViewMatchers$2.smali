.class synthetic Landroidx/test/espresso/matcher/ViewMatchers$2;
.super Ljava/lang/Object;
.source "ViewMatchers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/matcher/ViewMatchers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$androidx$test$espresso$matcher$ViewMatchers$WithCharSequenceMatcher$TextViewMethod:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1114
    invoke-static {}, Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher$TextViewMethod;->values()[Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher$TextViewMethod;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroidx/test/espresso/matcher/ViewMatchers$2;->$SwitchMap$androidx$test$espresso$matcher$ViewMatchers$WithCharSequenceMatcher$TextViewMethod:[I

    :try_start_9
    sget-object v1, Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher$TextViewMethod;->GET_TEXT:Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher$TextViewMethod;

    invoke-virtual {v1}, Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher$TextViewMethod;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    move-exception v0

    :goto_14
    :try_start_14
    sget-object v0, Landroidx/test/espresso/matcher/ViewMatchers$2;->$SwitchMap$androidx$test$espresso$matcher$ViewMatchers$WithCharSequenceMatcher$TextViewMethod:[I

    sget-object v1, Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher$TextViewMethod;->GET_HINT:Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher$TextViewMethod;

    invoke-virtual {v1}, Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher$TextViewMethod;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_20

    goto :goto_21

    :catch_20
    move-exception v0

    :goto_21
    return-void
.end method
