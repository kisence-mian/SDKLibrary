.class final enum Lcom/tds/common/reactor/internal/util/UtilityFunctions$Identity;
.super Ljava/lang/Enum;
.source "UtilityFunctions.java"

# interfaces
.implements Lcom/tds/common/reactor/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/reactor/internal/util/UtilityFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Identity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tds/common/reactor/internal/util/UtilityFunctions$Identity;",
        ">;",
        "Lcom/tds/common/reactor/functions/Func1<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tds/common/reactor/internal/util/UtilityFunctions$Identity;

.field public static final enum INSTANCE:Lcom/tds/common/reactor/internal/util/UtilityFunctions$Identity;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 77
    new-instance v0, Lcom/tds/common/reactor/internal/util/UtilityFunctions$Identity;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tds/common/reactor/internal/util/UtilityFunctions$Identity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tds/common/reactor/internal/util/UtilityFunctions$Identity;->INSTANCE:Lcom/tds/common/reactor/internal/util/UtilityFunctions$Identity;

    .line 76
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/tds/common/reactor/internal/util/UtilityFunctions$Identity;

    aput-object v0, v1, v2

    sput-object v1, Lcom/tds/common/reactor/internal/util/UtilityFunctions$Identity;->$VALUES:[Lcom/tds/common/reactor/internal/util/UtilityFunctions$Identity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tds/common/reactor/internal/util/UtilityFunctions$Identity;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 76
    const-class v0, Lcom/tds/common/reactor/internal/util/UtilityFunctions$Identity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tds/common/reactor/internal/util/UtilityFunctions$Identity;

    return-object v0
.end method

.method public static values()[Lcom/tds/common/reactor/internal/util/UtilityFunctions$Identity;
    .registers 1

    .line 76
    sget-object v0, Lcom/tds/common/reactor/internal/util/UtilityFunctions$Identity;->$VALUES:[Lcom/tds/common/reactor/internal/util/UtilityFunctions$Identity;

    invoke-virtual {v0}, [Lcom/tds/common/reactor/internal/util/UtilityFunctions$Identity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tds/common/reactor/internal/util/UtilityFunctions$Identity;

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 81
    return-object p1
.end method
