.class public final enum Lmobi/oneway/export/enums/PluginErrorType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmobi/oneway/export/enums/PluginErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmobi/oneway/export/enums/PluginErrorType;

.field public static final enum shell_error_assetsIo:Lmobi/oneway/export/enums/PluginErrorType;

.field public static final enum shell_error_classNoFound:Lmobi/oneway/export/enums/PluginErrorType;

.field public static final enum shell_error_classloader:Lmobi/oneway/export/enums/PluginErrorType;

.field public static final enum shell_error_reflectClass:Lmobi/oneway/export/enums/PluginErrorType;

.field public static final enum shell_error_reflectMethod:Lmobi/oneway/export/enums/PluginErrorType;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lmobi/oneway/export/enums/PluginErrorType;

    const-string v1, "shell_error_reflectClass"

    invoke-direct {v0, v1, v2}, Lmobi/oneway/export/enums/PluginErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/oneway/export/enums/PluginErrorType;->shell_error_reflectClass:Lmobi/oneway/export/enums/PluginErrorType;

    new-instance v0, Lmobi/oneway/export/enums/PluginErrorType;

    const-string v1, "shell_error_reflectMethod"

    invoke-direct {v0, v1, v3}, Lmobi/oneway/export/enums/PluginErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/oneway/export/enums/PluginErrorType;->shell_error_reflectMethod:Lmobi/oneway/export/enums/PluginErrorType;

    new-instance v0, Lmobi/oneway/export/enums/PluginErrorType;

    const-string v1, "shell_error_assetsIo"

    invoke-direct {v0, v1, v4}, Lmobi/oneway/export/enums/PluginErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/oneway/export/enums/PluginErrorType;->shell_error_assetsIo:Lmobi/oneway/export/enums/PluginErrorType;

    new-instance v0, Lmobi/oneway/export/enums/PluginErrorType;

    const-string v1, "shell_error_classloader"

    invoke-direct {v0, v1, v5}, Lmobi/oneway/export/enums/PluginErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/oneway/export/enums/PluginErrorType;->shell_error_classloader:Lmobi/oneway/export/enums/PluginErrorType;

    new-instance v0, Lmobi/oneway/export/enums/PluginErrorType;

    const-string v1, "shell_error_classNoFound"

    invoke-direct {v0, v1, v6}, Lmobi/oneway/export/enums/PluginErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/oneway/export/enums/PluginErrorType;->shell_error_classNoFound:Lmobi/oneway/export/enums/PluginErrorType;

    const/4 v0, 0x5

    new-array v0, v0, [Lmobi/oneway/export/enums/PluginErrorType;

    sget-object v1, Lmobi/oneway/export/enums/PluginErrorType;->shell_error_reflectClass:Lmobi/oneway/export/enums/PluginErrorType;

    aput-object v1, v0, v2

    sget-object v1, Lmobi/oneway/export/enums/PluginErrorType;->shell_error_reflectMethod:Lmobi/oneway/export/enums/PluginErrorType;

    aput-object v1, v0, v3

    sget-object v1, Lmobi/oneway/export/enums/PluginErrorType;->shell_error_assetsIo:Lmobi/oneway/export/enums/PluginErrorType;

    aput-object v1, v0, v4

    sget-object v1, Lmobi/oneway/export/enums/PluginErrorType;->shell_error_classloader:Lmobi/oneway/export/enums/PluginErrorType;

    aput-object v1, v0, v5

    sget-object v1, Lmobi/oneway/export/enums/PluginErrorType;->shell_error_classNoFound:Lmobi/oneway/export/enums/PluginErrorType;

    aput-object v1, v0, v6

    sput-object v0, Lmobi/oneway/export/enums/PluginErrorType;->$VALUES:[Lmobi/oneway/export/enums/PluginErrorType;

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

.method public static valueOf(Ljava/lang/String;)Lmobi/oneway/export/enums/PluginErrorType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lmobi/oneway/export/enums/PluginErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmobi/oneway/export/enums/PluginErrorType;

    return-object v0
.end method

.method public static values()[Lmobi/oneway/export/enums/PluginErrorType;
    .registers 1

    sget-object v0, Lmobi/oneway/export/enums/PluginErrorType;->$VALUES:[Lmobi/oneway/export/enums/PluginErrorType;

    invoke-virtual {v0}, [Lmobi/oneway/export/enums/PluginErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmobi/oneway/export/enums/PluginErrorType;

    return-object v0
.end method
