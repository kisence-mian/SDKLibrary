.class public Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
.super Ljava/lang/Object;
.source "ConstraintAnchor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;,
        Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;,
        Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    }
.end annotation


# static fields
.field private static final ALLOW_BINARY:Z = false

.field public static final AUTO_CONSTRAINT_CREATOR:I = 0x2

.field public static final SCOUT_CREATOR:I = 0x1

.field private static final UNSET_GONE_MARGIN:I = -0x1

.field public static final USER_CREATOR:I


# instance fields
.field private mConnectionCreator:I

.field private mConnectionType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;

.field mGoneMargin:I

.field public mMargin:I

.field final mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field private mResolutionAnchor:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

.field mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

.field private mStrength:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

.field mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field final mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V
    .registers 5
    .param p1, "owner"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p2, "type"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mResolutionAnchor:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 74
    const/4 v1, -0x1

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    .line 76
    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->NONE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    iput-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mStrength:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    .line 77
    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;->RELAXED:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;

    iput-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mConnectionType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;

    .line 78
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mConnectionCreator:I

    .line 87
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 88
    iput-object p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 89
    return-void
.end method

.method private isConnectionToMe(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Ljava/util/HashSet;)Z
    .registers 10
    .param p1, "target"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            "Ljava/util/HashSet<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;)Z"
        }
    .end annotation

    .line 588
    .local p2, "checked":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 589
    return v1

    .line 591
    :cond_8
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 593
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_13

    .line 594
    return v2

    .line 596
    :cond_13
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchors()Ljava/util/ArrayList;

    move-result-object v0

    .line 597
    .local v0, "targetAnchors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "targetAnchorsSize":I
    :goto_1c
    if-ge v3, v4, :cond_42

    .line 598
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 599
    .local v5, "anchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-virtual {v5, p0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isSimilarDimensionConnection(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)Z

    move-result v6

    if-eqz v6, :cond_3f

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 600
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v6

    invoke-direct {p0, v6, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnectionToMe(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Ljava/util/HashSet;)Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 601
    return v2

    .line 597
    .end local v5    # "anchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 605
    .end local v3    # "i":I
    .end local v4    # "targetAnchorsSize":I
    :cond_42
    return v1
.end method


# virtual methods
.method public connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z
    .registers 10
    .param p1, "toAnchor"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .param p2, "margin"    # I

    .line 251
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;IZ)Z

    move-result v0

    return v0
.end method

.method public connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;II)Z
    .registers 11
    .param p1, "toAnchor"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .param p2, "margin"    # I
    .param p3, "creator"    # I

    .line 241
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    const/4 v3, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;IZ)Z

    move-result v0

    return v0
.end method

.method public connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;IZ)Z
    .registers 10
    .param p1, "toAnchor"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .param p2, "margin"    # I
    .param p3, "goneMargin"    # I
    .param p4, "strength"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;
    .param p5, "creator"    # I
    .param p6, "forceConnection"    # Z

    .line 210
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_14

    .line 211
    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 212
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 213
    const/4 v1, -0x1

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    .line 214
    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->NONE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    iput-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mStrength:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    .line 215
    const/4 v1, 0x2

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mConnectionCreator:I

    .line 216
    return v0

    .line 218
    :cond_14
    if-nez p6, :cond_1d

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isValidConnection(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 219
    return v1

    .line 221
    :cond_1d
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 222
    if-lez p2, :cond_24

    .line 223
    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    goto :goto_26

    .line 225
    :cond_24
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 227
    :goto_26
    iput p3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    .line 228
    iput-object p4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mStrength:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    .line 229
    iput p5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mConnectionCreator:I

    .line 230
    return v0
.end method

.method public connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;I)Z
    .registers 12
    .param p1, "toAnchor"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .param p2, "margin"    # I
    .param p3, "strength"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;
    .param p4, "creator"    # I

    .line 194
    const/4 v3, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;IZ)Z

    move-result v0

    return v0
.end method

.method public getConnectionCreator()I
    .registers 2

    .line 163
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mConnectionCreator:I

    return v0
.end method

.method public getConnectionType()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;
    .registers 2

    .line 150
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mConnectionType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;

    return-object v0
.end method

.method public getMargin()I
    .registers 4

    .line 125
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_c

    .line 126
    const/4 v0, 0x0

    return v0

    .line 128
    :cond_c
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    const/4 v2, -0x1

    if-le v0, v2, :cond_20

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_20

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 129
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_20

    .line 130
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    return v0

    .line 132
    :cond_20
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    return v0
.end method

.method public final getOpposite()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .registers 3

    .line 613
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type:[I

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    .line 633
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 624
    :pswitch_19
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    return-object v0

    .line 621
    :pswitch_1e
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    return-object v0

    .line 618
    :pswitch_23
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    return-object v0

    .line 615
    :pswitch_28
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    return-object v0

    .line 631
    :pswitch_2d
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_28
        :pswitch_23
        :pswitch_1e
        :pswitch_19
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
    .end packed-switch
.end method

.method public getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .registers 2

    .line 112
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    return-object v0
.end method

.method public getPriorityLevel()I
    .registers 4

    .line 457
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type:[I

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x2

    packed-switch v0, :pswitch_data_26

    .line 468
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 466
    :pswitch_1b
    return v1

    .line 459
    :pswitch_1c
    return v1

    .line 458
    :pswitch_1d
    return v1

    .line 460
    :pswitch_1e
    const/4 v0, 0x1

    return v0

    .line 464
    :pswitch_20
    return v2

    .line 463
    :pswitch_21
    return v2

    .line 462
    :pswitch_22
    return v2

    .line 461
    :pswitch_23
    return v2

    .line 465
    :pswitch_24
    return v2

    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
    .end packed-switch
.end method

.method public getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    .registers 2

    .line 58
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mResolutionAnchor:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    return-object v0
.end method

.method public getSnapPriorityLevel()I
    .registers 4

    .line 435
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type:[I

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_26

    .line 446
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 444
    :pswitch_1b
    return v2

    .line 441
    :pswitch_1c
    return v1

    .line 438
    :pswitch_1d
    return v2

    .line 442
    :pswitch_1e
    const/4 v0, 0x2

    return v0

    .line 440
    :pswitch_20
    return v2

    .line 439
    :pswitch_21
    return v2

    .line 437
    :pswitch_22
    return v1

    .line 436
    :pswitch_23
    return v1

    .line 443
    :pswitch_24
    const/4 v0, 0x3

    return v0

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
    .end packed-switch
.end method

.method public getSolverVariable()Landroidx/constraintlayout/solver/SolverVariable;
    .registers 2

    .line 95
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    return-object v0
.end method

.method public getStrength()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;
    .registers 2

    .line 138
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mStrength:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    return-object v0
.end method

.method public getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .registers 2

    .line 144
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    return-object v0
.end method

.method public getType()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    .registers 2

    .line 118
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    return-object v0
.end method

.method public isConnected()Z
    .registers 2

    .line 259
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isConnectionAllowed(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)Z
    .registers 7
    .param p1, "target"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 566
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 567
    .local v0, "checked":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnectionToMe(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Ljava/util/HashSet;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    .line 568
    return v2

    .line 570
    :cond_d
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v1

    .line 571
    .local v1, "parent":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    const/4 v3, 0x1

    if-ne v1, p1, :cond_19

    .line 572
    return v3

    .line 574
    :cond_19
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v4

    if-ne v4, v1, :cond_20

    .line 575
    return v3

    .line 577
    :cond_20
    return v2
.end method

.method public isConnectionAllowed(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)Z
    .registers 4
    .param p1, "target"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p2, "anchor"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 553
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnectionAllowed(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)Z

    move-result v0

    return v0
.end method

.method public isSideAnchor()Z
    .registers 3

    .line 316
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type:[I

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1e

    .line 329
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 321
    :pswitch_19
    const/4 v0, 0x1

    return v0

    .line 327
    :pswitch_1b
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
    .end packed-switch
.end method

.method public isSimilarDimensionConnection(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)Z
    .registers 6
    .param p1, "anchor"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 340
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-result-object v0

    .line 341
    .local v0, "target":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_a

    .line 342
    return v2

    .line 344
    :cond_a
    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type:[I

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_4e

    .line 362
    new-instance v1, Ljava/lang/AssertionError;

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 360
    :pswitch_24
    return v3

    .line 357
    :pswitch_25
    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v0, v1, :cond_37

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v0, v1, :cond_37

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v0, v1, :cond_37

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v0, v1, :cond_36

    goto :goto_37

    :cond_36
    const/4 v2, 0x0

    :cond_37
    :goto_37
    return v2

    .line 351
    :pswitch_38
    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v0, v1, :cond_46

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v0, v1, :cond_46

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v0, v1, :cond_45

    goto :goto_46

    :cond_45
    const/4 v2, 0x0

    :cond_46
    :goto_46
    return v2

    .line 346
    :pswitch_47
    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v0, v1, :cond_4c

    goto :goto_4d

    :cond_4c
    const/4 v2, 0x0

    :goto_4d
    return v2

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_47
        :pswitch_38
        :pswitch_38
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_38
        :pswitch_25
        :pswitch_24
    .end packed-switch
.end method

.method public isSnapCompatibleWith(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)Z
    .registers 6
    .param p1, "anchor"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 479
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_8

    .line 480
    return v2

    .line 482
    :cond_8
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-result-object v1

    const/4 v3, 0x1

    if-ne v0, v1, :cond_12

    .line 483
    return v3

    .line 485
    :cond_12
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type:[I

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_98

    .line 533
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 522
    :pswitch_2b
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_ae

    .line 525
    return v2

    .line 524
    :pswitch_3b
    return v3

    .line 523
    :pswitch_3c
    return v3

    .line 501
    :pswitch_3d
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_b6

    .line 504
    return v2

    .line 503
    :pswitch_4d
    return v3

    .line 502
    :pswitch_4e
    return v3

    .line 515
    :pswitch_4f
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_be

    .line 518
    return v2

    .line 517
    :sswitch_5f
    return v3

    .line 516
    :sswitch_60
    return v3

    .line 508
    :pswitch_61
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_c8

    .line 511
    return v2

    .line 510
    :sswitch_71
    return v3

    .line 509
    :sswitch_72
    return v3

    .line 494
    :pswitch_73
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_d2

    .line 497
    return v2

    .line 496
    :sswitch_83
    return v3

    .line 495
    :sswitch_84
    return v3

    .line 487
    :pswitch_85
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_dc

    .line 490
    return v2

    .line 489
    :sswitch_95
    return v3

    .line 488
    :sswitch_96
    return v3

    .line 531
    :pswitch_97
    return v2

    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_97
        :pswitch_85
        :pswitch_73
        :pswitch_61
        :pswitch_4f
        :pswitch_97
        :pswitch_3d
        :pswitch_2b
        :pswitch_97
    .end packed-switch

    :pswitch_data_ae
    .packed-switch 0x4
        :pswitch_3c
        :pswitch_3b
    .end packed-switch

    :pswitch_data_b6
    .packed-switch 0x2
        :pswitch_4e
        :pswitch_4d
    .end packed-switch

    :sswitch_data_be
    .sparse-switch
        0x4 -> :sswitch_60
        0x8 -> :sswitch_5f
    .end sparse-switch

    :sswitch_data_c8
    .sparse-switch
        0x5 -> :sswitch_72
        0x8 -> :sswitch_71
    .end sparse-switch

    :sswitch_data_d2
    .sparse-switch
        0x2 -> :sswitch_84
        0x7 -> :sswitch_83
    .end sparse-switch

    :sswitch_data_dc
    .sparse-switch
        0x3 -> :sswitch_96
        0x7 -> :sswitch_95
    .end sparse-switch
.end method

.method public isValidConnection(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)Z
    .registers 7
    .param p1, "anchor"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 268
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 269
    return v0

    .line 271
    :cond_4
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-result-object v1

    .line 272
    .local v1, "target":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_27

    .line 273
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v2, v4, :cond_26

    .line 274
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->hasBaseline()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->hasBaseline()Z

    move-result v2

    if-nez v2, :cond_26

    .line 275
    :cond_25
    return v0

    .line 277
    :cond_26
    return v3

    .line 279
    :cond_27
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type:[I

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_8a

    .line 307
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 305
    :pswitch_40
    return v0

    .line 295
    :pswitch_41
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v1, v2, :cond_4c

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v1, v2, :cond_4a

    goto :goto_4c

    :cond_4a
    const/4 v2, 0x0

    goto :goto_4d

    :cond_4c
    :goto_4c
    const/4 v2, 0x1

    .line 296
    .local v2, "isCompatible":Z
    :goto_4d
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v4

    instance-of v4, v4, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-eqz v4, :cond_5d

    .line 297
    if-nez v2, :cond_5b

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v1, v4, :cond_5c

    :cond_5b
    const/4 v0, 0x1

    :cond_5c
    move v2, v0

    .line 299
    :cond_5d
    return v2

    .line 287
    .end local v2    # "isCompatible":Z
    :pswitch_5e
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v1, v2, :cond_69

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v1, v2, :cond_67

    goto :goto_69

    :cond_67
    const/4 v2, 0x0

    goto :goto_6a

    :cond_69
    :goto_69
    const/4 v2, 0x1

    .line 288
    .restart local v2    # "isCompatible":Z
    :goto_6a
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v4

    instance-of v4, v4, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-eqz v4, :cond_7a

    .line 289
    if-nez v2, :cond_78

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v1, v4, :cond_79

    :cond_78
    const/4 v0, 0x1

    :cond_79
    move v2, v0

    .line 291
    :cond_7a
    return v2

    .line 282
    .end local v2    # "isCompatible":Z
    :pswitch_7b
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v1, v2, :cond_88

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v1, v2, :cond_88

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v1, v2, :cond_88

    const/4 v0, 0x1

    :cond_88
    return v0

    nop

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_7b
        :pswitch_5e
        :pswitch_5e
        :pswitch_41
        :pswitch_41
        :pswitch_40
        :pswitch_40
        :pswitch_40
        :pswitch_40
    .end packed-switch
.end method

.method public isVerticalAnchor()Z
    .registers 3

    .line 401
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type:[I

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1e

    .line 414
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 412
    :pswitch_19
    const/4 v0, 0x1

    return v0

    .line 406
    :pswitch_1b
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_1b
        :pswitch_19
        :pswitch_19
    .end packed-switch
.end method

.method public reset()V
    .registers 3

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 176
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 177
    const/4 v1, -0x1

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    .line 178
    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    iput-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mStrength:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    .line 179
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mConnectionCreator:I

    .line 180
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;->RELAXED:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mConnectionType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;

    .line 181
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mResolutionAnchor:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->reset()V

    .line 182
    return-void
.end method

.method public resetSolverVariable(Landroidx/constraintlayout/solver/Cache;)V
    .registers 5
    .param p1, "cache"    # Landroidx/constraintlayout/solver/Cache;

    .line 101
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    if-nez v0, :cond_f

    .line 102
    new-instance v0, Landroidx/constraintlayout/solver/SolverVariable;

    sget-object v1, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/solver/SolverVariable;-><init>(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    goto :goto_12

    .line 104
    :cond_f
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/SolverVariable;->reset()V

    .line 106
    :goto_12
    return-void
.end method

.method public setConnectionCreator(I)V
    .registers 2
    .param p1, "creator"    # I

    .line 169
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mConnectionCreator:I

    return-void
.end method

.method public setConnectionType(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;)V
    .registers 2
    .param p1, "type"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;

    .line 157
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mConnectionType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;

    .line 158
    return-void
.end method

.method public setGoneMargin(I)V
    .registers 3
    .param p1, "margin"    # I

    .line 390
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 391
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    .line 393
    :cond_8
    return-void
.end method

.method public setMargin(I)V
    .registers 3
    .param p1, "margin"    # I

    .line 380
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 381
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 383
    :cond_8
    return-void
.end method

.method public setStrength(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;)V
    .registers 3
    .param p1, "strength"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    .line 370
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 371
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mStrength:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    .line 373
    :cond_8
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDebugName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
