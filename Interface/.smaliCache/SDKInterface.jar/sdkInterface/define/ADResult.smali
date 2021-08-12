.class public final enum LsdkInterface/define/ADResult;
.super Ljava/lang/Enum;
.source "ADResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LsdkInterface/define/ADResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LsdkInterface/define/ADResult;

.field public static final enum Load_Failure:LsdkInterface/define/ADResult;

.field public static final enum Load_Success:LsdkInterface/define/ADResult;

.field public static final enum Show_Click:LsdkInterface/define/ADResult;

.field public static final enum Show_Failed:LsdkInterface/define/ADResult;

.field public static final enum Show_Finished:LsdkInterface/define/ADResult;

.field public static final enum Show_Skipped:LsdkInterface/define/ADResult;

.field public static final enum Show_Start:LsdkInterface/define/ADResult;


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .line 4
    new-instance v0, LsdkInterface/define/ADResult;

    const-string v1, "Load_Success"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LsdkInterface/define/ADResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, LsdkInterface/define/ADResult;->Load_Success:LsdkInterface/define/ADResult;

    .line 5
    new-instance v1, LsdkInterface/define/ADResult;

    const-string v3, "Load_Failure"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, LsdkInterface/define/ADResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, LsdkInterface/define/ADResult;->Load_Failure:LsdkInterface/define/ADResult;

    .line 7
    new-instance v3, LsdkInterface/define/ADResult;

    const-string v5, "Show_Start"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, LsdkInterface/define/ADResult;-><init>(Ljava/lang/String;I)V

    sput-object v3, LsdkInterface/define/ADResult;->Show_Start:LsdkInterface/define/ADResult;

    .line 8
    new-instance v5, LsdkInterface/define/ADResult;

    const-string v7, "Show_Click"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, LsdkInterface/define/ADResult;-><init>(Ljava/lang/String;I)V

    sput-object v5, LsdkInterface/define/ADResult;->Show_Click:LsdkInterface/define/ADResult;

    .line 9
    new-instance v7, LsdkInterface/define/ADResult;

    const-string v9, "Show_Failed"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, LsdkInterface/define/ADResult;-><init>(Ljava/lang/String;I)V

    sput-object v7, LsdkInterface/define/ADResult;->Show_Failed:LsdkInterface/define/ADResult;

    .line 10
    new-instance v9, LsdkInterface/define/ADResult;

    const-string v11, "Show_Skipped"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, LsdkInterface/define/ADResult;-><init>(Ljava/lang/String;I)V

    sput-object v9, LsdkInterface/define/ADResult;->Show_Skipped:LsdkInterface/define/ADResult;

    .line 11
    new-instance v11, LsdkInterface/define/ADResult;

    const-string v13, "Show_Finished"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, LsdkInterface/define/ADResult;-><init>(Ljava/lang/String;I)V

    sput-object v11, LsdkInterface/define/ADResult;->Show_Finished:LsdkInterface/define/ADResult;

    .line 3
    const/4 v13, 0x7

    new-array v13, v13, [LsdkInterface/define/ADResult;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, LsdkInterface/define/ADResult;->$VALUES:[LsdkInterface/define/ADResult;

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

.method public static valueOf(Ljava/lang/String;)LsdkInterface/define/ADResult;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, LsdkInterface/define/ADResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LsdkInterface/define/ADResult;

    return-object v0
.end method

.method public static values()[LsdkInterface/define/ADResult;
    .registers 1

    .line 3
    sget-object v0, LsdkInterface/define/ADResult;->$VALUES:[LsdkInterface/define/ADResult;

    invoke-virtual {v0}, [LsdkInterface/define/ADResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LsdkInterface/define/ADResult;

    return-object v0
.end method
