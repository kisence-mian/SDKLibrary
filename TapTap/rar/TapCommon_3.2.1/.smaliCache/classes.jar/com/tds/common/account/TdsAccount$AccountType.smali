.class public final enum Lcom/tds/common/account/TdsAccount$AccountType;
.super Ljava/lang/Enum;
.source "TdsAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/account/TdsAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AccountType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tds/common/account/TdsAccount$AccountType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tds/common/account/TdsAccount$AccountType;

.field public static final enum LC:Lcom/tds/common/account/TdsAccount$AccountType;

.field public static final enum TAP:Lcom/tds/common/account/TdsAccount$AccountType;

.field public static final enum TDS:Lcom/tds/common/account/TdsAccount$AccountType;

.field public static final enum XD:Lcom/tds/common/account/TdsAccount$AccountType;

.field public static final enum XDG:Lcom/tds/common/account/TdsAccount$AccountType;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 9
    new-instance v0, Lcom/tds/common/account/TdsAccount$AccountType;

    const-string v1, "XD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tds/common/account/TdsAccount$AccountType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tds/common/account/TdsAccount$AccountType;->XD:Lcom/tds/common/account/TdsAccount$AccountType;

    .line 10
    new-instance v1, Lcom/tds/common/account/TdsAccount$AccountType;

    const-string v3, "XDG"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/tds/common/account/TdsAccount$AccountType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tds/common/account/TdsAccount$AccountType;->XDG:Lcom/tds/common/account/TdsAccount$AccountType;

    .line 11
    new-instance v3, Lcom/tds/common/account/TdsAccount$AccountType;

    const-string v5, "TAP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/tds/common/account/TdsAccount$AccountType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/tds/common/account/TdsAccount$AccountType;->TAP:Lcom/tds/common/account/TdsAccount$AccountType;

    .line 12
    new-instance v5, Lcom/tds/common/account/TdsAccount$AccountType;

    const-string v7, "TDS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/tds/common/account/TdsAccount$AccountType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/tds/common/account/TdsAccount$AccountType;->TDS:Lcom/tds/common/account/TdsAccount$AccountType;

    .line 13
    new-instance v7, Lcom/tds/common/account/TdsAccount$AccountType;

    const-string v9, "LC"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/tds/common/account/TdsAccount$AccountType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/tds/common/account/TdsAccount$AccountType;->LC:Lcom/tds/common/account/TdsAccount$AccountType;

    .line 8
    const/4 v9, 0x5

    new-array v9, v9, [Lcom/tds/common/account/TdsAccount$AccountType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/tds/common/account/TdsAccount$AccountType;->$VALUES:[Lcom/tds/common/account/TdsAccount$AccountType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tds/common/account/TdsAccount$AccountType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 8
    const-class v0, Lcom/tds/common/account/TdsAccount$AccountType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tds/common/account/TdsAccount$AccountType;

    return-object v0
.end method

.method public static values()[Lcom/tds/common/account/TdsAccount$AccountType;
    .registers 1

    .line 8
    sget-object v0, Lcom/tds/common/account/TdsAccount$AccountType;->$VALUES:[Lcom/tds/common/account/TdsAccount$AccountType;

    invoke-virtual {v0}, [Lcom/tds/common/account/TdsAccount$AccountType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tds/common/account/TdsAccount$AccountType;

    return-object v0
.end method
