.class abstract enum Lcom/kwad/sdk/mvp/Presenter$PresenterState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/mvp/Presenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "PresenterState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kwad/sdk/mvp/Presenter$PresenterState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kwad/sdk/mvp/Presenter$PresenterState;

.field public static final enum BIND:Lcom/kwad/sdk/mvp/Presenter$PresenterState;

.field public static final enum CREATE:Lcom/kwad/sdk/mvp/Presenter$PresenterState;

.field public static final enum DESTROY:Lcom/kwad/sdk/mvp/Presenter$PresenterState;

.field public static final enum INIT:Lcom/kwad/sdk/mvp/Presenter$PresenterState;

.field public static final enum UNBIND:Lcom/kwad/sdk/mvp/Presenter$PresenterState;


# instance fields
.field private mIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 11

    new-instance v0, Lcom/kwad/sdk/mvp/Presenter$PresenterState$1;

    const-string v1, "INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/kwad/sdk/mvp/Presenter$PresenterState$1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kwad/sdk/mvp/Presenter$PresenterState;->INIT:Lcom/kwad/sdk/mvp/Presenter$PresenterState;

    new-instance v1, Lcom/kwad/sdk/mvp/Presenter$PresenterState$2;

    const-string v3, "CREATE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/kwad/sdk/mvp/Presenter$PresenterState$2;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/kwad/sdk/mvp/Presenter$PresenterState;->CREATE:Lcom/kwad/sdk/mvp/Presenter$PresenterState;

    new-instance v3, Lcom/kwad/sdk/mvp/Presenter$PresenterState$3;

    const-string v5, "BIND"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/kwad/sdk/mvp/Presenter$PresenterState$3;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/kwad/sdk/mvp/Presenter$PresenterState;->BIND:Lcom/kwad/sdk/mvp/Presenter$PresenterState;

    new-instance v5, Lcom/kwad/sdk/mvp/Presenter$PresenterState$4;

    const-string v7, "UNBIND"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/kwad/sdk/mvp/Presenter$PresenterState$4;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/kwad/sdk/mvp/Presenter$PresenterState;->UNBIND:Lcom/kwad/sdk/mvp/Presenter$PresenterState;

    new-instance v7, Lcom/kwad/sdk/mvp/Presenter$PresenterState$5;

    const-string v9, "DESTROY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/kwad/sdk/mvp/Presenter$PresenterState$5;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/kwad/sdk/mvp/Presenter$PresenterState;->DESTROY:Lcom/kwad/sdk/mvp/Presenter$PresenterState;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/kwad/sdk/mvp/Presenter$PresenterState;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/kwad/sdk/mvp/Presenter$PresenterState;->$VALUES:[Lcom/kwad/sdk/mvp/Presenter$PresenterState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/kwad/sdk/mvp/Presenter$PresenterState;->mIndex:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILcom/kwad/sdk/mvp/Presenter$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/kwad/sdk/mvp/Presenter$PresenterState;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kwad/sdk/mvp/Presenter$PresenterState;
    .registers 2

    const-class v0, Lcom/kwad/sdk/mvp/Presenter$PresenterState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kwad/sdk/mvp/Presenter$PresenterState;

    return-object p0
.end method

.method public static values()[Lcom/kwad/sdk/mvp/Presenter$PresenterState;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/mvp/Presenter$PresenterState;->$VALUES:[Lcom/kwad/sdk/mvp/Presenter$PresenterState;

    invoke-virtual {v0}, [Lcom/kwad/sdk/mvp/Presenter$PresenterState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kwad/sdk/mvp/Presenter$PresenterState;

    return-object v0
.end method


# virtual methods
.method public index()I
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/mvp/Presenter$PresenterState;->mIndex:I

    return v0
.end method

.method abstract performCallState(Lcom/kwad/sdk/mvp/Presenter;)V
.end method
