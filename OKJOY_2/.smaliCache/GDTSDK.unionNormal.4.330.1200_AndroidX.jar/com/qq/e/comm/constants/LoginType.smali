.class public final enum Lcom/qq/e/comm/constants/LoginType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qq/e/comm/constants/LoginType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum QQ:Lcom/qq/e/comm/constants/LoginType;

.field public static final enum Unknow:Lcom/qq/e/comm/constants/LoginType;

.field public static final enum WeiXin:Lcom/qq/e/comm/constants/LoginType;

.field private static final synthetic b:[Lcom/qq/e/comm/constants/LoginType;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/qq/e/comm/constants/LoginType;

    const-string v1, "Unknow"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/qq/e/comm/constants/LoginType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qq/e/comm/constants/LoginType;->Unknow:Lcom/qq/e/comm/constants/LoginType;

    new-instance v1, Lcom/qq/e/comm/constants/LoginType;

    const-string v3, "WeiXin"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/qq/e/comm/constants/LoginType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/qq/e/comm/constants/LoginType;->WeiXin:Lcom/qq/e/comm/constants/LoginType;

    new-instance v3, Lcom/qq/e/comm/constants/LoginType;

    const-string v5, "QQ"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/qq/e/comm/constants/LoginType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/qq/e/comm/constants/LoginType;->QQ:Lcom/qq/e/comm/constants/LoginType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/qq/e/comm/constants/LoginType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/qq/e/comm/constants/LoginType;->b:[Lcom/qq/e/comm/constants/LoginType;

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

    iput p3, p0, Lcom/qq/e/comm/constants/LoginType;->a:I

    invoke-virtual {p0}, Lcom/qq/e/comm/constants/LoginType;->ordinal()I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qq/e/comm/constants/LoginType;
    .registers 2

    const-class v0, Lcom/qq/e/comm/constants/LoginType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qq/e/comm/constants/LoginType;

    return-object p0
.end method

.method public static values()[Lcom/qq/e/comm/constants/LoginType;
    .registers 1

    sget-object v0, Lcom/qq/e/comm/constants/LoginType;->b:[Lcom/qq/e/comm/constants/LoginType;

    invoke-virtual {v0}, [Lcom/qq/e/comm/constants/LoginType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qq/e/comm/constants/LoginType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .registers 2

    iget v0, p0, Lcom/qq/e/comm/constants/LoginType;->a:I

    return v0
.end method
