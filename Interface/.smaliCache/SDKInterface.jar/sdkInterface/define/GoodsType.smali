.class public final enum LsdkInterface/define/GoodsType;
.super Ljava/lang/Enum;
.source "GoodsType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LsdkInterface/define/GoodsType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LsdkInterface/define/GoodsType;

.field public static final enum NORMAL:LsdkInterface/define/GoodsType;

.field public static final enum ONCE_ONLY:LsdkInterface/define/GoodsType;

.field public static final enum RIGHTS:LsdkInterface/define/GoodsType;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 4
    new-instance v0, LsdkInterface/define/GoodsType;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LsdkInterface/define/GoodsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, LsdkInterface/define/GoodsType;->NORMAL:LsdkInterface/define/GoodsType;

    .line 5
    new-instance v1, LsdkInterface/define/GoodsType;

    const-string v3, "ONCE_ONLY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, LsdkInterface/define/GoodsType;-><init>(Ljava/lang/String;I)V

    sput-object v1, LsdkInterface/define/GoodsType;->ONCE_ONLY:LsdkInterface/define/GoodsType;

    .line 6
    new-instance v3, LsdkInterface/define/GoodsType;

    const-string v5, "RIGHTS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, LsdkInterface/define/GoodsType;-><init>(Ljava/lang/String;I)V

    sput-object v3, LsdkInterface/define/GoodsType;->RIGHTS:LsdkInterface/define/GoodsType;

    .line 3
    const/4 v5, 0x3

    new-array v5, v5, [LsdkInterface/define/GoodsType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, LsdkInterface/define/GoodsType;->$VALUES:[LsdkInterface/define/GoodsType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LsdkInterface/define/GoodsType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, LsdkInterface/define/GoodsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LsdkInterface/define/GoodsType;

    return-object v0
.end method

.method public static values()[LsdkInterface/define/GoodsType;
    .registers 1

    .line 3
    sget-object v0, LsdkInterface/define/GoodsType;->$VALUES:[LsdkInterface/define/GoodsType;

    invoke-virtual {v0}, [LsdkInterface/define/GoodsType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LsdkInterface/define/GoodsType;

    return-object v0
.end method
