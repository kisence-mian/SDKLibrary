.class public final enum Lcom/JoyFramework/user/LoginUser$LoginType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/JoyFramework/user/LoginUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoginType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/JoyFramework/user/LoginUser$LoginType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/JoyFramework/user/LoginUser$LoginType;

.field public static final enum ACCOUNT_PWD:Lcom/JoyFramework/user/LoginUser$LoginType;

.field public static final enum FAST_LOGIN:Lcom/JoyFramework/user/LoginUser$LoginType;

.field public static final enum PHONE_CODE:Lcom/JoyFramework/user/LoginUser$LoginType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 57
    new-instance v0, Lcom/JoyFramework/user/LoginUser$LoginType;

    const-string v1, "PHONE_CODE"

    invoke-direct {v0, v1, v2}, Lcom/JoyFramework/user/LoginUser$LoginType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/JoyFramework/user/LoginUser$LoginType;->PHONE_CODE:Lcom/JoyFramework/user/LoginUser$LoginType;

    .line 58
    new-instance v0, Lcom/JoyFramework/user/LoginUser$LoginType;

    const-string v1, "ACCOUNT_PWD"

    invoke-direct {v0, v1, v3}, Lcom/JoyFramework/user/LoginUser$LoginType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/JoyFramework/user/LoginUser$LoginType;->ACCOUNT_PWD:Lcom/JoyFramework/user/LoginUser$LoginType;

    .line 59
    new-instance v0, Lcom/JoyFramework/user/LoginUser$LoginType;

    const-string v1, "FAST_LOGIN"

    invoke-direct {v0, v1, v4}, Lcom/JoyFramework/user/LoginUser$LoginType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/JoyFramework/user/LoginUser$LoginType;->FAST_LOGIN:Lcom/JoyFramework/user/LoginUser$LoginType;

    .line 56
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/JoyFramework/user/LoginUser$LoginType;

    sget-object v1, Lcom/JoyFramework/user/LoginUser$LoginType;->PHONE_CODE:Lcom/JoyFramework/user/LoginUser$LoginType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/JoyFramework/user/LoginUser$LoginType;->ACCOUNT_PWD:Lcom/JoyFramework/user/LoginUser$LoginType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/JoyFramework/user/LoginUser$LoginType;->FAST_LOGIN:Lcom/JoyFramework/user/LoginUser$LoginType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/JoyFramework/user/LoginUser$LoginType;->$VALUES:[Lcom/JoyFramework/user/LoginUser$LoginType;

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
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/JoyFramework/user/LoginUser$LoginType;
    .registers 2

    .prologue
    .line 56
    const-class v0, Lcom/JoyFramework/user/LoginUser$LoginType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/user/LoginUser$LoginType;

    return-object v0
.end method

.method public static values()[Lcom/JoyFramework/user/LoginUser$LoginType;
    .registers 1

    .prologue
    .line 56
    sget-object v0, Lcom/JoyFramework/user/LoginUser$LoginType;->$VALUES:[Lcom/JoyFramework/user/LoginUser$LoginType;

    invoke-virtual {v0}, [Lcom/JoyFramework/user/LoginUser$LoginType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/JoyFramework/user/LoginUser$LoginType;

    return-object v0
.end method
