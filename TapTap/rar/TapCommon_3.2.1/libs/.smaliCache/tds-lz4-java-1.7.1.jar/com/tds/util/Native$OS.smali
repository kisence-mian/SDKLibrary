.class final enum Lcom/tds/util/Native$OS;
.super Ljava/lang/Enum;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/util/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "OS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tds/util/Native$OS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tds/util/Native$OS;

.field public static final enum LINUX:Lcom/tds/util/Native$OS;

.field public static final enum MAC:Lcom/tds/util/Native$OS;

.field public static final enum SOLARIS:Lcom/tds/util/Native$OS;

.field public static final enum WINDOWS:Lcom/tds/util/Native$OS;


# instance fields
.field public final libExtension:Ljava/lang/String;

.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 29
    new-instance v0, Lcom/tds/util/Native$OS;

    const-string v1, "WINDOWS"

    const/4 v2, 0x0

    const-string v3, "win32"

    const-string v4, "so"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tds/util/Native$OS;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/tds/util/Native$OS;->WINDOWS:Lcom/tds/util/Native$OS;

    new-instance v1, Lcom/tds/util/Native$OS;

    const-string v3, "LINUX"

    const/4 v5, 0x1

    const-string v6, "linux"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/tds/util/Native$OS;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/tds/util/Native$OS;->LINUX:Lcom/tds/util/Native$OS;

    new-instance v3, Lcom/tds/util/Native$OS;

    const-string v6, "MAC"

    const/4 v7, 0x2

    const-string v8, "darwin"

    const-string v9, "dylib"

    invoke-direct {v3, v6, v7, v8, v9}, Lcom/tds/util/Native$OS;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/tds/util/Native$OS;->MAC:Lcom/tds/util/Native$OS;

    new-instance v6, Lcom/tds/util/Native$OS;

    const-string v8, "SOLARIS"

    const/4 v9, 0x3

    const-string v10, "solaris"

    invoke-direct {v6, v8, v9, v10, v4}, Lcom/tds/util/Native$OS;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/tds/util/Native$OS;->SOLARIS:Lcom/tds/util/Native$OS;

    .line 27
    const/4 v4, 0x4

    new-array v4, v4, [Lcom/tds/util/Native$OS;

    aput-object v0, v4, v2

    aput-object v1, v4, v5

    aput-object v3, v4, v7

    aput-object v6, v4, v9

    sput-object v4, Lcom/tds/util/Native$OS;->$VALUES:[Lcom/tds/util/Native$OS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "libExtension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput-object p3, p0, Lcom/tds/util/Native$OS;->name:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lcom/tds/util/Native$OS;->libExtension:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tds/util/Native$OS;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 27
    const-class v0, Lcom/tds/util/Native$OS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tds/util/Native$OS;

    return-object v0
.end method

.method public static values()[Lcom/tds/util/Native$OS;
    .registers 1

    .line 27
    sget-object v0, Lcom/tds/util/Native$OS;->$VALUES:[Lcom/tds/util/Native$OS;

    invoke-virtual {v0}, [Lcom/tds/util/Native$OS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tds/util/Native$OS;

    return-object v0
.end method
