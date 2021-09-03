.class public enum Lcom/tds/tapdb/sdk/LoginType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tds/tapdb/sdk/LoginType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tds/tapdb/sdk/LoginType;

.field public static final enum Alipay:Lcom/tds/tapdb/sdk/LoginType;

.field public static final enum Apple:Lcom/tds/tapdb/sdk/LoginType;

.field public static final enum Custom:Lcom/tds/tapdb/sdk/LoginType;

.field public static final enum Email:Lcom/tds/tapdb/sdk/LoginType;

.field public static final enum Facebook:Lcom/tds/tapdb/sdk/LoginType;

.field public static final enum Google:Lcom/tds/tapdb/sdk/LoginType;

.field public static final enum NONE:Lcom/tds/tapdb/sdk/LoginType;

.field public static final enum PhoneNumber:Lcom/tds/tapdb/sdk/LoginType;

.field public static final enum QQ:Lcom/tds/tapdb/sdk/LoginType;

.field public static final enum TapTap:Lcom/tds/tapdb/sdk/LoginType;

.field public static final enum Tourist:Lcom/tds/tapdb/sdk/LoginType;

.field public static final enum Twitter:Lcom/tds/tapdb/sdk/LoginType;

.field public static final enum WeiXin:Lcom/tds/tapdb/sdk/LoginType;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    new-instance v0, Lcom/tds/tapdb/sdk/LoginType$a;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tds/tapdb/sdk/LoginType$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tds/tapdb/sdk/LoginType;->NONE:Lcom/tds/tapdb/sdk/LoginType;

    new-instance v1, Lcom/tds/tapdb/sdk/LoginType;

    const-string v3, "TapTap"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/tds/tapdb/sdk/LoginType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tds/tapdb/sdk/LoginType;->TapTap:Lcom/tds/tapdb/sdk/LoginType;

    new-instance v3, Lcom/tds/tapdb/sdk/LoginType;

    const-string v5, "WeiXin"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/tds/tapdb/sdk/LoginType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/tds/tapdb/sdk/LoginType;->WeiXin:Lcom/tds/tapdb/sdk/LoginType;

    new-instance v5, Lcom/tds/tapdb/sdk/LoginType;

    const-string v7, "QQ"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/tds/tapdb/sdk/LoginType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/tds/tapdb/sdk/LoginType;->QQ:Lcom/tds/tapdb/sdk/LoginType;

    new-instance v7, Lcom/tds/tapdb/sdk/LoginType;

    const-string v9, "Tourist"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/tds/tapdb/sdk/LoginType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/tds/tapdb/sdk/LoginType;->Tourist:Lcom/tds/tapdb/sdk/LoginType;

    new-instance v9, Lcom/tds/tapdb/sdk/LoginType;

    const-string v11, "Apple"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/tds/tapdb/sdk/LoginType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/tds/tapdb/sdk/LoginType;->Apple:Lcom/tds/tapdb/sdk/LoginType;

    new-instance v11, Lcom/tds/tapdb/sdk/LoginType$b;

    const-string v13, "Alipay"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/tds/tapdb/sdk/LoginType$b;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/tds/tapdb/sdk/LoginType;->Alipay:Lcom/tds/tapdb/sdk/LoginType;

    new-instance v13, Lcom/tds/tapdb/sdk/LoginType;

    const-string v15, "Facebook"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/tds/tapdb/sdk/LoginType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/tds/tapdb/sdk/LoginType;->Facebook:Lcom/tds/tapdb/sdk/LoginType;

    new-instance v15, Lcom/tds/tapdb/sdk/LoginType;

    const-string v14, "Google"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/tds/tapdb/sdk/LoginType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/tds/tapdb/sdk/LoginType;->Google:Lcom/tds/tapdb/sdk/LoginType;

    new-instance v14, Lcom/tds/tapdb/sdk/LoginType;

    const-string v12, "Twitter"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/tds/tapdb/sdk/LoginType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/tds/tapdb/sdk/LoginType;->Twitter:Lcom/tds/tapdb/sdk/LoginType;

    new-instance v12, Lcom/tds/tapdb/sdk/LoginType;

    const-string v10, "PhoneNumber"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/tds/tapdb/sdk/LoginType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/tds/tapdb/sdk/LoginType;->PhoneNumber:Lcom/tds/tapdb/sdk/LoginType;

    new-instance v10, Lcom/tds/tapdb/sdk/LoginType;

    const-string v8, "Email"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/tds/tapdb/sdk/LoginType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/tds/tapdb/sdk/LoginType;->Email:Lcom/tds/tapdb/sdk/LoginType;

    new-instance v8, Lcom/tds/tapdb/sdk/LoginType;

    const-string v6, "Custom"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/tds/tapdb/sdk/LoginType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/tds/tapdb/sdk/LoginType;->Custom:Lcom/tds/tapdb/sdk/LoginType;

    const/16 v6, 0xd

    new-array v6, v6, [Lcom/tds/tapdb/sdk/LoginType;

    aput-object v0, v6, v2

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    aput-object v8, v6, v4

    sput-object v6, Lcom/tds/tapdb/sdk/LoginType;->$VALUES:[Lcom/tds/tapdb/sdk/LoginType;

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

.method synthetic constructor <init>(Ljava/lang/String;ILcom/tds/tapdb/sdk/LoginType$a;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/tds/tapdb/sdk/LoginType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tds/tapdb/sdk/LoginType;
    .registers 2

    const-class v0, Lcom/tds/tapdb/sdk/LoginType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tds/tapdb/sdk/LoginType;

    return-object p0
.end method

.method public static values()[Lcom/tds/tapdb/sdk/LoginType;
    .registers 1

    sget-object v0, Lcom/tds/tapdb/sdk/LoginType;->$VALUES:[Lcom/tds/tapdb/sdk/LoginType;

    invoke-virtual {v0}, [Lcom/tds/tapdb/sdk/LoginType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tds/tapdb/sdk/LoginType;

    return-object v0
.end method


# virtual methods
.method public getDecoratedName()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
