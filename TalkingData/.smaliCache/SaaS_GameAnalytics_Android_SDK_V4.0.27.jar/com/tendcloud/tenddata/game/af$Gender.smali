.class public final enum Lcom/tendcloud/tenddata/game/af$Gender;
.super Ljava/lang/Enum;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/game/af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Gender"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tendcloud/tenddata/game/af$Gender;

.field public static final enum FEMALE:Lcom/tendcloud/tenddata/game/af$Gender;

.field public static final enum MALE:Lcom/tendcloud/tenddata/game/af$Gender;

.field public static final enum UNKNOW:Lcom/tendcloud/tenddata/game/af$Gender;


# instance fields
.field private final index:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 37
    new-instance v0, Lcom/tendcloud/tenddata/game/af$Gender;

    const-string v1, "UNKNOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/tendcloud/tenddata/game/af$Gender;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tendcloud/tenddata/game/af$Gender;->UNKNOW:Lcom/tendcloud/tenddata/game/af$Gender;

    new-instance v1, Lcom/tendcloud/tenddata/game/af$Gender;

    const-string v3, "MALE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/tendcloud/tenddata/game/af$Gender;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tendcloud/tenddata/game/af$Gender;->MALE:Lcom/tendcloud/tenddata/game/af$Gender;

    new-instance v3, Lcom/tendcloud/tenddata/game/af$Gender;

    const-string v5, "FEMALE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/tendcloud/tenddata/game/af$Gender;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/tendcloud/tenddata/game/af$Gender;->FEMALE:Lcom/tendcloud/tenddata/game/af$Gender;

    .line 36
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/tendcloud/tenddata/game/af$Gender;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/tendcloud/tenddata/game/af$Gender;->$VALUES:[Lcom/tendcloud/tenddata/game/af$Gender;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput p3, p0, Lcom/tendcloud/tenddata/game/af$Gender;->index:I

    .line 43
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tendcloud/tenddata/game/af$Gender;
    .registers 2

    .line 36
    const-class v0, Lcom/tendcloud/tenddata/game/af$Gender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tendcloud/tenddata/game/af$Gender;

    return-object p0
.end method

.method public static values()[Lcom/tendcloud/tenddata/game/af$Gender;
    .registers 1

    .line 36
    sget-object v0, Lcom/tendcloud/tenddata/game/af$Gender;->$VALUES:[Lcom/tendcloud/tenddata/game/af$Gender;

    invoke-virtual {v0}, [Lcom/tendcloud/tenddata/game/af$Gender;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tendcloud/tenddata/game/af$Gender;

    return-object v0
.end method


# virtual methods
.method public index()I
    .registers 2

    .line 46
    iget v0, p0, Lcom/tendcloud/tenddata/game/af$Gender;->index:I

    return v0
.end method
