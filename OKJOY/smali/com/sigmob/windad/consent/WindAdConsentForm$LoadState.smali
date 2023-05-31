.class final enum Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum LOADED:Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;

.field public static final enum LOADING:Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;

.field public static final enum NOT_READY:Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;

.field private static final synthetic a:[Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;

    const-string v1, "NOT_READY"

    invoke-direct {v0, v1, v2}, Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;->NOT_READY:Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;

    new-instance v0, Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v3}, Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;->LOADING:Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;

    new-instance v0, Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;

    const-string v1, "LOADED"

    invoke-direct {v0, v1, v4}, Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;->LOADED:Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;

    sget-object v1, Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;->NOT_READY:Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;->LOADING:Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;->LOADED:Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;->a:[Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;
    .registers 2

    const-class v0, Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;

    return-object v0
.end method

.method public static values()[Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;
    .registers 1

    sget-object v0, Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;->a:[Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;

    invoke-virtual {v0}, [Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;

    return-object v0
.end method
