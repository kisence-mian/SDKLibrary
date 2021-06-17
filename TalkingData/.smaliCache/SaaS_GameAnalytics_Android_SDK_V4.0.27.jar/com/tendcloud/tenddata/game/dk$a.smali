.class public final enum Lcom/tendcloud/tenddata/game/dk$a;
.super Ljava/lang/Enum;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/game/dk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tendcloud/tenddata/game/dk$a;

.field public static final enum HIGH:Lcom/tendcloud/tenddata/game/dk$a;

.field public static final enum IMMEDIATELY:Lcom/tendcloud/tenddata/game/dk$a;


# instance fields
.field private final indexNum:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 18
    new-instance v0, Lcom/tendcloud/tenddata/game/dk$a;

    const-string v1, "IMMEDIATELY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/tendcloud/tenddata/game/dk$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tendcloud/tenddata/game/dk$a;->IMMEDIATELY:Lcom/tendcloud/tenddata/game/dk$a;

    .line 19
    new-instance v1, Lcom/tendcloud/tenddata/game/dk$a;

    const-string v3, "HIGH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/tendcloud/tenddata/game/dk$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tendcloud/tenddata/game/dk$a;->HIGH:Lcom/tendcloud/tenddata/game/dk$a;

    .line 17
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/tendcloud/tenddata/game/dk$a;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/tendcloud/tenddata/game/dk$a;->$VALUES:[Lcom/tendcloud/tenddata/game/dk$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput p3, p0, Lcom/tendcloud/tenddata/game/dk$a;->indexNum:I

    .line 26
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tendcloud/tenddata/game/dk$a;
    .registers 2

    .line 17
    const-class v0, Lcom/tendcloud/tenddata/game/dk$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tendcloud/tenddata/game/dk$a;

    return-object p0
.end method

.method public static values()[Lcom/tendcloud/tenddata/game/dk$a;
    .registers 1

    .line 17
    sget-object v0, Lcom/tendcloud/tenddata/game/dk$a;->$VALUES:[Lcom/tendcloud/tenddata/game/dk$a;

    invoke-virtual {v0}, [Lcom/tendcloud/tenddata/game/dk$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tendcloud/tenddata/game/dk$a;

    return-object v0
.end method


# virtual methods
.method public index()I
    .registers 2

    .line 29
    iget v0, p0, Lcom/tendcloud/tenddata/game/dk$a;->indexNum:I

    return v0
.end method
