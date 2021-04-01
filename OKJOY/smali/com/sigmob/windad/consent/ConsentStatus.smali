.class public final enum Lcom/sigmob/windad/consent/ConsentStatus;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sigmob/windad/consent/ConsentStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ACCEPT:Lcom/sigmob/windad/consent/ConsentStatus;

.field public static final enum DENIED:Lcom/sigmob/windad/consent/ConsentStatus;

.field public static final enum UNKNOWN:Lcom/sigmob/windad/consent/ConsentStatus;

.field private static final synthetic a:[Lcom/sigmob/windad/consent/ConsentStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sigmob/windad/consent/ConsentStatus;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/sigmob/windad/consent/ConsentStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sigmob/windad/consent/ConsentStatus;->UNKNOWN:Lcom/sigmob/windad/consent/ConsentStatus;

    new-instance v0, Lcom/sigmob/windad/consent/ConsentStatus;

    const-string v1, "DENIED"

    invoke-direct {v0, v1, v3}, Lcom/sigmob/windad/consent/ConsentStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sigmob/windad/consent/ConsentStatus;->DENIED:Lcom/sigmob/windad/consent/ConsentStatus;

    new-instance v0, Lcom/sigmob/windad/consent/ConsentStatus;

    const-string v1, "ACCEPT"

    invoke-direct {v0, v1, v4}, Lcom/sigmob/windad/consent/ConsentStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sigmob/windad/consent/ConsentStatus;->ACCEPT:Lcom/sigmob/windad/consent/ConsentStatus;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sigmob/windad/consent/ConsentStatus;

    sget-object v1, Lcom/sigmob/windad/consent/ConsentStatus;->UNKNOWN:Lcom/sigmob/windad/consent/ConsentStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sigmob/windad/consent/ConsentStatus;->DENIED:Lcom/sigmob/windad/consent/ConsentStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sigmob/windad/consent/ConsentStatus;->ACCEPT:Lcom/sigmob/windad/consent/ConsentStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sigmob/windad/consent/ConsentStatus;->a:[Lcom/sigmob/windad/consent/ConsentStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/windad/consent/ConsentStatus;
    .registers 2

    const-class v0, Lcom/sigmob/windad/consent/ConsentStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sigmob/windad/consent/ConsentStatus;

    return-object v0
.end method

.method public static values()[Lcom/sigmob/windad/consent/ConsentStatus;
    .registers 1

    sget-object v0, Lcom/sigmob/windad/consent/ConsentStatus;->a:[Lcom/sigmob/windad/consent/ConsentStatus;

    invoke-virtual {v0}, [Lcom/sigmob/windad/consent/ConsentStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/windad/consent/ConsentStatus;

    return-object v0
.end method
