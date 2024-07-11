.class public final enum Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KsLifeEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;

.field public static final enum ON_ANY:Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;

.field public static final enum ON_CREATE:Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;

.field public static final enum ON_DESTROY:Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;

.field public static final enum ON_PAUSE:Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;

.field public static final enum ON_RESUME:Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;

.field public static final enum ON_START:Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;

.field public static final enum ON_STOP:Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;


# instance fields
.field mRealValue:Landroidx/lifecycle/Lifecycle$Event;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    new-instance v0, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    const-string v2, "ON_CREATE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;-><init>(Ljava/lang/String;ILandroidx/lifecycle/Lifecycle$Event;)V

    sput-object v0, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;->ON_CREATE:Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;

    new-instance v1, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;

    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    const-string v4, "ON_START"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;-><init>(Ljava/lang/String;ILandroidx/lifecycle/Lifecycle$Event;)V

    sput-object v1, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;->ON_START:Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;

    new-instance v2, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;

    sget-object v4, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    const-string v6, "ON_RESUME"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;-><init>(Ljava/lang/String;ILandroidx/lifecycle/Lifecycle$Event;)V

    sput-object v2, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;->ON_RESUME:Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;

    new-instance v4, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;

    sget-object v6, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    const-string v8, "ON_PAUSE"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;-><init>(Ljava/lang/String;ILandroidx/lifecycle/Lifecycle$Event;)V

    sput-object v4, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;->ON_PAUSE:Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;

    new-instance v6, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;

    sget-object v8, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    const-string v10, "ON_STOP"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;-><init>(Ljava/lang/String;ILandroidx/lifecycle/Lifecycle$Event;)V

    sput-object v6, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;->ON_STOP:Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;

    new-instance v8, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;

    sget-object v10, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    const-string v12, "ON_DESTROY"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;-><init>(Ljava/lang/String;ILandroidx/lifecycle/Lifecycle$Event;)V

    sput-object v8, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;->ON_DESTROY:Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;

    new-instance v10, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;

    sget-object v12, Landroidx/lifecycle/Lifecycle$Event;->ON_ANY:Landroidx/lifecycle/Lifecycle$Event;

    const-string v14, "ON_ANY"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;-><init>(Ljava/lang/String;ILandroidx/lifecycle/Lifecycle$Event;)V

    sput-object v10, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;->ON_ANY:Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;

    const/4 v12, 0x7

    new-array v12, v12, [Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;

    aput-object v0, v12, v3

    aput-object v1, v12, v5

    aput-object v2, v12, v7

    aput-object v4, v12, v9

    aput-object v6, v12, v11

    aput-object v8, v12, v13

    aput-object v10, v12, v15

    sput-object v12, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;->$VALUES:[Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroidx/lifecycle/Lifecycle$Event;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Lifecycle$Event;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;->mRealValue:Landroidx/lifecycle/Lifecycle$Event;

    return-void
.end method

.method public static createfrom(Landroidx/lifecycle/Lifecycle$Event;)Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;
    .registers 6

    invoke-static {}, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;->values()[Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;->getReal()Landroidx/lifecycle/Lifecycle$Event;

    move-result-object v4

    if-ne v4, p0, :cond_11

    return-object v3

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_14
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;
    .registers 2

    const-class v0, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;

    return-object p0
.end method

.method public static values()[Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;->$VALUES:[Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;

    invoke-virtual {v0}, [Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;

    return-object v0
.end method


# virtual methods
.method public getReal()Landroidx/lifecycle/Lifecycle$Event;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;->mRealValue:Landroidx/lifecycle/Lifecycle$Event;

    return-object v0
.end method
