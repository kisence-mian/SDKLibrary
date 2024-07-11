.class public final enum Lcom/kwad/sdk/crash/utils/SystemUtil$LEVEL;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/crash/utils/SystemUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LEVEL"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kwad/sdk/crash/utils/SystemUtil$LEVEL;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kwad/sdk/crash/utils/SystemUtil$LEVEL;

.field public static final enum BAD:Lcom/kwad/sdk/crash/utils/SystemUtil$LEVEL;

.field public static final enum BEST:Lcom/kwad/sdk/crash/utils/SystemUtil$LEVEL;

.field public static final enum HIGH:Lcom/kwad/sdk/crash/utils/SystemUtil$LEVEL;

.field public static final enum LOW:Lcom/kwad/sdk/crash/utils/SystemUtil$LEVEL;

.field public static final enum MIDDLE:Lcom/kwad/sdk/crash/utils/SystemUtil$LEVEL;

.field public static final enum UN_KNOW:Lcom/kwad/sdk/crash/utils/SystemUtil$LEVEL;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .registers 14

    new-instance v0, Lcom/kwad/sdk/crash/utils/SystemUtil$LEVEL;

    const-string v1, "BEST"

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/kwad/sdk/crash/utils/SystemUtil$LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kwad/sdk/crash/utils/SystemUtil$LEVEL;->BEST:Lcom/kwad/sdk/crash/utils/SystemUtil$LEVEL;

    new-instance v1, Lcom/kwad/sdk/crash/utils/SystemUtil$LEVEL;

    const-string v4, "HIGH"

    const/4 v5, 0x1

    const/4 v6, 0x4

    invoke-direct {v1, v4, v5, v6}, Lcom/kwad/sdk/crash/utils/SystemUtil$LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/kwad/sdk/crash/utils/SystemUtil$LEVEL;->HIGH:Lcom/kwad/sdk/crash/utils/SystemUtil$LEVEL;

    new-instance v4, Lcom/kwad/sdk/crash/utils/SystemUtil$LEVEL;

    const-string v7, "MIDDLE"

    const/4 v8, 0x2

    const/4 v9, 0x3

    invoke-direct {v4, v7, v8, v9}, Lcom/kwad/sdk/crash/utils/SystemUtil$LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/kwad/sdk/crash/utils/SystemUtil$LEVEL;->MIDDLE:Lcom/kwad/sdk/crash/utils/SystemUtil$LEVEL;

    new-instance v7, Lcom/kwad/sdk/crash/utils/SystemUtil$LEVEL;

    const-string v10, "LOW"

    invoke-direct {v7, v10, v9, v8}, Lcom/kwad/sdk/crash/utils/SystemUtil$LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/kwad/sdk/crash/utils/SystemUtil$LEVEL;->LOW:Lcom/kwad/sdk/crash/utils/SystemUtil$LEVEL;

    new-instance v10, Lcom/kwad/sdk/crash/utils/SystemUtil$LEVEL;

    const-string v11, "BAD"

    invoke-direct {v10, v11, v6, v5}, Lcom/kwad/sdk/crash/utils/SystemUtil$LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/kwad/sdk/crash/utils/SystemUtil$LEVEL;->BAD:Lcom/kwad/sdk/crash/utils/SystemUtil$LEVEL;

    new-instance v11, Lcom/kwad/sdk/crash/utils/SystemUtil$LEVEL;

    const-string v12, "UN_KNOW"

    const/4 v13, -0x1

    invoke-direct {v11, v12, v3, v13}, Lcom/kwad/sdk/crash/utils/SystemUtil$LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/kwad/sdk/crash/utils/SystemUtil$LEVEL;->UN_KNOW:Lcom/kwad/sdk/crash/utils/SystemUtil$LEVEL;

    const/4 v12, 0x6

    new-array v12, v12, [Lcom/kwad/sdk/crash/utils/SystemUtil$LEVEL;

    aput-object v0, v12, v2

    aput-object v1, v12, v5

    aput-object v4, v12, v8

    aput-object v7, v12, v9

    aput-object v10, v12, v6

    aput-object v11, v12, v3

    sput-object v12, Lcom/kwad/sdk/crash/utils/SystemUtil$LEVEL;->$VALUES:[Lcom/kwad/sdk/crash/utils/SystemUtil$LEVEL;

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

    iput p3, p0, Lcom/kwad/sdk/crash/utils/SystemUtil$LEVEL;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kwad/sdk/crash/utils/SystemUtil$LEVEL;
    .registers 2

    const-class v0, Lcom/kwad/sdk/crash/utils/SystemUtil$LEVEL;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kwad/sdk/crash/utils/SystemUtil$LEVEL;

    return-object p0
.end method

.method public static values()[Lcom/kwad/sdk/crash/utils/SystemUtil$LEVEL;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/crash/utils/SystemUtil$LEVEL;->$VALUES:[Lcom/kwad/sdk/crash/utils/SystemUtil$LEVEL;

    invoke-virtual {v0}, [Lcom/kwad/sdk/crash/utils/SystemUtil$LEVEL;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kwad/sdk/crash/utils/SystemUtil$LEVEL;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/crash/utils/SystemUtil$LEVEL;->value:I

    return v0
.end method
