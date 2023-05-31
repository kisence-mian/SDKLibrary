.class public final enum Lcom/bytedance/applog/WhalerGameHelper$Result;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/applog/WhalerGameHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bytedance/applog/WhalerGameHelper$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/applog/WhalerGameHelper$Result;

.field public static final enum FAIL:Lcom/bytedance/applog/WhalerGameHelper$Result;

.field public static final enum SUCCESS:Lcom/bytedance/applog/WhalerGameHelper$Result;

.field public static final enum UNCOMPLETED:Lcom/bytedance/applog/WhalerGameHelper$Result;


# instance fields
.field final gameResult:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 274
    new-instance v0, Lcom/bytedance/applog/WhalerGameHelper$Result;

    const-string v1, "UNCOMPLETED"

    const-string v2, "uncompleted"

    invoke-direct {v0, v1, v3, v2}, Lcom/bytedance/applog/WhalerGameHelper$Result;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/applog/WhalerGameHelper$Result;->UNCOMPLETED:Lcom/bytedance/applog/WhalerGameHelper$Result;

    .line 275
    new-instance v0, Lcom/bytedance/applog/WhalerGameHelper$Result;

    const-string v1, "SUCCESS"

    const-string v2, "success"

    invoke-direct {v0, v1, v4, v2}, Lcom/bytedance/applog/WhalerGameHelper$Result;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/applog/WhalerGameHelper$Result;->SUCCESS:Lcom/bytedance/applog/WhalerGameHelper$Result;

    .line 276
    new-instance v0, Lcom/bytedance/applog/WhalerGameHelper$Result;

    const-string v1, "FAIL"

    const-string v2, "fail"

    invoke-direct {v0, v1, v5, v2}, Lcom/bytedance/applog/WhalerGameHelper$Result;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/applog/WhalerGameHelper$Result;->FAIL:Lcom/bytedance/applog/WhalerGameHelper$Result;

    .line 270
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/bytedance/applog/WhalerGameHelper$Result;

    sget-object v1, Lcom/bytedance/applog/WhalerGameHelper$Result;->UNCOMPLETED:Lcom/bytedance/applog/WhalerGameHelper$Result;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bytedance/applog/WhalerGameHelper$Result;->SUCCESS:Lcom/bytedance/applog/WhalerGameHelper$Result;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bytedance/applog/WhalerGameHelper$Result;->FAIL:Lcom/bytedance/applog/WhalerGameHelper$Result;

    aput-object v1, v0, v5

    sput-object v0, Lcom/bytedance/applog/WhalerGameHelper$Result;->$VALUES:[Lcom/bytedance/applog/WhalerGameHelper$Result;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "result"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 279
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 280
    iput-object p3, p0, Lcom/bytedance/applog/WhalerGameHelper$Result;->gameResult:Ljava/lang/String;

    .line 281
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/applog/WhalerGameHelper$Result;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 270
    const-class v0, Lcom/bytedance/applog/WhalerGameHelper$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bytedance/applog/WhalerGameHelper$Result;

    return-object v0
.end method

.method public static values()[Lcom/bytedance/applog/WhalerGameHelper$Result;
    .registers 1

    .prologue
    .line 270
    sget-object v0, Lcom/bytedance/applog/WhalerGameHelper$Result;->$VALUES:[Lcom/bytedance/applog/WhalerGameHelper$Result;

    invoke-virtual {v0}, [Lcom/bytedance/applog/WhalerGameHelper$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/applog/WhalerGameHelper$Result;

    return-object v0
.end method
