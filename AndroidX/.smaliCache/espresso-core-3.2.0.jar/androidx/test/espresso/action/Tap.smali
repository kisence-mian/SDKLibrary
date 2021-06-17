.class public abstract enum Landroidx/test/espresso/action/Tap;
.super Ljava/lang/Enum;
.source "Tap.java"

# interfaces
.implements Landroidx/test/espresso/action/Tapper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/test/espresso/action/Tap;",
        ">;",
        "Landroidx/test/espresso/action/Tapper;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/test/espresso/action/Tap;

.field public static final enum DOUBLE:Landroidx/test/espresso/action/Tap;

.field private static final DOUBLE_TAP_MIN_TIMEOUT:I

.field public static final enum LONG:Landroidx/test/espresso/action/Tap;

.field public static final enum SINGLE:Landroidx/test/espresso/action/Tap;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 32
    const-string v0, "Unable to query double tap min time!"

    new-instance v1, Landroidx/test/espresso/action/Tap$1;

    const-string v2, "SINGLE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroidx/test/espresso/action/Tap$1;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/test/espresso/action/Tap;->SINGLE:Landroidx/test/espresso/action/Tap;

    .line 56
    new-instance v2, Landroidx/test/espresso/action/Tap$2;

    const-string v4, "LONG"

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5}, Landroidx/test/espresso/action/Tap$2;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroidx/test/espresso/action/Tap;->LONG:Landroidx/test/espresso/action/Tap;

    .line 95
    new-instance v4, Landroidx/test/espresso/action/Tap$3;

    const-string v6, "DOUBLE"

    const/4 v7, 0x2

    invoke-direct {v4, v6, v7}, Landroidx/test/espresso/action/Tap$3;-><init>(Ljava/lang/String;I)V

    sput-object v4, Landroidx/test/espresso/action/Tap;->DOUBLE:Landroidx/test/espresso/action/Tap;

    .line 31
    const/4 v6, 0x3

    new-array v6, v6, [Landroidx/test/espresso/action/Tap;

    aput-object v1, v6, v3

    aput-object v2, v6, v5

    aput-object v4, v6, v7

    sput-object v6, Landroidx/test/espresso/action/Tap;->$VALUES:[Landroidx/test/espresso/action/Tap;

    .line 137
    const-class v1, Landroidx/test/espresso/action/Tap;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroidx/test/espresso/action/Tap;->TAG:Ljava/lang/String;

    .line 141
    nop

    .line 142
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-le v1, v2, :cond_69

    .line 144
    :try_start_3a
    const-class v1, Landroid/view/ViewConfiguration;

    const-string v2, "getDoubleTapMinTime"

    new-array v4, v3, [Ljava/lang/Class;

    .line 145
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 146
    const/4 v2, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_51
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3a .. :try_end_51} :catch_60
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3a .. :try_end_51} :catch_59
    .catch Ljava/lang/IllegalAccessException; {:try_start_3a .. :try_end_51} :catch_52

    .line 153
    :goto_51
    goto :goto_69

    .line 151
    :catch_52
    move-exception v1

    .line 152
    sget-object v2, Landroidx/test/espresso/action/Tap;->TAG:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_69

    .line 149
    :catch_59
    move-exception v1

    .line 150
    sget-object v2, Landroidx/test/espresso/action/Tap;->TAG:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_51

    .line 147
    :catch_60
    move-exception v0

    .line 148
    sget-object v1, Landroidx/test/espresso/action/Tap;->TAG:Ljava/lang/String;

    const-string v2, "Expected to find getDoubleTapMinTime"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_51

    .line 155
    :cond_69
    :goto_69
    sput v3, Landroidx/test/espresso/action/Tap;->DOUBLE_TAP_MIN_TIMEOUT:I

    .line 156
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

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILandroidx/test/espresso/action/Tap$1;)V
    .registers 4

    .line 31
    invoke-direct {p0, p1, p2}, Landroidx/test/espresso/action/Tap;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Landroidx/test/espresso/UiController;[F[FII)Landroidx/test/espresso/action/Tapper$Status;
    .registers 5

    .line 31
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/test/espresso/action/Tap;->sendSingleTap(Landroidx/test/espresso/UiController;[F[FII)Landroidx/test/espresso/action/Tapper$Status;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200()I
    .registers 1

    .line 31
    sget v0, Landroidx/test/espresso/action/Tap;->DOUBLE_TAP_MIN_TIMEOUT:I

    return v0
.end method

.method private static sendSingleTap(Landroidx/test/espresso/UiController;[F[FII)Landroidx/test/espresso/action/Tapper$Status;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "uiController",
            "coordinates",
            "precision",
            "inputDevice",
            "buttonState"
        }
    .end annotation

    .line 164
    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-static {p2}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    nop

    .line 168
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/test/espresso/action/MotionEvents;->sendDown(Landroidx/test/espresso/UiController;[F[FII)Landroidx/test/espresso/action/MotionEvents$DownResultHolder;

    move-result-object p1

    .line 170
    :try_start_e
    iget-object p2, p1, Landroidx/test/espresso/action/MotionEvents$DownResultHolder;->down:Landroid/view/MotionEvent;

    invoke-static {p0, p2}, Landroidx/test/espresso/action/MotionEvents;->sendUp(Landroidx/test/espresso/UiController;Landroid/view/MotionEvent;)Z

    move-result p2

    if-nez p2, :cond_2a

    .line 171
    sget-object p2, Landroidx/test/espresso/action/Tap;->TAG:Ljava/lang/String;

    const-string p3, "Injection of up event as part of the click failed. Send cancel event."

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object p2, p1, Landroidx/test/espresso/action/MotionEvents$DownResultHolder;->down:Landroid/view/MotionEvent;

    invoke-static {p0, p2}, Landroidx/test/espresso/action/MotionEvents;->sendCancel(Landroidx/test/espresso/UiController;Landroid/view/MotionEvent;)V

    .line 173
    sget-object p0, Landroidx/test/espresso/action/Tapper$Status;->FAILURE:Landroidx/test/espresso/action/Tapper$Status;
    :try_end_24
    .catchall {:try_start_e .. :try_end_24} :catchall_3a

    .line 176
    iget-object p1, p1, Landroidx/test/espresso/action/MotionEvents$DownResultHolder;->down:Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 173
    return-object p0

    .line 176
    :cond_2a
    iget-object p0, p1, Landroidx/test/espresso/action/MotionEvents$DownResultHolder;->down:Landroid/view/MotionEvent;

    invoke-virtual {p0}, Landroid/view/MotionEvent;->recycle()V

    .line 177
    nop

    .line 178
    iget-boolean p0, p1, Landroidx/test/espresso/action/MotionEvents$DownResultHolder;->longPress:Z

    if-eqz p0, :cond_37

    sget-object p0, Landroidx/test/espresso/action/Tapper$Status;->WARNING:Landroidx/test/espresso/action/Tapper$Status;

    goto :goto_39

    :cond_37
    sget-object p0, Landroidx/test/espresso/action/Tapper$Status;->SUCCESS:Landroidx/test/espresso/action/Tapper$Status;

    :goto_39
    return-object p0

    .line 176
    :catchall_3a
    move-exception p0

    iget-object p1, p1, Landroidx/test/espresso/action/MotionEvents$DownResultHolder;->down:Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/test/espresso/action/Tap;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 31
    const-class v0, Landroidx/test/espresso/action/Tap;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/test/espresso/action/Tap;

    return-object p0
.end method

.method public static values()[Landroidx/test/espresso/action/Tap;
    .registers 1

    .line 31
    sget-object v0, Landroidx/test/espresso/action/Tap;->$VALUES:[Landroidx/test/espresso/action/Tap;

    invoke-virtual {v0}, [Landroidx/test/espresso/action/Tap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/test/espresso/action/Tap;

    return-object v0
.end method
