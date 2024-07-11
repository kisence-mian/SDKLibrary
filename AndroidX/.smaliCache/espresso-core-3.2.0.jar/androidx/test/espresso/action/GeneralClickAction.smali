.class public final Landroidx/test/espresso/action/GeneralClickAction;
.super Ljava/lang/Object;
.source "GeneralClickAction.java"

# interfaces
.implements Landroidx/test/espresso/ViewAction;


# static fields
.field private static final TAG:Ljava/lang/String; = "GeneralClickAction"


# instance fields
.field private final buttonState:I

.field final coordinatesProvider:Landroidx/test/espresso/action/CoordinatesProvider;

.field private final inputDevice:I

.field final precisionDescriber:Landroidx/test/espresso/action/PrecisionDescriber;

.field private final rollbackAction:Landroidx/test/espresso/core/internal/deps/guava/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/base/Optional<",
            "Landroidx/test/espresso/ViewAction;",
            ">;"
        }
    .end annotation
.end field

.field final tapper:Landroidx/test/espresso/action/Tapper;


# direct methods
.method public constructor <init>(Landroidx/test/espresso/action/Tapper;Landroidx/test/espresso/action/CoordinatesProvider;Landroidx/test/espresso/action/PrecisionDescriber;)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tapper",
            "coordinatesProvider",
            "precisionDescriber"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 55
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Landroidx/test/espresso/action/GeneralClickAction;-><init>(Landroidx/test/espresso/action/Tapper;Landroidx/test/espresso/action/CoordinatesProvider;Landroidx/test/espresso/action/PrecisionDescriber;IILandroidx/test/espresso/ViewAction;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroidx/test/espresso/action/Tapper;Landroidx/test/espresso/action/CoordinatesProvider;Landroidx/test/espresso/action/PrecisionDescriber;II)V
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tapper",
            "coordinatesProvider",
            "precisionDescriber",
            "inputDevice",
            "buttonState"
        }
    .end annotation

    .line 64
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Landroidx/test/espresso/action/GeneralClickAction;-><init>(Landroidx/test/espresso/action/Tapper;Landroidx/test/espresso/action/CoordinatesProvider;Landroidx/test/espresso/action/PrecisionDescriber;IILandroidx/test/espresso/ViewAction;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroidx/test/espresso/action/Tapper;Landroidx/test/espresso/action/CoordinatesProvider;Landroidx/test/espresso/action/PrecisionDescriber;IILandroidx/test/espresso/ViewAction;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tapper",
            "coordinatesProvider",
            "precisionDescriber",
            "inputDevice",
            "buttonState",
            "rollbackAction"
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p2, p0, Landroidx/test/espresso/action/GeneralClickAction;->coordinatesProvider:Landroidx/test/espresso/action/CoordinatesProvider;

    .line 89
    iput-object p1, p0, Landroidx/test/espresso/action/GeneralClickAction;->tapper:Landroidx/test/espresso/action/Tapper;

    .line 90
    iput-object p3, p0, Landroidx/test/espresso/action/GeneralClickAction;->precisionDescriber:Landroidx/test/espresso/action/PrecisionDescriber;

    .line 91
    iput p4, p0, Landroidx/test/espresso/action/GeneralClickAction;->inputDevice:I

    .line 92
    iput p5, p0, Landroidx/test/espresso/action/GeneralClickAction;->buttonState:I

    .line 93
    invoke-static {p6}, Landroidx/test/espresso/core/internal/deps/guava/base/Optional;->fromNullable(Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/base/Optional;

    move-result-object p1

    iput-object p1, p0, Landroidx/test/espresso/action/GeneralClickAction;->rollbackAction:Landroidx/test/espresso/core/internal/deps/guava/base/Optional;

    .line 94
    return-void
.end method

.method public constructor <init>(Landroidx/test/espresso/action/Tapper;Landroidx/test/espresso/action/CoordinatesProvider;Landroidx/test/espresso/action/PrecisionDescriber;Landroidx/test/espresso/ViewAction;)V
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tapper",
            "coordinatesProvider",
            "precisionDescriber",
            "rollbackAction"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 78
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Landroidx/test/espresso/action/GeneralClickAction;-><init>(Landroidx/test/espresso/action/Tapper;Landroidx/test/espresso/action/CoordinatesProvider;Landroidx/test/espresso/action/PrecisionDescriber;IILandroidx/test/espresso/ViewAction;)V

    .line 79
    return-void
.end method


# virtual methods
.method public getConstraints()Lorg/hamcrest/Matcher;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 99
    const/16 v0, 0x5a

    invoke-static {v0}, Landroidx/test/espresso/matcher/ViewMatchers;->isDisplayingAtLeast(I)Lorg/hamcrest/Matcher;

    move-result-object v0

    .line 100
    iget-object v1, p0, Landroidx/test/espresso/action/GeneralClickAction;->rollbackAction:Landroidx/test/espresso/core/internal/deps/guava/base/Optional;

    invoke-virtual {v1}, Landroidx/test/espresso/core/internal/deps/guava/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 101
    iget-object v1, p0, Landroidx/test/espresso/action/GeneralClickAction;->rollbackAction:Landroidx/test/espresso/core/internal/deps/guava/base/Optional;

    invoke-virtual {v1}, Landroidx/test/espresso/core/internal/deps/guava/base/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/test/espresso/ViewAction;

    invoke-interface {v1}, Landroidx/test/espresso/ViewAction;->getConstraints()Lorg/hamcrest/Matcher;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/hamcrest/Matchers;->allOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0

    .line 103
    :cond_1f
    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 3

    .line 213
    iget-object v0, p0, Landroidx/test/espresso/action/GeneralClickAction;->tapper:Landroidx/test/espresso/action/Tapper;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " click"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public perform(Landroidx/test/espresso/UiController;Landroid/view/View;)V
    .registers 23
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uiController",
            "view"
        }
    .end annotation

    .line 109
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    const-string v9, "GeneralClickAction"

    const-string v10, "%s - At Coordinates: %d, %d and precision: %d, %d"

    iget-object v2, v1, Landroidx/test/espresso/action/GeneralClickAction;->coordinatesProvider:Landroidx/test/espresso/action/CoordinatesProvider;

    invoke-interface {v2, v8}, Landroidx/test/espresso/action/CoordinatesProvider;->calculateCoordinates(Landroid/view/View;)[F

    move-result-object v11

    .line 110
    iget-object v2, v1, Landroidx/test/espresso/action/GeneralClickAction;->precisionDescriber:Landroidx/test/espresso/action/PrecisionDescriber;

    invoke-interface {v2}, Landroidx/test/espresso/action/PrecisionDescriber;->describePrecision()[F

    move-result-object v12

    .line 112
    sget-object v2, Landroidx/test/espresso/action/Tapper$Status;->FAILURE:Landroidx/test/espresso/action/Tapper$Status;

    .line 113
    const/4 v14, 0x0

    .line 135
    :goto_19
    sget-object v3, Landroidx/test/espresso/action/Tapper$Status;->SUCCESS:Landroidx/test/espresso/action/Tapper$Status;

    const/4 v15, 0x5

    const/16 v16, 0x4

    const/16 v17, 0x2

    const/4 v7, 0x3

    const/16 v18, 0x1

    if-eq v2, v3, :cond_105

    if-ge v14, v7, :cond_105

    .line 137
    :try_start_27
    iget-object v2, v1, Landroidx/test/espresso/action/GeneralClickAction;->tapper:Landroidx/test/espresso/action/Tapper;

    iget v6, v1, Landroidx/test/espresso/action/GeneralClickAction;->inputDevice:I

    iget v5, v1, Landroidx/test/espresso/action/GeneralClickAction;->buttonState:I
    :try_end_2d
    .catch Ljava/lang/RuntimeException; {:try_start_27 .. :try_end_2d} :catch_b6

    move-object/from16 v3, p1

    move-object v4, v11

    move/from16 v19, v5

    move-object v5, v12

    const/4 v13, 0x3

    move/from16 v7, v19

    :try_start_36
    invoke-interface/range {v2 .. v7}, Landroidx/test/espresso/action/Tapper;->sendTap(Landroidx/test/espresso/UiController;[F[FII)Landroidx/test/espresso/action/Tapper$Status;

    move-result-object v2

    .line 138
    invoke-static {v9, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_8e

    .line 139
    const-string v3, "perform: "

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v5, v15, [Ljava/lang/Object;

    .line 145
    invoke-virtual/range {p0 .. p0}, Landroidx/test/espresso/action/GeneralClickAction;->getDescription()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    aget v6, v11, v7

    float-to-int v6, v6

    .line 146
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v18

    aget v6, v11, v18

    float-to-int v6, v6

    .line 147
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v17

    const/4 v6, 0x0

    aget v7, v12, v6

    float-to-int v6, v7

    .line 148
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v13

    aget v6, v12, v18

    float-to-int v6, v6

    .line 149
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v16

    .line 142
    invoke-static {v4, v10, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_85

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_8b

    :cond_85
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 139
    :goto_8b
    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catch Ljava/lang/RuntimeException; {:try_start_36 .. :try_end_8e} :catch_b4

    .line 165
    :cond_8e
    nop

    .line 167
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v3

    .line 169
    if-lez v3, :cond_99

    .line 170
    int-to-long v3, v3

    invoke-interface {v0, v3, v4}, Landroidx/test/espresso/UiController;->loopMainThreadForAtLeast(J)V

    .line 172
    :cond_99
    sget-object v3, Landroidx/test/espresso/action/Tapper$Status;->WARNING:Landroidx/test/espresso/action/Tapper$Status;

    if-ne v2, v3, :cond_b0

    .line 173
    iget-object v3, v1, Landroidx/test/espresso/action/GeneralClickAction;->rollbackAction:Landroidx/test/espresso/core/internal/deps/guava/base/Optional;

    invoke-virtual {v3}, Landroidx/test/espresso/core/internal/deps/guava/base/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_106

    .line 174
    iget-object v3, v1, Landroidx/test/espresso/action/GeneralClickAction;->rollbackAction:Landroidx/test/espresso/core/internal/deps/guava/base/Optional;

    invoke-virtual {v3}, Landroidx/test/espresso/core/internal/deps/guava/base/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/test/espresso/ViewAction;

    invoke-interface {v3, v0, v8}, Landroidx/test/espresso/ViewAction;->perform(Landroidx/test/espresso/UiController;Landroid/view/View;)V

    .line 179
    :cond_b0
    add-int/lit8 v14, v14, 0x1

    .line 180
    goto/16 :goto_19

    .line 151
    :catch_b4
    move-exception v0

    goto :goto_b8

    :catch_b6
    move-exception v0

    const/4 v13, 0x3

    .line 152
    :goto_b8
    new-instance v2, Landroidx/test/espresso/PerformException$Builder;

    invoke-direct {v2}, Landroidx/test/espresso/PerformException$Builder;-><init>()V

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v4, v15, [Ljava/lang/Object;

    .line 157
    invoke-virtual/range {p0 .. p0}, Landroidx/test/espresso/action/GeneralClickAction;->getDescription()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    aget v5, v11, v6

    float-to-int v5, v5

    .line 158
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v18

    aget v5, v11, v18

    float-to-int v5, v5

    .line 159
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v17

    aget v5, v12, v6

    float-to-int v5, v5

    .line 160
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v13

    aget v5, v12, v18

    float-to-int v5, v5

    .line 161
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v16

    .line 154
    invoke-static {v3, v10, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 153
    invoke-virtual {v2, v3}, Landroidx/test/espresso/PerformException$Builder;->withActionDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object v2

    .line 162
    invoke-static/range {p2 .. p2}, Landroidx/test/espresso/util/HumanReadables;->describe(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/test/espresso/PerformException$Builder;->withViewDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object v2

    .line 163
    invoke-virtual {v2, v0}, Landroidx/test/espresso/PerformException$Builder;->withCause(Ljava/lang/Throwable;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Landroidx/test/espresso/PerformException$Builder;->build()Landroidx/test/espresso/PerformException;

    move-result-object v0

    throw v0

    .line 135
    :cond_105
    const/4 v13, 0x3

    .line 181
    :cond_106
    sget-object v3, Landroidx/test/espresso/action/Tapper$Status;->FAILURE:Landroidx/test/espresso/action/Tapper$Status;

    if-eq v2, v3, :cond_11d

    .line 204
    iget-object v2, v1, Landroidx/test/espresso/action/GeneralClickAction;->tapper:Landroidx/test/espresso/action/Tapper;

    sget-object v3, Landroidx/test/espresso/action/Tap;->SINGLE:Landroidx/test/espresso/action/Tap;

    if-ne v2, v3, :cond_11c

    instance-of v2, v8, Landroid/webkit/WebView;

    if-eqz v2, :cond_11c

    .line 207
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v0, v2, v3}, Landroidx/test/espresso/UiController;->loopMainThreadForAtLeast(J)V

    .line 209
    :cond_11c
    return-void

    .line 182
    :cond_11d
    new-instance v0, Landroidx/test/espresso/PerformException$Builder;

    invoke-direct {v0}, Landroidx/test/espresso/PerformException$Builder;-><init>()V

    .line 183
    invoke-virtual/range {p0 .. p0}, Landroidx/test/espresso/action/GeneralClickAction;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/test/espresso/PerformException$Builder;->withActionDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object v0

    .line 184
    invoke-static/range {p2 .. p2}, Landroidx/test/espresso/util/HumanReadables;->describe(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/test/espresso/PerformException$Builder;->withViewDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object v0

    new-instance v2, Ljava/lang/RuntimeException;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/16 v4, 0x9

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget v6, v11, v5

    .line 192
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    aget v6, v11, v18

    .line 193
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v18

    aget v5, v12, v5

    .line 194
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v17

    aget v5, v12, v18

    .line 195
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v13

    iget-object v5, v1, Landroidx/test/espresso/action/GeneralClickAction;->tapper:Landroidx/test/espresso/action/Tapper;

    aput-object v5, v4, v16

    iget-object v5, v1, Landroidx/test/espresso/action/GeneralClickAction;->coordinatesProvider:Landroidx/test/espresso/action/CoordinatesProvider;

    aput-object v5, v4, v15

    const/4 v5, 0x6

    iget-object v6, v1, Landroidx/test/espresso/action/GeneralClickAction;->precisionDescriber:Landroidx/test/espresso/action/PrecisionDescriber;

    aput-object v6, v4, v5

    const/4 v5, 0x7

    .line 199
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    iget-object v6, v1, Landroidx/test/espresso/action/GeneralClickAction;->rollbackAction:Landroidx/test/espresso/core/internal/deps/guava/base/Optional;

    .line 200
    invoke-virtual {v6}, Landroidx/test/espresso/core/internal/deps/guava/base/Optional;->isPresent()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    .line 187
    const-string v5, "Couldn\'t click at: %s,%s precision: %s, %s . Tapper: %s coordinate provider: %s precision describer: %s. Tried %s times. With Rollback? %s"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v0, v2}, Landroidx/test/espresso/PerformException$Builder;->withCause(Ljava/lang/Throwable;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Landroidx/test/espresso/PerformException$Builder;->build()Landroidx/test/espresso/PerformException;

    move-result-object v0

    goto :goto_190

    :goto_18f
    throw v0

    :goto_190
    goto :goto_18f
.end method
