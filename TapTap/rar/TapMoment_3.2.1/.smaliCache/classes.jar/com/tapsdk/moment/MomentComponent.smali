.class public final enum Lcom/tapsdk/moment/MomentComponent;
.super Ljava/lang/Enum;
.source "MomentComponent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tapsdk/moment/MomentComponent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tapsdk/moment/MomentComponent;

.field public static final enum COMMON:Lcom/tapsdk/moment/MomentComponent;

.field public static final enum MOMENT:Lcom/tapsdk/moment/MomentComponent;

.field public static final enum SCENE:Lcom/tapsdk/moment/MomentComponent;

.field public static final enum USER:Lcom/tapsdk/moment/MomentComponent;

.field public static final enum VIDEO:Lcom/tapsdk/moment/MomentComponent;


# instance fields
.field public final type:I


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 5
    new-instance v0, Lcom/tapsdk/moment/MomentComponent;

    const-string v1, "COMMON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/tapsdk/moment/MomentComponent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tapsdk/moment/MomentComponent;->COMMON:Lcom/tapsdk/moment/MomentComponent;

    .line 7
    new-instance v1, Lcom/tapsdk/moment/MomentComponent;

    const-string v3, "MOMENT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/tapsdk/moment/MomentComponent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tapsdk/moment/MomentComponent;->MOMENT:Lcom/tapsdk/moment/MomentComponent;

    .line 9
    new-instance v3, Lcom/tapsdk/moment/MomentComponent;

    const-string v5, "VIDEO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/tapsdk/moment/MomentComponent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/tapsdk/moment/MomentComponent;->VIDEO:Lcom/tapsdk/moment/MomentComponent;

    .line 11
    new-instance v5, Lcom/tapsdk/moment/MomentComponent;

    const-string v7, "USER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/tapsdk/moment/MomentComponent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/tapsdk/moment/MomentComponent;->USER:Lcom/tapsdk/moment/MomentComponent;

    .line 13
    new-instance v7, Lcom/tapsdk/moment/MomentComponent;

    const-string v9, "SCENE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/tapsdk/moment/MomentComponent;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/tapsdk/moment/MomentComponent;->SCENE:Lcom/tapsdk/moment/MomentComponent;

    .line 3
    const/4 v9, 0x5

    new-array v9, v9, [Lcom/tapsdk/moment/MomentComponent;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/tapsdk/moment/MomentComponent;->$VALUES:[Lcom/tapsdk/moment/MomentComponent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput p3, p0, Lcom/tapsdk/moment/MomentComponent;->type:I

    .line 21
    return-void
.end method

.method public static isPublish(I)Z
    .registers 2
    .param p0, "type"    # I

    .line 40
    sget-object v0, Lcom/tapsdk/moment/MomentComponent;->VIDEO:Lcom/tapsdk/moment/MomentComponent;

    iget v0, v0, Lcom/tapsdk/moment/MomentComponent;->type:I

    if-eq p0, v0, :cond_f

    sget-object v0, Lcom/tapsdk/moment/MomentComponent;->MOMENT:Lcom/tapsdk/moment/MomentComponent;

    iget v0, v0, Lcom/tapsdk/moment/MomentComponent;->type:I

    if-ne p0, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public static toComponent(I)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # I

    .line 24
    sget-object v0, Lcom/tapsdk/moment/MomentComponent;->MOMENT:Lcom/tapsdk/moment/MomentComponent;

    iget v0, v0, Lcom/tapsdk/moment/MomentComponent;->type:I

    if-ne p0, v0, :cond_9

    .line 25
    const-string v0, "moment-editor"

    return-object v0

    .line 27
    :cond_9
    sget-object v0, Lcom/tapsdk/moment/MomentComponent;->VIDEO:Lcom/tapsdk/moment/MomentComponent;

    iget v0, v0, Lcom/tapsdk/moment/MomentComponent;->type:I

    if-ne p0, v0, :cond_12

    .line 28
    const-string v0, "video-editor"

    return-object v0

    .line 30
    :cond_12
    sget-object v0, Lcom/tapsdk/moment/MomentComponent;->USER:Lcom/tapsdk/moment/MomentComponent;

    iget v0, v0, Lcom/tapsdk/moment/MomentComponent;->type:I

    if-ne p0, v0, :cond_1b

    .line 31
    const-string v0, "user"

    return-object v0

    .line 33
    :cond_1b
    sget-object v0, Lcom/tapsdk/moment/MomentComponent;->SCENE:Lcom/tapsdk/moment/MomentComponent;

    iget v0, v0, Lcom/tapsdk/moment/MomentComponent;->type:I

    if-ne p0, v0, :cond_24

    .line 34
    const-string v0, "entry"

    return-object v0

    .line 36
    :cond_24
    const-string v0, ""

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tapsdk/moment/MomentComponent;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Lcom/tapsdk/moment/MomentComponent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tapsdk/moment/MomentComponent;

    return-object v0
.end method

.method public static values()[Lcom/tapsdk/moment/MomentComponent;
    .registers 1

    .line 3
    sget-object v0, Lcom/tapsdk/moment/MomentComponent;->$VALUES:[Lcom/tapsdk/moment/MomentComponent;

    invoke-virtual {v0}, [Lcom/tapsdk/moment/MomentComponent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tapsdk/moment/MomentComponent;

    return-object v0
.end method
