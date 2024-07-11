.class public final enum Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/windad/WindAdDebugLogListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WindAdLogLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
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
    .registers 9

    new-instance v0, Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;

    const-string v1, "WindLogLevelError"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;->WindLogLevelError:Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;

    new-instance v1, Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;

    const-string v3, "WindLogLevelWarning"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;->WindLogLevelWarning:Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;

    new-instance v3, Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;

    const-string v5, "WindLogLevelInformation"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;->WindLogLevelInformation:Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;

    new-instance v5, Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;

    const-string v7, "WindLogLevelDebug"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;->WindLogLevelDebug:Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;->a:[Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;

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

    move-result-object p0

    check-cast p0, Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;

    return-object p0
.end method

.method public static values()[Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;
    .registers 1

    sget-object v0, Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;->a:[Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;

    invoke-virtual {v0}, [Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/windad/WindAdDebugLogListener$WindAdLogLevel;

    return-object v0
.end method
