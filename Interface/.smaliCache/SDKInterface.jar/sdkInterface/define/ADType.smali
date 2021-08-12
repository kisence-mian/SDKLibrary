.class public final enum LsdkInterface/define/ADType;
.super Ljava/lang/Enum;
.source "ADType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LsdkInterface/define/ADType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LsdkInterface/define/ADType;

.field public static final enum Banner:LsdkInterface/define/ADType;

.field public static final enum Interstitial:LsdkInterface/define/ADType;

.field public static final enum Reward:LsdkInterface/define/ADType;

.field public static final enum Video:LsdkInterface/define/ADType;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 4
    new-instance v0, LsdkInterface/define/ADType;

    const-string v1, "Banner"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LsdkInterface/define/ADType;-><init>(Ljava/lang/String;I)V

    sput-object v0, LsdkInterface/define/ADType;->Banner:LsdkInterface/define/ADType;

    .line 5
    new-instance v1, LsdkInterface/define/ADType;

    const-string v3, "Reward"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, LsdkInterface/define/ADType;-><init>(Ljava/lang/String;I)V

    sput-object v1, LsdkInterface/define/ADType;->Reward:LsdkInterface/define/ADType;

    .line 6
    new-instance v3, LsdkInterface/define/ADType;

    const-string v5, "Interstitial"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, LsdkInterface/define/ADType;-><init>(Ljava/lang/String;I)V

    sput-object v3, LsdkInterface/define/ADType;->Interstitial:LsdkInterface/define/ADType;

    .line 7
    new-instance v5, LsdkInterface/define/ADType;

    const-string v7, "Video"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, LsdkInterface/define/ADType;-><init>(Ljava/lang/String;I)V

    sput-object v5, LsdkInterface/define/ADType;->Video:LsdkInterface/define/ADType;

    .line 3
    const/4 v7, 0x4

    new-array v7, v7, [LsdkInterface/define/ADType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, LsdkInterface/define/ADType;->$VALUES:[LsdkInterface/define/ADType;

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

.method public static valueOf(Ljava/lang/String;)LsdkInterface/define/ADType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, LsdkInterface/define/ADType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LsdkInterface/define/ADType;

    return-object v0
.end method

.method public static values()[LsdkInterface/define/ADType;
    .registers 1

    .line 3
    sget-object v0, LsdkInterface/define/ADType;->$VALUES:[LsdkInterface/define/ADType;

    invoke-virtual {v0}, [LsdkInterface/define/ADType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LsdkInterface/define/ADType;

    return-object v0
.end method
