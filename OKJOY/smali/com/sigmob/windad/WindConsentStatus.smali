.class public final enum Lcom/sigmob/windad/WindConsentStatus;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sigmob/windad/WindConsentStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ACCEPT:Lcom/sigmob/windad/WindConsentStatus;

.field public static final enum DENIED:Lcom/sigmob/windad/WindConsentStatus;

.field public static final enum UNKNOW:Lcom/sigmob/windad/WindConsentStatus;

.field private static final synthetic b:[Lcom/sigmob/windad/WindConsentStatus;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/sigmob/windad/WindConsentStatus;

    const-string v1, "UNKNOW"

    const-string v2, "0"

    invoke-direct {v0, v1, v3, v2}, Lcom/sigmob/windad/WindConsentStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/windad/WindConsentStatus;->UNKNOW:Lcom/sigmob/windad/WindConsentStatus;

    new-instance v0, Lcom/sigmob/windad/WindConsentStatus;

    const-string v1, "ACCEPT"

    const-string v2, "1"

    invoke-direct {v0, v1, v4, v2}, Lcom/sigmob/windad/WindConsentStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/windad/WindConsentStatus;->ACCEPT:Lcom/sigmob/windad/WindConsentStatus;

    new-instance v0, Lcom/sigmob/windad/WindConsentStatus;

    const-string v1, "DENIED"

    const-string v2, "2"

    invoke-direct {v0, v1, v5, v2}, Lcom/sigmob/windad/WindConsentStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/windad/WindConsentStatus;->DENIED:Lcom/sigmob/windad/WindConsentStatus;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sigmob/windad/WindConsentStatus;

    sget-object v1, Lcom/sigmob/windad/WindConsentStatus;->UNKNOW:Lcom/sigmob/windad/WindConsentStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sigmob/windad/WindConsentStatus;->ACCEPT:Lcom/sigmob/windad/WindConsentStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sigmob/windad/WindConsentStatus;->DENIED:Lcom/sigmob/windad/WindConsentStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sigmob/windad/WindConsentStatus;->b:[Lcom/sigmob/windad/WindConsentStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/sigmob/windad/WindConsentStatus;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/windad/WindConsentStatus;
    .registers 2

    const-class v0, Lcom/sigmob/windad/WindConsentStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sigmob/windad/WindConsentStatus;

    return-object v0
.end method

.method public static values()[Lcom/sigmob/windad/WindConsentStatus;
    .registers 1

    sget-object v0, Lcom/sigmob/windad/WindConsentStatus;->b:[Lcom/sigmob/windad/WindConsentStatus;

    invoke-virtual {v0}, [Lcom/sigmob/windad/WindConsentStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/windad/WindConsentStatus;

    return-object v0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/windad/WindConsentStatus;->a:Ljava/lang/String;

    return-object v0
.end method
