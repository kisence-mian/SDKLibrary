.class public final enum Lcom/sigmob/windad/WindAgeRestictedUserStatus;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sigmob/windad/WindAgeRestictedUserStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum WindAgeRestrictedStatusNO:Lcom/sigmob/windad/WindAgeRestictedUserStatus;

.field public static final enum WindAgeRestrictedStatusUnknow:Lcom/sigmob/windad/WindAgeRestictedUserStatus;

.field public static final enum WindAgeRestrictedStatusYES:Lcom/sigmob/windad/WindAgeRestictedUserStatus;

.field private static final synthetic b:[Lcom/sigmob/windad/WindAgeRestictedUserStatus;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/sigmob/windad/WindAgeRestictedUserStatus;

    const-string v1, "WindAgeRestrictedStatusUnknow"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sigmob/windad/WindAgeRestictedUserStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/windad/WindAgeRestictedUserStatus;->WindAgeRestrictedStatusUnknow:Lcom/sigmob/windad/WindAgeRestictedUserStatus;

    new-instance v1, Lcom/sigmob/windad/WindAgeRestictedUserStatus;

    const-string v3, "WindAgeRestrictedStatusYES"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/sigmob/windad/WindAgeRestictedUserStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/sigmob/windad/WindAgeRestictedUserStatus;->WindAgeRestrictedStatusYES:Lcom/sigmob/windad/WindAgeRestictedUserStatus;

    new-instance v3, Lcom/sigmob/windad/WindAgeRestictedUserStatus;

    const-string v5, "WindAgeRestrictedStatusNO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/sigmob/windad/WindAgeRestictedUserStatus;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/sigmob/windad/WindAgeRestictedUserStatus;->WindAgeRestrictedStatusNO:Lcom/sigmob/windad/WindAgeRestictedUserStatus;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/sigmob/windad/WindAgeRestictedUserStatus;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/sigmob/windad/WindAgeRestictedUserStatus;->b:[Lcom/sigmob/windad/WindAgeRestictedUserStatus;

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

    iput p3, p0, Lcom/sigmob/windad/WindAgeRestictedUserStatus;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/windad/WindAgeRestictedUserStatus;
    .registers 2

    const-class v0, Lcom/sigmob/windad/WindAgeRestictedUserStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sigmob/windad/WindAgeRestictedUserStatus;

    return-object p0
.end method

.method public static values()[Lcom/sigmob/windad/WindAgeRestictedUserStatus;
    .registers 1

    sget-object v0, Lcom/sigmob/windad/WindAgeRestictedUserStatus;->b:[Lcom/sigmob/windad/WindAgeRestictedUserStatus;

    invoke-virtual {v0}, [Lcom/sigmob/windad/WindAgeRestictedUserStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/windad/WindAgeRestictedUserStatus;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    iget v0, p0, Lcom/sigmob/windad/WindAgeRestictedUserStatus;->a:I

    return v0
.end method
