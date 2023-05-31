.class public final enum Lmobi/oneway/export/enums/OnewayAdCloseType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmobi/oneway/export/enums/OnewayAdCloseType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmobi/oneway/export/enums/OnewayAdCloseType;

.field public static final enum COMPLETED:Lmobi/oneway/export/enums/OnewayAdCloseType;

.field public static final enum ERROR:Lmobi/oneway/export/enums/OnewayAdCloseType;

.field public static final enum SKIPPED:Lmobi/oneway/export/enums/OnewayAdCloseType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lmobi/oneway/export/enums/OnewayAdCloseType;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v2}, Lmobi/oneway/export/enums/OnewayAdCloseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/oneway/export/enums/OnewayAdCloseType;->ERROR:Lmobi/oneway/export/enums/OnewayAdCloseType;

    new-instance v0, Lmobi/oneway/export/enums/OnewayAdCloseType;

    const-string v1, "SKIPPED"

    invoke-direct {v0, v1, v3}, Lmobi/oneway/export/enums/OnewayAdCloseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/oneway/export/enums/OnewayAdCloseType;->SKIPPED:Lmobi/oneway/export/enums/OnewayAdCloseType;

    new-instance v0, Lmobi/oneway/export/enums/OnewayAdCloseType;

    const-string v1, "COMPLETED"

    invoke-direct {v0, v1, v4}, Lmobi/oneway/export/enums/OnewayAdCloseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/oneway/export/enums/OnewayAdCloseType;->COMPLETED:Lmobi/oneway/export/enums/OnewayAdCloseType;

    const/4 v0, 0x3

    new-array v0, v0, [Lmobi/oneway/export/enums/OnewayAdCloseType;

    sget-object v1, Lmobi/oneway/export/enums/OnewayAdCloseType;->ERROR:Lmobi/oneway/export/enums/OnewayAdCloseType;

    aput-object v1, v0, v2

    sget-object v1, Lmobi/oneway/export/enums/OnewayAdCloseType;->SKIPPED:Lmobi/oneway/export/enums/OnewayAdCloseType;

    aput-object v1, v0, v3

    sget-object v1, Lmobi/oneway/export/enums/OnewayAdCloseType;->COMPLETED:Lmobi/oneway/export/enums/OnewayAdCloseType;

    aput-object v1, v0, v4

    sput-object v0, Lmobi/oneway/export/enums/OnewayAdCloseType;->$VALUES:[Lmobi/oneway/export/enums/OnewayAdCloseType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmobi/oneway/export/enums/OnewayAdCloseType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lmobi/oneway/export/enums/OnewayAdCloseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmobi/oneway/export/enums/OnewayAdCloseType;

    return-object v0
.end method

.method public static values()[Lmobi/oneway/export/enums/OnewayAdCloseType;
    .registers 1

    sget-object v0, Lmobi/oneway/export/enums/OnewayAdCloseType;->$VALUES:[Lmobi/oneway/export/enums/OnewayAdCloseType;

    invoke-virtual {v0}, [Lmobi/oneway/export/enums/OnewayAdCloseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmobi/oneway/export/enums/OnewayAdCloseType;

    return-object v0
.end method
