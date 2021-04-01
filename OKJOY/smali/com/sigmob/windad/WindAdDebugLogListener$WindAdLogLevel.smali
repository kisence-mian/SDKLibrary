.class public final enum Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum WindLogLevelDebug:Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;

.field public static final enum WindLogLevelError:Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;

.field public static final enum WindLogLevelInformation:Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;

.field public static final enum WindLogLevelWarning:Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;

.field private static final synthetic a:[Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;

    const-string v1, "WindLogLevelError"

    invoke-direct {v0, v1, v2}, Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;->WindLogLevelError:Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;

    new-instance v0, Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;

    const-string v1, "WindLogLevelWarning"

    invoke-direct {v0, v1, v3}, Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;->WindLogLevelWarning:Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;

    new-instance v0, Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;

    const-string v1, "WindLogLevelInformation"

    invoke-direct {v0, v1, v4}, Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;->WindLogLevelInformation:Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;

    new-instance v0, Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;

    const-string v1, "WindLogLevelDebug"

    invoke-direct {v0, v1, v5}, Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;->WindLogLevelDebug:Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;

    sget-object v1, Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;->WindLogLevelError:Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;->WindLogLevelWarning:Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;->WindLogLevelInformation:Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;->WindLogLevelDebug:Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;->a:[Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;
    .registers 2

    const-class v0, Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;

    return-object v0
.end method

.method public static values()[Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;
    .registers 1

    sget-object v0, Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;->a:[Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;

    invoke-virtual {v0}, [Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;

    return-object v0
.end method
