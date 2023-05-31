.class public final enum LsdkInterface/define/RealNameStatus;
.super Ljava/lang/Enum;
.source "RealNameStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LsdkInterface/define/RealNameStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LsdkInterface/define/RealNameStatus;

.field public static final enum IsRealName:LsdkInterface/define/RealNameStatus;

.field public static final enum NotNeed:LsdkInterface/define/RealNameStatus;

.field public static final enum NotRealName:LsdkInterface/define/RealNameStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 4
    new-instance v0, LsdkInterface/define/RealNameStatus;

    const-string v1, "IsRealName"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LsdkInterface/define/RealNameStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, LsdkInterface/define/RealNameStatus;->IsRealName:LsdkInterface/define/RealNameStatus;

    .line 5
    new-instance v1, LsdkInterface/define/RealNameStatus;

    const-string v3, "NotRealName"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, LsdkInterface/define/RealNameStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, LsdkInterface/define/RealNameStatus;->NotRealName:LsdkInterface/define/RealNameStatus;

    .line 6
    new-instance v3, LsdkInterface/define/RealNameStatus;

    const-string v5, "NotNeed"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, LsdkInterface/define/RealNameStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, LsdkInterface/define/RealNameStatus;->NotNeed:LsdkInterface/define/RealNameStatus;

    .line 3
    const/4 v5, 0x3

    new-array v5, v5, [LsdkInterface/define/RealNameStatus;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, LsdkInterface/define/RealNameStatus;->$VALUES:[LsdkInterface/define/RealNameStatus;

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

.method public static valueOf(Ljava/lang/String;)LsdkInterface/define/RealNameStatus;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, LsdkInterface/define/RealNameStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LsdkInterface/define/RealNameStatus;

    return-object v0
.end method

.method public static values()[LsdkInterface/define/RealNameStatus;
    .registers 1

    .line 3
    sget-object v0, LsdkInterface/define/RealNameStatus;->$VALUES:[LsdkInterface/define/RealNameStatus;

    invoke-virtual {v0}, [LsdkInterface/define/RealNameStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LsdkInterface/define/RealNameStatus;

    return-object v0
.end method
